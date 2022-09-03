@implementation MenuPause

-(double)enterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r0 = self;
    if ((arg3 & 0x1) == 0x0) {
            [[[ConfigurationDownloader sharedConfigurationDownloader] delegate] throttleToDefaultConfigurationDownloadSpeed];
            sub_10004f17c(r0->mMenuContainer);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(mBackground));
            [*(r19 + r21) setOpacity:0x0];
            r0 = [CCFadeTo actionWithDuration:*(int8_t *)(int64_t *)&r19->mBackgroundOpacity opacity:r3];
            [r0 setTag:0x3e0e3d67];
            r0 = *(r19 + r21);
            r0 = [r0 runAction:r2];
            asm { fmax       d0, d8, d9 };
    }
    return r0;
}

-(void)setupWithStateId:(unsigned long long)arg2 parameters:(void *)arg3 {
    r19 = self;
    [[&var_60 super] setupWithStateId:arg2 parameters:arg3];
    r0 = [LocalizedCCBReader reader];
    r0 = [r0 nodeGraphFromFile:@"MenuPause.ccbi" owner:r19];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(mCCBRootNode));
    *(r19 + r23) = r0;
    r19->mMenuContainer = sub_1005d8554([r0 getChildByTag:0xa], [CCNode class], 0x0);
    r2 = 0x3;
    r20 = [*(r19 + r23) getChildByTag:r2];
    r0 = [CCSprite class];
    r0 = sub_1005d8554(r20, r0, 0x0);
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mBackground));
    *(r19 + r20) = r0;
    [[CCDirector sharedDirector] winSize];
    [*(r19 + r20) contentSize];
    asm { fdiv       d0, d8, d0 };
    asm { fcvt       s0, d0 };
    [*(r19 + r20) setScaleX:r2];
    asm { fdiv       d0, d9, d10 };
    asm { fcvt       s0, d0 };
    [*(r19 + r20) setScaleY:r2];
    *(int8_t *)(int64_t *)&r19->mBackgroundOpacity = [*(r19 + r20) opacity];
    [r19->mBaseNode addChild:r2];
    return;
}

-(double)leaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    r0 = self;
    if ((arg3 & 0x1) == 0x0) {
            [[[ConfigurationDownloader sharedConfigurationDownloader] delegate] throttleDownConfigurationDownloads];
            sub_10004f308(r0->mMenuContainer);
            r0 = [CCFadeTo actionWithDuration:0x0 opacity:r3];
            [r0 setTag:0x3e0e3d67];
            r0 = r19->mBackground;
            r0 = [r0 runAction:r2];
            asm { fmax       d0, d8, d9 };
    }
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
            if (([r20 isEqualToString:r2] & 0x1) == 0x0 && [r20 isEqualToString:r2] != 0x0) {
                    if ([r19 isBackButtonEnabled] != 0x0) {
                            [r19 quitCancelButtonCallback];
                    }
            }
    }
    return;
}

-(void)disableInput {
    [[&var_20 super] disableInput];
    [self->mCCBRootNode disableInput];
    return;
}

-(bool)isRootState {
    return 0x0;
}

-(void)enableInput {
    [[&var_20 super] enableInput];
    [self->mCCBRootNode enableInput];
    return;
}

-(bool)occupiesFullScreen {
    return 0x0;
}

-(void)quitConfirmButtonCallback {
    [[InterstitialsManager sharedInterstitialsManager] increaseNumDeaths];
    *(int32_t *)([[Application sharedApplication] serverConnection] + 0xc4) = 0x4;
    return;
}

-(void)dismissPopupCallback {
    [[[Application sharedApplication] stateMachine] leaveApplicationStateFromTop:r2];
    return;
}

-(void)quitCancelButtonCallback {
    [[[Application sharedApplication] stateMachine] leaveApplicationStateFromTop:r2];
    return;
}

@end