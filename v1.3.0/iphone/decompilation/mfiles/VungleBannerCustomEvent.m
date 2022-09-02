@implementation VungleBannerCustomEvent

-(bool)enableAutomaticImpressionAndClickTracking {
    return 0x0;
}

-(void)invalidate {
    r20 = [[MPVungleRouter sharedRouter] retain];
    r21 = [[self placementId] retain];
    [r20 invalidateBannerAdViewForPlacementID:r21 delegate:self];
    [r21 release];
    [r20 release];
    return;
}

-(void)requestAdWithSize:(struct CGSize)arg2 customEventInfo:(void *)arg3 adMarkup:(void *)arg4 {
    r4 = arg4;
    memcpy(&r2, &arg2, 0x8);
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
    r0 = [r2 retain];
    r19 = r0;
    r22 = [[r0 objectForKey:*0x100e7e608] retain];
    [r20 setPlacementId:r22];
    [r22 release];
    [r20 setOptions:0x0];
    r0 = [r19 objectForKey:@"adunit_format"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r21 lowercaseString];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 containsString:@"medium_rectangle"];
            [r0 release];
            if ((r23 & 0x1) != 0x0) {
                    [r20 setBannerSize:@"medium_rectangle"];
                    [r20 setBannerInfo:r19];
                    [r20 setIsAdCached:0x0];
                    r22 = [[NSTimer scheduledTimerWithTimeInterval:0x0 repeats:&var_78 block:r4] retain];
                    [r20 setTimeOutTimer:r22];
                    [r22 release];
                    r22 = [[MPVungleRouter sharedRouter] retain];
                    [r20 bannerSize];
                    [r22 requestBannerAdWithCustomEventInfo:r19 size:r20 delegate:r4];
            }
            else {
                    r22 = @class(MPLogging);
                    r23 = @class(MPLogEvent);
                    r25 = [[NSString stringWithFormat:@"Vungle only supports 300*250 ads. Please ensure your MoPub ad unit format is Medium Rectangle."] retain];
                    r26 = [[r23 eventWithMessage:r25 level:0x1e] retain];
                    [r22 logEvent:r26 source:0x0 fromClass:[r20 class]];
                    [r26 release];
                    [r25 release];
                    r22 = [[NSError errorWithCode:0x21 localizedDescription:@"Invalid sizes received. Vungle only supports 300 x 250 ads."] retain];
                    r25 = @class(MPLogging);
                    r26 = @class(MPLogEvent);
                    r27 = [NSStringFromClass([r20 class]) retain];
                    r26 = [[r26 adLoadFailedForAdapter:r27 error:r22] retain];
                    [r25 logEvent:r26 source:0x0 fromClass:[r20 class]];
                    [r26 release];
                    [r27 release];
                    r0 = [r20 delegate];
                    r0 = [r0 retain];
                    [r0 bannerCustomEvent:r20 didFailToLoadAdWithError:0x0];
                    [r0 release];
            }
    }
    else {
            r22 = @class(MPLogging);
            r23 = @class(MPLogEvent);
            r25 = [[NSString stringWithFormat:@"Vungle only supports 300*250 ads. Please ensure your MoPub ad unit format is Medium Rectangle."] retain];
            r26 = [[r23 eventWithMessage:r25 level:0x1e] retain];
            [r22 logEvent:r26 source:0x0 fromClass:[r20 class]];
            [r26 release];
            [r25 release];
            r22 = [[NSError errorWithCode:0x21 localizedDescription:@"Invalid sizes received. Vungle only supports 300 x 250 ads."] retain];
            r25 = @class(MPLogging);
            r26 = @class(MPLogEvent);
            r27 = [NSStringFromClass([r20 class]) retain];
            r26 = [[r26 adLoadFailedForAdapter:r27 error:r22] retain];
            [r25 logEvent:r26 source:0x0 fromClass:[r20 class]];
            [r26 release];
            [r27 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 bannerCustomEvent:r20 didFailToLoadAdWithError:0x0];
            [r0 release];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)vungleAdWasTapped {
    r22 = [[NSString stringWithFormat:@"Vungle video banner was tapped"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 trackClick];
    [r0 release];
    return;
}

-(void)vungleAdDidFailToLoad:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r22 = [[[r19 retain] localizedDescription] retain];
            r24 = [[NSString stringWithFormat:@"Vungle video banner failed to load with error: %@"] retain];
            r0 = [MPLogEvent eventWithMessage:r24 level:0x1e];
            r29 = r29;
            r23 = [r0 retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
            [r23 release];
            [r24 release];
            [r22 release];
    }
    r0 = [r20 delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEvent:r20 didFailToLoadAdWithError:r19];
    [r0 release];
    [r19 release];
    [r19 release];
    return;
}

