@implementation GADNativeAdClickAndImpressionMonitor

-(void *)initWithAd:(void *)arg2 nativeAdContext:(void *)arg3 adConfiguration:(struct NSDictionary *)arg4 {
    r31 = r31 - 0x1f0;
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
    r21 = arg3;
    r20 = [arg2 retain];
    r27 = [r21 retain];
    r28 = [arg4 retain];
    r23 = [[r29 - 0x70 super] init];
    if (r23 != 0x0) {
            r22 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r23 + r19);
            *(r23 + r19) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r23->_nativeAd, r20);
            objc_storeStrong((int64_t *)&r23->_nativeAdContext, r21);
            r0 = [r28 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            objc_initWeak(r29 - 0x78, r23);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak((r29 - 0xa0) + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9c098 object:r20 queue:r22 usingBlock:r29 - 0xa0];
            [r22 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak((r29 - 0xc8) + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9c080 object:r20 queue:r22 usingBlock:r29 - 0xc8];
            var_1D0 = r28;
            [r22 release];
            var_1A0 = r27;
            [[r27 context] retain];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_F0 + 0x20, r29 - 0x78);
            [r24 addObserverForName:*0x100e9c360 object:r27 queue:r22 usingBlock:&var_F0];
            [r22 release];
            [r27 release];
            [[r20 overlayView] retain];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_118 + 0x20, r29 - 0x78);
            [r24 addObserverForName:*0x100e9c370 object:r27 queue:r22 usingBlock:&var_118];
            [r22 release];
            [r27 release];
            [[var_1A0 context] retain];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_140 + 0x20, r29 - 0x78);
            [r27 addObserverForName:*0x100e9c368 object:r22 queue:r28 usingBlock:&var_140];
            [r28 release];
            [r22 release];
            [[var_1A0 context] retain];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_168 + 0x20, r29 - 0x78);
            [r27 addObserverForName:*0x100e9c380 object:r22 queue:r28 usingBlock:&var_168];
            [r28 release];
            [r22 release];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_190 + 0x20, r29 - 0x78);
            r20 = r20;
            [r22 addObserverForName:*0x100e9c0b8 object:r20 queue:r27 usingBlock:&var_190];
            r28 = var_1D0;
            [r27 release];
            objc_destroyWeak(&var_190 + 0x20);
            objc_destroyWeak(&var_168 + 0x20);
            objc_destroyWeak(&var_140 + 0x20);
            objc_destroyWeak(&var_118 + 0x20);
            objc_destroyWeak(&var_F0 + 0x20);
            objc_destroyWeak((r29 - 0xc8) + 0x20);
            objc_destroyWeak((r29 - 0xa0) + 0x20);
            objc_destroyWeak(r29 - 0x78);
            r27 = var_1A0;
    }
    [r28 release];
    [r27 release];
    [r20 release];
    r0 = r23;
    return r0;
}

-(void)handleImpression:(void *)arg2 {
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
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e9ba20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = objc_loadWeakRetained((int64_t *)&r20->_nativeAd);
    r23 = [[NSMutableDictionary alloc] init];
    if (r21 != 0x0) {
            [r23 addEntriesFromDictionary:r21];
    }
    else {
            r0 = [GADNativeAdViewTracker sharedInstance];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 adViewForNativeAd:r22];
            r29 = r29;
            r25 = [r0 retain];
            if (r25 != 0x0) {
                    r0 = [r22 assetViewTracker];
                    r0 = [r0 retain];
                    r28 = r0;
                    r26 = [[r0 assetViewsForAdView:r25] retain];
                    r0 = [r28 adChoicesContentViewForAdView:r25];
                    r29 = r29;
                    r27 = [r0 retain];
                    [r28 release];
            }
            else {
                    r27 = 0x0;
                    r26 = 0x0;
            }
            r28 = [sub_100892074(r25, r26, r27, r22) retain];
            [r23 addEntriesFromDictionary:r28];
            [r28 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
    }
    r2 = r20->_adConfiguration;
    if (r2 != 0x0) {
            sub_100822058(r23, @"ad", r2);
    }
    [r20->_nativeAdContext handleImpression:r23 completionHandler:0x100e98ef8];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)handleClickRecordedAction {
    sub_1008833e8(*0x100e9c0b0, objc_loadWeakRetained((int64_t *)&self->_nativeAd), 0x0);
    [r20 release];
    return;
}

-(void)handleImpressionRecordedAction {
    sub_1008833e8(*0x100e9c0a0, objc_loadWeakRetained((int64_t *)&self->_nativeAd), 0x0);
    [r20 release];
    return;
}

-(void)handleAdMutedAction {
    sub_1008833e8(*0x100e9c0a8, objc_loadWeakRetained((int64_t *)&self->_nativeAd), 0x0);
    [r20 release];
    return;
}

