@implementation ISBannerManager

-(void)destroyBanner:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    [r19 stopReloadTimer];
    [r19 sendMediationEvent:0xc1c data:0x0];
    if (r20 != 0x0) {
            [r20 removeFromSuperview];
    }
    r19->_hasBannerSize = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_placement));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_activeSmash));
    if (*(r19 + r21) != 0x0) {
            [r19 sendProviderEvent:0xc1c eventId:0xce9 data:0x0];
            [*(r19 + r21) destroyBanner];
            r0 = *(r19 + r21);
            *(r19 + r21) = 0x0;
            [r0 release];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_bannerView));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_bannerViewController));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    [r19 setState:0x1];
    [r20 release];
    return;
}

-(void)loadBannerWithViewController:(void *)arg2 size:(void *)arg3 placementName:(void *)arg4 {
    r31 = r31 - 0xb0;
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
    r25 = arg3;
    r26 = arg2;
    r22 = self;
    r19 = [r26 retain];
    r20 = [r25 retain];
    r21 = [arg4 retain];
    if (r22->_state != 0x1) goto loc_1006a69e4;

loc_1006a685c:
    r23 = @selector(sharedInstance);
    r0 = objc_msgSend(@class(BannerDelegateThrottler), r23);
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 hasPendingInvocation];
    [r0 release];
    if (r27 != 0x0) goto loc_1006a69ec;

loc_1006a689c:
    [r22 setState:0x2];
    objc_storeStrong((int64_t *)&r22->_bannerViewController, r26);
    r22->_hasBannerSize = 0x1;
    objc_storeStrong((int64_t *)&r22->_bannerSize, r25);
    r0 = [r22 placementsRepository];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 placementForName:r21];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 name];
    r0 = [r0 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_placement));
    r8 = *(r22 + r27);
    *(r22 + r27) = r0;
    [r8 release];
    [r26 release];
    [r25 release];
    [r22 sendMediationEvent:0xbb9 data:0x0];
    r0 = [ISPlacementCappingManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 isPlacementCappedBN:*(r22 + r27)];
    [r0 release];
    if (r26 != 0x4) goto loc_1006a6a7c;

loc_1006a69c0:
    [r22 resetIteration];
    [r22 loadNextSmash];
    goto loc_1006a6a2c;

loc_1006a6a2c:
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006a6a7c:
    r26 = [[r22 cappingMessageForPlacement:*(r22 + r27) cappingStatus:r26] retain];
    r27 = [[ISError createError:0x25c withMessage:r26] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r26 level:0x1 tag:0x0];
    [r0 release];
    r0 = [BannerDelegateThrottler sharedInstance];
    r0 = [r0 retain];
    [r0 bannerDidFailToLoadWithError:r27];
    [r0 release];
    r28 = [@(0x25c) retain];
    r24 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r22 sendMediationEvent:0xc27 data:r24];
    [r24 release];
    [r28 release];
    [r22 setState:0x1];
    [r27 release];
    r0 = r26;
    goto loc_1006a6a28;

loc_1006a6a28:
    [r0 release];
    goto loc_1006a6a2c;

loc_1006a69ec:
    r0 = objc_msgSend(@class(ISLoggerManager), r23);
    r0 = [r0 retain];
    [r0 log:@"ISBannerManager loadBannerWithViewController already in progress" level:0x1 tag:0x0];
    r0 = r0;
    goto loc_1006a6a28;

loc_1006a69e4:
    r23 = @selector(sharedInstance);
    goto loc_1006a69ec;
}

