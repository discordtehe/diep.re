@implementation VungleInterstitialCustomEvent

-(void)invalidate {
    r20 = [[MPVungleRouter sharedRouter] retain];
    r19 = [[self placementId] retain];
    [r20 clearDelegateForPlacementId:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)requestInterstitialWithCustomEventInfo:(void *)arg2 adMarkup:(void *)arg3 {
    r0 = [arg2 retain];
    r20 = r0;
    r21 = [[r0 objectForKey:*0x100e7e608] retain];
    [self setPlacementId:r21];
    [r21 release];
    [self setHandledAdAvailable:0x0];
    [VungleAdapterConfiguration updateInitializationParameters:r20];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadAttemptForAdapter:r24 dspCreativeId:0x0 dspName:0x0] retain];
    r25 = [[self placementId] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r22 release];
    [r24 release];
    r0 = [MPVungleRouter sharedRouter];
    r0 = [r0 retain];
    [r0 requestInterstitialAdWithCustomEventInfo:r20 delegate:self];
    [r20 release];
    [r0 release];
    return;
}

-(void)vungleAdDidLoad {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self handledAdAvailable] & 0x1) == 0x0) {
            [r19 setHandledAdAvailable:0x1];
            r23 = [NSStringFromClass([r19 class]) retain];
            r21 = [[MPLogEvent adLoadSuccessForAdapter:r23] retain];
            r24 = [[r19 placementId] retain];
            [MPLogging logEvent:r21 source:r24 fromClass:[r19 class]];
            [r24 release];
            [r21 release];
            [r23 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialCustomEvent:r19 didLoadAd:0x0];
            [r0 release];
    }
    return;
}

-(void)vungleAdWillAppear {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adWillAppearForAdapter:r23] retain];
    r24 = [[self placementId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventWillAppear:self];
    [r0 release];
    return;
}

-(void)vungleAdWillDisappear {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adWillDisappearForAdapter:r23] retain];
    r24 = [[self placementId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventWillDisappear:self];
    [r0 release];
    return;
}

-(void)vungleAdDidDisappear {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adDidDisappearForAdapter:r23] retain];
    r24 = [[self placementId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidDisappear:self];
    [r0 release];
    return;
}

-(void)vungleAdDidAppear {
    r23 = @class(MPLogging);
    r21 = @class(MPLogEvent);
    r24 = [NSStringFromClass([self class]) retain];
    r25 = [[r21 adShowSuccessForAdapter:r24] retain];
    r26 = [[self placementId] retain];
    [r23 logEvent:r25 source:r26 fromClass:[self class]];
    [r26 release];
    [r25 release];
    [r24 release];
    r23 = @class(MPLogging);
    r24 = @class(MPLogEvent);
    r25 = [NSStringFromClass([self class]) retain];
    r24 = [[r24 adDidAppearForAdapter:r25] retain];
    r21 = [[self placementId] retain];
    [r23 logEvent:r24 source:r21 fromClass:[self class]];
    [r21 release];
    [r24 release];
    [r25 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidAppear:self];
    [r0 release];
    return;
}

-(void)vungleAdWasTapped {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adTappedForAdapter:r23] retain];
    r24 = [[self placementId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 interstitialCustomEventDidReceiveTapEvent:self];
    [r0 release];
    return;
}

-(void)vungleAdDidFailToLoad:(void *)arg2 {
    r20 = [arg2 retain];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r20] retain];
    r25 = [[self placementId] retain];
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

-(void)vungleAdDidFailToPlay:(void *)arg2 {
    r20 = [arg2 retain];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r20] retain];
    r25 = [[self placementId] retain];
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

-(void *)getPlacementID {
    r0 = [self placementId];
    return r0;
}

-(bool)handledAdAvailable {
    r0 = *(int8_t *)(int64_t *)&self->_handledAdAvailable;
    return r0;
}

-(void)showInterstitialFromRootViewController:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r28 = [arg2 retain];
    r19 = [[MPVungleRouter sharedRouter] retain];
    r0 = [r20 placementId];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r24 = [r19 isAdAvailableForPlacementId:r21];
    [r21 release];
    [r19 release];
    if (r24 == 0x0) goto loc_1004a1b88;

loc_1004a17f8:
    r0 = [r20 options];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r20 setOptions:0x0];
    }
    r21 = [[NSMutableDictionary dictionary] retain];
    r0 = [r20 localExtras];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    var_58 = @selector(options);
    if (r0 == 0x0) goto loc_1004a1c98;

loc_1004a187c:
    r0 = [r20 localExtras];
    r29 = r29;
    r0 = [r0 retain];
    r25 = @selector(count);
    r26 = objc_msgSend(r0, r25);
    [r0 release];
    [r24 release];
    if (r26 == 0x0) goto loc_1004a1d30;

