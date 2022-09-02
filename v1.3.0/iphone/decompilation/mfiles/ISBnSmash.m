@implementation ISBnSmash

-(void *)initWithAdapterConfig:(void *)arg2 adapter:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r23 = arg2;
    r19 = [r23 retain];
    r20 = [r22 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r21->_state = 0x0;
            objc_storeStrong((int64_t *)&r21->_adapterConfig, r23);
            objc_storeStrong((int64_t *)&r21->_adapter, r22);
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_viewController));
            r0 = *(r21 + r8);
            *(r21 + r8) = 0x0;
            [r0 release];
            *(int8_t *)(int64_t *)&r21->_isReadyToLoad = 0x1;
            *(int8_t *)(int64_t *)&r21->_didSetConsent = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)destroyBanner {
    [self log:@"destroyBanner"];
    [self->_adapter destroyBanner:self->_adapterConfig];
    [self setState:0x5];
    return;
}

-(void)loadBanner:(void *)arg2 size:(void *)arg3 {
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
    [r21 log:@"loadBanner"];
    *(int8_t *)(r21 + sign_extend_64(*(int32_t *)ivar_offset(_isReadyToLoad))) = 0x0;
    objc_storeStrong((int64_t *)&r21->_viewController, arg2);
    objc_storeStrong((int64_t *)&r21->_bannerSize, arg3);
    *(int8_t *)(r21 + r24) = 0x0;
    [r21 startTimer];
    if (r21->_state != 0x0) {
            [r21 setState:r2];
            [r21->_adapter loadBannerWithViewController:r19 size:r20 adapterConfig:r21->_adapterConfig activeDelegate:r21];
    }
    else {
            [r21 setState:r2];
            [r21 setCustomParams];
            r0 = [ISConfigurations getConfigurations];
            r0 = [r0 retain];
            r23 = [[r0 userId] retain];
            [r0 release];
            [r21->_adapter initBNWithUserId:r23 adapterConfig:r21->_adapterConfig delegate:r21];
            [r23 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)reloadBanner {
    [self log:@"reloadBanner"];
    [self startTimer];
    [self->_adapter reloadBanner:self->_adapterConfig];
    return;
}

-(void)setConsent:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r22 = [[r20->_adapterConfig providerName] retain];
    r21 = [[NSString stringWithFormat:@"setConsent:adUnit:banner, providerName:%@, value:%d"] retain];
    [r20 log:r21];
    [r21 release];
    [r22 release];
    *(int8_t *)(int64_t *)&r20->_consent = r19;
    *(int8_t *)(int64_t *)&r20->_didSetConsent = 0x1;
    if (r20->_state != 0x0) {
            [r20->_adapter setConsent:r19];
    }
    return;
}

-(void)setState:(long long)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    self->_state = arg2;
    r0 = [NSArray arrayWithObjects:&var_58 count:0x6];
    r0 = [r0 retain];
    r20 = [[r0 objectAtIndex:arg2] retain];
    r21 = [[NSString stringWithFormat:@"state=%@"] retain];
    [self log:r21];
    [r21 release];
    [r20 release];
    [r0 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)setCustomParams {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_adapter));
    r21 = *(r19 + r23);
    r0 = @class(ISConfigurations);
    r0 = [r0 getConfigurations];
    r0 = [r0 retain];
    [r21 setUsersAge:[r0 userAge]];
    [r0 release];
    r21 = *(r19 + r23);
    r0 = @class(ISConfigurations);
    r0 = [r0 getConfigurations];
    r0 = [r0 retain];
    [r21 setUsersGender:[r0 userGender]];
    [r0 release];
    r21 = *(r19 + r23);
    r0 = @class(ISConfigurations);
    r0 = [r0 getConfigurations];
    r0 = [r0 retain];
    [r21 setAdaptersDebug:[r0 adaptersDebug]];
    [r0 release];
    if (*(int8_t *)(int64_t *)&r19->_didSetConsent != 0x0) {
            [*(r19 + r23) setConsent:*(int8_t *)(int64_t *)&r19->_consent];
    }
    return;
}

-(void *)instanceName {
    r0 = self->_adapterConfig;
    r0 = [r0 providerName];
    return r0;
}

