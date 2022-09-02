@implementation IronSourceInterstitialCustomEvent

-(void)showInterstitialFromRootViewController:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r24 = [NSStringFromClass([r20 class]) retain];
    r25 = [[MPLogEvent adShowAttemptForAdapter:r24] retain];
    r26 = [[r20 instanceId] retain];
    [MPLogging logEvent:r25 source:r26 fromClass:[r20 class]];
    [r26 release];
    [r25 release];
    [r24 release];
    r0 = [r20 placementName];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = [[r20 placementName] retain];
            r20 = [[r20 instanceId] retain];
            [IronSource showISDemandOnlyInterstitial:r19 placement:r23 instanceId:r20];
            [r19 release];
            r19 = r20;
    }
    else {
            r23 = [[r20 instanceId] retain];
            [IronSource showISDemandOnlyInterstitial:r19 instanceId:r23];
    }
    [r19 release];
    [r23 release];
    return;
}

-(void)loadInterstitial {
    r22 = [[self instanceId] retain];
    r24 = [[NSString stringWithFormat:@"Load IronSource interstitial ad for instance %@"] retain];
    r23 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[self class]];
    [r23 release];
    [r24 release];
    [r22 release];
    r19 = [[self instanceId] retain];
    [IronSource loadISDemandOnlyInterstitial:r19];
    [r19 release];
    return;
}

-(void)initInterstitialIronSourceSDKWithAppKey:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x70;
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
    r29 = &saved_fp;
    if ((*(int8_t *)0x1011d83b8 & 0x1) == 0x0) {
            r24 = @class(NSString);
            r19 = [r2 retain];
            r24 = [[r24 stringWithFormat:@"IronSource SDK initialization complete"] retain];
            r23 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r0 class]];
            [r23 release];
            [r24 release];
            r21 = @class(IronSource);
            r20 = [[NSString stringWithFormat:@"%@%@"] retain];
            [r21 setMediationType:r20];
            [r20 release];
            r20 = @class(IronSource);
            r0 = [NSArray arrayWithObjects:&var_50 count:0x1];
            r21 = [r0 retain];
            [r20 initISDemandOnly:r19 adUnits:r21];
            [r19 release];
            [r21 release];
            *(int8_t *)0x1011d83b8 = 0x1;
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)requestInterstitialWithCustomEventInfo:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [MoPub sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isGDPRApplicable];
    [r0 release];
    if (r23 == 0x1) {
            r0 = [MoPub sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 canCollectPersonalInfo];
            [r0 release];
            [IronSource setConsent:r22];
    }
    [r20 setInstanceId:@"0"];
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKey:r2];
            r29 = r29;
            r21 = [r0 retain];
    }
    else {
            r21 = @"";
    }
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r20 setIsTestEnabled:[r0 boolValue]];
            [r0 release];
    }
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) goto loc_1004b4be8;

loc_1004b4b88:
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    if (r0 == 0x0) goto loc_1004b4bf0;

loc_1004b4bb8:
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r24 = [r0 retain];
    [r20 setInstanceId:r24];
    goto loc_1004b4be8;

loc_1004b4be8:
    [r24 release];
    goto loc_1004b4bf0;

loc_1004b4bf0:
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKey:r2];
            r29 = r29;
            r22 = [r0 retain];
            [r20 setPlacementName:r22];
            [r22 release];
    }
    else {
            [r20 setPlacementName:0x0];
    }
    if (([r20 isEmpty:r21] & 0x1) != 0x0) {
            r22 = [[r20 createErrorWith:@"IronSource adapter failed to requestInterstitial" andReason:@"ApplicationKey parameter is missing" andSuggestion:@"Make sure that 'applicationKey' server parameter is added"] retain];
            r26 = [NSStringFromClass([r20 class]) retain];
            r24 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r22] retain];
            r27 = [[r20 instanceId] retain];
            [MPLogging logEvent:r24 source:r27 fromClass:[r20 class]];
            [r27 release];
            [r24 release];
            [r26 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 interstitialCustomEvent:r20 didFailToLoadAdWithError:r22];
            [r0 release];
            [r22 release];
    }
    else {
            [IronSource setISDemandOnlyInterstitialDelegate:r20];
            [r20 initInterstitialIronSourceSDKWithAppKey:r21];
            if (*(int8_t *)byte_1011d83b8 == 0x1) {
                    [r20 loadInterstitial];
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)interstitialDidLoad:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r0 = [r19 instanceId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:r2];
    [r21 release];
    [r0 release];
    if (r23 != 0x0) {
            r24 = [NSStringFromClass([r19 class]) retain];
            r22 = [[MPLogEvent adLoadSuccessForAdapter:r24] retain];
            r20 = [[r19 instanceId] retain];
            [MPLogging logEvent:r22 source:r20 fromClass:[r19 class]];
            [r20 release];
            [r22 release];
            [r24 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialCustomEvent:r19 didLoadAd:0x0];
            [r0 release];
    }
    return;
}

