@implementation GADInternalBannerView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithFrame:&var_20 adSize:r3];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 adSize:(struct GADAdSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r2;
    r0 = [[&var_20 super] initWithFrame:r2];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 commonInit];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
            *(0x10 + r20 + r8) = *(r19 + 0x10);
            *(int128_t *)(r20 + r8) = *(int128_t *)r19;
    }
    r0 = r20;
    return r0;
}

-(void *)initWithAdSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithAdSize:&var_20 origin:r3];
    return r0;
}

-(void *)initWithAdSize:(struct GADAdSize)arg2 origin:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    sub_100845b10(&var_40);
    r0 = [self initWithFrame:&var_60 adSize:r3];
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 commonInit];
    }
    r0 = r19;
    return r0;
}

-(void)setAdSize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self intrinsicContentSize];
    *(int8_t *)(int64_t *)&self->_hasAdSize = 0x1;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(0x10 + self + r8) = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    [self intrinsicContentSizeDidChange:r2];
    return;
}

-(void)commonInit {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(0x10 + self + r8) = *0x100bf4518;
    *(int128_t *)(self + r8) = *(int128_t *)0x100bf4508;
    r0 = [GADVideoController alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoController));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = sub_100860a2c("com.google.admob.n.banner-view", 0x0, 0x19);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [GADAdSource alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adSource));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [GADEventContext alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_context));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r20 = [[UIColor clearColor] retain];
    [self setBackgroundColor:r20];
    [r20 release];
    [self setClipsToBounds:0x1];
    return;
}

-(struct GADAdSize)adSize {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    if (*(int8_t *)(int64_t *)&r0->_hasAdSize != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
            *(r19 + 0x10) = *(0x10 + r0 + r8);
            *(int128_t *)r19 = *(int128_t *)(r0 + r8);
    }
    else {
            [r0 bounds];
            r0 = sub_100845a5c();
    }
    return r0;
}

-(void)setValidAdSizesWithSizes:(struct GADAdSize *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r19 = self;
    r20 = [[NSMutableArray alloc] init];
    var_28 = r29 + 0x10;
    if (r21 != 0x0) {
            do {
                    r0 = sub_100846600(&var_40);
                    r29 = r29;
                    sub_100822370(r20, [r0 retain]);
                    r8 = var_28;
                    var_28 = r8 + 0x8;
                    r21 = *r8;
                    [r22 release];
            } while (r21 != 0x0);
    }
    [r19 setValidAdSizes:r20];
    [r20 release];
    return;
}

-(struct CGSize)intrinsicContentSize {
    r31 = r31 - 0x60;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_bannerAd));
    r0 = *(r19 + r22);
    r0 = [r0 adView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *(r19 + r22);
            r0 = [r0 adView];
            r0 = [r0 retain];
            [r0 intrinsicContentSize];
            v8 = v0;
            v9 = v1;
            r0 = [r0 release];
    }
    else {
            r0 = sub_10084664c(&var_50);
            v8 = v0;
            v9 = v1;
    }
    return r0;
}