-(void *)initWithProvidersPool:(void *)arg2 settings:(void *)arg3 {
    r31 = r31 - 0x190;
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
    r20 = [arg2 retain];
    var_170 = [arg3 retain];
    r0 = [NSMutableArray new];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_smashes));
    r8 = *(r21 + r9);
    var_160 = r9;
    *(r21 + r9) = r0;
    [r8 release];
    var_108 = q0;
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r0;
    var_168 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            r28 = 0x1;
            r19 = *var_108;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_108 != r19) {
                                    objc_enumerationMutation(var_130);
                            }
                            r27 = *(var_110 + r23 * 0x8);
                            r0 = [r21 loadAdapter:r27];
                            r29 = r29;
                            r20 = [r0 retain];
                            if ([ISBnSmash isAdapterCompatible:r20] != 0x0) {
                                    var_158 = @selector(addObject:);
                                    var_150 = @selector(setProviderPriority:);
                                    r0 = [ISBnSmash alloc];
                                    r0 = [r0 initWithAdapterConfig:r27 adapter:r20];
                                    r27 = r0;
                                    [r0 setDelegate:r21];
                                    asm { sxtw       x2, w28 };
                                    objc_msgSend(r27, var_150);
                                    r28 = r28 + 0x1;
                                    objc_msgSend(*(r21 + var_160), var_158);
                                    [r27 release];
                            }
                            [r20 release];
                            r23 = r23 + 0x1;
                    } while (r23 < r24);
                    r24 = objc_msgSend(var_130, var_168);
            } while (r24 != 0x0);
    }
    [var_130 release];
    r19 = [NSMutableArray new];
    r23 = var_170;
    r0 = [[&var_128 super] initWithProvidersPool:r19 settings:r23 isDemandOnlyMode:0x0];
    r21 = r0;
    [r19 release];
    if (r21 != 0x0) {
            [r21 setState:0x0];
            objc_storeStrong((int64_t *)&r21->_placement, @"");
            r21->_reloadIntervalSecs = [r23 bannerInterval];
            r0 = [r23 placements];
            r29 = r29;
            r19 = [r0 retain];
            if (r19 != 0x0) {
                    r22 = [ISPlacementsRepository alloc];
                    r0 = [r23 placements];
                    r29 = r29;
                    r20 = [r0 retain];
                    r22 = [r22 initWithArray:r20];
                    [r21 setPlacementsRepository:r22];
                    [r22 release];
                    [r20 release];
            }
            else {
                    [r21 setPlacementsRepository:0x0];
            }
            [r19 release];
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r2 selector:r3 name:r4 object:r5];
            [r19 release];
    }
    var_58 = **___stack_chk_guard;
    [r21 setState:0x1];
    r21->_hasBannerSize = 0x0;
    [r23 release];
    [var_130 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(struct CGSize)calculateContainerSize:(void *)arg2 viewController:(void *)arg3 {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 sizeDescription];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 isEqualToString:r2];
    [r0 release];
    if ((r24 & 0x1) == 0x0) {
            r0 = [r20 view];
            r0 = [r0 retain];
            [r0 bounds];
            v8 = v2;
            [r0 release];
            r0 = [r20 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 bounds];
            v9 = v3;
            [r0 release];
            if (sub_1009f77b0(0xb, 0x0, 0x0) != 0x0) {
                    r0 = [r20 view];
                    r0 = [r0 retain];
                    r25 = r0;
                    [r0 safeAreaInsets];
                    r0 = [r20 view];
                    r0 = [r0 retain];
                    [r0 safeAreaInsets];
                    d8 = d8 - d10 + d3;
                    [r0 release];
                    [r25 release];
                    r0 = [r20 view];
                    r0 = [r0 retain];
                    r25 = r0;
                    [r0 safeAreaInsets];
                    v10 = v0;
                    r0 = [r20 view];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 safeAreaInsets];
                    d9 = d9 - d10 + d2;
                    [r0 release];
                    [r25 release];
            }
            if (d9 < d8) {
                    asm { fcsel      d8, d9, d8, mi };
            }
            r22 = @selector(isEqualToString:);
            r0 = [r19 sizeDescription];
            r29 = r29;
            r0 = [r0 retain];
            r24 = objc_msgSend(r0, r22);
            [r0 release];
            if ((r24 & 0x1) == 0x0) {
                    r22 = @selector(isEqualToString:);
                    r0 = [r19 sizeDescription];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = objc_msgSend(r0, r22);
                    [r0 release];
                    if ((r24 & 0x1) != 0x0) {
                            v9 = v10;
                    }
                    else {
                            r22 = @selector(isEqualToString:);
                            r0 = [r19 sizeDescription];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = objc_msgSend(r0, r22);
                            [r0 release];
                            if (r22 != 0x0) {
                                    r0 = [UIDevice currentDevice];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r21 = r0;
                                    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
                                            r0 = [UIDevice currentDevice];
                                            r0 = [r0 retain];
                                            r23 = [r0 userInterfaceIdiom];
                                            [r0 release];
                                            [r21 release];
                                            if (r23 == 0x1) {
                                                    v9 = v10;
                                            }
                                    }
                                    else {
                                            [r21 release];
                                    }
                            }
                            else {
                                    [r19 width];
                                    asm { scvtf      d8, x0 };
                                    [r19 height];
                                    asm { scvtf      d9, x0 };
                            }
                    }
            }
    }
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(void)bannerDidLoad:(void *)arg2 smash:(void *)arg3 {
    r31 = r31 - 0xc0;
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
    r22 = arg3;
    r19 = [arg2 retain];
    r21 = [r22 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r23 = [[ISLoggerManager sharedInstance] retain];
    r24 = [[r21 instanceName] retain];
    r0 = [NSString stringWithFormat:@"ISBannerManager %@:bannerDidLoad"];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [r23 log:r25 level:0x1 tag:0x3];
    [r25 release];
    [r24 release];
    [r23 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    r8 = *(r20 + r8);
    if (r8 == 0x3) goto loc_1006a756c;

loc_1006a7424:
    if (r8 != 0x2) goto loc_1006a7614;

loc_1006a742c:
    objc_storeStrong((int64_t *)&r20->_activeSmash, r22);
    [r20 sendProviderEvent:r21 eventId:0xbbd data:0x0];
    r0 = @class(ISPlacementCappingManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_placement));
    [r0 incrementShowCounterBN:*(r20 + r25)];
    [r0 release];
    r0 = @class(ISPlacementCappingManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r23 = [r0 isPlacementCappedBN:*(r20 + r25)];
    [r0 release];
    if (r23 != 0x4) {
            [r20 sendMediationEvent:0xd48 data:0x0];
    }
    var_48 = [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_70);
    [r20 setState:0x4];
    [r20 startReloadTimer];
    r0 = var_48;
    goto loc_1006a7610;

loc_1006a7610:
    [r0 release];
    goto loc_1006a7614;

loc_1006a7614:
    objc_sync_exit(r20);
    [r20 release];
    [r21 release];
    [r19 release];
    return;

loc_1006a756c:
    objc_storeStrong((int64_t *)&r20->_activeSmash, r22);
    [r20 sendProviderEvent:r21 eventId:0xbc7 data:0x0];
    [r20 setState:0x4];
    [r20 startReloadTimer];
    var_78 = [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_A0);
    r0 = var_78;
    goto loc_1006a7610;
}

-(void)bannerReloadSucceeded:(void *)arg2 {
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
    r24 = [[ISLoggerManager sharedInstance] retain];
    r25 = [[r19 instanceName] retain];
    r0 = [NSString stringWithFormat:@"ISBannerManager %@:bannerReloadSucceeded"];
    r29 = &saved_fp;
    r26 = [r0 retain];
    [r24 log:r26 level:0x1 tag:0x3];
    [r26 release];
    [r25 release];
    [r24 release];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (*(r20 + r24) == 0x4) {
            [ISUtils sendAutomationLog:@"bannerReloadSucceeded"];
            [r20 sendProviderEvent:r19 eventId:0xbc7 data:0x0];
            [r20 startReloadTimer];
    }
    else {
            r21 = [[ISLoggerManager sharedInstance] retain];
            r20 = [[NSString stringWithFormat:@"ISBannerManager bannerReloadSucceeded state=%ld"] retain];
            [r21 log:r20 level:0x0 tag:0x6];
            [r20 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)didClickBannerForSMASH:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[ISLoggerManager sharedInstance] retain];
    r23 = [[r19 instanceName] retain];
    r24 = [[NSString stringWithFormat:@"ISBannerManager %@:didClickBannerForSMASH"] retain];
    [r22 log:r24 level:0x1 tag:0x3];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 sendProviderEvent:r19 eventId:0xbc0 data:0x0];
    r0 = [BnDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 didClickBanner];
    [r0 release];
    [r20 sendMediationEvent:0xc28 data:0x0];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)bannerDidFailToLoadWithError:(void *)arg2 smash:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self retain];
    r21 = r0;
    objc_sync_enter(r0);
    r25 = [[ISLoggerManager sharedInstance] retain];
    r26 = [[r20 instanceName] retain];
    r0 = [NSString stringWithFormat:@"ISBannerManager %@:bannerDidFailToLoadWithError %@"];
    r29 = &saved_fp;
    r27 = [r0 retain];
    [r25 log:r27 level:0x1 tag:0x3];
    [r27 release];
    [r26 release];
    [r25 release];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if ((*(r21 + r28) & 0xfffffffffffffffe) != 0x2) goto loc_1006a7d64;