-(bool)isEmpty:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [NSNull class];
            if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    if ([r19 respondsToSelector:r2] != 0x0 && [r19 length] == 0x0) {
                            r20 = 0x1;
                    }
                    else {
                            if ([r19 respondsToSelector:r2] != 0x0 && [r19 length] == 0x0) {
                                    r20 = 0x1;
                            }
                            else {
                                    r20 = @selector(respondsToSelector:);
                                    if (objc_msgSend(r19, r20) != 0x0) {
                                            if ([r19 count] == 0x0) {
                                                    if (CPU_FLAGS & E) {
                                                            r20 = 0x1;
                                                    }
                                            }
                                    }
                                    else {
                                            r20 = 0x0;
                                    }
                            }
                    }
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)createErrorWith:(void *)arg2 andReason:(void *)arg3 andSuggestion:(void *)arg4 {
    r31 = r31 - 0xa0;
    var_50 = r28;
    stack[-88] = r27;
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
    var_58 = **___stack_chk_guard;
    r23 = [arg2 retain];
    r25 = [arg3 retain];
    r21 = @class(NSBundle);
    r22 = [arg4 retain];
    r0 = [r21 mainBundle];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 localizedStringForKey:r23 value:@"" table:0x0] retain];
    [r23 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r23 = r0;
    r28 = [[r0 localizedStringForKey:r25 value:@"" table:0x0] retain];
    [r25 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r25 = [[r0 localizedStringForKey:r22 value:@"" table:0x0] retain];
    [r22 release];
    r22 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3] retain];
    [r25 release];
    [r0 release];
    [r28 release];
    [r23 release];
    [r21 release];
    [r20 release];
    r21 = [NSStringFromClass([self class]) retain];
    r19 = [[NSError errorWithDomain:r21 code:0x0 userInfo:r22] retain];
    [r21 release];
    [r22 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)interstitialDidFailToLoadWithError:(void *)arg2 instanceId:(void *)arg3 {
    r31 = r31 - 0x70;
    var_50 = r28;
    stack[-88] = r27;
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
    r20 = self;
    r19 = [arg2 retain];
    r24 = [arg3 retain];
    r25 = [[r19 localizedDescription] retain];
    r26 = [[NSString stringWithFormat:@"IronSource interstitial ad did fail to load with error: %@, instanceId: %@"] retain];
    r27 = [[MPLogEvent eventWithMessage:r26 level:0x1e] retain];
    [MPLogging logEvent:r27 source:0x0 fromClass:[r20 class]];
    [r27 release];
    [r26 release];
    [r25 release];
    r0 = [r20 instanceId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = [r0 isEqualToString:r2];
    [r24 release];
    [r0 release];
    if (r26 != 0x0) {
            if (r19 == 0x0) {
                    r0 = [r20 createErrorWith:@"Netowrk load error" andReason:@"IronSource network failed to load" andSuggestion:@"Check that your network configuration are according to the documentation."];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r19 release];
                    r19 = r24;
            }
            r26 = [NSStringFromClass([r20 class]) retain];
            r25 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r19] retain];
            r23 = [[r20 instanceId] retain];
            [MPLogging logEvent:r25 source:r23 fromClass:[r20 class]];
            [r23 release];
            [r25 release];
            [r26 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 interstitialCustomEvent:r20 didFailToLoadAdWithError:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)interstitialDidOpen:(void *)arg2 {
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
    r19 = self;
    r21 = [arg2 retain];
    r0 = [r19 instanceId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:r2];
    [r21 release];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialCustomEventWillAppear:r19];
            [r0 release];
            r23 = @class(MPLogging);
            r22 = @class(MPLogEvent);
            r24 = [NSStringFromClass([r19 class]) retain];
            r25 = [[r22 adWillAppearForAdapter:r24] retain];
            r26 = [[r19 instanceId] retain];
            [r23 logEvent:r25 source:r26 fromClass:[r19 class]];
            [r26 release];
            [r25 release];
            [r24 release];
            r23 = @class(MPLogging);
            r24 = @class(MPLogEvent);
            r25 = [NSStringFromClass([r19 class]) retain];
            r24 = [[r24 adShowSuccessForAdapter:r25] retain];
            r20 = [[r19 instanceId] retain];
            [r23 logEvent:r24 source:r20 fromClass:[r19 class]];
            [r20 release];
            [r24 release];
            [r25 release];
    }
    return;
}