-(void *)correlator {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setCorrelator:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_sync(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void *)rootViewController {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    [self retain];
    var_38 = r20;
    [r20 retain];
    dispatch_async(r21, &var_60);
    var_68 = [r19 retain];
    sub_100860a80();
    [var_68 release];
    [var_38 release];
    [r19 release];
    [r20 release];
    return;
}

-(void *)adNetworkClassName {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [*(&var_40 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setAdNetworkClassName:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)updateRefreshTimerWithConfiguration:(struct NSDictionary *)arg2 ad:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r21 = [arg3 retain];
    r1 = @selector(objectForKeyedSubscript:);
    r0 = objc_msgSend(r19, r1);
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 == 0x0 && r20->_refreshTimer == 0x0) {
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b718];
            r1 = @selector(numberWithDouble:);
            r22 = [objc_msgSend(@class(NSNumber), r1) retain];
            [r0 release];
    }
    if (r22 != 0x0) {
            if (r21 != 0x0) {
                    r0 = r21;
            }
            else {
                    r0 = r20->_bannerAd;
            }
            r23 = [r0 retain];
            r24 = [GADRefreshTimer alloc];
            [r22 doubleValue];
            r0 = [r24 initWithRefreshInterval:r23 messageSource:r3];
            r26 = *(int32_t *)ivar_offset(_refreshTimer);
            r8 = *(r20 + (r26 << @selector(initWithRefreshInterval:messageSource:)));
            *(r20 + (r26 << @selector(initWithRefreshInterval:messageSource:))) = r0;
            [r8 release];
            objc_initWeak(&stack[-88], r20);
            r24 = &var_70 + 0x20;
            objc_copyWeak(r24, &stack[-88]);
            r1 = @selector(setRefreshHandler:);
            objc_msgSend(r25, r1);
            if (r21 != 0x0) {
                    r8 = &@selector(debugOptionsViewControllerDidDismiss:);
                    asm { sxtw       x8, w26 };
                    r1 = @selector(pause);
                    objc_msgSend(*(r20 + r8), r1);
            }
            objc_destroyWeak(r24);
            objc_destroyWeak(&stack[-88]);
            [r23 release];
            [r22 release];
    }
    else {
            r26 = *(int32_t *)ivar_offset(_refreshTimer);
    }
    [*(r20 + (r26 << r1)) start];
    [r21 release];
    [r19 release];
    return;
}

-(struct GADAdSize)adSizeForTargeting {
    r31 = r31 - 0xd0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = r8;
    r21 = (int64_t *)&r20->_adSize;
    r0 = sub_100845ac0(r29 - 0x40, &var_60);
    if ((r0 & 0x1) == 0x0) goto loc_100877c44;

loc_100877bac:
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_validAdSizes));
    if ([*(r20 + r21) count] == 0x0) goto loc_100877c20;

loc_100877bc8:
    [[*(r20 + r21) firstObject] retain];
    sub_100846540();
    [r21 release];
    r0 = sub_100845ac0(&var_90, &var_B0);
    if ((r0 & 0x1) == 0x0) goto loc_100877c54;

loc_100877c20:
    [r20 bounds];
    r0 = sub_100845a5c();
    return r0;

loc_100877c54:
    *(r19 + 0x10) = var_68;
    q0 = var_78;
    goto loc_100877c60;

loc_100877c60:
    *(int128_t *)r19 = q0;
    return r0;

loc_100877c44:
    *(r19 + 0x10) = *(r21 + 0x10);
    q0 = *(int128_t *)r21;
    goto loc_100877c60;
}

-(void)updateTargeting:(void *)arg2 completionHandler:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r19 = [[NSMutableArray alloc] initWithArray:self->_adOptions];
    r0 = [DFPBannerViewOptions alloc];
    r0 = [r0 init];
    [r0 setEnableManualImpressions:*(int8_t *)(int64_t *)&self->_enableManualImpressions];
    sub_100822370(r19, r0);
    [r23 setSignalSource:[sub_1008676a4() retain] forKey:*0x100e92160];
    r25 = self->_lockQueue;
    [self retain];
    var_58 = [r23 retain];
    dispatch_sync(r25, &var_80);
    sub_1008c2bc8(r23);
    var_98 = [r24 retain];
    var_90 = r23;
    [r23 retain];
    var_88 = r21;
    [r21 retain];
    sub_100860a80();
    [var_88 release];
    [var_90 release];
    [var_98 release];
    [var_58 release];
    [r24 release];
    [r21 release];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)loadRequest:(void *)arg2 {
    [self loadRequest:arg2 completionHandler:0x0];
    return;
}