-(void)handleClick:(void *)arg2 {
    r31 = r31 - 0x150;
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
    r25 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = r0;
    r22 = [[r0 objectForKeyedSubscript:*0x100e9ba18] retain];
    r0 = [r19 objectForKeyedSubscript:*0x100e9ba10];
    r29 = &saved_fp;
    r26 = [r0 retain];
    if (r22 == 0x0) goto loc_10086cab0;

loc_10086c628:
    r0 = objc_loadWeakRetained((int64_t *)&r25->_nativeAd);
    r23 = r0;
    r27 = [[r0 clickConfirmingView] retain];
    r0 = [r19 objectForKeyedSubscript:*0x100e9ba38];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 integerValue];
    [r0 release];
    r8 = &@selector(debugOptionsViewControllerDidDismiss:);
    r0 = objc_msgSend(r23, *(r8 + 0x600));
    if (r26 == 0x0) {
            r8 = &@selector(debugOptionsViewControllerDidDismiss:);
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    if (r21 == 0x2 || ((r8 | r0 ^ 0x1) & 0x1) != 0x0) goto loc_10086c6ec;

loc_10086c6bc:
    if (r26 == r27) goto loc_10086cb00;

loc_10086c6c4:
    [r23 resetUnconfirmedClick];
    sub_1008833e8(*0x100e9c0c8, r23, 0x0);
    goto loc_10086c6ec;

loc_10086c6ec:
    var_118 = r27;
    stack[-288] = r26;
    r0 = [r19 objectForKeyedSubscript:*0x100e9ba20];
    r29 = r29;
    r24 = [r0 retain];
    r0 = [NSMutableDictionary alloc];
    var_120 = r24;
    r24 = [r0 initWithDictionary:r24];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
    var_108 = r25;
    r2 = *(r25 + r8);
    if (r2 != 0x0) {
            sub_100822058(r24, @"ad", r2);
    }
    if (r21 == 0x2) {
            if (CPU_FLAGS & E) {
                    r8 = 0x1;
            }
    }
    var_124 = r8;
    r0 = [NSDate alloc];
    r0 = [r0 init];
    r20 = r0;
    [r0 timeIntervalSince1970];
    asm { fcvtzs     x21, d0 };
    [r20 release];
    r0 = [r23 adConfigurationAdClass];
    r0 = sub_1007de25c(r0);
    r29 = r29;
    r27 = [r0 retain];
    r8 = @"";
    if (r27 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"";
            }
            else {
                    r8 = r27;
            }
    }
    var_130 = [[NSNumber numberWithLongLong:r21] retain];
    var_138 = [[NSNumber numberWithBool:[r23 isCustomOnePointFiveClickEnabled]] retain];
    r28 = [[NSNumber numberWithBool:[r23 viewAwareAPIUsed]] retain];
    r0 = [NSNumber numberWithBool:[r23 customMuteThisAdRequested]];
    r0 = [r0 retain];
    var_100 = r22;
    r22 = r0;
    r20 = @class(NSNumber);
    r20 = [[r20 numberWithBool:[r23 customMuteThisAdAvailable]] retain];
    r25 = r24;
    r24 = @class(NSNumber);
    r24 = [[r24 numberWithBool:[r23 isCustomClickGestureEnabled]] retain];
    r21 = [[NSNumber numberWithBool:var_124] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_A8 forKeys:&var_F8 count:0xa];
    r26 = [r0 retain];
    [r25 setObject:r26 forKeyedSubscript:@"click"];
    [r26 release];
    [r21 release];
    [r24 release];
    [r20 release];
    r0 = r22;
    r22 = var_100;
    [r0 release];
    [r28 release];
    [var_138 release];
    [var_130 release];
    [r27 release];
    [var_108->_nativeAdContext handleClick:r25 completionHandler:0x100e98eb8];
    [r25 release];
    [var_120 release];
    r27 = var_118;
    r26 = stack[-288];
    goto loc_10086caa0;

loc_10086caa0:
    [r27 release];
    [r23 release];
    goto loc_10086cab0;

loc_10086cab0:
    var_58 = **___stack_chk_guard;
    [r26 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_10086cb00:
    [r23 confirmationClickTimeInterval];
    [r25 handleConfirmationClick:*0x100e9ba38];
    goto loc_10086caa0;
}

-(void)handleConfirmationClick:(double)arg2 {
    r2 = arg2;
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
    r29 = &saved_fp;
    r20 = self;
    r0 = objc_loadWeakRetained((int64_t *)&r20->_nativeAd);
    r19 = r0;
    if ([r0 clickConfirmationRequired] != 0x0) {
            r0 = [r19 unconfirmedClickIdentifier];
            r29 = r29;
            r21 = [r0 retain];
            r22 = [[NSMutableDictionary alloc] init];
            if (r21 != 0x0) {
                    sub_100822058(r22, @"id", r21);
            }
            if (d8 > 0x0) {
                    sub_100822058(r22, @"time_interval", [[NSNumber numberWithDouble:r2] retain]);
                    [r23 release];
            }
            [r20->_nativeAdContext handleOnePointFiveClick:r22];
            [r19 resetUnconfirmedClick];
            [r22 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAdContext, 0x0);
    objc_destroyWeak((int64_t *)&self->_nativeAd);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

-(void)handleUnconfirmedClickAction:(void *)arg2 {
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
    r19 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&self->_nativeAd);
    if (r20 != 0x0) {
            r0 = [r19 userInfo];
            r0 = [r0 retain];
            r21 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
            [r0 release];
            r22 = [[r21 objectForKeyedSubscript:*0x100e953c8] retain];
            r23 = [[r21 objectForKeyedSubscript:*0x100e953d0] retain];
            r0 = [r21 objectForKeyedSubscript:*0x100e953d8];
            r29 = r29;
            r24 = [r0 retain];
            [r20 setClickConfirmationRequired:0x1];
            [r22 doubleValue];
            r1 = @selector(setUnconfirmedClickTimestamp:);
            asm { fdiv       d0, d0, d1 };
            objc_msgSend(r20, r1);
            [r20 setUnconfirmedClickIdentifier:r24];
            if (r23 != 0x0) {
                    r25 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            }
            else {
                    r25 = 0x0;
            }
            sub_1008833e8(*0x100e9c0c0, r20, r25);
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

@end