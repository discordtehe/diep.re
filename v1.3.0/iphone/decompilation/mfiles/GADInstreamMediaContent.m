@implementation GADInstreamMediaContent

-(void *)context {
    r0 = self->_instreamContext;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithInternalNativeAd:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_60 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_internalNativeAd, r19);
            r0 = [r20 copy];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
            r8 = *(r21 + r27);
            *(r21 + r27) = r0;
            [r8 release];
            r23 = objc_msgSend([GADWebViewConfiguration alloc], r22);
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            r25 = r0;
            r26 = [[r0 stringForKey:*0x100e9b588] retain];
            [r23 setMRAIDURLString:r26];
            [r23 setCollectDynamicContentSize:0x0];
            [r23 setScrollEnabled:0x0];
            r0 = *(r21 + r27);
            r0 = [r0 objectForKeyedSubscript:*0x100e95958];
            r0 = [r0 retain];
            [r23 setNetworkNotificationsEnabled:[r0 boolValue]];
            [r0 release];
            r27 = [GADEventContext alloc];
            r28 = [[r19 context] retain];
            r0 = [r27 initWithParent:r28 component:*0x100e974b0];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_instreamContext));
            r8 = *(r21 + r27);
            *(r21 + r27) = r0;
            [r8 release];
            [r28 release];
            r0 = [GADWebAdView alloc];
            r3 = *(r21 + r27);
            r0 = [r0 initWithFrame:r23 configuration:r3 context:r4];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
            r8 = *(r21 + r27);
            *(r21 + r27) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [NSMutableArray alloc];
            r0 = objc_msgSend(r0, r22);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adViewMonitors));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [GADAdVideoController alloc];
            r0 = [r0 initWithMessageSource:r23 webAdView:*(r21 + r27)];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoController));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r26 release];
            [r25 release];
            [r23 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)loadWithCompletionHandler:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r21 = self;
    r19 = [arg2 retain];
    if ([NSThread isMainThread] == 0x0) {
            r21 = [r21 retain];
            var_68 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_90);
            [var_68 release];
            [r21 release];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_loadExecuted));
    if (*(int8_t *)(r21 + r8) != 0x0) {
            sub_1007ce06c(0x0, @"%s called multiple times.");
            r20 = [sub_1008098f8(0x19, @"Multiple load attempts.") retain];
            (*(r19 + 0x10))(r19, r20);
    }
    else {
            *(int8_t *)(r21 + r8) = 0x1;
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
            r20 = *(r21 + r26);
            r20 = [sub_10081ba6c(r20, @"html_containers", [NSDictionary class]) retain];
            r22 = [sub_10081ba6c(r20, @"instream", [NSDictionary class]) retain];
            r23 = [sub_10081ba6c(r22, @"base_url", [NSString class]) retain];
            r24 = [[NSURL URLWithString:r2] retain];
            r0 = @class(NSString);
            r0 = [r0 class];
            r0 = sub_10081ba6c(r22, @"html", r0);
            r29 = r29;
            r25 = [r0 retain];
            if (r24 != 0x0 && [r25 length] != 0x0) {
                    r26 = *(r21 + r26);
                    r26 = [sub_10081ba6c(r26, @"options", [NSDictionary class]) retain];
                    r0 = @class(NSDictionary);
                    r0 = [r0 class];
                    var_108 = r26;
                    r0 = sub_10081ba6c(r26, @"video", r0);
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoOptions));
                    r8 = *(r21 + r9);
                    *(r21 + r9) = r0;
                    [r8 release];
                    [r21 performPreAdLoadActions];
                    objc_initWeak(&stack[-168], r21);
                    [GADAdLoadMonitor alloc];
                    objc_copyWeak(&var_C8 + 0x28, &stack[-168]);
                    var_A8 = [r19 retain];
                    r28 = [r28 initWithMessageSource:r26 view:0x0 completionHandler:&var_C8];
                    sub_100822370(r21->_adViewMonitors, r28);
                    objc_initWeak(&stack[-224], r28);
                    objc_copyWeak(&var_F8 + 0x20, &stack[-224]);
                    [r21 loadHTMLString:r25 baseURL:r24 completionHandler:&var_F8];
                    objc_destroyWeak(&var_F8 + 0x20);
                    objc_destroyWeak(&stack[-224]);
                    [r28 release];
                    [var_A8 release];
                    objc_destroyWeak(&var_C8 + 0x28);
                    objc_destroyWeak(&stack[-168]);
                    r0 = var_108;
            }
            else {
                    (*(r19 + 0x10))(r19, [sub_1008098f8(0x18, @"Invalid instream ad configuration.") retain]);
                    r0 = r21;
            }
            [r0 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(double)aspectRatio {
    r0 = self->_videoController;
    r0 = [r0 aspectRatio];
    return r0;
}

-(void *)mediaView {
    r0 = self->_adView;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)performPreAdLoadActions {
    r31 = r31 - 0x110;
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
    r21 = self;
    r20 = objc_loadWeakRetained((int64_t *)&r21->_internalNativeAd);
    if (r20 != 0x0) {
            objc_initWeak(r29 - 0x68, r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_90 + 0x20, r29 - 0x68);
            [r22 addObserverForName:*0x100e9c5c0 object:r24 queue:r25 usingBlock:&var_90];
            [r25 release];
            r0 = [GADVideoActionMonitor alloc];
            r2 = *(r21 + r27);
            sub_100822370(*(r21 + sign_extend_64(*(int32_t *)ivar_offset(_adViewMonitors))), [r0 initWithVideoContainerView:r2 webAdView:r2 messageSource:r2 visibilityMessageSource:r21]);
            var_E0 = r22;
            sub_100822370(*(r21 + r24), [[GADAnimateViewActionMonitor alloc] initWithWebAdView:r2 messageSource:*(r21 + r27)]);
            var_D8 = r24;
            var_E8 = r22;
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_B8 + 0x20, r29 - 0x68);
            [r24 addObserverForName:*0x100e9c5f0 object:r22 queue:r23 usingBlock:&var_B8];
            [r23 release];
            var_C0 = [[GADSwappableView alloc] initWithViewToSwap:*(r21 + r27) context:r21->_instreamContext];
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_adConfiguration));
            r0 = *(r21 + r26);
            r0 = [r0 objectForKeyedSubscript:*0x100e95950];
            r0 = [r0 retain];
            var_F0 = r0;
            r0 = [r0 objectForKeyedSubscript:*0x100e97ad0];
            r0 = [r0 retain];
            r19 = [r0 boolValue];
            [r0 release];
            r19 = [[GADClickProtection alloc] initWithAd:r20 view:*(r21 + r27) autoClickProtectionEnabled:r19 debugDialogString:[[*(r21 + r26) objectForKeyedSubscript:*0x100e95968] retain]];
            r0 = *(r21 + r26);
            r0 = [r0 objectForKeyedSubscript:*0x100e95948];
            r0 = [r0 retain];
            r23 = [r0 boolValue];
            [r0 release];
            r0 = [GADExpandActionMonitorConfiguration alloc];
            r3 = *(r21 + r27);
            sub_100822370(*(r21 + var_D8), [[GADExpandActionMonitor alloc] initWithAd:r20 webAdView:r3 messageSource:*(r21 + r27) configuration:[r0 initWithSwappableView:var_C0 referenceView:r3 customCloseBlocked:0x0 clickProtection:r19 analyticsLoggingEnabled:r23]]);
            r2 = *(r21 + r27);
            sub_100849a74(r20, r20, r2, r2, r19, r23);
            sub_100822370(*(r21 + var_D8), [[GADMRAIDActionMonitor alloc] initWithAd:r20 visibilityMessageSource:r21 webAdView:*(r21 + r27) configuration:r22]);
            [r23 release];
            [r24 release];
            [r22 release];
            [r19 release];
            [r28 release];
            [var_F0 release];
            [var_C0 release];
            objc_destroyWeak(&var_B8 + 0x20);
            [var_E8 release];
            [var_E0 release];
            objc_destroyWeak(&var_90 + 0x20);
            objc_destroyWeak(r29 - 0x68);
    }
    [r20 release];
    return;
}