loc_1006a7b0c:
    r26 = [[NSNumber numberWithInteger:[r19 code]] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
    r29 = r29;
    r27 = [r0 retain];
    [r21 sendProviderEvent:r20 eventId:0xce4 data:r27];
    [r27 release];
    [r26 release];
    if (([r21 loadNextSmash] & 0x1) != 0x0) goto loc_1006a7dd4;

loc_1006a7bc4:
    if (*(r21 + r28) != 0x2) goto loc_1006a7e2c;

loc_1006a7bd0:
    var_80 = [[ISError createError:0x25e withMessage:@"No ads to show"] retain];
    r27 = [[ISLoggerManager sharedInstance] retain];
    r28 = [[var_80 localizedDescription] retain];
    r24 = [[NSString stringWithFormat:@"ISBannerManager bannerDidFailToLoadWithError %@"] retain];
    [r27 log:r24 level:0x3 tag:0x1];
    [r24 release];
    [r28 release];
    [r27 release];
    r0 = [BannerDelegateThrottler sharedInstance];
    r0 = [r0 retain];
    [r0 bannerDidFailToLoadWithError:var_80];
    [r0 release];
    r22 = [@(0x25e) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_78 count:0x1];
    r23 = [r0 retain];
    [r21 sendMediationEvent:0xc27 data:r23];
    [r23 release];
    [r22 release];
    [r21 setState:0x1];
    r0 = var_80;
    goto loc_1006a7dd0;

loc_1006a7dd0:
    [r0 release];
    goto loc_1006a7dd4;

loc_1006a7dd4:
    var_58 = **___stack_chk_guard;
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006a7e2c:
    [r21 sendMediationEvent:0xc81 data:0x0];
    [r21 setState:0x4];
    [r21 startReloadTimer];
    goto loc_1006a7dd4;

loc_1006a7d64:
    r22 = [[ISLoggerManager sharedInstance] retain];
    r24 = [[NSString stringWithFormat:@"ISBannerManager bannerDidFailToLoadWithError state=%ld"] retain];
    [r22 log:r24 level:0x0 tag:0x6];
    [r24 release];
    r0 = r22;
    goto loc_1006a7dd0;
}