-(void)loadRequest:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0xc0;
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
    if ((sub_100818a24() & 0x1) != 0x0) {
            if (r19 == 0x0) {
                    r0 = [GADRequest request];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r19 release];
                    r19 = r22;
            }
            r0 = [r19 adTypes];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r22 = [[NSArray arrayWithObjects:r29 - 0x40 count:0x1] retain];
                    [r19 setAdTypes:r22];
                    [r22 release];
            }
            r22 = [[GADTargeting alloc] initWithRequest:r19 adUnitID:r21->_adUnitID];
            r21 = [r21 retain];
            var_80 = r22;
            r22 = [r22 retain];
            var_78 = r20;
            r20 = [r20 retain];
            [r21 updateTargeting:r22 completionHandler:&var_A8];
            [var_78 release];
            [var_80 release];
            [r21 release];
            [r20 release];
            r0 = r22;
    }
    else {
            var_50 = [r21 retain];
            var_48 = r20;
            [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_70);
            [var_48 release];
            [var_50 release];
            r0 = r20;
    }
    var_38 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(bool)loadAd:(void *)arg2 info:(struct NSDictionary *)arg3 error:(void * *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (*(int8_t *)(int64_t *)&r22->_intermissionInProgress != 0x0) {
            if (r21 != 0x0) {
                    r0 = sub_1008098f8(0x1, 0x0);
                    r0 = [r0 retain];
                    r0 = [r0 autorelease];
                    r22 = 0x0;
                    *r21 = r0;
            }
            else {
                    r22 = 0x0;
            }
    }
    else {
            [r22 updateRefreshTimerWithConfiguration:r20 ad:r19];
            [r22 setBannerAd:r19];
            r22 = 0x1;
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)loadAd:(void *)arg2 error:(void *)arg3 serverResponseConfiguration:(struct NSDictionary *)arg4 completionHandler:(void *)arg5 {
    r31 = r31 - 0x90;
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    [r23 updateRefreshTimerWithConfiguration:r21 ad:r19];
    if (r19 == 0x0 || r20 != 0x0) goto loc_1008787d4;

loc_1008786f4:
    if (*(int8_t *)(int64_t *)&r23->_intermissionInProgress == 0x0) goto loc_1008787e8;

loc_100878704:
    objc_initWeak(&stack[-88], r23);
    objc_copyWeak(&var_80 + 0x30, &stack[-88]);
    var_60 = [r19 retain];
    var_58 = [r22 retain];
    [r25 addObserverForName:*0x100e9c158 object:r23 queue:0x0 usingBlock:&var_80];
    [var_58 release];
    [var_60 release];
    objc_destroyWeak(&var_80 + 0x30);
    objc_destroyWeak(&stack[-88]);
    goto loc_100878810;

loc_100878810:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1008787e8:
    [r23 setBannerAd:r19];
    if (r22 == 0x0) goto loc_100878810;

loc_100878800:
    r8 = *(r22 + 0x10);
    r0 = r22;
    r1 = 0x0;
    goto loc_10087880c;

loc_10087880c:
    (r8)(r0, r1);
    goto loc_100878810;

loc_1008787d4:
    if (r22 == 0x0) goto loc_100878810;

loc_1008787d8:
    r8 = *(r22 + 0x10);
    r0 = r22;
    r1 = r20;
    goto loc_10087880c;
}

-(bool)shouldOverrideInProgressRequest {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_requestInProgress != 0x0) {
            if (*(int32_t *)(int64_t *)&r19->_lastRequestedCorrelationID == [r19->_correlator correlationID]) {
                    [r19 adSize];
                    r0 = sub_100845ac0(&var_40, &var_60);
                    r0 = r0 ^ 0x1;
            }
            else {
                    r0 = 0x1;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)shouldLoadRequest:(void * *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self rootViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r20 adSize];
            r0 = sub_10084640c(&stack[-72], &var_40);
            r20 = [var_40 retain];
            if ((r0 & 0x1) == 0x0) {
                    r21 = [NSString alloc];
                    r22 = [[r20 localizedDescription] retain];
                    r21 = [r21 initWithFormat:@"You must set a valid ad size for the banner before loading a request. %@"];
                    [r22 release];
                    r22 = [sub_100809600(0x0, r21) retain];
                    [r20 release];
                    [r21 release];
                    r20 = r22;
                    if (r19 != 0x0) {
                            *r19 = objc_retainAutorelease(r20);
                    }
            }
            else {
                    if (r19 != 0x0) {
                            *r19 = objc_retainAutorelease(r20);
                    }
            }
    }
    else {
            r21 = [[NSString alloc] initWithFormat:@"You must set the rootViewController property of %@ before loading a request."];
            r20 = [sub_100809600(0x0, r21) retain];
            [r21 release];
            if (r19 != 0x0) {
                    *r19 = objc_retainAutorelease(r20);
            }
    }
    if (r20 == 0x0) {
            if (CPU_FLAGS & E) {
                    r19 = 0x1;
            }
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)loadWithTargeting:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x140;
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
    r25 = arg2;
    r24 = self;
    r20 = [r25 retain];
    [arg3 retain];
    objc_initWeak(r29 - 0x68, r24);
    r19 = &var_98 + 0x28;
    objc_copyWeak(r19, r29 - 0x68);
    r21 = [r21 retain];
    var_78 = r21;
    r0 = objc_retainBlock(&var_98);
    r22 = r0;
    r26 = [r24 shouldLoadRequest:&var_A0];
    r23 = [var_A0 retain];
    if ((r26 & 0x1) == 0x0) goto loc_100878ce0;

loc_100878c60:
    objc_storeStrong((int64_t *)&r24->_refreshTargeting, r25);
    if ([r24 shouldOverrideInProgressRequest] == 0x0) goto loc_100878d6c;

loc_100878c88:
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_adSource));
    [*(r24 + r25) invalidateAndCancel];
    r0 = [GADAdSource alloc];
    r0 = [r0 init];
    r8 = *(r24 + r25);
    *(r24 + r25) = r0;
    [r8 release];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_requestInProgress));
    *(int8_t *)(r24 + r28) = 0x0;
    goto loc_100878d7c;