-(struct CGSize)intrinsicContentSize {
    r0 = self;
    return r0;
}

-(void *)mainImage {
    r0 = self->_mainImage;
    return r0;
}

-(void)setMainImage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mainImage, arg2);
    return;
}

-(void)performPostAdLoadActions {
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
    r20 = self;
    r19 = objc_loadWeakRetained((int64_t *)&r20->_internalNativeAd);
    if (r19 != 0x0) {
            r0 = [GADApplicationVolumeMonitor alloc];
            r0 = [r0 initWithWebAdView:*(r20 + sign_extend_64(*(int32_t *)ivar_offset(_adView)))];
            [r0 reportCurrentAudioState];
            sub_100822370(*(r20 + sign_extend_64(*(int32_t *)ivar_offset(_adViewMonitors))), r0);
            r8 = [[GADViewVisibilityMonitor alloc] initWithView:*(r20 + r28) messageSource:r20];
            sub_100822370(*(r20 + r22), r8);
            r23 = [GADActiveViewMonitor alloc];
            r24 = *(r20 + r28);
            r26 = [@(0x1) retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_68 count:0x1];
            r27 = [r0 retain];
            r23 = [r23 initWithAd:r19 viewMessageSource:r20 webAdView:r24 adFormat:*0x100e96448 analyticsLoggingEnabled:0x0 activeViewConfiguration:r27];
            [r27 release];
            [r26 release];
            sub_100822370(*(r20 + r22), r23);
            [r20->_videoController setInitialStateWithConfigurations:r20->_videoOptions];
            sub_1008833e8(*0x100e9c458, *(r20 + r28), 0x0);
            [r23 release];
            [r8 release];
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
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

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoController, 0x0);
    objc_storeStrong((int64_t *)&self->_mainImage, 0x0);
    objc_storeStrong((int64_t *)&self->_adView, 0x0);
    objc_storeStrong((int64_t *)&self->_instreamContext, 0x0);
    objc_storeStrong((int64_t *)&self->_adViewMonitors, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_videoOptions, 0x0);
    objc_destroyWeak((int64_t *)&self->_internalNativeAd);
    objc_storeStrong((int64_t *)&self->_adConfiguration, 0x0);
    return;
}

@end