-(void)startTimer {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)stopTimer {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void *)getProviderEventDictionary {
    r31 = r31 - 0xd0;
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
    r22 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adapter));
    r0 = *(r22 + r24);
    r0 = [r0 version];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_B0 = r0;
    if (r0 != 0x0) {
            r0 = *(r22 + r24);
            r0 = [r0 version];
            r29 = r29;
            r0 = [r0 retain];
            var_B4 = 0x1;
    }
    else {
            var_B4 = 0x0;
            r0 = @"";
    }
    var_C0 = r0;
    r0 = *(r22 + r24);
    r0 = [r0 sdkVersion];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = *(r22 + r24);
            r0 = [r0 sdkVersion];
            r29 = r29;
            r23 = [r0 retain];
            var_B8 = 0x1;
    }
    else {
            var_B8 = 0x0;
            r23 = @"";
    }
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_adapterConfig));
    r0 = *(r22 + r28);
    r0 = [r0 subAdapterId];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = *(r22 + r28);
            r0 = [r0 subAdapterId];
            r29 = r29;
            r25 = [r0 retain];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
            r25 = @"";
    }
    r0 = *(r22 + r28);
    r0 = [r0 adSourceNameForEvent];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            r0 = *(r22 + r28);
            r0 = [r0 adSourceNameForEvent];
            r29 = r29;
            r27 = [r0 retain];
            r19 = 0x1;
    }
    else {
            r19 = 0x0;
            r27 = @"";
    }
    r28 = [[NSNumber numberWithInteger:r22->_providerPriority] retain];
    r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r28 release];
    if (r19 != 0x0) {
            [r27 release];
    }
    [r26 release];
    if (r20 != 0x0) {
            [r25 release];
    }
    [r24 release];
    if (var_B8 != 0x0) {
            [r23 release];
    }
    [r21 release];
    if (var_B4 != 0x0) {
            [var_C0 release];
    }
    var_58 = **___stack_chk_guard;
    [var_B0 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)log:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[ISLoggerManager sharedInstance] retain];
    r19 = [[self->_adapterConfig providerName] retain];
    r21 = [[NSString stringWithFormat:@"smash %@ %@"] retain];
    [r22 release];
    [r20 log:r21 level:0x0 tag:0x6];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)adapterBannerInitFailedWithError:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [NSString stringWithFormat:@"adapterBannerInitFailedWithError %@"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r20 log:r21];
    [r21 release];
    [r20 stopTimer];
    if (r20->_state == 0x1) {
            [r20 setState:0x0];
            r21 = [[r20 delegate] retain];
            r22 = [[ISError createError:0x264 withMessage:@"Banner init failed"] retain];
            [r21 bannerDidFailToLoadWithError:r22 smash:r20];
            [r22 release];
            [r21 release];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)onTick:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    r8 = *(r20 + r8);
    if (r8 == 0x3) goto loc_1006cf154;

loc_1006cf0b4:
    if (r8 == 0x2) goto loc_1006cf1e4;

loc_1006cf0bc:
    if (r8 != 0x1) goto loc_1006cf280;

loc_1006cf0c4:
    [r20 setState:0x0];
    [r20 log:@"init timed out"];
    r21 = [[r20 delegate] retain];
    r22 = [[ISError createError:0x25f withMessage:@"Timed out"] retain];
    [r21 bannerDidFailToLoadWithError:r22 smash:r20];
    goto loc_1006cf270;

loc_1006cf270:
    [r22 release];
    [r21 release];
    goto loc_1006cf280;

loc_1006cf280:
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;

loc_1006cf1e4:
    [r20 setState:0x4];
    [r20 log:@"load timed out"];
    r21 = [[r20 delegate] retain];
    r22 = [[ISError createError:0x260 withMessage:@"Timed out"] retain];
    [r21 bannerDidFailToLoadWithError:r22 smash:r20];
    goto loc_1006cf270;

loc_1006cf154:
    [r20 setState:0x4];
    [r20 log:@"reload timed out"];
    r21 = [[r20 delegate] retain];
    r22 = [[ISError createError:0x261 withMessage:@"Timed out"] retain];
    [r21 bannerReloadFailed:r22 smash:r20];
    goto loc_1006cf270;
}

