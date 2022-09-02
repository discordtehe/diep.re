@implementation CCDirectorMiniclip

-(void)mainLoop:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&self->_isRunningOnMessenger != 0x0 || [[UIApplication sharedApplication] applicationState] != 0x2) {
            [r19 drawScene];
    }
    return;
}

-(void)setAnimationInterval:(double)arg2 {
    r2 = arg2;
    self->_animationInterval = d0;
    [*0x1011d7240 setAnimationInterval:r2];
    return;
}

-(void)stopAnimation {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_isAnimating));
    if (*(int8_t *)(r0 + r20) != 0x0) {
            sub_100434f28();
            *(int8_t *)(r19 + r20) = 0x0;
    }
    return;
}

-(void)startAnimation {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_58 super] startAnimation];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_isAnimating));
    if (*(int8_t *)(r19 + r20) != 0x0) goto loc_10033bd34;

loc_10033bccc:
    gettimeofday((int64_t *)&r19->_lastUpdate, 0x0);
    sub_100434d18(&var_48);
    r0 = &var_48;
    if (&var_48 == r0) goto loc_10033bd1c;

loc_10033bd0c:
    if (r0 == 0x0) goto loc_10033bd28;

loc_10033bd10:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10033bd24;

loc_10033bd24:
    (r8)();
    goto loc_10033bd28;

loc_10033bd28:
    sub_100434f14();
    *(int8_t *)(r19 + r20) = 0x1;
    goto loc_10033bd34;

loc_10033bd34:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10033bd1c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10033bd24;
}

-(double)timestamp {
    r0 = gettimeofday(&var_10, 0x0);
    asm { ucvtf      d0, x8 };
    asm { fdiv       d0, d0, d1 };
    return r0;
}

-(void)calculateDeltaTime {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_displayStats != 0x0) {
            gettimeofday((int64_t *)&r0->_lastUpdate, 0x0);
    }
    return;
}

@end