loc_100878d7c:
    [r24->_adSource retain];
    objc_copyWeak(&var_108 + 0x30, r29 - 0x68);
    r26 = [r26 retain];
    var_E0 = [r22 retain];
    r0 = objc_retainBlock(&var_108);
    r27 = r0;
    *(int8_t *)(r24 + (r28 << r29 - 0x68)) = 0x1;
    [r24 adSize];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lastRequestedAdSize));
    *(0x10 + r24 + r8) = var_110;
    *(int128_t *)(r24 + r8) = var_120;
    *(int32_t *)(int64_t *)&r24->_lastRequestedCorrelationID = [r24->_correlator correlationID];
    [r24 setAdNetworkClassName:0x0];
    r0 = [r24 adSource];
    r29 = r29;
    r0 = [r0 retain];
    [r0 loadAdsWithTargeting:r20 completionHandler:r27];
    [r0 release];
    [r27 release];
    [var_E0 release];
    [r26 release];
    objc_destroyWeak(&var_108 + 0x30);
    r0 = r26;
    goto loc_100878eb8;

loc_100878eb8:
    [r0 release];
    goto loc_100878ebc;

loc_100878ebc:
    [r23 release];
    [r22 release];
    [var_78 release];
    objc_destroyWeak(r19);
    objc_destroyWeak(r29 - 0x68);
    [r21 release];
    [r20 release];
    return;

loc_100878d6c:
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_requestInProgress));
    if (*(int8_t *)(r24 + r28) != 0x0) goto loc_100878ebc;
    goto loc_100878d7c;

loc_100878ce0:
    r0 = [r23 localizedDescription];
    r29 = r29;
    [r0 retain];
    NSLog(@"<Google> %@", @selector(localizedDescription));
    [r24 release];
    var_B0 = [r22 retain];
    var_A8 = [r23 retain];
    dispatch_async(*__dispatch_main_q, &var_D0);
    [var_A8 release];
    r0 = var_B0;
    goto loc_100878eb8;
}

-(void)callBackAdViewDidReceiveAd {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(adViewDidReceiveAd:)] != 0x0) {
            [r20 adViewDidReceiveAd:r19];
    }
    sub_1008833e8(*0x100e9c018, r19->_bannerAd, 0x0);
    [r20 release];
    return;
}