-(void)interstitialDidShow:(void *)arg2 {
    r22 = @class(MPLogging);
    r20 = @class(MPLogEvent);
    r23 = [[NSString stringWithFormat:@"IronSource interstitial ad did show for instance %@"] retain];
    r24 = [[r20 eventWithMessage:r23 level:0x1e] retain];
    [r22 logEvent:r24 source:0x0 fromClass:[self class]];
    [r24 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidAppear:self];
    [r0 release];
    r22 = @class(MPLogging);
    r23 = @class(MPLogEvent);
    r24 = [NSStringFromClass([self class]) retain];
    r23 = [[r23 adDidAppearForAdapter:r24] retain];
    r25 = [[self instanceId] retain];
    [r22 logEvent:r23 source:r25 fromClass:[self class]];
    [r25 release];
    [r23 release];
    [r24 release];
    return;
}

-(void)interstitialDidFailToShowWithError:(void *)arg2 instanceId:(void *)arg3 {
    r20 = [arg2 retain];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adShowFailedForAdapter:r24 error:r20] retain];
    r25 = [[self instanceId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEvent:self didFailToLoadAdWithError:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void)interstitialDidClose:(void *)arg2 {
    r20 = @class(MPLogEvent);
    r23 = [[NSString stringWithFormat:@"IronSource interstitial ad did close for instance %@"] retain];
    r24 = [[r20 eventWithMessage:r23 level:0x1e] retain];
    [MPLogging logEvent:r24 source:0x0 fromClass:[self class]];
    [r24 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventWillDisappear:self];
    r24 = @class(MPLogging);
    r23 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r26 = [[r23 adWillDisappearForAdapter:r25] retain];
    r27 = [[self instanceId] retain];
    [r24 logEvent:r26 source:r27 fromClass:[self class]];
    [r27 release];
    [r26 release];
    [r25 release];
    [r0 interstitialCustomEventDidDisappear:self];
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adDidDisappearForAdapter:r26] retain];
    r23 = [[self instanceId] retain];
    [MPLogging logEvent:r25 source:r23 fromClass:[self class]];
    [r23 release];
    [r25 release];
    [r26 release];
    [r0 release];
    return;
}

-(void)didClickInterstitial:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidReceiveTapEvent:self];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adTappedForAdapter:r24] retain];
    r25 = [[self instanceId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    [r0 interstitialCustomEventWillLeaveApplication:self];
    [r0 release];
    return;
}

-(void *)placementName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementName)), 0x0);
    return r0;
}

-(void)setPlacementName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)instanceId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_instanceId)), 0x0);
    return r0;
}

-(void)setInstanceId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isTestEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_isTestEnabled;
    return r0;
}

-(void)setIsTestEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isTestEnabled = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_instanceId, 0x0);
    objc_storeStrong((int64_t *)&self->_placementName, 0x0);
    return;
}

@end