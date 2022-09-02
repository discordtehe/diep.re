@implementation FBAdConfigManager

-(void *)init {
    r0 = [self initWithAsyncLoad:0x0];
    return r0;
}

-(void)configurationDidUpdate {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void *)loadConfigurationFromStorage {
    r0 = [self loadConfigurationFromStorage:0x0];
    return r0;
}

-(void *)initWithAsyncLoad:(bool)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_configuration, **___NSDictionary0__);
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r22 = [[r0 URLsForDirectory:0xd inDomains:0x1] retain];
            [r0 release];
            r0 = [r22 firstObject];
            r0 = [r0 retain];
            r23 = [[r0 URLByAppendingPathComponent:@"fb_an_config.plist"] retain];
            [r0 release];
            [r22 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_configurationFileURL));
            r0 = *(r20 + r8);
            *(r20 + r8) = r23;
            [r0 release];
            [r20 loadConfigurationFromStorage:r19];
            objc_unsafeClaimAutoreleasedReturnValue();
    }
    r0 = r20;
    return r0;
}

-(void *)loadConfigurationFromStorage:(bool)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_retainBlock(&var_48);
    r20 = r0;
    if (arg2 != 0x0) {
            r0 = dispatch_get_global_queue(0x0, 0x0);
            r0 = [r0 retain];
            dispatch_async(r0, r20);
            [r21 release];
    }
    else {
            (*(r20 + 0x10))(r20);
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)saveConfiguration:(bool)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_retainBlock(&var_48);
    r20 = r0;
    if (arg2 != 0x0) {
            r0 = dispatch_get_global_queue(0x0, 0x0);
            r0 = [r0 retain];
            dispatch_async(r0, r20);
            [r21 release];
    }
    else {
            (*(r20 + 0x10))(r20);
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)loadConfigurationFromDictionary:(void *)arg2 {
    r20 = [arg2 mutableCopy];
    [self setConfiguration:r20];
    [r20 release];
    [self configurationDidUpdate];
    r0 = self;
    return r0;
}

-(void *)loadConfigurationFromPropertyList:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [FBAdUtility getObjectFromPropertyList:arg2];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r19 setConfiguration:r20];
            [r19 configurationDidUpdate];
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)saveConfiguration {
    r0 = [self saveConfiguration:0x1];
    return r0;
}

-(void *)objectForKeyedSubscript:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self configuration];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)boolForKey:(void *)arg2 defaultReturnValue:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = [arg2 retain];
    r0 = [self configuration];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r19 = [r21 boolForKey:r20 orDefault:r19];
    }
    [r21 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)deleteConfiguration {
    r20 = [NSMutableDictionary new];
    [self setConfiguration:r20];
    [r20 release];
    r20 = [[NSFileManager defaultManager] retain];
    r21 = [[self configurationFileURL] retain];
    [r20 removeItemAtURL:r21 error:0x0];
    [r21 release];
    [r20 release];
    r0 = self;
    return r0;
}

-(void)setObject:(void *)arg2 forKeyedSubscript:(void *)arg3 {
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
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [r19 configuration];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 mutableCopy];
    r24 = r0;
    if (r0 != 0x0) {
            r0 = [r24 retain];
    }
    else {
            r0 = [NSMutableDictionary new];
    }
    [r24 release];
    [r23 release];
    [r0 setObject:r20 forKeyedSubscript:r21];
    [r21 release];
    [r20 release];
    [r19 setConfiguration:r0];
    [r19 configurationDidUpdate];
    [r0 release];
    return;
}

-(double)timeIntervalforKey:(void *)arg2 defaultReturnValue:(double)arg3 {
    r3 = arg3;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = [arg2 retain];
    r0 = [self configuration];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 doubleForKey:r19 orDefault:r3];
            v8 = v8;
    }
    asm { fdiv       d8, d8, d0 };
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(long long)integerForKey:(void *)arg2 defaultReturnValue:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = [arg2 retain];
    r0 = [self configuration];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r19 = [r21 integerForKey:r20 orDefault:r19];
    }
    [r21 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)stringForKey:(void *)arg2 defaultReturnValue:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self configuration];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r21 stringForKey:r19 orDefault:r20];
            r0 = [r0 retain];
    }
    else {
            r0 = [r20 retain];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(unsigned long long)unsignedIntegerForKey:(void *)arg2 defaultReturnValue:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = [arg2 retain];
    r0 = [self configuration];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r19 = [r21 unsignedIntegerForKey:r20 orDefault:r19];
    }
    [r21 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(double)doubleForKey:(void *)arg2 defaultReturnValue:(double)arg3 {
    r3 = arg3;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = [arg2 retain];
    r0 = [self configuration];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 doubleForKey:r19 orDefault:r3];
            v8 = v8;
    }
    [r20 release];
    r0 = [r19 release];
    return r0;
}