-(void)adLoadCompletedWithError:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r19 != 0x0) {
            if ([r20 respondsToSelector:@selector(adView:didFailToReceiveAdWithError:), r3] != 0x0) {
                    [r20 adView:r21 didFailToReceiveAdWithError:r19];
            }
    }
    else {
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            r23 = [r0 boolForKey:*0x100e9b450];
            [r0 release];
            if (r23 != 0x0) {
                    var_38 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_58);
                    [var_38 release];
            }
            else {
                    [r21 callBackAdViewDidReceiveAd];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setBannerAd:(void *)arg2 {
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
    r23 = arg2;
    r20 = self;
    r19 = [r23 retain];
    if (r19 != 0x0) {
            [r20 intrinsicContentSize];
            v8 = v0;
            v9 = v1;
            r21 = (int64_t *)&r20->_bannerAd;
            r0 = *r21;
            r0 = [r0 adView];
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r0 release];
            objc_storeStrong(r21, r23);
            r0 = [r19 metadata];
            r0 = [r0 retain];
            r24 = [[r0 adNetworkClassName] retain];
            [r20 setAdNetworkClassName:r24];
            [r24 release];
            [r0 release];
            r0 = [GADObserverCollection alloc];
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adObservers));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r20 attachContentSizeObservers];
            [r20 attachLifecycleEventObservers];
            r0 = *r21;
            r0 = [r0 adView];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    [r20 addSubview:r2];
                    sub_1008897a8();
            }
            r23 = r20->_videoController;
            r24 = [[*r21 videoController] retain];
            [r23 setInternalVideoController:r24];
            [r24 release];
            r21 = [[*r21 rootViewControllerProvider] retain];
            r23 = [[r20 rootViewController] retain];
            [r21 updateViewController:r23];
            [r23 release];
            [r21 release];
            [r20 intrinsicContentSizeDidChange:r23];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)setAdOptions:(void *)arg2 {
    r0 = [arg2 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adOptions));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void *)adSource {
    r0 = self->_adSource;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)refresh {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[GADApplication sharedInstance] retain];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 boolForKey:*0x100e9b3c8] & 0x1) != 0x0) {
            [r21 release];
            var_48 = &var_50;
            var_28 = 0x0;
            if (*(int8_t *)(int64_t *)&r20->_requestInProgress == 0x0) {
                    var_28 = [r20->_refreshTargeting retain];
                    r0 = *(var_48 + 0x28);
                    if (r0 != 0x0) {
                            [r0 setRequestOrigin:*0x100e95b88];
                            sub_1008833e8(*0x100e9c050, r20, 0x0);
                            r21 = *(var_48 + 0x28);
                            r0 = [r20 retain];
                            [r0 updateTargeting:r21 completionHandler:&var_80];
                            [r0 release];
                    }
            }
            _Block_object_dispose(&var_50, 0x8);
            [var_28 release];
    }
    else {
            r22 = [r19 active];
            [r21 release];
            if ((r22 & 0x1) != 0x0) {
                    var_48 = &var_50;
                    var_28 = 0x0;
                    if (*(int8_t *)(int64_t *)&r20->_requestInProgress == 0x0) {
                            var_28 = [r20->_refreshTargeting retain];
                            r0 = *(var_48 + 0x28);
                            if (r0 != 0x0) {
                                    [r0 setRequestOrigin:*0x100e95b88];
                                    sub_1008833e8(*0x100e9c050, r20, 0x0);
                                    r21 = *(var_48 + 0x28);
                                    r0 = [r20 retain];
                                    [r0 updateTargeting:r21 completionHandler:&var_80];
                                    [r0 release];
                            }
                    }
                    _Block_object_dispose(&var_50, 0x8);
                    [var_28 release];
            }
    }
    [r19 release];
    return;
}

-(void)attachContentSizeObservers {
    objc_initWeak(&stack[-56], self);
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    [r21 addObserverForName:*0x100e9c210 object:r20 queue:0x0 usingBlock:&var_50];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    return;
}

-(void)intrinsicContentSizeDidChange:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self intrinsicContentSize];
    if (d0 == d9) {
            asm { fccmp      d1, d8, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            [r19 invalidateIntrinsicContentSize];
            r0 = [r19 adSizeDelegate];
            r0 = [r0 retain];
            [r0 adViewIntrinsicContentSizeDidChange:r19];
            [r0 release];
    }
    return;
}

