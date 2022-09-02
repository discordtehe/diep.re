@implementation MOPUBNativeVideoAdAdapter

-(void)dealloc {
    [self removeStaticImpressionTimer];
    [*(self + 0x40) cancel];
    [*(self + 0x40) setDelegate:0x0];
    objc_storeWeak(self + 0x18, 0x0);
    [[&var_20 super] dealloc];
    return;
}

-(void)removeStaticImpressionTimer {
    [*(self + 0x38) setDelegate:0x0];
    r0 = *(self + 0x38);
    *(self + 0x38) = 0x0;
    [r0 release];
    return;
}

-(void)willAttachToView:(void *)arg2 {
    var_40 = d9;
    stack[-72] = d8;
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
    [r20 removeStaticImpressionTimer];
    r0 = [r20 properties];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKey:*0x100e7eec0];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    r23 = [r21 isImpressionMinVisiblePixelsValid];
    r22 = objc_alloc();
    [r21 impressionMinVisibleSeconds];
    v8 = v0;
    if (r23 != 0x0) {
            [r21 impressionMinVisiblePixels];
            r8 = &@selector(initWithRequiredSecondsForImpression:requiredViewVisibilityPixels:);
    }
    else {
            [r21 impressionMinVisiblePercent];
            asm { scvtf      s0, x0 };
            asm { fcvt       d1, s0 };
            r8 = &@selector(initWithRequiredSecondsForImpression:requiredViewVisibilityPercentage:);
    }
    r22 = objc_msgSend(r22, *r8);
    [r20 setImpressionTimer:r22];
    [r22 release];
    r0 = [r20 impressionTimer];
    r0 = [r0 retain];
    [r0 setDelegate:r20];
    [r0 release];
    r0 = [r20 impressionTimer];
    r0 = [r0 retain];
    [r0 startTrackingView:r19];
    [r19 release];
    [r0 release];
    [r21 release];
    return;
}

-(void)displayContentForURL:(void *)arg2 rootViewController:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && r20 != 0x0) {
            [NSURL class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r0 = [r19 absoluteString];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 length];
                    [r0 release];
                    if (r23 != 0x0) {
                            r0 = [r21 destinationDisplayAgent];
                            r0 = [r0 retain];
                            [r0 displayDestinationForURL:r19];
                            [r0 release];
                    }
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)displayContentForDAAIconTap {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[NSURL URLWithString:*0x100e7eee8] retain];
    r0 = [r20 properties];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e7eed8];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 != 0x0) {
            r2 = *0x100e7eed8;
            r0 = [NSURL URLWithString:r22];
            r29 = r29;
            r21 = [r0 retain];
    }
    else {
            r2 = *0x100e7eed8;
            r21 = 0x0;
    }
    [r22 release];
    r0 = [r20 destinationDisplayAgent];
    r0 = [r0 retain];
    r20 = r0;
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r21;
            }
            else {
                    r2 = r19;
            }
    }
    [r0 displayDestinationForURL:r2];
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)handleVideoViewImpression {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeAdWillLogImpression:self];
    [r0 release];
    return;
}

-(void)handleVideoViewClick {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeAdDidClick:self];
    [r0 release];
    return;
}

-(void)handleVideoHasProgressedToTime:(double)arg2 {
    r0 = [self impressionTimer];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [self setImpressionTimer:0x0];
    return;
}

-(void)adViewWillLogImpression:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeAdWillLogImpression:self];
    [r0 release];
    return;
}

-(void *)viewControllerForPresentingModalView {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)displayAgentWillPresentModal {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeAdWillPresentModalForAdapter:self];
    [r0 release];
    return;
}

-(void)displayAgentWillLeaveApplication {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeAdWillLeaveApplicationFromAdapter:self];
    [r0 release];
    return;
}

-(void *)initWithAdProperties:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x260;
    r21 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_1C8 super] init];
    r23 = r0;
    if (r0 == 0x0) goto loc_1004965b4;

loc_100495dfc:
    var_280 = r21;
    var_270 = r23;
    r0 = [NSArray arrayWithObjects:r29 - 0xa0 count:0x8];
    r29 = r29;
    r0 = [r0 retain];
    var_200 = q0;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_258 = r0;
    var_268 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100495fa0;