-(void)bannerReloadFailed:(void *)arg2 smash:(void *)arg3 {
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
    r21 = self;
    r28 = [arg2 retain];
    r20 = [arg3 retain];
    r25 = [[ISLoggerManager sharedInstance] retain];
    r26 = [[r20 instanceName] retain];
    r0 = [NSString stringWithFormat:@"ISBannerManager %@:bannerReloadFailed"];
    r29 = &saved_fp;
    r27 = [r0 retain];
    [r25 log:r27 level:0x1 tag:0x3];
    [r27 release];
    [r26 release];
    [r25 release];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (*(r21 + r25) == 0x4) {
            r22 = [[NSNumber numberWithInteger:[r28 code]] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
            r23 = [r0 retain];
            [r21 sendProviderEvent:r20 eventId:0xce5 data:r23];
            [r23 release];
            [r22 release];
            r0 = *(r21 + sign_extend_64(*(int32_t *)ivar_offset(_smashes)));
            r0 = [r0 retain];
            r22 = r0;
            objc_sync_enter(r0);
            if ([*(r21 + r19) count] == 0x1) {
                    [r21 sendMediationEvent:0xc81 data:0x0];
                    [r21 startReloadTimer];
            }
            objc_sync_exit(r22);
            [r22 release];
            [r21 setState:0x3];
            [r21 resetIteration];
            [r21 loadNextSmash];
    }
    else {
            r22 = [[ISLoggerManager sharedInstance] retain];
            r21 = [[NSString stringWithFormat:@"ISBannerManager bannerReloadFailed state=%ld"] retain];
            [r22 log:r21 level:0x0 tag:0x6];
            [r21 release];
            [r22 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r28 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)bannerWillPresentScreenForSMASH:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[ISLoggerManager sharedInstance] retain];
    r23 = [[r19 instanceName] retain];
    r24 = [[NSString stringWithFormat:@"ISBannerManager %@:bannerWillPresentScreenForSMASH"] retain];
    [r22 log:r24 level:0x1 tag:0x3];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 sendProviderEvent:r19 eventId:0xce6 data:0x0];
    r0 = [BnDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 bannerWillPresentScreen];
    [r0 release];
    [r20 sendMediationEvent:0xc29 data:0x0];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)bannerDidDismissScreenForSMASH:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[ISLoggerManager sharedInstance] retain];
    r23 = [[r19 instanceName] retain];
    r24 = [[NSString stringWithFormat:@"ISBannerManager %@:bannerDidDismissScreenForSMASH"] retain];
    [r22 log:r24 level:0x1 tag:0x3];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 sendProviderEvent:r19 eventId:0xce7 data:0x0];
    r0 = [BnDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 bannerDidDismissScreen];
    [r0 release];
    [r20 sendMediationEvent:0xc2a data:0x0];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)bannerWillLeaveApplicationForSMASH:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r22 = [[ISLoggerManager sharedInstance] retain];
    r23 = [[r19 instanceName] retain];
    r24 = [[NSString stringWithFormat:@"ISBannerManager %@:bannerWillLeaveApplicationForSMASH"] retain];
    [r22 log:r24 level:0x1 tag:0x3];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 sendProviderEvent:r19 eventId:0xce8 data:0x0];
    r0 = [BnDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 bannerWillLeaveApplication];
    [r0 release];
    [r20 sendMediationEvent:0xc2b data:0x0];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(bool)loadNextSmash {
    r31 = r31 - 0x130;
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
    r0 = *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_smashes)));
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = *(r20 + r21);
    r0 = [r0 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 == 0x0) goto loc_1006a8a98;