-(void *)arrayForKey:(void *)arg2 defaultReturnValue:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [r22 configuration];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:r23];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    [NSString class];
    if ([r21 isKindOfClass:r2] != 0x0) {
            r22 = [[r22 deserializeArrayFromString:r21] retain];
            [r21 release];
            r21 = r22;
    }
    r24 = @selector(isKindOfClass:);
    [NSArray class];
    r0 = objc_msgSend(r21, r24);
    if ((r0 & 0x1) == 0x0) {
            r0 = [r21 release];
            r21 = 0x0;
    }
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r21;
            }
            else {
                    r0 = r19;
            }
    }
    r22 = objc_retainAutoreleaseReturnValue(r0);
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)dictionaryForKey:(void *)arg2 defaultReturnValue:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self stringForKey:r21 defaultReturnValue:@""] retain];
    [r21 release];
    r21 = [[FBAdUtility getObjectFromJSONString:r20] retain];
    [NSDictionary class];
    r0 = [r21 isKindOfClass:r2];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = r19;
            }
            else {
                    r0 = r21;
            }
    }
    r22 = [r0 retain];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)accidental_clicks_config {
    r0 = [self dictionaryForKey:@"accidental_clicks_config" defaultReturnValue:**___NSDictionary0__];
    return r0;
}