loc_100495ed4:
    r23 = r0;
    r24 = *var_200;
    r9 = 0x101137000;
    goto loc_100495ef0;

loc_100495ef0:
    r25 = 0x0;
    r21 = r9;
    r22 = *(r9 + 0xc70);
    goto loc_100495f04;

loc_100495f04:
    if (*var_200 != r24) {
            objc_enumerationMutation(var_258);
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 == 0x0) goto loc_100495f60;

loc_100495f40:
    [NSString class];
    if (objc_msgSend(r26, r22) == 0x0) goto loc_10049618c;

loc_100495f60:
    [r26 release];
    r25 = r25 + 0x1;
    if (r25 < r23) goto loc_100495f04;

loc_100495f74:
    r0 = objc_msgSend(var_258, var_268);
    r23 = r0;
    r9 = r21;
    if (r0 != 0x0) goto loc_100495ef0;

loc_100495fa0:
    [var_258 release];
    r0 = [NSArray arrayWithObjects:r2 count:r3];
    r29 = r29;
    r0 = [r0 retain];
    var_240 = q0;
    r0 = [r0 retain];
    var_260 = r0;
    r0 = objc_msgSend(r0, var_268);
    if (r0 == 0x0) goto loc_1004960d8;

loc_100496010:
    r27 = r0;
    r20 = *var_240;
    r9 = 0x101137000;
    goto loc_10049602c;

loc_10049602c:
    r25 = 0x0;
    r21 = r9;
    r26 = *(r9 + 0xc70);
    goto loc_100496040;

loc_100496040:
    if (*var_240 != r20) {
            objc_enumerationMutation(var_260);
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0) goto loc_10049609c;

loc_10049607c:
    [UIView class];
    if (objc_msgSend(r24, r26) == 0x0) goto loc_1004961a8;

loc_10049609c:
    [r24 release];
    r25 = r25 + 0x1;
    if (r25 < r27) goto loc_100496040;

loc_1004960b0:
    r0 = objc_msgSend(var_260, var_268);
    r27 = r0;
    r9 = r21;
    if (r0 != 0x0) goto loc_10049602c;

loc_1004960d8:
    [var_260 release];
    r0 = [r19 objectForKey:*0x100e7eef0];
    r29 = r29;
    r20 = [r0 retain];
    r2 = [NSArray class];
    r0 = [r20 isKindOfClass:r2];
    var_290 = r20;
    if (r0 != 0x0) {
            r0 = [r20 count];
            r23 = var_270;
            if (r0 != 0x0) {
                    r0 = sub_1004af8d8();
                    r29 = r29;
                    r0 = [r0 retain];
                    r8 = *(r23 + 0x20);
                    *(r23 + 0x20) = r0;
                    [r8 release];
                    r26 = 0x1;
            }
            else {
                    r26 = 0x0;
            }
    }
    else {
            r26 = 0x0;
            r23 = var_270;
    }
    r27 = @selector(isKindOfClass:);
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    [NSArray class];
    r0 = objc_msgSend(r20, r27);
    var_270 = r20;
    if (r0 == 0x0) goto loc_100496264;

loc_10049623c:
    r0 = sub_1004af8d8();
    r29 = r29;
    r0 = [r0 retain];
    r22 = *(r23 + 0x28);
    *(r23 + 0x28) = r0;
    r20 = var_280;
    r28 = *0x100e7ef00;
    goto loc_100496308;

loc_100496308:
    [r22 release];
    goto loc_100496310;

loc_100496310:
    r25 = [[r19 objectForKey:*0x100e7eef8] retain];
    r2 = r25;
    r0 = objc_msgSend(@class(NSURL), *0x101137700);
    r0 = [r0 retain];
    r8 = *(r23 + 0x10);
    *(r23 + 0x10) = r0;
    [r8 release];
    [r25 release];
    r0 = [NSArray arrayWithObjects:*0x100e7eef0];
    r29 = r29;
    r22 = [r0 retain];
    [r19 removeObjectsForKeys:r22];
    [r22 release];
    objc_storeStrong(r23 + 0x8, r20);
    if (r26 == 0x0) goto loc_100496468;

