@implementation CCTransitionScene

+(void *)transitionWithDuration:(double)arg2 scene:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 scene:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 scene:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_duration = d8;
            r19->_inScene = [r20 retain];
            r0 = [CCDirector sharedDirector];
            r0 = [r0 runningScene];
            r19->_outScene = r0;
            [r0 retain];
            [r19 sceneOrder];
    }
    r0 = r19;
    return r0;
}

-(void)sceneOrder {
    *(int8_t *)(int64_t *)&self->_inSceneOnTop = 0x1;
    return;
}

-(void)draw {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] draw];
    if (*(int8_t *)(int64_t *)&r19->_inSceneOnTop != 0x0) {
            [r19->_outScene visit];
            r8 = 0x10116bdc8;
    }
    else {
            [r19->_inScene visit];
            r8 = 0x10116bdcc;
    }
    [*(r19 + sign_extend_64(*(int32_t *)r8)) visit];
    return;
}

-(void)setNewScene:(double)arg2 {
    [self unschedule:_cmd];
    r0 = [CCDirector sharedDirector];
    *(int8_t *)(int64_t *)&self->_sendCleanupToScene = [r0 sendCleanupToScene];
    [r0 replaceScene:self->_inScene];
    [self->_outScene setVisible:r2];
    return;
}

-(void)finish {
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_inScene));
    [*(self + r24) setVisible:0x1];
    [*(self + r24) setPosition:0x1];
    [*(self + r24) setScale:0x1];
    [*(self + r24) setRotation:0x1];
    [[*(self + r24) camera] restore];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_outScene));
    [*(self + r26) setVisible:0x0];
    [*(self + r26) setPosition:0x0];
    [*(self + r26) setScale:0x0];
    [*(self + r26) setRotation:0x0];
    [[*(self + r26) camera] restore];
    [self schedule:@selector(setNewScene:) interval:r3];
    return;
}

-(void)hideOutShowIn {
    [self->_inScene setVisible:0x1];
    [self->_outScene setVisible:0x0];
    return;
}

-(void)onEnter {
    [[&var_20 super] onEnter];
    [[[CCDirector sharedDirector] touchDispatcher] setDispatchEvents:0x0];
    [self->_outScene onExitTransitionDidStart];
    [self->_inScene onEnter];
    return;
}

-(void)onExit {
    [[&var_20 super] onExit];
    [[[CCDirector sharedDirector] touchDispatcher] setDispatchEvents:0x1];
    [self->_outScene onExit];
    [self->_inScene onEnterTransitionDidFinish];
    return;
}

-(void)cleanup {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_20 super] cleanup];
    if (*(int8_t *)(int64_t *)&r19->_sendCleanupToScene != 0x0) {
            [r19->_outScene cleanup];
    }
    return;
}

-(void)dealloc {
    [self->_inScene release];
    [self->_outScene release];
    [[&var_20 super] dealloc];
    return;
}

@end