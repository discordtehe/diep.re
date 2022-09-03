@implementation MenuSettingsNode

-(void *)initWithType:(int)arg2 size:(struct CGSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r19->_type = r20;
            r19->_view = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_nodeSize));
            *(r19 + r8) = d9;
            *(0x8 + r19 + r8) = d8;
            *(int8_t *)(int64_t *)&r19->_loaded = 0x0;
            [r19 setContentSize:r2];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*0x1011dec10 != 0x0) {
            [*0x1011dec10 release];
            *0x1011dec10 = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)disableInput {
    [self->_view disableInput];
    return;
}

-(void)enableInput {
    [self->_view enableInput];
    return;
}

-(void)hintButtonCallback {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [Application sharedApplication];
    r0 = [r0 stateMachine];
    r0 = [r0 instanceOfState:0x2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    r8 = *(int32_t *)(self + r8);
    r8 = r8 - 0x7;
    if (r8 <= 0x5) {
            objc_msgSend(r0, **(0x100e668b8 + r8 * 0x8));
    }
    return;
}

-(void)buttonCallback {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self parent];
    r0 = [r0 parent];
    r20 = r0;
    if (([r0 buttonCallbackLock] & 0x1) == 0x0) {
            [r20 setButtonCallbackLock:0x1];
            r0 = [Application sharedApplication];
            r0 = [r0 stateMachine];
            r0 = [r0 instanceOfState:0x2];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_type));
            r8 = *(int32_t *)(r19 + r8);
            r8 = r8 - 0x17;
            if (r8 <= 0x4 && (0x1b >> r8 & 0x1) != 0x0) {
                    objc_msgSend(r0, **(0x100e668e8 + r8 * 0x8));
            }
            [r19 performSelector:@selector(reactivateButtonCallback) withObject:0x0 afterDelay:r4];
    }
    return;
}

-(void)reactivateButtonCallback {
    [[[self parent] parent] setButtonCallbackLock:0x0];
    return;
}

-(void)leftButtonCallback:(bool)arg2 {
    [[[[Application sharedApplication] stateMachine] instanceOfState:0x2] leftControlsButtonCallback];
    return;
}

-(void)rightButtonCallback:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [Application sharedApplication];
    r0 = [r0 stateMachine];
    r0 = [r0 instanceOfState:0x2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    r8 = *(int32_t *)(self + r8);
    if (r8 == 0x9) goto loc_10005b3b4;

loc_10005b3a0:
    if (r8 != 0x19) goto .l1;

loc_10005b3a8:
    r8 = &@selector(allowTargetedAdsButtonCallback);
    goto loc_10005b3bc;

loc_10005b3bc:
    objc_msgSend(r0, *r8);
    return;

.l1:
    return;

loc_10005b3b4:
    r8 = &@selector(rightControlsButtonCallback);
    goto loc_10005b3bc;
}

-(void)centerButtonCallback:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [Application sharedApplication];
    r0 = [r0 stateMachine];
    r0 = [r0 instanceOfState:0x2];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    r8 = *(int32_t *)(self + r8);
    if (r8 == 0x9) goto loc_10005b440;

loc_10005b42c:
    if (r8 != 0x19) goto .l1;

loc_10005b434:
    r8 = &@selector(denyTargetedAdsButtonCallback);
    goto loc_10005b448;

loc_10005b448:
    objc_msgSend(r0, *r8);
    return;

.l1:
    return;

loc_10005b440:
    r8 = &@selector(cornersControlsButtonCallback);
    goto loc_10005b448;
}

-(void)toggleSwipeCallback:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    [[[Application sharedApplication] stateMachine] instanceOfState:0x2];
    r9 = *(int32_t *)(int64_t *)&self->_type - 0x7;
    if (r9 <= 0x7) {
            (0x10005b4e0 + *(int8_t *)(0x100b9e1c0 + r9) * 0x4)();
    }
    return;
}

-(void)loadData {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_loaded));
    if (*(int8_t *)(r0 + r20) == 0x0) {
            r19 = r0;
            r0 = sub_10005afcc();
            r0 = [r0 fetchObject];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_view));
            *(r19 + r21) = r0;
            [r0 setDelegate:r19];
            r2 = *(r19 + r21);
            [r19 addChild:r2];
            [*(r19 + r21) loadData];
            [r19 contentSize];
            [*(r19 + r21) setPosition:r2];
            [r19 setupView];
            [r19 updateUIValues];
            *(int8_t *)(r19 + r20) = 0x1;
    }
    return;
}

-(void)unloadData {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_loaded));
    if (*(int8_t *)(r0 + r20) != 0x0) {
            r19 = r0;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_view));
            [r0 removeChild:*(r0 + r21)];
            [*(r19 + r21) unloadData];
            r0 = sub_10005afcc();
            if (r0 != 0x0) {
                    r1 = r0;
                    r0 = *(r19 + r21);
                    if (r0 != 0x0 && sub_100012c74(r0, r1) != 0x0) {
                            *(r19 + r21) = 0x0;
                    }
            }
            *(r19 + r21) = 0x0;
            *(int8_t *)(r19 + r20) = 0x0;
    }
    return;
}

-(void)setupView {
    r0 = self;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    r8 = *(int32_t *)(r0 + r8);
    r8 = r8 - 0x4;
    if (r8 <= 0x18) {
            (0x10005b6e0 + *(int8_t *)(0x100b9e1c8 + r8) * 0x4)();
    }
    return;
}

-(void)setupLogoutView {
    return;
}

-(void *)hint {
    r0 = self->_view;
    r0 = [r0 hint];
    return r0;
}

-(void *)view {
    r0 = self->_view;
    return r0;
}

-(void)updateUIValues {
    r0 = self;
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_type));
    r8 = *(int32_t *)(r0 + r8);
    r8 = r8 - 0x7;
    if (r8 <= 0x12) {
            (0x10005bb2c + *(int8_t *)(0x100b9e1e1 + r8) * 0x4)();
    }
    return;
}

-(void)updateTargetedAdsButton {
    [[[Application sharedApplication] gdprManager] removeTargetAndSelector];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_view));
    r22 = *(self + r26);
    r0 = @class(Application);
    r0 = [r0 sharedApplication];
    r0 = [r0 gdprManager];
    [r0 isConsentGranted];
    r8 = @class(NSNumber);
    r24 = @selector(numberWithInt:);
    [r22 updateCenterButton:objc_msgSend(r8, r24)];
    r19 = *(self + r26);
    [[[Application sharedApplication] gdprManager] isConsentGranted];
    [r19 updateRightButton:objc_msgSend(@class(NSNumber), r24)];
    return;
}

@end