loc_1004963c8:
    r25 = *0x100e7eec8;
    r0 = [r19 objectForKeyedSubscript:r25];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 != 0x0) {
            r0 = [MPMemoryCache sharedInstance];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 imageForKey:r24];
            r29 = r29;
            r22 = [r0 retain];
            [r25 release];
            if (r22 != 0x0) {
                    [r19 setObject:r2 forKey:r3];
            }
            [r22 release];
            r26 = var_290;
    }
    else {
            r26 = var_290;
            if (*0x1011d8320 != 0x0 && *0x1011d8328 != 0x0) {
                    [r19 setObject:r2 forKey:r3];
            }
            else {
                    r0 = sub_1004af7bc();
                    r29 = r29;
                    r0 = [r0 retain];
                    r8 = *0x1011d8320;
                    *0x1011d8320 = r0;
                    [r8 release];
                    if (*0x1011d8320 != 0x0) {
                            r0 = [UIImage imageWithContentsOfFile:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                    }
                    else {
                            r0 = 0x0;
                    }
                    r8 = *0x1011d8328;
                    *0x1011d8328 = r0;
                    [r8 release];
                    if (*0x1011d8320 != 0x0) {
                            [r19 setObject:r2 forKey:r3];
                    }
            }
            if (*0x1011d8328 != 0x0) {
                    [r19 setObject:r2 forKey:r3];
            }
    }
    r0 = [MPAdDestinationDisplayAgent agentWithDelegate:r23];
    r0 = [r0 retain];
    r8 = *(r23 + 0x40);
    *(r23 + 0x40) = r0;
    [r8 release];
    r0 = *(r23 + 0x38);
    *(r23 + 0x38) = 0x0;
    [r0 release];
    [r24 release];
    [var_270 release];
    [r26 release];
    [var_260 release];
    [var_258 release];
    goto loc_1004965b4;

loc_1004965b4:
    r21 = [r23 retain];
    goto loc_1004965c0;

loc_1004965c0:
    var_60 = **___stack_chk_guard;
    [r19 release];
    [r23 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100496468:
    [var_270 release];
    [var_290 release];
    [var_260 release];
    [var_258 release];
    r21 = 0x0;
    goto loc_1004965c0;

loc_100496264:
    r27 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r20, r27) == 0x0) goto loc_1004962f0;

loc_100496288:
    r0 = [NSURL URLWithString:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r20 = var_280;
    r28 = *0x100e7ef00;
    if (r0 != 0x0) {
            r0 = [NSArray arrayWithObjects:r2 count:r3];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *(r23 + 0x28);
            *(r23 + 0x28) = r0;
            [r8 release];
    }
    else {
            r26 = 0x0;
    }
    goto loc_100496308;

loc_1004962f0:
    r26 = 0x0;
    r20 = var_280;
    r28 = *0x100e7ef00;
    goto loc_100496310;

loc_1004961a8:
    [r24 release];
    [var_260 release];
    [var_260 release];
    r0 = var_258;
    goto loc_1004961c8;

loc_1004961c8:
    [r0 release];
    r21 = 0x0;
    r23 = var_270;
    goto loc_1004965c0;

loc_10049618c:
    [r26 release];
    [var_258 release];
    r0 = var_258;
    goto loc_1004961c8;
}

-(void)displayAgentDidDismissModal {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeAdDidDismissModalForAdapter:self];
    [r0 release];
    return;
}

-(void *)properties {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)defaultActionURL {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x18);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x18, arg2);
    return;
}

-(void *)impressionTrackerURLs {
    r0 = *(self + 0x20);
    return r0;
}

-(void *)clickTrackerURLs {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setAdConfiguration:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)adConfiguration {
    r0 = *(self + 0x30);
    return r0;
}

-(void *)impressionTimer {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setImpressionTimer:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)destinationDisplayAgent {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setDestinationDisplayAgent:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_destroyWeak(self + 0x18);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end