-(void)resize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_bannerAd));
    if (*(r19 + r22) != 0x0) {
            r0 = sub_1008466d0(&var_50);
            r20 = [r0 retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
            r21 = [r0 retain];
            [r20 release];
            sub_1008833e8(*0x100e9c218, *(r19 + r22), r21);
            [r21 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(struct CGSize)sizeThatFits:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self intrinsicContentSize];
    if (d0 == **_UIViewNoIntrinsicMetric) {
            asm { fccmp      d1, d2, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            if (d1 == **_UIViewNoIntrinsicMetric) {
                    asm { fcsel      d1, d9, d1, eq };
            }
            if (d0 == **_UIViewNoIntrinsicMetric) {
                    asm { fcsel      d0, d8, d0, eq };
            }
    }
    return r0;
}

-(void)attachLifecycleEventObservers {
    objc_initWeak(&saved_fp - 0x68, self);
    objc_copyWeak((&saved_fp - 0x90) + 0x20, &saved_fp - 0x68);
    [r20 addObserverForName:*0x100e9c148 object:r24 queue:0x0 usingBlock:&saved_fp - 0x90];
    objc_copyWeak(&var_B8 + 0x20, &saved_fp - 0x68);
    [r23 addObserverForName:*0x100e9c150 object:r25 queue:0x0 usingBlock:&var_B8];
    objc_copyWeak(&var_E0 + 0x20, &saved_fp - 0x68);
    [r24 addObserverForName:*0x100e9c158 object:r26 queue:0x0 usingBlock:&var_E0];
    objc_copyWeak(&var_108 + 0x20, &saved_fp - 0x68);
    [r25 addObserverForName:*0x100e9bfe8 object:r27 queue:0x0 usingBlock:&var_108];
    objc_copyWeak(&var_130 + 0x20, &saved_fp - 0x68);
    [r26 addObserverForName:*0x100e9c010 object:r21 queue:0x0 usingBlock:&var_130];
    objc_destroyWeak(&var_130 + 0x20);
    objc_destroyWeak(&var_108 + 0x20);
    objc_destroyWeak(&var_E0 + 0x20);
    objc_destroyWeak(&var_B8 + 0x20);
    objc_destroyWeak((&saved_fp - 0x90) + 0x20);
    objc_destroyWeak(&saved_fp - 0x68);
    return;
}

-(void *)context {
    r0 = self->_context;
    return r0;
}

-(void *)adUnitID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adUnitID)), 0x0);
    return r0;
}

-(void)setAdUnitID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)adSizeDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adSizeDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdSizeDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adSizeDelegate, arg2);
    return;
}

-(bool)isAutoloadEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_autoloadEnabled;
    return r0;
}

-(void)setAutoloadEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_autoloadEnabled = arg2;
    return;
}

-(bool)hasAutoRefreshed {
    r0 = *(int8_t *)(int64_t *)&self->_hasAutoRefreshed;
    return r0;
}

-(void)setInAppPurchaseDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_inAppPurchaseDelegate, arg2);
    return;
}

-(void *)inAppPurchaseDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_inAppPurchaseDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)mediatedAdView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_mediatedAdView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)bannerAd {
    r0 = self->_bannerAd;
    return r0;
}

-(void)setAppEventDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_appEventDelegate, arg2);
    return;
}

-(void *)appEventDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_appEventDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)enableManualImpressions {
    r0 = *(int8_t *)(int64_t *)&self->_enableManualImpressions;
    return r0;
}

-(void)setEnableManualImpressions:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_enableManualImpressions = arg2;
    return;
}

-(void *)videoController {
    r0 = self->_videoController;
    return r0;
}

-(void *)validAdSizes {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_validAdSizes)), 0x0);
    return r0;
}

-(void)setValidAdSizes:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_validAdSizes, 0x0);
    objc_destroyWeak((int64_t *)&self->_appEventDelegate);
    objc_destroyWeak((int64_t *)&self->_mediatedAdView);
    objc_destroyWeak((int64_t *)&self->_inAppPurchaseDelegate);
    objc_destroyWeak((int64_t *)&self->_adSizeDelegate);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_adUnitID, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_storeStrong((int64_t *)&self->_adNetworkClassName, 0x0);
    objc_storeStrong((int64_t *)&self->_correlator, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_adOptions, 0x0);
    objc_storeStrong((int64_t *)&self->_refreshTargeting, 0x0);
    objc_storeStrong((int64_t *)&self->_refreshTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_adObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_adSource, 0x0);
    objc_storeStrong((int64_t *)&self->_videoController, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerAd, 0x0);
    return;
}

@end