-(void)adapterBannerInitSuccess {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 log:@"adapterBannerInitSuccess"];
    [r19 stopTimer];
    if (r19->_state == 0x1) {
            [r19 setState:0x2];
            [r19 startTimer];
            [r19->_adapter loadBannerWithViewController:r19->_viewController size:r19->_bannerSize adapterConfig:r19->_adapterConfig activeDelegate:r19];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)adapterBannerDidLoad:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    [r20 log:@"adapterBannerDidLoad"];
    [r20 stopTimer];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    r8 = *(r20 + r8);
    if (r8 == 0x3) goto loc_1006cf5c4;

loc_1006cf574:
    if (r8 != 0x2) goto loc_1006cf5f8;

loc_1006cf57c:
    [r20 setState:0x3];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    [r0 bannerDidLoad:r19 smash:r20];
    goto loc_1006cf5f0;

loc_1006cf5f0:
    [r21 release];
    goto loc_1006cf5f8;

loc_1006cf5f8:
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;

loc_1006cf5c4:
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    [r0 bannerReloadSucceeded:r20];
    goto loc_1006cf5f0;
}

-(void)adapterBannerDidClick {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 log:@"adapterBannerDidClick"];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(didClickBannerForSMASH:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 didClickBannerForSMASH:r19];
            [r0 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)adapterBannerWillPresentScreen {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 log:@"adapterBannerWillPresentScreen"];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(bannerWillPresentScreenForSMASH:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 bannerWillPresentScreenForSMASH:r19];
            [r0 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)adapterBannerDidFailToLoadWithError:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [NSString stringWithFormat:@"adapterBannerDidFailToLoadWithError %@"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r20 log:r21];
    [r21 release];
    [r20 stopTimer];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    r8 = *(r20 + r8);
    if (r8 == 0x3) goto loc_1006cf724;

loc_1006cf6d4:
    if (r8 != 0x2) goto loc_1006cf75c;

loc_1006cf6dc:
    [r20 setState:0x4];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    [r0 bannerDidFailToLoadWithError:r19 smash:r20];
    goto loc_1006cf754;

loc_1006cf754:
    [r21 release];
    goto loc_1006cf75c;

loc_1006cf75c:
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;

loc_1006cf724:
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    [r0 bannerReloadFailed:r19 smash:r20];
    goto loc_1006cf754;
}

-(void)adapterBannerDidDismissScreen {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 log:@"adapterBannerDidDismissScreen"];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(bannerDidDismissScreenForSMASH:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 bannerDidDismissScreenForSMASH:r19];
            [r0 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

+(bool)isAdapterCompatible:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:@selector(initBNWithUserId:adapterConfig:delegate:), r3, r4] != 0x0) {
            if ([r19 respondsToSelector:@selector(loadBannerWithViewController:size:adapterConfig:activeDelegate:), r3, r4, r5] != 0x0) {
                    r20 = @selector(respondsToSelector:);
                    r20 = objc_msgSend(r19, r20, @selector(reloadBanner:));
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)adapterBannerWillLeaveApplication {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    [r19 log:@"adapterBannerWillLeaveApplication"];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(bannerWillLeaveApplicationForSMASH:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 bannerWillLeaveApplicationForSMASH:r19];
            [r0 release];
    }
    objc_sync_exit(r19);
    [r19 release];
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

-(long long)providerPriority {
    r0 = self->_providerPriority;
    return r0;
}

-(bool)isReadyToLoad {
    r0 = *(int8_t *)(int64_t *)&self->_isReadyToLoad & 0x1;
    return r0;
}

-(void)setIsReadyToLoad:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isReadyToLoad = arg2;
    return;
}

-(void)setProviderPriority:(long long)arg2 {
    self->_providerPriority = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_bannerSize, 0x0);
    objc_storeStrong((int64_t *)&self->_viewController, 0x0);
    objc_storeStrong((int64_t *)&self->_adapterConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_adapter, 0x0);
    objc_storeStrong((int64_t *)&self->_timer, 0x0);
    return;
}

@end