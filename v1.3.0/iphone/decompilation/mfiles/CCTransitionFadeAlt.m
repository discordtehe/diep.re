@implementation CCTransitionFadeAlt

+(void *)transitionWithDuration:(double)arg2 scene:(void *)arg3 withColor:(struct _ccColorThreeB)arg4 {
    memcpy(&r4, &arg4, 0x4);
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 scene:arg3 & 0xffffffff withColor:r4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 scene:(void *)arg3 withColor:(struct _ccColorThreeB)arg4 {
    memcpy(&r4, &arg4, 0x4);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r0 = [[&var_20 super] initWithDuration:arg2 scene:r3];
    if (r0 != 0x0) {
            r9 = sign_extend_64(*(int32_t *)ivar_offset(color));
            *(int8_t *)(r0 + r9) = r19;
            *(int8_t *)(0x1 + r0 + r9) = r19 >> 0x8;
            *(int8_t *)(0x2 + r0 + r9) = r19 >> 0x10;
    }
    return r0;
}

-(void *)initWithDuration:(double)arg2 scene:(void *)arg3 {
    r0 = [self initWithDuration:arg2 scene:0x0 withColor:r4];
    return r0;
}

-(void)finish {
    [[&var_20 super] finish];
    *(int8_t *)(int64_t *)&self->isFinished = 0x1;
    return;
}

-(void)hideOutShowIn {
    [[&var_20 super] hideOutShowIn];
    *(int8_t *)(int64_t *)&self->hideOutShowInDone = 0x1;
    return;
}

-(bool)isFinished {
    r0 = *(int8_t *)(int64_t *)&self->isFinished & 0x1;
    return r0;
}

-(void)skipToEnd {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->isFinished == 0x0) {
            r19 = r0;
            r0 = [r0 getChildByTag:r2];
            if (r0 != 0x0) {
                    [r0 stopActionByTag:r2];
            }
            if (*(int8_t *)(int64_t *)&r19->hideOutShowInDone == 0x0) {
                    [r19 hideOutShowIn];
            }
            [r19 finish];
    }
    return;
}

-(void)onExit {
    [[&var_20 super] onExit];
    [self removeChildByTag:0xfadefade cleanup:0x0];
    return;
}

-(void)onEnter {
    [[&var_70 super] onEnter];
    r20 = [CCLayerColor layerWithColor:*(int32_t *)(int64_t *)&self->color];
    [self->_inScene setVisible:0x0];
    [self addChild:r20 z:0x2 tag:0xfadefade];
    r20 = [self getChildByTag:0xfadefade];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_duration));
    r23 = [CCFadeIn actionWithDuration:0xfadefade];
    [CCCallFunc actionWithTarget:self selector:@selector(hideOutShowIn)];
    [CCFadeOut actionWithDuration:self];
    [CCCallFunc actionWithTarget:self selector:@selector(finish)];
    r0 = [CCSequence actions:r23];
    [r0 setTag:0x7b];
    [r20 runAction:r2];
    return;
}

@end