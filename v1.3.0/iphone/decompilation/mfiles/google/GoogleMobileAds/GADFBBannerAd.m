@implementation GADFBBannerAd

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithGADMAdNetworkConnector:(void *)arg2 adapter:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_adapter, r20);
            objc_storeWeak((int64_t *)&r21->_connector, r19);
            r0 = [GADFBAdapterDelegate alloc];
            r0 = [r0 initWithAdapter:r20 connector:r19];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adapterDelegate));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)stopBeingDelegate {
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adapterDelegate));
    r8 = *(self + r9);
    *(self + r9) = 0x0;
    [r8 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adapterDelegate, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerAd, 0x0);
    objc_destroyWeak((int64_t *)&self->_adapter);
    objc_destroyWeak((int64_t *)&self->_connector);
    return;
}

-(void)getBannerWithSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_80 = d13;
    stack[-136] = d12;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    r31 = r31 + 0xffffffffffffff70 - 0x1f0;
    r22 = r2;
    r21 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r21->_connector);
    r20 = objc_loadWeakRetained((int64_t *)&r21->_adapter);
    if (r19 != 0x0) {
            asm { ccmp       x20, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            var_250 = r20;
            var_230 = *(r22 + 0x10);
            var_240 = *(int128_t *)r22;
            sub_100845b10(r29 - 0xd0);
            var_258 = 0x100bfcd80;
            sub_100845a5c();
            sub_100845a5c();
            sub_100845a5c();
            sub_100845a5c();
            r0 = sub_100846600(&var_150);
            r24 = [r0 retain];
            r0 = sub_100846600(&var_170);
            r25 = [r0 retain];
            r0 = sub_100846600(&var_190);
            r26 = [r0 retain];
            r0 = sub_100846600(&var_1B0);
            r27 = [r0 retain];
            r0 = [NSArray arrayWithObjects:r29 - 0xa8 count:0x4];
            r29 = r29;
            r23 = [r0 retain];
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
            sub_10086b934(&var_1E0, r23);
            sub_100845b10(&var_200);
            if (d1 == *0x100bfcd88) {
                    r28 = 0x100bfcd88;
                    r24 = 0x0;
            }
            else {
                    if (d1 == *0x100bfcd98) {
                            r24 = 0x0;
                            r28 = 0x100bfcd98;
                            var_258 = 0x100bfcd90;
                    }
                    else {
                            if (d1 == *0x100bfcdb8) {
                                    r24 = 0x0;
                                    r28 = 0x100bfcdb8;
                                    var_258 = 0x100bfcdb0;
                            }
                            else {
                                    if (d0 == *(int128_t *)0x100bfcda0 && d1 == *(int128_t *)0x100bfcda8) {
                                            r24 = 0x0;
                                            r28 = 0x100bfcda8;
                                            var_258 = 0x100bfcda0;
                                    }
                                    else {
                                            r0 = sub_100845e00(&var_220);
                                            r25 = [r0 retain];
                                            r24 = [[NSString stringWithFormat:@"Invalid size (%@) for Facebook mediation adapter."] retain];
                                            r26 = [[NSDictionary dictionaryWithObjects:r29 - 0xb0 forKeys:r29 - 0xb8 count:0x1] retain];
                                            [r24 release];
                                            [r25 release];
                                            r0 = [NSError errorWithDomain:*0x100e92df8 code:0xa userInfo:r26];
                                            r29 = r29;
                                            r24 = [[r0 retain] autorelease];
                                            [r26 release];
                                            r8 = *_CGSizeZero;
                                            var_258 = r8;
                                            r28 = r8 + 0x8;
                                    }
                            }
                    }
            }
            [r23 release];
            r25 = [r24 retain];
            r20 = var_250;
            if (r25 != 0x0) {
                    [r19 adapter:r20 didFailAd:r25];
            }
            else {
                    r0 = [r19 viewControllerForPresentingModalView];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r23 != 0x0) {
                            r0 = [r19 publisherId];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    d8 = *var_258;
                                    r0 = [FBAdView alloc];
                                    r0 = [r0 initWithPlacementID:r24 adSize:r23 rootViewController:r4];
                                    r27 = sign_extend_64(*(int32_t *)ivar_offset(_bannerAd));
                                    r8 = *(r21 + r27);
                                    *(r21 + r27) = r0;
                                    [r8 release];
                                    r0 = *(r21 + r27);
                                    if (r0 != 0x0) {
                                            r25 = sign_extend_64(*(int32_t *)ivar_offset(_adapterDelegate));
                                            [r0 setDelegate:*(r21 + r25)];
                                            if (d8 < 0x0) {
                                                    [*(r21 + r25) setFinalBannerSize:r2];
                                            }
                                            r26 = [[GADRequest sdkVersion] retain];
                                            r25 = [[NSString stringWithFormat:@"GOOGLE_%@:%@"] retain];
                                            [FBAdSettings setMediationService:r25];
                                            [r25 release];
                                            [r26 release];
                                            [*(r21 + r27) loadAd];
                                    }
                                    else {
                                            r22 = [NSStringFromClass([FBAdView class]) retain];
                                            r21 = [[NSString stringWithFormat:@"%@ failed to initialize."] retain];
                                            [r22 release];
                                            r22 = [sub_1005a6b3c(r21) retain];
                                            [r19 adapter:r20 didFailAd:r22];
                                            [r22 release];
                                            [r21 release];
                                    }
                                    r25 = 0x0;
                            }
                            else {
                                    r21 = [sub_1005a6b3c(@"Placement ID cannot be nil.") retain];
                                    [r25 release];
                                    [r19 adapter:r20 didFailAd:r21];
                                    r25 = r21;
                            }
                            [r24 release];
                    }
                    else {
                            r21 = [sub_1005a6b3c(@"Root view controller cannot be nil.") retain];
                            [r25 release];
                            [r19 adapter:r20 didFailAd:r21];
                            r25 = r21;
                    }
                    [r23 release];
            }
            [r25 release];
    }
    var_248 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_248) {
            __stack_chk_fail();
    }
    return;
}

@end