loc_1004a18bc:
    var_70 = @selector(count);
    var_60 = r28;
    r0 = [r20 localExtras];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r26 = [r0 retain];
    [r19 release];
    if (r26 != 0x0) {
            r0 = [NSNumber numberWithLongLong:[r26 longLongValue]];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 unsignedIntegerValue];
            if (r0 != 0x0) {
                    r0 = [NSNumber numberWithUnsignedInteger:r0];
                    r29 = r29;
                    r19 = [r0 retain];
                    [r21 setObject:r19 forKeyedSubscript:*0x100e893a8];
                    [r19 release];
            }
            [r24 release];
    }
    r28 = @selector(objectForKey:);
    var_68 = r26;
    r0 = [r20 localExtras];
    r0 = [r0 retain];
    r19 = r0;
    r0 = objc_msgSend(r0, r28);
    r29 = r29;
    r24 = [r0 retain];
    [r19 release];
    if (r24 != 0x0) {
            [r24 floatValue];
            if (s0 > 0x0) {
                    r2 = *0x100e7e610;
                    r25 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    asm { fcvt       d0, s0 };
                    r0 = *(r25 + 0xfc0);
                    r0 = [r0 numberWithDouble:r2];
                    r29 = r29;
                    r19 = [r0 retain];
                    [r21 setObject:r19 forKeyedSubscript:*0x100e893b0];
                    [r19 release];
            }
    }
    r28 = @selector(objectForKey:);
    var_78 = r24;
    r0 = [r20 localExtras];
    r0 = [r0 retain];
    r19 = r0;
    r0 = objc_msgSend(r0, r28);
    r29 = r29;
    r24 = [r0 retain];
    [r19 release];
    if (r24 != 0x0) {
            r2 = [r24 boolValue];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithBool:r2];
            r29 = r29;
            r19 = [r0 retain];
            [r21 setObject:r19 forKeyedSubscript:*0x100e89350];
            [r19 release];
    }
    r28 = @selector(objectForKey:);
    r0 = [r20 localExtras];
    r0 = [r0 retain];
    r19 = r0;
    r2 = *0x100e7e630;
    r0 = objc_msgSend(r0, r28);
    r29 = r29;
    r27 = [r0 retain];
    [r19 release];
    if (r27 == 0x0) goto loc_1004a1d08;

loc_1004a1b38:
    r19 = [r27 intValue];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithUnsignedInteger:r2];
    r29 = r29;
    r28 = [r0 retain];
    if (r19 == 0x1) goto loc_1004a1cb4;

loc_1004a1b78:
    r2 = 0x1e;
    if (r19 != 0x2) goto loc_1004a1cdc;

loc_1004a1b80:
    r2 = 0x2;
    goto loc_1004a1cb8;

loc_1004a1cb8:
    r0 = [NSNumber numberWithUnsignedInteger:r2];
    r29 = r29;
    r19 = [r0 retain];
    [r28 release];
    r28 = r19;
    goto loc_1004a1cdc;

loc_1004a1cdc:
    [r21 setObject:r28 forKeyedSubscript:*0x100e89348];
    [r28 release];
    goto loc_1004a1d08;

loc_1004a1d08:
    [r27 release];
    [r24 release];
    [var_78 release];
    [var_68 release];
    r28 = var_60;
    r25 = var_70;
    goto loc_1004a1d30;

loc_1004a1d30:
    if (objc_msgSend(r21, r25) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r21;
            }
            else {
                    r2 = 0x0;
            }
    }
    [r20 setOptions:r2];
    r26 = [NSStringFromClass([r20 class]) retain];
    r24 = [[MPLogEvent adShowAttemptForAdapter:r26] retain];
    r27 = [[r20 placementId] retain];
    [MPLogging logEvent:r24 source:r27 fromClass:[r20 class]];
    [r27 release];
    [r24 release];
    [r26 release];
    r23 = [[MPVungleRouter sharedRouter] retain];
    r19 = [objc_msgSend(r20, var_58) retain];
    r20 = [[r20 placementId] retain];
    [r23 presentInterstitialAdFromViewController:r28 options:r19 forPlacementId:r20];
    [r20 release];
    [r19 release];
    goto loc_1004a1e74;

loc_1004a1e74:
    [r23 release];
    [r21 release];
    [r28 release];
    return;

loc_1004a1cb4:
    r2 = 0x18;
    goto loc_1004a1cb8;

loc_1004a1c98:
    [r24 release];
    r25 = @selector(count);
    goto loc_1004a1d30;

loc_1004a1b88:
    r21 = [[NSError errorWithCode:0x21 localizedDescription:@"Failed to show Vungle video interstitial: Vungle now claims that there is no available video ad."] retain];
    r25 = [NSStringFromClass([r20 class]) retain];
    r23 = [[MPLogEvent adShowFailedForAdapter:r25 error:r21] retain];
    r22 = [[r20 placementId] retain];
    [MPLogging logEvent:r23 source:r22 fromClass:[r20 class]];
    [r22 release];
    [r23 release];
    [r25 release];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r23 = r0;
    [r0 interstitialCustomEvent:r20 didFailToLoadAdWithError:r21];
    goto loc_1004a1e74;
}

-(void)setHandledAdAvailable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_handledAdAvailable = arg2;
    return;
}

-(void *)placementId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementId)), 0x0);
    return r0;
}

-(void)setPlacementId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)options {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_options)), 0x0);
    return r0;
}

-(void)setOptions:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_options, 0x0);
    objc_storeStrong((int64_t *)&self->_placementId, 0x0);
    return;
}

@end