-(void *)deserializeArrayFromString:(void *)arg2 {
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
    r19 = [[arg2 dataUsingEncoding:0x4] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r19 options:0x0 error:&var_E8];
    r20 = [r0 retain];
    r0 = [var_E8 retain];
    r21 = r0;
    r22 = 0x0;
    if (r0 != 0x0) goto loc_100a2d5fc;

loc_100a2d4dc:
    [NSArray class];
    if ([r20 isKindOfClass:r2] == 0x0) goto loc_100a2d5e4;

loc_100a2d510:
    var_120 = q0;
    var_138 = r20;
    r0 = [r20 retain];
    r24 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100a2d5cc;

loc_100a2d54c:
    r26 = r0;
    r28 = *var_120;
    goto loc_100a2d55c;

loc_100a2d55c:
    r20 = 0x0;
    goto loc_100a2d560;

loc_100a2d560:
    if (*var_120 != r28) {
            objc_enumerationMutation(r24);
    }
    r23 = @selector(isKindOfClass:);
    r27 = *(var_128 + r20 * 0x8);
    [NSString class];
    if (objc_msgSend(r27, r23) == 0x0) goto loc_100a2d5ec;

loc_100a2d5a0:
    r20 = r20 + 0x1;
    if (r20 < r26) goto loc_100a2d560;

loc_100a2d5ac:
    r0 = objc_msgSend(r24, var_140);
    r26 = r0;
    if (r0 != 0x0) goto loc_100a2d55c;

loc_100a2d5cc:
    [r24 release];
    r22 = [r24 retain];
    goto loc_100a2d5f8;

loc_100a2d5f8:
    r20 = var_138;
    goto loc_100a2d5fc;

loc_100a2d5fc:
    var_60 = **___stack_chk_guard;
    [r20 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100a2d5ec:
    [r24 release];
    r22 = 0x0;
    goto loc_100a2d5f8;

loc_100a2d5e4:
    r22 = 0x0;
    goto loc_100a2d5fc;
}

-(void *)adTwoStepConfirmationLocalizedTitle {
    r0 = [self accidental_clicks_config];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"two_step_confirmation_title" orDefault:@""] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(double)adClickguardThresholdInterval {
    r0 = [self timeIntervalforKey:@"clickguard_time_ms" defaultReturnValue:r3];
    return r0;
}

-(void *)adTwoStepConfirmationLocalizedBody {
    r0 = [self accidental_clicks_config];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"two_step_confirmation_body" orDefault:@""] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)adTwoStepLocalizedConfirmButtonText {
    r0 = [self accidental_clicks_config];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"two_step_confirm_button_text" orDefault:@""] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)isAdTwoStepConfirmationEnabled {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self accidental_clicks_config];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [r19 boolForKey:@"two_step_confirmation" orDefault:0x0];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)adTwoStepLocalizedCancelButtonText {
    r0 = [self accidental_clicks_config];
    r0 = [r0 retain];
    r20 = [[r0 stringForKey:@"two_step_cancel_button_text" orDefault:@""] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)isAdClickguardEnabled {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self adClickguardThresholdInterval];
    if (d0 > 0x3cb0000000000000) {
            if (CPU_FLAGS & G) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isFNFEnabled {
    r0 = [self boolForKey:@"ios_fnf_enabled" defaultReturnValue:0x1];
    return r0;
}

-(bool)isFNFOffThreadRenderingEnabled {
    r0 = [self boolForKey:@"ios_fnf_off_thread_rendering_enabled" defaultReturnValue:0x1];
    return r0;
}

-(bool)isMetalImageRendererEnabled {
    r0 = [self boolForKey:@"ios_metal_image_renderer_enabled" defaultReturnValue:0x1];
    return r0;
}

-(double)unifiedLoggingImmediateDelay {
    r0 = [self timeIntervalforKey:@"unified_logging_immediate_delay_ms" defaultReturnValue:r3];
    return r0;
}

-(long long)unifiedLoggingEventLimit {
    r0 = [self integerForKey:@"unified_logging_event_limit" defaultReturnValue:0x0];
    return r0;
}

-(long long)adTapMarginPercentage {
    r0 = [self integerForKey:@"ad_viewability_tap_margin" defaultReturnValue:0x0];
    return r0;
}

-(double)minimumElapsedTimeAfterImpression {
    r0 = [self timeIntervalforKey:@"minimum_elapsed_time_after_impression" defaultReturnValue:r3];
    return r0;
}

-(bool)isAdClickabilityRestrictedUntilImpression {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self configuration];
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            d0 = 0x0;
            [r19 doubleForKey:@"minimum_elapsed_time_after_impression" orDefault:r3];
            asm { fdiv       d0, d0, d1 };
            if (d0 >= 0x0) {
                    if (CPU_FLAGS & NS) {
                            r20 = 0x1;
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isVisibleAreaCheckEnabled {
    r0 = [self boolForKey:@"visible_area_check_enabled" defaultReturnValue:0x0];
    return r0;
}

-(long long)visibleAreaPercentage {
    r0 = [self integerForKey:@"visible_area_percentage" defaultReturnValue:0x32];
    return r0;
}

-(void *)rvAutoRotate {
    r0 = [self stringForKey:@"video_and_endcard_autorotate" defaultReturnValue:@"autorotate_disabled"];
    return r0;
}

-(bool)isRVPlayPauseButtonEnabled {
    r0 = [self boolForKey:@"show_play_pause_rewarded_video" defaultReturnValue:0x0];
    return r0;
}

-(void *)loggingEndpointPrefix {
    r0 = [self stringForKey:@"adnw_logging_endpoint_prefix" defaultReturnValue:@"www"];
    return r0;
}

-(bool)isInAppAppStoreDisabled {
    r0 = [self boolForKey:@"disable_in_app_app_store" defaultReturnValue:0x0];
    return r0;
}

-(bool)isRVMetadataEnabled {
    r0 = [self boolForKey:@"show_metadata_rewarded_video" defaultReturnValue:0x0];
    return r0;
}

-(bool)useCachedImageContextForSoftwareRenderer {
    r0 = [self boolForKey:@"use_cached_image_context_for_software_renderer" defaultReturnValue:0x1];
    return r0;
}

-(bool)useCachedImageContextForMetalRenderer {
    r0 = [self boolForKey:@"use_cached_image_context_for_metal_renderer" defaultReturnValue:0x1];
    return r0;
}

-(bool)isImpressionMissTrackingEnabled {
    r0 = [self boolForKey:@"impression_miss_tracking" defaultReturnValue:0x1];
    return r0;
}

-(bool)useCachedImageContextForOpenGLRenderer {
    r0 = [self boolForKey:@"use_cached_image_context_for_opengl_renderer" defaultReturnValue:0x1];
    return r0;
}

-(bool)isDebugOverlayEnabled {
    r0 = [self boolForKey:@"adnw_enable_debug_overlay" defaultReturnValue:0x0];
    return r0;
}

-(bool)useStoreURL {
    r0 = [self boolForKey:@"adnw_ios_use_store_url" defaultReturnValue:0x0];
    return r0;
}

-(bool)useArrowsInsteadOfXAsSkipButton {
    r0 = [self boolForKey:@"adnw_arrows_instead_of_x_skip_button" defaultReturnValue:0x0];
    return r0;
}

-(bool)shouldPurgeEventsAndTokensOn413Response {
    r0 = [self boolForKey:@"adnw_purge_on_413_response" defaultReturnValue:0x0];
    return r0;
}

-(bool)isDebugLoggingEnabled {
    r0 = [self boolForKey:@"adnw_debug_logging" defaultReturnValue:0x0];
    return r0;
}

-(void *)additionalDebugBlackList {
    r19 = [[self arrayForKey:@"additional_debug_logging_black_list" defaultReturnValue:**___NSArray0__] retain];
    r20 = [[NSSet setWithArray:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(long long)additionalDebugBlackListPercentage {
    r0 = [self integerForKey:@"additional_debug_logging_black_list_percentage" defaultReturnValue:0x0];
    return r0;
}

-(long long)additionalDebugLoggingPercentage {
    r0 = [self integerForKey:@"additional_debug_logging_sampling_percentage" defaultReturnValue:0x64];
    return r0;
}

-(bool)isWatchAndInstallEnabled {
    r0 = [self boolForKey:@"adnw_ios_watch_and_install" defaultReturnValue:0x1];
    return r0;
}

-(bool)shouldWaitForMarkuptImpressionEventBeforeLogging {
    r0 = [self boolForKey:@"adnw_mapp_markup_impression_after_image_load" defaultReturnValue:0x0];
    return r0;
}

-(bool)isInlineAdReportingFlowEnabled {
    r0 = [self boolForKey:@"adnw_enable_inline_x_out_on_sdk" defaultReturnValue:0x0];
    return r0;
}

-(bool)shouldBlurImages {
    r0 = [self boolForKey:@"adnw_ios_blur_images_enabled" defaultReturnValue:0x1];
    return r0;
}

-(bool)isLoadAdOldBehaviourDisabled {
    r0 = [self boolForKey:@"adnw_disable_load_ad_old_behaviour" defaultReturnValue:0x0];
    return r0;
}

-(bool)useSimpleNativeScrollView {
    r0 = [self boolForKey:@"adnw_use_simple_native_scroll_view" defaultReturnValue:0x0];
    return r0;
}

-(bool)useNativeNonFullscreenXoutFlow {
    r0 = [self boolForKey:@"adnw_enable_inline_x_out_non_fullscreen_on_sdk" defaultReturnValue:0x0];
    return r0;
}

-(bool)sendFrameworkType {
    r0 = [self boolForKey:@"adnw_send_framework_type" defaultReturnValue:0x0];
    return r0;
}

-(bool)showToolbarInRVForMarkupEndCard {
    r0 = [self boolForKey:@"adnw_show_toolbar_in_rv_for_markup_end_card" defaultReturnValue:0x0];
    return r0;
}

-(bool)showCTAInRVPreEndCards {
    r0 = [self boolForKey:@"adnw_show_cta_in_rv_pre_endcards" defaultReturnValue:0x0];
    return r0;
}

-(long long)nativeCarouselCompactThreshold {
    r0 = [self integerForKey:@"adnw_native_carousel_compact_threshold" defaultReturnValue:0xe1];
    return r0;
}

-(bool)useIOSurfacePlayerLayer {
    r0 = [self boolForKey:@"adnw_use_iosurface_player_layer" defaultReturnValue:0x0];
    return r0;
}

-(bool)useRedesignedTemplates {
    r0 = [self boolForKey:@"adnw_native_templates_redesign" defaultReturnValue:0x1];
    return r0;
}

-(bool)useNewInterstitialVideoDesign {
    r0 = [self boolForKey:@"adnw_video_interstitial_new_design" defaultReturnValue:0x0];
    return r0;
}

-(bool)useRedesignedBannerTemplates {
    r0 = [self boolForKey:@"adnw_native_banner_templates_redesign" defaultReturnValue:0x1];
    return r0;
}

-(bool)useNewRewardedVideoDesign {
    r0 = [self boolForKey:@"adnw_rewarded_video_new_design" defaultReturnValue:0x0];
    return r0;
}

-(bool)useNewToolbarDesign {
    r0 = [self boolForKey:@"adnw_toolbar_new_design" defaultReturnValue:0x0];
    return r0;
}

-(bool)blurWhitespaceInVideoRenderer {
    r0 = [self boolForKey:@"adnw_blur_whitespace_in_video_renderer" defaultReturnValue:0x0];
    return r0;
}

-(bool)useNativeDispatchUserAgentGenerating {
    r0 = [self boolForKey:@"adnw_use_native_dispatch_user_agent_generating" defaultReturnValue:0x1];
    return r0;
}

-(bool)shouldSendFBLoginASID {
    r0 = [self boolForKey:@"adnw_config_send_fblogin_asid" defaultReturnValue:0x0];
    return r0;
}

-(unsigned long long)onDiskCacheSizeLimit {
    r0 = [self unsignedIntegerForKey:@"adnw_ios_on_disk_cache_size_limit" defaultReturnValue:0x8000000];
    return r0;
}

-(bool)shouldSendHashedUserPIIData {
    r0 = [self boolForKey:@"adnw_config_send_hashed_user_pii" defaultReturnValue:0x0];
    return r0;
}

-(unsigned long long)inMemoryCacheSizeLimit {
    r0 = [self unsignedIntegerForKey:@"adnw_ios_in_memory_cache_size_limit" defaultReturnValue:0x2000000];
    return r0;
}

-(bool)shouldUseVideoWrapperCacheFix {
    r0 = [self boolForKey:@"adnw_ios_video_wrapper_cache_fix" defaultReturnValue:0x1];
    return r0;
}

-(bool)shouldUseCacheWriteToDiskFix {
    r0 = [self boolForKey:@"adnw_ios_write_to_disk_fix" defaultReturnValue:0x0];
    return r0;
}

-(bool)shouldUseNonNSCacheBasedCache {
    r0 = [self boolForKey:@"adnw_ios_non_nscache_based_cache_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)shouldUseCacheForPlayableMarkup {
    r0 = [self boolForKey:@"adnw_config_use_cache_for_playable_markup" defaultReturnValue:0x0];
    return r0;
}

-(bool)shouldUseSKAppStore {
    r0 = [self boolForKey:@"adnw_config_use_sk_app_store" defaultReturnValue:0x0];
    return r0;
}

-(bool)shouldExplicitlyWaitForVideoToStartPlayingInNativeAd {
    r0 = [self boolForKey:@"adnw_ios_mrc_impression_for_native_video_ads" defaultReturnValue:0x0];
    return r0;
}

-(bool)isNetworkQualityMeasurementEnabled {
    r0 = [self boolForKey:@"adnw_network_quality_measurement_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)shouldUseAppStoreEndCard {
    r0 = [self boolForKey:@"adnw_config_use_app_store_endcard" defaultReturnValue:0x0];
    return r0;
}

-(double)storiesImageDisplayDuration {
    r0 = [self timeIntervalforKey:@"adnw_stories_image_display_duration_ms" defaultReturnValue:r3];
    return r0;
}

-(bool)isNewStoriesDesignEnabled {
    r0 = [self boolForKey:@"adnw_stories_design_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)isWONetworkSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_network_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)isWONetworkSignalLargePayloadEnabled {
    r0 = [self boolForKey:@"adnw_wo_network_signal_large_payload_enabled" defaultReturnValue:0x0];
    return r0;
}

-(long long)getWONetworkSignalSamplingRate {
    r0 = [self integerForKey:@"adnw_wo_network_signal_sampling_rate" defaultReturnValue:0x0];
    return r0;
}

-(long long)getWONetworkSignalLargePayloadSamplingRate {
    r0 = [self integerForKey:@"adnw_wo_network_signal_large_payload_sampling_rate" defaultReturnValue:0x0];
    return r0;
}

-(long long)getWONetworkSignalLargePayloadSize {
    r0 = [self integerForKey:@"adnw_wo_network_signal_large_payload_size" defaultReturnValue:0x0];
    return r0;
}

-(void *)woNetworkSignalUrl {
    r0 = [self stringForKey:@"adnw_wo_network_signal_url" defaultReturnValue:@"https://s.update.fbsbx.com/843748/gs?dt=8437481537452023477000"];
    return r0;
}

-(bool)woNativeSignalsEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(long long)getWOIntervalModeForegroundInterval {
    r0 = [self integerForKey:@"adnw_wo_bot_detection_foreground_interval" defaultReturnValue:0x0];
    return r0;
}

-(long long)getWOIntervalModeBackgroundInterval {
    r0 = [self integerForKey:@"adnw_wo_bot_detection_background_interval" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsBatterySignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_battery_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woIntervalModeNoStartKillSwitch {
    r0 = [self boolForKey:@"adnw_wo_no_start_killswitch" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsBundleSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_package_manager_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsApplicationInfoSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_application_info_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsDeviceSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_device_settings_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsTelephonySignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_telephony_manager_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsAudioSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_audio_manager_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsNetworkSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_network_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsTouchSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_touch_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsReachabilitySignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_connectivity_manager_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsBootSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_boot_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsBuildSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_build_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsCameraSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_camera_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsLocalAuthSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_localauth_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsLocationSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_location_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsMotionSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_motion_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsOtherUiSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_otherui_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsProcessSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_process_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsProxySignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_proxy_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsScreenSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_screen_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsSimulatorSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_simulator_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsCaptiveSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_captive_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)woNativeSignalsJailbrokenSignalEnabled {
    r0 = [self boolForKey:@"adnw_wo_is_native_jailbroken_signal_enabled" defaultReturnValue:0x0];
    return r0;
}

-(bool)isBDIntervalModeEnabled {
    r0 = [self boolForKey:@"bd_interval_mode_enabled" defaultReturnValue:0x0];
    return r0;
}

-(unsigned long long)bdBufferSize {
    r0 = [self unsignedIntegerForKey:@"bd_buffer_size" defaultReturnValue:0x0];
    return r0;
}

-(long long)bdIntervalTime {
    r0 = [self integerForKey:@"bd_interval_time" defaultReturnValue:0xffffffffffffffff];
    return r0;
}

-(long long)bdStaticSignalsBufferCapacity {
    r0 = [self integerForKey:@"bd_static_buffer_capacity" defaultReturnValue:0x1];
    return r0;
}

-(long long)bdDynamicSignalsBufferCapacity {
    r0 = [self integerForKey:@"bd_dynamic_buffer_capacity" defaultReturnValue:0xa];
    return r0;
}

-(long long)bdBiometricSignalsBufferCapacity {
    r0 = [self integerForKey:@"bd_biometric_buffer_capacity" defaultReturnValue:0x64];
    return r0;
}

-(long long)bdReputationTier {
    r0 = [self unsignedIntegerForKey:@"bd_rt" defaultReturnValue:0x0];
    return r0;
}

-(double)bdMinDistanceBetweenTouches {
    r0 = [self doubleForKey:@"bd_min_dist_touches" defaultReturnValue:r3];
    return r0;
}

-(void *)bdSignalsConfig {
    r0 = [self stringForKey:@"bd_signals_config" defaultReturnValue:@""];
    return r0;
}

-(bool)clickToPlayShouldFireImpressionOnVideoStart {
    r0 = [self boolForKey:@"fire_impression_on_video_start" defaultReturnValue:0x0];
    return r0;
}

-(long long)uxFunnelLoggingSamplingRate {
    r0 = [self integerForKey:@"ux_funnel_sampling_percentage" defaultReturnValue:0x0];
    return r0;
}

-(long long)cacheDebugEventsSamplingRate {
    r0 = [self integerForKey:@"adnw_ios_cache_debug_events_sampling_rate" defaultReturnValue:0x0];
    return r0;
}

-(void *)uxFunnelLoggingEvents {
    r20 = [NSArray new];
    r19 = [[self arrayForKey:@"ux_funnel_events" defaultReturnValue:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_storeStrong((int64_t *)&self->_configurationFileURL, 0x0);
    return;
}

-(double)adTapMargin {
    r0 = self;
    return r0;
}

-(void *)configuration {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_configuration)), 0x1);
    return r0;
}

-(void *)configurationFileURL {
    r0 = self->_configurationFileURL;
    return r0;
}

-(void)setConfiguration:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdConfigManager");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(void *)sharedManager {
    r0 = [self sharedManagerWithAsyncLoad:0x0];
    return r0;
}

+(void *)sharedManagerWithAsyncLoad:(bool)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_retainBlock(&var_38);
    r19 = r0;
    if (*qword_1011dcbe8 != -0x1) {
            dispatch_once(0x1011dcbe8, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011dcbf0);
    [r19 release];
    r0 = r20;
    return r0;
}

@end