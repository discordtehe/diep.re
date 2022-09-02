@implementation GADFBBannerRenderer

-(void)adView:(void *)arg2 didFailWithError:(void *)arg3 {
    r0 = self->_adLoadCompletionHandler;
    [[(*(r0 + 0x10))(r0, 0x0, arg3, arg3) retain] release];
    return;
}

-(void)adViewDidLoad:(void *)arg2 {
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
    r20 = arg2;
    r19 = self;
    r23 = (int64_t *)&r19->_finalBannerSize;
    if (*(int128_t *)r23 == *(int128_t *)*_CGSizeZero) {
            asm { fccmp      d1, d3, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            [r20 retain];
            [r20 frame];
            [r20 setFrame:r2];
            [r22 release];
            *(int128_t *)r23 = *(int128_t *)r24;
    }
    r0 = r19->_adLoadCompletionHandler;
    objc_storeWeak((int64_t *)&r19->_adEventDelegate, [(*(r0 + 0x10))(r0, r19, 0x0) retain]);
    [r20 release];
    return;
}

-(void)renderBannerForAdConfiguration:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    objc_storeStrong((int64_t *)&r21->_adConfig, arg2);
    r0 = objc_retainBlock(r20);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adLoadCompletionHandler));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    r22 = (int64_t *)&r21->_finalBannerSize;
    if (r19 != 0x0) {
            r23 = &var_68;
            [r19 adSize];
    }
    else {
            r23 = &var_68;
    }
    *(int128_t *)r22 = *(int128_t *)r23;
    r0 = [r19 bidResponse];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r21->_isRTBRequest = 0x1;
    }
    r0 = [r19 credentials];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 settings];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placement_id"];
    r29 = r29;
    r22 = [r0 retain];
    [r25 release];
    [r24 release];
    if (r22 != 0x0) {
            r0 = [r19 topViewController];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    r26 = [FBAdView alloc];
                    r27 = [[r19 bidResponse] retain];
                    r0 = [r19 topViewController];
                    r29 = r29;
                    r25 = [r0 retain];
                    r0 = [r26 initWithPlacementID:r22 bidPayload:r27 rootViewController:r25 error:&var_70];
                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
                    r8 = *(r21 + r26);
                    *(r21 + r26) = r0;
                    [r8 release];
                    [r25 release];
                    [r27 release];
                    [*(r21 + r26) setDelegate:r21];
                    if (var_70 != 0x0) {
                            r0 = (*(r20 + 0x10))(r20, 0x0);
                            r0 = [r0 retain];
                    }
                    else {
                            r21 = *(r21 + r26);
                            r23 = [[r19 bidResponse] retain];
                            [r21 loadAdWithBidPayload:r23];
                            r0 = r23;
                    }
            }
            else {
                    r21 = [sub_1005a6b3c(@"Root view controller cannot be nil.") retain];
                    [[(*(r20 + 0x10))(r20, 0x0, r21) retain] release];
                    r0 = r21;
            }
            [r0 release];
            r0 = r24;
    }
    else {
            r21 = [sub_1005a6b3c(@"Placement ID cannot be nil.") retain];
            [[(*(r20 + 0x10))(r20, 0x0, r21) retain] release];
            r0 = r21;
    }
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)adViewDidFinishHandlingClick:(void *)arg2 {
    return;
}

-(void)adViewDidClick:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r20->_adEventDelegate);
    if (r19 != 0x0) {
            if (*(int8_t *)(int64_t *)&r20->_isRTBRequest == 0x0) {
                    [r19 reportClick];
            }
            [r19 willBackgroundApplication];
    }
    [r19 release];
    return;
}

-(void *)viewControllerForPresentingModalView {
    r0 = self->_adConfig;
    r0 = [r0 topViewController];
    return r0;
}

-(void *)view {
    r0 = self->_adView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adEventDelegate);
    objc_storeStrong((int64_t *)&self->_adView, 0x0);
    objc_storeStrong((int64_t *)&self->_adConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_adLoadCompletionHandler, 0x0);
    return;
}

@end