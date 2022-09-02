@implementation GADAdMediaContent

-(void *)context {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithInternalNativeAd:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 mainImage:(void *)arg4 {
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
    r29 = &saved_fp;
    r23 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [r23 retain];
    r0 = [[&var_60 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r24 = @selector(init);
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r20 objectForKeyedSubscript:@"video"];
            r0 = [r0 retain];
            r28 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoConfiguration));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [r28 release];
            r0 = [r20 objectForKeyedSubscript:@"options"];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKeyedSubscript:@"video"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoOptions));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [r25 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r24);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r22->_internalNativeAd, r19);
            r24 = [GADEventContext alloc];
            r0 = [r19 context];
            r25 = [r0 retain];
            r0 = [r24 initWithParent:r25 component:*0x100e974b0];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_context));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [r25 release];
            objc_storeStrong((int64_t *)&r22->_mainImage, r23);
            [r22->_mainImage aspectRatio];
            asm { stlr       x8, [x23] };
            r0 = sub_100860a2c("com.google.admob.n.ad-media-content", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)loadVideoWithCompletionHandler:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            r21 = r20->_lockQueue;
            var_60 = [r20 retain];
            var_58 = r19;
            r19 = [r19 retain];
            dispatch_async(r21, &var_80);
            [var_58 release];
            r0 = var_60;
    }
    else {
            sub_1007ce06c(0x0, @"%s called multiple times.");
            r20 = [sub_1008098f8(0x12, @"Multiple load attempts.") retain];
            var_30 = r19;
            r19 = [r19 retain];
            var_28 = r20;
            [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_50);
            [var_28 release];
            [var_30 release];
            r0 = r20;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)createAndLoadAdViewWithCompletionHandler:(void *)arg2 {
    r20 = [arg2 retain];
    r23 = [[GADWebViewConfiguration alloc] init];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r23 setMRAIDURLString:[[r0 stringForKey:*0x100e9b588] retain]];
    [r23 setCollectDynamicContentSize:0x0];
    [r23 setScrollEnabled:0x0];
    r0 = self->_adConfiguration;
    r0 = [r0 objectForKeyedSubscript:*0x100e95958];
    r0 = [r0 retain];
    [r23 setNetworkNotificationsEnabled:[r0 boolValue]];
    [r0 release];
    var_48 = r23;
    [r23 retain];
    var_40 = [self retain];
    var_38 = r20;
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_68);
    [var_38 release];
    [var_40 release];
    [var_48 release];
    [r20 release];
    [r23 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)renderVideoDictionary {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)setMainImage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mainImage, arg2);
    [arg2 retain];
    [*r21 aspectRatio];
    asm { stlr       x8, [x22] };
    r20 = r20->_mainImageView;
    [[*r21 image] retain];
    [r20 setImage:r2];
    [r19 release];
    [r21 release];
    return;
}

-(void *)mediaView {
    r31 = r31 - 0xc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_68 = &var_70;
    r20 = self->_lockQueue;
    r19 = [self retain];
    var_88 = r19;
    dispatch_sync(r20, &var_A8);
    if (*(int8_t *)((r29 - 0x40) + 0x18) != 0x0) {
            r0 = *(var_68 + 0x28);
    }
    else {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_mainImageView));
            r0 = *(r19 + r22);
            if (r0 == 0x0) {
                    r20 = [UIImageView alloc];
                    r0 = r19->_mainImage;
                    r0 = [r0 image];
                    r29 = r29;
                    r21 = [r0 retain];
                    r0 = [r20 initWithImage:r21];
                    r8 = *(r19 + r22);
                    *(r19 + r22) = r0;
                    [r8 release];
                    [r21 release];
                    [*(r19 + r22) setContentMode:0x1];
                    r0 = *(r19 + r22);
            }
    }
    [r0 retain];
    [var_88 release];
    _Block_object_dispose(&var_70, 0x8);
    [0x0 release];
    _Block_object_dispose(r29 - 0x40, 0x8);
    r0 = [r19 autorelease];
    return r0;
}

-(double)aspectRatio {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [var_50 release];
    r0 = _Block_object_dispose(&var_40, 0x8);
    return r0;
}

-(struct CGSize)intrinsicContentSize {
    r31 = r31 - 0xd0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_78 = &var_80;
    r20 = self->_lockQueue;
    r19 = [self retain];
    var_98 = r19;
    dispatch_sync(r20, &var_B8);
    if (*(int8_t *)((r29 - 0x50) + 0x18) == 0x0) {
            r0 = r19->_mainImage;
            r0 = [r0 image];
            r29 = r29;
            r0 = [r0 retain];
            [r0 size];
            v8 = v0;
            v9 = v1;
            [r19 release];
    }
    [var_98 release];
    _Block_object_dispose(&var_80, 0x8);
    r0 = _Block_object_dispose(r29 - 0x50, 0x8);
    return r0;
}