loc_1006a8a20:
    r27 = 0x0;
    goto loc_1006a8a28;

loc_1006a8a28:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r21);
    }
    r24 = *(0x0 + r27 * 0x8);
    if ([r24 isReadyToLoad] == 0x0 || r20->_activeSmash == r24) goto loc_1006a8a68;

loc_1006a8aa0:
    if (r20->_state == 0x2) {
            [r20 sendProviderEvent:r2 eventId:r3 data:r4];
    }
    else {
            [r20 sendProviderEvent:r2 eventId:r3 data:r4];
    }
    [r24 loadBanner:r20->_bannerViewController size:r20->_bannerSize];
    r20 = 0x1;
    goto loc_1006a8b14;

loc_1006a8b14:
    var_58 = **___stack_chk_guard;
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006a8a68:
    r27 = r27 + 0x1;
    if (r27 < r23) goto loc_1006a8a28;

loc_1006a8a74:
    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) goto loc_1006a8a20;

loc_1006a8a98:
    r20 = 0x0;
    goto loc_1006a8b14;
}

-(void)onIterationTimerTick:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    [r20 sendMediationEvent:0xbc3 data:0x0];
    [r20 loadNextSmash];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)resetIteration {
    r31 = r31 - 0x130;
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
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_smashes)));
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = *(self + r21);
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(0x0 + r26 * 0x8) setIsReadyToLoad:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    objc_sync_exit(r19);
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)startReloadTimer {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)stopReloadTimer {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)bannerWillMoveToSuperview {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self isViewVisible] == 0x0;
    [r19 sendMediationEvent:r2 data:r3];
    return;
}

-(void)setState:(long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    if (r19 > 0x4) goto loc_1006a9600;

loc_1006a9468:
    switch (sign_extend_64(*(int32_t *)(0x1006a961c + r19 * 0x4)) + 0x1006a961c) {
        case 0:
            r21 = [[ISLoggerManager sharedInstance] retain];
            r0 = [NSString stringWithFormat:r2];
            break;
        case 1:
            r21 = [[ISLoggerManager sharedInstance] retain];
            r0 = [NSString stringWithFormat:r2];
            break;
        case 2:
            r21 = [[ISLoggerManager sharedInstance] retain];
            r0 = [NSString stringWithFormat:r2];
            break;
        case 3:
            r21 = [[ISLoggerManager sharedInstance] retain];
            r0 = [NSString stringWithFormat:r2];
            break;
        case 4:
            r21 = [[ISLoggerManager sharedInstance] retain];
            r0 = [NSString stringWithFormat:r2];
            break;
    }
    r22 = [r0 retain];
    [r21 log:r22 level:0x1 tag:0x6];
    [r22 release];
    [r21 release];
    goto loc_1006a9600;

loc_1006a9600:
    r20->_state = r19;
    return;
}