-(void *)getPlacementID {
    r0 = [self placementId];
    return r0;
}

-(void)vungleAdWillLeaveApplication {
    r22 = [[NSString stringWithFormat:@"Vungle video banner will leave the application"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEventWillLeaveApplication:self];
    [r0 release];
    return;
}

-(void *)placementId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementId)), 0x0);
    return r0;
}

-(void)vungleAdDidLoad {
    var_60 = d9;
    stack[-104] = d8;
    r31 = r31 + 0xffffffffffffff90;
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
    r19 = self;
    r0 = [self options];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 setOptions:0x0];
    }
    r20 = [[NSMutableDictionary dictionary] retain];
    r0 = [r19 localExtras];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = [r19 localExtras];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 count];
            [r0 release];
            [r23 release];
            if (r26 != 0x0) {
                    r0 = [r19 localExtras];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = [r0 objectForKey:r2];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r27 release];
                    if (r23 != 0x0) {
                            r0 = [r23 retain];
                            r27 = r0;
                            if ([r0 length] != 0x0) {
                                    [r20 setObject:r27 forKeyedSubscript:*0x100e89358];
                            }
                            [r27 release];
                    }
                    r25 = @selector(objectForKey:);
                    r0 = [r19 localExtras];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = objc_msgSend(r0, r25);
                    r29 = r29;
                    r26 = [r0 retain];
                    [r27 release];
                    if (r26 != 0x0) {
                            r0 = [NSNumber numberWithLongLong:[r26 longLongValue]];
                            r29 = r29;
                            r0 = [r0 retain];
                            r27 = r0;
                            r0 = [r0 unsignedIntegerValue];
                            if (r0 != 0x0) {
                                    r0 = [NSNumber numberWithUnsignedInteger:r0];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    [r20 setObject:r28 forKeyedSubscript:*0x100e893a8];
                                    [r28 release];
                            }
                            [r27 release];
                    }
                    r25 = @selector(objectForKey:);
                    r0 = [r19 localExtras];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = objc_msgSend(r0, r25);
                    r29 = r29;
                    r24 = [r0 retain];
                    [r27 release];
                    if (r24 != 0x0) {
                            r2 = [r24 boolValue];
                    }
                    else {
                            r2 = 0x1;
                    }
                    r0 = [NSNumber numberWithBool:r2];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r20 setObject:r25 forKeyedSubscript:*0x100e89350];
                    [r25 release];
                    [r24 release];
                    [r26 release];
                    [r23 release];
            }
    }
    else {
            [r23 release];
    }
    if ([r20 count] == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r20;
            }
            else {
                    r2 = 0x0;
            }
    }
    [r19 setOptions:r2];
    r22 = objc_alloc();
    [r19 bannerSize];
    [r19 bannerSize];
    r24 = [r22 initWithFrame:r2];
    r25 = [[MPVungleRouter sharedRouter] retain];
    r26 = [[r19 options] retain];
    r27 = [[r19 placementId] retain];
    r0 = [r25 renderBannerAdInView:r24 options:r26 forPlacementID:r27];
    r29 = r29;
    r21 = [r0 retain];
    [r24 release];
    [r27 release];
    [r26 release];
    [r25 release];
    if (r21 != 0x0) {
            r22 = [[MPVungleRouter sharedRouter] retain];
            r23 = [[r19 placementId] retain];
            [r22 completeBannerAdViewForPlacementID:r23];
            [r23 release];
            [r22 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 bannerCustomEvent:r19 didLoadAd:r21];
            [r0 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 trackImpression];
            [r0 release];
            [r19 setIsAdCached:0x1];
    }
    else {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 bannerCustomEvent:r19 didFailToLoadAdWithError:0x0];
            [r0 release];
    }
    [r21 release];
    [r20 release];
    return;
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

-(void)setBannerInfo:(void *)arg2 {
    self->_bannerInfo = arg2;
    return;
}

-(void *)bannerInfo {
    r0 = self->_bannerInfo;
    return r0;
}

-(void *)timeOutTimer {
    r0 = self->_timeOutTimer;
    return r0;
}

-(void)setTimeOutTimer:(void *)arg2 {
    self->_timeOutTimer = arg2;
    return;
}

-(bool)isAdCached {
    r0 = *(int8_t *)(int64_t *)&self->_isAdCached;
    return r0;
}

-(void)setIsAdCached:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAdCached = arg2;
    return;
}

-(struct CGSize)bannerSize {
    r0 = self;
    return r0;
}

-(void)setBannerSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_bannerSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_options, 0x0);
    objc_storeStrong((int64_t *)&self->_placementId, 0x0);
    return;
}

@end