@implementation MPMoPubNativeAdAdapter

-(void)dealloc {
    [*(self + 0x40) cancel];
    [*(self + 0x40) setDelegate:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)willAttachToView:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self impressionTimer];
    r0 = [r0 retain];
    [r0 startTrackingView:r21];
    [r21 release];
    [r0 release];
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

-(void)adViewWillLogImpression:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeAdWillLogImpression:self];
    [r0 release];
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

-(void *)viewControllerForPresentingModalView {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)displayAgentDidDismissModal {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeAdDidDismissModalForAdapter:self];
    [r0 release];
    return;
}

-(void *)defaultActionURL {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)properties {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x18);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)impressionTrackerURLs {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x18, arg2);
    return;
}

-(void *)clickTrackerURLs {
    r0 = *(self + 0x28);
    return r0;
}

-(void *)adConfiguration {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setAdConfiguration:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)initWithAdProperties:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x260;
    r21 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_1F0 super] init];
    r23 = r0;
    if (r0 == 0x0) goto loc_1004d21fc;

loc_1004d1930:
    var_2A0 = r21;
    var_290 = r23;
    r0 = [NSArray arrayWithObjects:r29 - 0xa8 count:0x7];
    r29 = r29;
    r0 = [r0 retain];
    var_220 = q0;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_278 = r0;
    var_288 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1004d1ac8;

loc_1004d19fc:
    r23 = r0;
    r24 = *var_220;
    r8 = 0x101137000;
    goto loc_1004d1a18;

loc_1004d1a18:
    r26 = 0x0;
    r21 = r8;
    r22 = *(r8 + 0xc70);
    goto loc_1004d1a2c;

loc_1004d1a2c:
    if (*var_220 != r24) {
            objc_enumerationMutation(var_278);
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 == 0x0) goto loc_1004d1a88;

loc_1004d1a68:
    [NSString class];
    if (objc_msgSend(r25, r22) == 0x0) goto loc_1004d1cb4;

loc_1004d1a88:
    [r25 release];
    r26 = r26 + 0x1;
    if (r26 < r23) goto loc_1004d1a2c;

loc_1004d1a9c:
    r0 = objc_msgSend(var_278, var_288);
    r23 = r0;
    r8 = r21;
    if (r0 != 0x0) goto loc_1004d1a18;

loc_1004d1ac8:
    [var_278 release];
    r0 = [NSArray arrayWithObjects:r2 count:r3];
    r29 = r29;
    r0 = [r0 retain];
    var_260 = q0;
    r0 = [r0 retain];
    r3 = &stack[-456];
    var_280 = r0;
    r0 = objc_msgSend(r0, var_288);
    if (r0 == 0x0) goto loc_1004d1c00;

loc_1004d1b38:
    r27 = r0;
    r20 = *var_260;
    r10 = 0x101137000;
    goto loc_1004d1b54;

loc_1004d1b54:
    r26 = 0x0;
    r21 = r10;
    r25 = *(r10 + 0xc70);
    goto loc_1004d1b68;

loc_1004d1b68:
    if (*var_260 != r20) {
            objc_enumerationMutation(var_280);
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0) goto loc_1004d1bc4;

loc_1004d1ba4:
    [UIView class];
    if (objc_msgSend(r24, r25) == 0x0) goto loc_1004d1cd0;

loc_1004d1bc4:
    [r24 release];
    r26 = r26 + 0x1;
    if (r26 < r27) goto loc_1004d1b68;

loc_1004d1bd8:
    r3 = &stack[-456];
    r0 = objc_msgSend(var_280, var_288);
    r27 = r0;
    r10 = r21;
    if (r0 != 0x0) goto loc_1004d1b54;

loc_1004d1c00:
    [var_280 release];
    r0 = [r19 objectForKey:*0x100e7eef0];
    r29 = r29;
    r20 = [r0 retain];
    r2 = [NSArray class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            r0 = [r20 count];
            r23 = var_290;
            if (r0 != 0x0) {
                    r0 = sub_1004af8d8();
                    r29 = r29;
                    r0 = [r0 retain];
                    r8 = *(r23 + 0x20);
                    *(r23 + 0x20) = r0;
                    [r8 release];
                    var_288 = 0x1;
            }
            else {
                    var_288 = 0x0;
            }
    }
    else {
            var_288 = 0x0;
            r23 = var_290;
    }
    r28 = @selector(isKindOfClass:);
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    [NSArray class];
    r0 = objc_msgSend(r22, r28);
    var_290 = r22;
    if (r0 == 0x0) goto loc_1004d1d84;

loc_1004d1d68:
    r0 = sub_1004af8d8();
    r29 = r29;
    r0 = [r0 retain];
    r22 = *(r23 + 0x28);
    *(r23 + 0x28) = r0;
    goto loc_1004d1e0c;

loc_1004d1e0c:
    [r22 release];
    goto loc_1004d1e14;