-(void)onReloadTimerTick:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (*(r20 + r22) == 0x4) {
            r0 = [UIApplication sharedApplication];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 applicationState];
            [r0 release];
            if (r22 != 0x0) {
                    r21 = [[ISLoggerManager sharedInstance] retain];
                    r22 = [[r20->_activeSmash instanceName] retain];
                    r23 = [[NSString stringWithFormat:@"ISBannerManager reload banner skipped because in bg %@"] retain];
                    [r21 log:r23 level:0x0 tag:0x6];
                    [r23 release];
                    [r22 release];
                    [r21 release];
                    r21 = [@(0x266) retain];
                    r0 = [NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1];
                    r22 = [r0 retain];
                    [r20 sendMediationEvent:0xc80 data:r22];
                    [r22 release];
                    [r21 release];
                    [r20 startReloadTimer];
            }
            else {
                    if ([r20 isViewVisible] != 0x0) {
                            [r20 sendMediationEvent:0xbc3 data:0x0];
                            r21 = [[ISLoggerManager sharedInstance] retain];
                            r24 = sign_extend_64(*(int32_t *)ivar_offset(_activeSmash));
                            r22 = [[*(r20 + r24) instanceName] retain];
                            r23 = [[NSString stringWithFormat:@"ISBannerManager reload banner %@"] retain];
                            [r21 log:r23 level:0x0 tag:0x6];
                            [r23 release];
                            [r22 release];
                            [r21 release];
                            [r20 sendProviderEvent:*(r20 + r24) eventId:0xbc4 data:0x0];
                            [*(r20 + r24) reloadBanner];
                    }
                    else {
                            r21 = [[ISLoggerManager sharedInstance] retain];
                            r22 = [[r20->_activeSmash instanceName] retain];
                            r23 = [[NSString stringWithFormat:@"ISBannerManager reload banner skipped because hidden %@"] retain];
                            [r21 log:r23 level:0x0 tag:0x6];
                            [r23 release];
                            [r22 release];
                            [r21 release];
                            r21 = [@(0x265) retain];
                            r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
                            r22 = [r0 retain];
                            [r20 sendMediationEvent:0xc80 data:r22];
                            [r22 release];
                            [r21 release];
                            [r20 startReloadTimer];
                    }
            }
    }
    else {
            r21 = [[ISLoggerManager sharedInstance] retain];
            r22 = [[NSString stringWithFormat:r2] retain];
            [r21 log:r22 level:0x0 tag:0x6];
            [r22 release];
            [r21 release];
    }
    var_38 = **___stack_chk_guard;
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isViewVisible {
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
    r20 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_bannerView));
    r0 = *(r20 + r24);
    if (r0 == 0x0 || ([r0 isHidden] & 0x1) != 0x0) goto loc_1006a97b4;

loc_1006a96b4:
    r0 = *(r20 + r24);
    r0 = [r0 window];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1006a97ac;

loc_1006a96d8:
    r22 = @selector(window);
    r0 = *(r20 + r24);
    r0 = objc_msgSend(r0, r22);
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 isKeyWindow];
    [r0 release];
    [r21 release];
    if (r23 == 0x0) goto loc_1006a97b4;

loc_1006a9714:
    r0 = *(r20 + r24);
    r0 = [r0 retain];
    r20 = r0;
    r22 = @selector(superview);
    r0 = objc_msgSend(r0, r22);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1006a97d0;

loc_1006a9748:
    if (([r20 isHidden] & 0x1) != 0x0) goto loc_1006a97d8;

loc_1006a9758:
    r23 = [objc_msgSend(r20, r22) retain];
    [r20 release];
    r0 = [r23 superview];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    r20 = r23;
    r22 = @selector(superview);
    if (r0 != 0x0) goto loc_1006a9748;

loc_1006a97a0:
    r19 = 0x1;
    r20 = r23;
    goto loc_1006a97dc;

loc_1006a97dc:
    [r20 release];
    goto loc_1006a97b8;

loc_1006a97b8:
    r0 = r19;
    return r0;

loc_1006a97d8:
    r19 = 0x0;
    goto loc_1006a97dc;

loc_1006a97d0:
    r19 = 0x1;
    goto loc_1006a97dc;

loc_1006a97b4:
    r19 = 0x0;
    goto loc_1006a97b8;

loc_1006a97ac:
    [r21 release];
    goto loc_1006a97b4;
}

-(void *)createBannerSizeDictionary:(void *)arg2 {
    r31 = r31 - 0xc0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 sizeDescription];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:r2];
    [r0 release];
    if (r23 == 0x0) goto loc_1006a98bc;

