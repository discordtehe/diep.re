@implementation FacebookNativeCustomEvent

+(void)setVideoEnabled:(bool)arg2 {
    *(int8_t *)0x1011d84e0 = arg2;
    return;
}

-(void)requestAdWithCustomEventInfo:(void *)arg2 {
    [self requestAdWithCustomEventInfo:arg2 adMarkup:0x0];
    return;
}

-(void *)fbNativeAd {
    r0 = self->_fbNativeAd;
    return r0;
}

-(void)setFbNativeAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fbNativeAd, arg2);
    return;
}

-(void)nativeAd:(void *)arg2 didFailWithError:(void *)arg3 {
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
    r19 = self;
    r23 = [arg3 code];
    r0 = [r19 class];
    r0 = NSStringFromClass(r0);
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r23 == 0x3e9) {
            r22 = @selector(class);
            r23 = [sub_1004fd7a0() retain];
            r24 = [[MPLogEvent adShowFailedForAdapter:r20 error:r23] retain];
            r25 = [[r19 fbPlacementId] retain];
            [MPLogging logEvent:r24 source:r25 fromClass:objc_msgSend(r19, r22)];
            [r25 release];
            [r24 release];
            [r23 release];
            [r20 release];
            r20 = [[r19 delegate] retain];
            r0 = sub_1004fd7a0();
    }
    else {
            r22 = @selector(class);
            r25 = [sub_1004fd5b0() retain];
            r24 = [[MPLogEvent adShowFailedForAdapter:r20 error:r25] retain];
            r26 = [[r19 fbPlacementId] retain];
            [MPLogging logEvent:r24 source:r26 fromClass:objc_msgSend(r19, r22)];
            [r26 release];
            [r24 release];
            [r25 release];
            [r20 release];
            r20 = [[r19 delegate] retain];
            r0 = sub_1004fd5b0();
    }
    r21 = [r0 retain];
    [r20 nativeCustomEvent:r19 didFailToLoadAdWithError:r21];
    [r21 release];
    [r20 release];
    return;
}

-(void)nativeAdDidLoad:(void *)arg2 {
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
    var_48 = **___stack_chk_guard;
    r21 = [arg2 retain];
    r20 = objc_alloc();
    r22 = [[NSNumber numberWithBool:[self videoEnabled]] retain];
    r23 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
    r20 = [r20 initWithFBNativeAd:r21 adProperties:r23];
    [r21 release];
    [r23 release];
    [r22 release];
    r21 = [objc_alloc() initWithAdAdapter:r20];
    r25 = [NSStringFromClass([self class]) retain];
    r23 = [[MPLogEvent adLoadSuccessForAdapter:r25] retain];
    r26 = [[self fbPlacementId] retain];
    [MPLogging logEvent:r23 source:r26 fromClass:[self class]];
    [r26 release];
    [r23 release];
    [r25 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeCustomEvent:self didLoadAd:r21];
    [r0 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(bool)videoEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_videoEnabled;
    return r0;
}

-(void *)fbPlacementId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_fbPlacementId)), 0x0);
    return r0;
}

-(void)setVideoEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoEnabled = arg2;
    return;
}

-(void)requestAdWithCustomEventInfo:(void *)arg2 adMarkup:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = [[r19 objectForKey:@"placement_id"] retain];
    [r21 setFbPlacementId:r23];
    [r23 release];
    r0 = [r19 objectForKey:*0x100e7ee30];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKey:*0x100e7ee30];
            r29 = r29;
            r0 = [r0 retain];
            [r21 setVideoEnabled:[r0 boolValue]];
            [r0 release];
    }
    else {
            [r21 setVideoEnabled:*(int8_t *)0x1011d84e0];
    }
    r0 = [r21 fbPlacementId];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = objc_alloc();
            r24 = [[r21 fbPlacementId] retain];
            r23 = [r23 initWithPlacementID:r24];
            [r21 setFbNativeAd:r23];
            [r23 release];
            [r24 release];
            r0 = [r21 fbNativeAd];
            r0 = [r0 retain];
            [r0 setDelegate:r21];
            [r0 release];
            r0 = [FacebookAdapterConfiguration mediationString];
            r29 = r29;
            r25 = [r0 retain];
            [FBAdSettings setMediationService:r25];
            [r25 release];
            if (r20 != 0x0) {
                    r27 = [[NSString stringWithFormat:r2] retain];
                    r28 = [[MPLogEvent eventWithMessage:r27 level:0x1e] retain];
                    [MPLogging logEvent:r28 source:0x0 fromClass:[r21 class]];
                    [r28 release];
                    [r27 release];
                    r0 = [r21 fbNativeAd];
                    r0 = [r0 retain];
                    [r0 loadAdWithBidPayload:r20];
                    [r0 release];
                    r23 = [NSStringFromClass([r21 class]) retain];
                    r24 = [[MPLogEvent adLoadAttemptForAdapter:r23 dspCreativeId:0x0 dspName:0x0] retain];
                    r0 = [r21 fbPlacementId];
            }
            else {
                    r27 = [[NSString stringWithFormat:r2] retain];
                    r28 = [[MPLogEvent eventWithMessage:r27 level:0x1e] retain];
                    [MPLogging logEvent:r28 source:0x0 fromClass:[r21 class]];
                    [r28 release];
                    [r27 release];
                    r0 = [r21 fbNativeAd];
                    r0 = [r0 retain];
                    [r0 loadAd];
                    [r0 release];
                    r23 = [NSStringFromClass([r21 class]) retain];
                    r24 = [[MPLogEvent adLoadAttemptForAdapter:r23 dspCreativeId:0x0 dspName:0x0] retain];
                    r0 = [r21 fbPlacementId];
            }
            r27 = [r0 retain];
            [MPLogging logEvent:r24 source:r27 fromClass:[r21 class]];
    }
    else {
            r23 = [[r21 delegate] retain];
            r25 = [sub_1004fd5b0() retain];
            [r23 nativeCustomEvent:r21 didFailToLoadAdWithError:r25];
            [r25 release];
            [r23 release];
            r23 = [NSStringFromClass([r21 class]) retain];
            r24 = [sub_1004fd5b0() retain];
            r27 = [[MPLogEvent adLoadFailedForAdapter:r23 error:r24] retain];
            r22 = [[r21 fbPlacementId] retain];
            [MPLogging logEvent:r27 source:r22 fromClass:[r21 class]];
            [r22 release];
    }
    [r27 release];
    [r24 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setFbPlacementId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_fbPlacementId, 0x0);
    objc_storeStrong((int64_t *)&self->_fbNativeAd, 0x0);
    return;
}

@end