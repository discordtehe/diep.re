@implementation MenuSettings

-(void)setupWithStateId:(unsigned long long)arg2 parameters:(void *)arg3 {
    [[&var_20 super] setupWithStateId:arg2 parameters:arg3];
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:@"MenuSettings.ccbi" owner:self];
    *(self + sign_extend_64(*(int32_t *)ivar_offset(_CCBRootNode))) = r0;
    [r0 setupInitialState];
    [self->mBaseNode addChild:r2];
    return;
}

-(double)enterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r0 = self;
    if ((arg3 & 0x1) == 0x0) {
            r0 = r0->_CCBRootNode;
            r0 = [r0 onEnterWithPreviousState:r2 fromStack:r3];
    }
    return r0;
}

+(void *)makeVersionLabel {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_10002b1f0([[Application sharedApplication] environmentSelector]);
    if (std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() != 0x0) {
            if (std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() != 0x0) {
                    if (std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r22 = @"(?)";
                            }
                            else {
                                    r22 = @"(P)";
                            }
                    }
            }
            else {
                    r22 = @"(S)";
            }
    }
    else {
            r22 = @"(D)";
    }
    r20 = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    r0 = @class(Application);
    r0 = [r0 sharedApplication];
    if (r0 != 0x0) {
            r2 = @"CFBundleShortVersionString";
            r23 = &var_60;
            [r0 getAppVersion];
            r9 = var_60;
            if (sign_extend_64(var_49) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r2 = r23;
                    }
                    else {
                            r2 = r9;
                    }
            }
    }
    else {
            r23 = &var_60;
            var_60 = 0x0;
            r2 = &var_60;
    }
    [NSString stringWithUTF8String:r2];
    r0 = [ConfigurationDownloader sharedConfigurationDownloader];
    [r0 getConfigVersion];
    r19 = [NSString stringWithFormat:@"%@ - %@ - %@ - (CFG: %d)"];
    if ((sign_extend_64(*(int8_t *)(r23 + 0x17)) & 0xffffffff80000000) != 0x0) {
            operator delete(var_60);
    }
    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
            operator delete(var_48);
    }
    r0 = r19;
    return r0;
}

-(double)leaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_CCBRootNode));
    if ((arg3 & 0x1) == 0x0) {
            [*(r19 + r20) onLeaveWithNewState:r2 toStack:r3];
            v8 = v0;
    }
    r0 = *(r19 + r20);
    r0 = [r0 resetTouches];
    return r0;
}

-(void)processContextEvent:(void *)arg2 withData:(void *)arg3 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r20 = r2;
            r19 = r0;
            if ([r19 isBackButtonEnabled] != 0x0 && ([r20 isEqualToString:r2] & 0x1) == 0x0 && [r20 isEqualToString:r2] != 0x0) {
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_CCBRootNode));
                    if ([*(r19 + r20) showingHints] != 0x0) {
                            r0 = *(r19 + r20);
                            r1 = @selector(closeHints);
                    }
                    else {
                            r1 = @selector(backButtonCallback);
                            r0 = r19;
                    }
                    objc_msgSend(r0, r1);
            }
    }
    return;
}

-(void)disableInput {
    [[&var_20 super] disableInput];
    [self->_CCBRootNode disableInput];
    return;
}

-(bool)isRootState {
    return 0x0;
}

-(void)enableInput {
    [[&var_20 super] enableInput];
    [self->_CCBRootNode enableInput];
    return;
}

-(bool)occupiesFullScreen {
    return 0x1;
}

-(void *)view {
    r0 = self->_CCBRootNode;
    return r0;
}

-(void)backButtonCallback {
    [[[[Application sharedApplication] userData] settings] writeToDisk];
    [[[Application sharedApplication] stateMachine] leaveApplicationStateFromTop:r2];
    return;
}

-(void)fixedJoysticksHintButtonCallback {
    [self->_CCBRootNode showFixedJoysticksHint];
    return;
}

-(void)stopOnReleaseHintButtonCallback {
    [self->_CCBRootNode showStopOnReleaseHint];
    return;
}

-(void)shootJoystickHintButtonCallback {
    [self->_CCBRootNode showShootJoystickOnRightHint];
    return;
}

-(void)shootOnReleaseHintButtonCallback {
    [self->_CCBRootNode showShootOnReleaseHint];
    return;
}

-(void)showMinimapHintButtonCallback {
    [self->_CCBRootNode showMinimapHint];
    return;
}

-(void)showArrowHintButtonCallback {
    [self->_CCBRootNode showArrowHint];
    return;
}

-(void)closeHelpButtonCallback {
    [self->_CCBRootNode closeHints];
    return;
}

-(void)stopOnReleaseToggleCallback:(bool)arg2 {
    [[[[Application sharedApplication] userData] settings] setStopOnRelease:arg2];
    [self->_CCBRootNode updateUIValues];
    return;
}

-(void)shootOnReleaseToggleCallback:(bool)arg2 {
    [[[[Application sharedApplication] userData] settings] setShootOnRelease:arg2];
    [self->_CCBRootNode updateUIValues];
    return;
}

-(void)fixedJoysticksToggleCallback:(bool)arg2 {
    [[[[Application sharedApplication] userData] settings] setFixedJoysticks:arg2];
    [self->_CCBRootNode updateUIValues];
    return;
}

-(void)showDeadZonesToggleCallback:(bool)arg2 {
    [[[[Application sharedApplication] userData] settings] setDrawDeadZones:arg2];
    [self->_CCBRootNode updateUIValues];
    return;
}

-(void)showArrowToggleCallback:(bool)arg2 {
    [[[[Application sharedApplication] userData] settings] setShowArrow:arg2];
    [self->_CCBRootNode updateUIValues];
    return;
}

-(void)showMinimapToggleCallback:(bool)arg2 {
    [[[[Application sharedApplication] userData] settings] setShowMinimap:arg2];
    [self->_CCBRootNode updateUIValues];
    return;
}

-(void)rightControlsButtonCallback {
    [[[[Application sharedApplication] userData] settings] setShootJoystickOnRight:0x1];
    [self->_CCBRootNode updateUIValues];
    return;
}

-(void)leftControlsButtonCallback {
    [self->_CCBRootNode updateUIValues];
    return;
}

-(void)denyTargetedAdsButtonCallback {
    [self->_CCBRootNode showTargetedAdsPopup];
    return;
}

-(void)cornersControlsButtonCallback {
    [[[[Application sharedApplication] userData] settings] setShootJoystickOnRight:0x0];
    [self->_CCBRootNode updateUIValues];
    return;
}

-(void)allowTargetedAdsButtonCallback {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([[[Application sharedApplication] gdprManager] isConsentGranted] & 0x1) == 0x0) {
            [[[Application sharedApplication] gdprManager] setUserAnswerFor:r2 withAnswer:r3];
    }
    [r19->_CCBRootNode updateUIValues];
    return;
}

-(void)googlePermissionResponse:(bool)arg2 {
    return;
}

-(void)moreGamesButtonCallback {
    sub_1003a03f0();
    return;
}

-(void)privacyPolicyCallback {
    sub_1003a0450();
    return;
}

-(void)creditsButtonCallback {
    [[[Application sharedApplication] stateMachine] goToApplicationState:r2];
    return;
}

-(void)termsAndConditionsCallback {
    sub_1003a04b0();
    return;
}

@end