-(void)finishLoadingWithError:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            if (r19 == 0x0) {
                    *(int8_t *)(int64_t *)&r21->_mediaLoadedSuccessfully = 0x1;
            }
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
            r20 = objc_retainBlock(*(r21 + r22));
            r0 = *(r21 + r22);
            *(r21 + r22) = 0x0;
            [r0 release];
            if (r20 != 0x0) {
                    r21 = [[r21->_adView webViewController] retain];
                    var_38 = [r20 retain];
                    var_30 = [r19 retain];
                    var_28 = r21;
                    [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_58);
                    [var_28 release];
                    [var_30 release];
                    [var_38 release];
                    [r21 release];
            }
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)preloadActionsWithCompletionBlock:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0xc0, self);
    objc_copyWeak(&var_F0 + 0x28, &saved_fp - 0xc0);
    r0 = [r19 retain];
    var_190 = r0;
    var_D0 = r0;
    r0 = objc_retainBlock(&var_F0);
    var_188 = r0;
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak(&var_118 + 0x20, &saved_fp - 0xc0);
    [r19 addObserverForName:*0x100e9c650 object:r21 queue:r22 usingBlock:&var_118];
    [r22 release];
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak(&var_140 + 0x20, &saved_fp - 0xc0);
    [r21 addObserverForName:*0x100e9c5c0 object:r19 queue:r22 usingBlock:&var_140];
    [r22 release];
    r0 = [GADAdVideoController alloc];
    r0 = [r0 initWithMessageSource:*0x100e9c5c0 webAdView:*(self + r20)];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoController));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [GADVideoActionMonitor alloc];
    r2 = *(self + r20);
    sub_100822370(*(self + sign_extend_64(*(int32_t *)ivar_offset(_adViewMonitors))), [r0 initWithVideoContainerView:r2 webAdView:r2 messageSource:r2 visibilityMessageSource:self]);
    sub_100822370(*(self + r26), [[GADAnimateViewActionMonitor alloc] initWithWebAdView:r2 messageSource:*(self + r20)]);
    var_1A8 = r19;
    var_1A0 = r21;
    [[NSOperationQueue mainQueue] retain];
    objc_copyWeak(&var_168 + 0x20, &saved_fp - 0xc0);
    [r21 addObserverForName:*0x100e9c5f0 object:r19 queue:r22 usingBlock:&var_168];
    [r22 release];
    r19 = *(self + r20);
    r21 = self->_context;
    r22 = self->_adConfiguration;
    r27 = objc_loadWeakRetained((int64_t *)&self->_internalNativeAd);
    r20 = *(self + r26);
    r24 = [self retain];
    r19 = [r19 retain];
    r21 = [r21 retain];
    r22 = [r22 retain];
    r25 = [r27 retain];
    r26 = [r20 retain];
    r28 = [var_188 retain];
    var_98 = r19;
    [r19 retain];
    var_90 = r21;
    [r21 retain];
    var_88 = r22;
    [r22 retain];
    [r25 retain];
    [r26 retain];
    var_70 = r24;
    [r24 retain];
    [r28 retain];
    sub_100860a80();
    [r28 release];
    [var_70 release];
    [r26 release];
    [r25 release];
    [var_88 release];
    [var_90 release];
    [var_98 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r19 release];
    [r20 release];
    [r27 release];
    [r23 release];
    [r19 release];
    objc_destroyWeak(&var_168 + 0x20);
    [var_1A8 release];
    [var_1A0 release];
    objc_destroyWeak(&var_140 + 0x20);
    objc_destroyWeak(&var_118 + 0x20);
    [r24 release];
    [var_D0 release];
    objc_destroyWeak(&var_F0 + 0x28);
    objc_destroyWeak(&saved_fp - 0xc0);
    [var_190 release];
    return;
}

-(void)registerOverlayViewObservers:(void *)arg2 {
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

-(void)performPostLoadActions {
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
    var_58 = **___stack_chk_guard;
    r0 = [GADApplicationVolumeMonitor alloc];
    r0 = [r0 initWithWebAdView:*(self + sign_extend_64(*(int32_t *)ivar_offset(_adView)))];
    [r0 reportCurrentAudioState];
    sub_100822370(*(self + sign_extend_64(*(int32_t *)ivar_offset(_adViewMonitors))), r0);
    r0 = [GADViewVisibilityMonitor alloc];
    r0 = [r0 initWithView:*(self + r27) messageSource:self];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_viewVisibilityMonitor));
    r8 = *(self + r22);
    *(self + r22) = r0;
    [r8 release];
    sub_100822370(*(self + r28), *(self + r22));
    r22 = [GADActiveViewMonitor alloc];
    r21 = objc_loadWeakRetained((int64_t *)&self->_internalNativeAd);
    r23 = *(self + r27);
    r25 = [@(0x1) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
    r26 = [r0 retain];
    r22 = [r22 initWithAd:r21 viewMessageSource:self webAdView:r23 adFormat:*0x100e96448 analyticsLoggingEnabled:0x0 activeViewConfiguration:r26];
    [r26 release];
    [r25 release];
    [r21 release];
    sub_100822370(*(self + r28), r22);
    [self->_videoController setInitialStateWithConfigurations:self->_videoOptions];
    [[*(self + r27) retain] retain];
    dispatch_async(*__dispatch_main_q, &var_90);
    [r0 release];
    [r20 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)videoController {
    r0 = self->_videoController;
    return r0;
}

-(void *)mainImage {
    r0 = self->_mainImage;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mainImage, 0x0);
    objc_storeStrong((int64_t *)&self->_videoController, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_mainImageView, 0x0);
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_viewVisibilityMonitor, 0x0);
    objc_destroyWeak((int64_t *)&self->_internalNativeAd);
    objc_storeStrong((int64_t *)&self->_adViewMonitors, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_adView, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_videoOptions, 0x0);
    objc_storeStrong((int64_t *)&self->_videoConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    return;
}

@end