loc_1004d1e14:
    r24 = [[r19 objectForKey:*0x100e7eef8] retain];
    r2 = r24;
    r0 = [NSURL URLWithString:r2];
    r0 = [r0 retain];
    r8 = *(r23 + 0x10);
    *(r23 + 0x10) = r0;
    [r8 release];
    [r24 release];
    r0 = [r19 objectForKeyedSubscript:*0x100e7eec0];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if ([r0 isImpressionMinVisibleSecondsValid] != 0x0) {
            [r26 impressionMinVisibleSeconds];
            v8 = 0x0;
    }
    if ([r26 isImpressionMinVisiblePixelsValid] != 0x0) {
            r22 = objc_alloc();
            [r26 impressionMinVisiblePixels];
            r8 = [r22 initWithRequiredSecondsForImpression:r2 requiredViewVisibilityPixels:r3];
            r0 = *(r23 + 0x38);
            *(r23 + 0x38) = r8;
            r22 = *0x100e7eef0;
    }
    else {
            if ([r26 isImpressionMinVisiblePercentValid] != 0x0) {
                    [r26 impressionMinVisiblePercent];
                    asm { scvtf      d0, x0 };
                    asm { fdiv       d9, d0, d1 };
            }
            r22 = *0x100e7eef0;
            r8 = [objc_alloc() initWithRequiredSecondsForImpression:r2 requiredViewVisibilityPercentage:r3];
            r0 = *(r23 + 0x38);
            *(r23 + 0x38) = r8;
    }
    [r0 release];
    [*(r23 + 0x38) setDelegate:r23];
    r2 = &var_1E0;
    r0 = [NSArray arrayWithObjects:r2 count:r3];
    r29 = r29;
    r22 = [r0 retain];
    [r19 removeObjectsForKeys:r22];
    [r22 release];
    objc_storeStrong(r23 + 0x8, var_2A0);
    if (var_288 == 0x0) goto loc_1004d20a8;

loc_1004d2010:
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
    }
    else {
            r27 = r20;
            if (*0x1011d8400 != 0x0 && *0x1011d8408 != 0x0) {
                    [r19 setObject:r2 forKey:r3];
            }
            else {
                    r0 = sub_1004af7bc();
                    r29 = r29;
                    r0 = [r0 retain];
                    r8 = *0x1011d8400;
                    *0x1011d8400 = r0;
                    [r8 release];
                    if (*0x1011d8400 != 0x0) {
                            r0 = [UIImage imageWithContentsOfFile:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                    }
                    else {
                            r0 = 0x0;
                    }
                    r8 = *0x1011d8408;
                    *0x1011d8408 = r0;
                    [r8 release];
                    if (*0x1011d8400 != 0x0) {
                            [r19 setObject:r2 forKey:r3];
                    }
            }
            r20 = r27;
            if (*0x1011d8408 != 0x0) {
                    [r19 setObject:r2 forKey:r3];
            }
    }
    r0 = [MPAdDestinationDisplayAgent agentWithDelegate:r23];
    r0 = [r0 retain];
    r8 = *(r23 + 0x40);
    *(r23 + 0x40) = r0;
    [r8 release];
    [r24 release];
    [r26 release];
    [var_290 release];
    [r20 release];
    [var_280 release];
    [var_278 release];
    goto loc_1004d21fc;

loc_1004d21fc:
    r21 = [r23 retain];
    goto loc_1004d2208;

loc_1004d2208:
    var_70 = **___stack_chk_guard;
    [r19 release];
    [r23 release];
    if (**___stack_chk_guard == var_70) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1004d20a8:
    [r26 release];
    [var_290 release];
    [r20 release];
    [var_280 release];
    [var_278 release];
    r21 = 0x0;
    goto loc_1004d2208;

loc_1004d1d84:
    r28 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r22, r28) == 0x0) goto loc_1004d1e00;

loc_1004d1da8:
    r0 = [NSURL URLWithString:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r3 = 0x1;
            r0 = [NSArray arrayWithObjects:r2 count:r3];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *(r23 + 0x28);
            *(r23 + 0x28) = r0;
            [r8 release];
    }
    else {
            var_288 = 0x0;
    }
    goto loc_1004d1e0c;

loc_1004d1e00:
    var_288 = 0x0;
    goto loc_1004d1e14;

loc_1004d1cd0:
    [r24 release];
    [var_280 release];
    [var_280 release];
    r0 = var_278;
    goto loc_1004d1cf0;

loc_1004d1cf0:
    [r0 release];
    r21 = 0x0;
    r23 = var_290;
    goto loc_1004d2208;

loc_1004d1cb4:
    [r25 release];
    [var_278 release];
    r0 = var_278;
    goto loc_1004d1cf0;
}

-(void)setImpressionTimer:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)impressionTimer {
    r0 = *(self + 0x38);
    return r0;
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