loc_1006a9860:
    r21 = [@(0x1) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_1006a9a74;

loc_1006a9a74:
    r20 = [r0 retain];
    goto loc_1006a9a7c;

loc_1006a9a7c:
    [r21 release];
    goto loc_1006a9a84;

loc_1006a9a84:
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006a98bc:
    r21 = @selector(isEqualToString:);
    r0 = [r19 sizeDescription];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r21);
    [r0 release];
    if (r23 == 0x0) goto loc_1006a9950;

loc_1006a98f4:
    r21 = [@(0x2) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_1006a9a74;

loc_1006a9950:
    r21 = @selector(isEqualToString:);
    r0 = [r19 sizeDescription];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r21);
    [r0 release];
    if (r23 == 0x0) goto loc_1006a99e4;

loc_1006a9988:
    r21 = [@(0x3) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_1006a9a74;

loc_1006a99e4:
    r21 = @selector(isEqualToString:);
    r0 = [r19 sizeDescription];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r21);
    [r0 release];
    if (r23 == 0x0) goto loc_1006a9ac0;

loc_1006a9a1c:
    r21 = [@(0x5) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    goto loc_1006a9a74;

loc_1006a9ac0:
    r21 = @selector(isEqualToString:);
    r0 = [r19 sizeDescription];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r21);
    [r0 release];
    if (r21 == 0x0) goto loc_1006a9bc4;

loc_1006a9af8:
    [r19 width];
    [r19 height];
    r21 = [[NSString stringWithFormat:@"%ldx%ld"] retain];
    r22 = [@(0x6) retain];
    r20 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r22 release];
    goto loc_1006a9a7c;

loc_1006a9bc4:
    r20 = 0x0;
    goto loc_1006a9a84;
}

-(void)sendMediationEvent:(long long)arg2 data:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r22 = self;
    r19 = [arg3 retain];
    r20 = [NSMutableDictionary new];
    r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r20 addEntriesFromDictionary:r24];
    [r24 release];
    if (r22->_placement != 0x0) {
            [r20 setObject:r2 forKeyedSubscript:@"placement"];
    }
    if (r22->_hasBannerSize != 0x0) {
            r0 = [r22 createBannerSizeDictionary:r22->_bannerSize];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    [r20 addEntriesFromDictionary:r22];
            }
            [r22 release];
    }
    if (r19 != 0x0) {
            [r20 addEntriesFromDictionary:r19];
    }
    var_38 = **___stack_chk_guard;
    r22 = [ISEventData alloc];
    r21 = [[NSNumber numberWithInteger:r21] retain];
    r23 = [r20 copy];
    r22 = [r22 initWithEventId:r21 andAdditionData:r23];
    [r23 release];
    [r21 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)setConsent:(bool)arg2 {
    r31 = r31 - 0x130;
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
    r20 = arg2;
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_smashes)));
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = *(self + r22);
    r0 = [r0 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            [*(0x0 + r27 * 0x8) setConsent:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)sendProviderEvent:(void *)arg2 eventId:(long long)arg3 data:(void *)arg4 {
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
    r21 = arg3;
    r22 = self;
    r24 = [arg2 retain];
    r19 = [arg4 retain];
    r20 = [NSMutableDictionary new];
    r0 = [arg2 getProviderEventDictionary];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [r24 release];
    [r20 addEntriesFromDictionary:r25];
    [r25 release];
    if (r22->_placement != 0x0) {
            [r20 setObject:r2 forKeyedSubscript:@"placement"];
    }
    if (r22->_hasBannerSize != 0x0) {
            r0 = [r22 createBannerSizeDictionary:r22->_bannerSize];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    [r20 addEntriesFromDictionary:r22];
            }
            [r22 release];
    }
    if (r19 != 0x0) {
            [r20 addEntriesFromDictionary:r19];
    }
    r22 = [ISEventData alloc];
    r21 = [[NSNumber numberWithInteger:r21] retain];
    r23 = [r20 copy];
    r22 = [r22 initWithEventId:r21 andAdditionData:r23];
    [r23 release];
    [r21 release];
    r0 = [ISInterstitialEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_smashes, 0x0);
    objc_storeStrong((int64_t *)&self->_reloadTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_activeSmash, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerSize, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerView, 0x0);
    objc_storeStrong((int64_t *)&self->_placement, 0x0);
    return;
}

@end