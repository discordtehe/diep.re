@implementation VungleConfigController

-(void *)initWithPlacementsCoordinator:(void *)arg2 delegate:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [VungleURLConfiguration defaultConfigURL];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r8 = *(r21 + 0x30);
            *(r21 + 0x30) = r0;
            [r8 release];
            [r23 release];
            objc_storeWeak(r21 + 0x10, r20);
            objc_storeWeak(r21 + 0x38, r19);
            *(int8_t *)(r21 + 0x8) = 0x1;
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r22);
            r8 = *(r21 + 0x40);
            *(r21 + 0x40) = r0;
            [r8 release];
            [r21 setupSerialQueue];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setupSerialQueue {
    r20 = [dispatch_queue_attr_make_with_qos_class(0x0, 0x11, 0x0) retain];
    r0 = dispatch_queue_create("com.vungleSDK.configController.queue", r20);
    r8 = *(self + 0x48);
    *(self + 0x48) = r0;
    [r8 release];
    [r20 release];
    return;
}

-(bool)shouldRequestStreamingAd {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self streamingRequestTimeout];
    if (d0 > 0x0) {
            [r19 streamingBufferTimeout];
            if (d0 > 0x0) {
                    if (CPU_FLAGS & G) {
                            r20 = 0x1;
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    r0 = [r19 streamingFlags];
    r0 = r20 & r0;
    return r0;
}

-(void)handleConfigDownload:(void *)arg2 backgroundInit:(bool)arg3 completionBlock:(void *)arg4 {
    [arg2 retain];
    [arg4 retain];
    objc_initWeak(&saved_fp - 0x38, self);
    [[self configQueue] retain];
    var_60 = r22;
    [r22 retain];
    objc_copyWeak(&var_80 + 0x38, &saved_fp - 0x38);
    [r21 retain];
    dispatch_async(r24, &var_80);
    [r24 release];
    [r21 release];
    objc_destroyWeak(&var_80 + 0x38);
    [var_60 release];
    [r19 release];
    [r22 release];
    objc_destroyWeak(&saved_fp - 0x38);
    return;
}

-(bool)isViewabilityTypeEnabled:(long long)arg2 {
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
    r0 = [self viewabilityStatusDictionary];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    [r0 release];
    r23 = 0x0;
    if (arg2 == 0x1) {
            r23 = 0x0;
            if (r19 != 0x0) {
                    r0 = [r20 viewabilityStatusDictionary];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (r0 != 0x0) {
                            r0 = [r20 viewabilityStatusDictionary];
                            r0 = [r0 retain];
                            r20 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r23 = [r0 boolValue];
                            [r0 release];
                            [r20 release];
                    }
                    else {
                            r23 = 0x0;
                    }
                    [r22 release];
                    [r19 release];
            }
    }
    r0 = r23;
    return r0;
}

-(bool)isReportIncentivizedEnabled {
    r0 = [self reportIncentivizedEnabled];
    return r0;
}

+(double)parseBufferTimeout:(void *)arg2 {
    r0 = [arg2 objectForKeyedSubscript:@"playback"];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:@"buffer_timeout"];
    r0 = [r0 retain];
    [r0 unsignedIntegerValue];
    [r0 release];
    asm { ucvtf      d0, x21 };
    asm { fdiv       d8, d0, d1 };
    r0 = [r20 release];
    return r0;
}

+(double)parseStreamingRequestTimeout:(void *)arg2 {
    r0 = [arg2 objectForKeyedSubscript:@"will_play_ad"];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:@"request_timeout"];
    r0 = [r0 retain];
    [r0 unsignedIntegerValue];
    [r0 release];
    asm { ucvtf      d0, x21 };
    asm { fdiv       d8, d0, d1 };
    r0 = [r20 release];
    return r0;
}

+(unsigned char)parseStreamingFlags:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 objectForKeyedSubscript:@"will_play_ad"];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:@"enabled"];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 boolValue];
    [r19 release];
    if (r21 == 0x0) {
            asm { csinc      w19, w8, wzr, eq };
    }
    [r20 release];
    r0 = r19;
    return r0;
}

+(void *)parseVDUID:(void *)arg2 {
    r0 = [arg2 objectForKeyedSubscript:@"vduid"];
    return r0;
}

-(bool)isValidConfigResponse:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            r22 = @selector(count);
            r0 = [[[r19 objectForKeyedSubscript:@"placements"] retain] filteredArrayUsingPredicate:[[NSPredicate predicateWithFormat:@"is_auto_cached == YES"] retain]];
            r0 = [r0 retain];
            objc_msgSend(r0, r22);
            r22 = [[NSString stringWithFormat:@"There are %ld auto-cache placements in config response."] retain];
            r0 = [VungleLogger sharedLogger];
            r0 = [r0 retain];
            [r0 logMessage:r22 level:0xf4241 context:@"SDK Initialization"];
            [r0 release];
            [r22 release];
            [r23 release];
            [r21 release];
            [r20 release];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)requestNextConfigWithDelaySeconds:(unsigned long long)arg2 backgroundInit:(bool)arg3 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r21 = arg2;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([r19 configRequestScheduled] & 0x1) == 0x0) {
            [r19 setConfigRequestScheduled:0x1];
            objc_initWeak(&stack[-72], r19);
            dispatch_time(0x0, r21 * 0x3b9aca00);
            [dispatch_get_global_queue(0xffffffffffff8000, 0x0) retain];
            objc_copyWeak(&var_68 + 0x20, &stack[-72]);
            dispatch_after(r21, r23, &var_68);
            [r23 release];
            objc_destroyWeak(&var_68 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void *)newConfigRequestOperationFromBackgroundInit:(bool)arg2 complete:(void *)arg3 {
    r23 = [arg3 retain];
    r21 = [[VNGNetworkManager sharedManager] retain];
    r20 = [[self publisherInformation] retain];
    [r21 setPublisherInformation:r20];
    [r20 release];
    r19 = [[r21 configOperationWithBackgroundInit:arg2 complete:r23] retain];
    [r23 release];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void)fetchConfigWithBackgroundInit:(bool)arg2 completionBlock:(void *)arg3 {
    [arg3 retain];
    objc_initWeak(&saved_fp - 0x28, self);
    [[self configQueue] retain];
    objc_copyWeak(&var_60 + 0x28, &saved_fp - 0x28);
    [r20 retain];
    dispatch_async(r22, &var_60);
    [r22 release];
    [r20 release];
    [r19 release];
    objc_destroyWeak(&var_60 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(double)streamingRequestTimeout {
    r0 = self;
    return r0;
}

-(void)parseValidConfigurationResponse:(void *)arg2 {
    r31 = r31 - 0xf0;
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"config"];
    r0 = [r0 retain];
    var_A0 = r0;
    r0 = [r0 objectForKeyedSubscript:@"refresh_time"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    [r0 unsignedIntegerValue];
    asm { ucvtf      d0, x0 };
    asm { fdiv       d0, d0, d1 };
    asm { fcvtzu     x20, d0 };
    [r22 release];
    if (r20 != 0x0 && [r21 isRetryEnabled] != 0x0) {
            [r21 requestNextConfigWithDelaySeconds:r20 backgroundInit:0x0];
    }
    r20 = objc_alloc();
    r22 = [[r19 objectForKeyedSubscript:@"endpoints"] retain];
    r24 = [r20 initWithDictionary:r22];
    [r22 release];
    r0 = [VNGNetworkManager sharedManager];
    r0 = [r0 retain];
    var_98 = r24;
    [r0 setURLConfiguration:r24];
    [r0 release];
    [r21 setStreamingFlags:[VungleConfigController parseStreamingFlags:r19]];
    [VungleConfigController parseStreamingRequestTimeout:r19];
    [r21 setStreamingRequestTimeout:r19];
    [VungleConfigController parseBufferTimeout:r19];
    [r21 setStreamingBufferTimeout:r19];
    r20 = [[r19 objectForKeyedSubscript:@"vduid"] retain];
    r0 = [VungleVDUIDProvider sharedProvider];
    r0 = [r0 retain];
    [r0 setVDUID:r20];
    [r0 release];
    [r20 release];
    r0 = [r19 objectForKeyedSubscript:@"gdpr"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r26 = @selector(sharedManager);
            var_C0 = r21;
            r0 = [r19 objectForKeyedSubscript:@"gdpr"];
            r0 = [r0 retain];
            r22 = [[r0 objectForKeyedSubscript:@"consent_title"] retain];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"gdpr"];
            r0 = [r0 retain];
            r27 = [[r0 objectForKeyedSubscript:@"consent_message"] retain];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"gdpr"];
            r0 = [r0 retain];
            r28 = [[r0 objectForKeyedSubscript:@"button_accept"] retain];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"gdpr"];
            r0 = [r0 retain];
            r24 = [[r0 objectForKeyedSubscript:@"button_deny"] retain];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"gdpr"];
            r0 = [r0 retain];
            r21 = [[r0 objectForKeyedSubscript:@"consent_message_version"] retain];
            r20 = r24;
            [r0 release];
            r0 = [VNGUserLocalConsentMessage sharedMessage];
            r0 = [r0 retain];
            var_A8 = r28;
            r4 = r28;
            var_B8 = r21;
            [r0 updateConsentTitle:r22 consentBody:r27 acceptText:r4 denyText:r20 version:r21];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"gdpr"];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKeyedSubscript:@"is_country_data_protected"];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r24 release];
            if (r0 != 0x0) {
                    r24 = [[VNGPersistenceManager sharedManager] retain];
                    var_D0 = r22;
                    r22 = &@class(MPVASTModel);
                    r25 = [*(r22 + 0x608) class];
                    r0 = *(r22 + 0x608);
                    r0 = [r0 key];
                    r0 = [r0 retain];
                    var_C8 = @selector(sharedManager);
                    r25 = [[r24 loadObjectWithClass:r25 key:r0 error:0x0] retain];
                    [r0 release];
                    [r24 release];
                    r0 = [r19 objectForKeyedSubscript:@"gdpr"];
                    r0 = [r0 retain];
                    r24 = r0;
                    r2 = @"is_country_data_protected";
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    var_D8 = r27;
                    r21 = [r0 boolValue];
                    [r0 release];
                    [r24 release];
                    r24 = @class(NSDate);
                    [r25 consentTimeStamp];
                    asm { scvtf      d0, x0 };
                    r27 = [[r24 dateWithTimeIntervalSince1970:r2] retain];
                    r24 = [[*(r22 + 0x608) sharedModel] retain];
                    r28 = [[r25 consentStatus] retain];
                    r22 = [[r25 consentSource] retain];
                    r0 = [r25 messageVersion];
                    r29 = r29;
                    r26 = [r0 retain];
                    r4 = r26;
                    [r24 updateWithConsentStatus:r28 consentSource:r22 consentMessageVersion:r4 consentTimeStamp:r27 consentRequired:r21];
                    r0 = r26;
                    r26 = var_C8;
                    [r0 release];
                    r0 = r22;
                    r22 = var_D0;
                    [r0 release];
                    [r28 release];
                    [r24 release];
                    r0 = r27;
                    r27 = var_D8;
                    [r0 release];
                    [r25 release];
            }
            [var_B8 release];
            [r20 release];
            [var_A8 release];
            [r27 release];
            [r22 release];
            r20 = @selector(sharedMessage);
            r21 = var_C0;
    }
    else {
            r26 = @selector(sharedManager);
            r20 = @selector(sharedMessage);
    }
    r22 = [objc_msgSend(@class(VNGPersistenceManager), r26) retain];
    r20 = [objc_msgSend(@class(VNGUserLocalConsentMessage), r20) retain];
    r3 = 0x0;
    [r22 saveObject:r20 error:r3];
    [r20 release];
    [r22 release];
    r20 = [[r19 objectForKeyedSubscript:@"viewability"] retain];
    [r21 setViewabilityStatusDictionary:r20];
    [r20 release];
    r0 = [r19 objectForKeyedSubscript:@"logging"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"logging"];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForKeyedSubscript:@"enabled"];
            r0 = [r0 retain];
            r25 = [r0 boolValue];
            [r0 release];
            [r22 release];
            r0 = [VungleLogger sharedLogger];
            r29 = r29;
            r22 = [r0 retain];
            if ((r25 & 0x1) != 0x0) {
                    [r22 kickstartWithError:r29 - 0x58];
            }
            else {
                    [r22 clearLogWithCompletionBlock:0x100e89438];
            }
            [r22 release];
            r24 = [[NSUserDefaults standardUserDefaults] retain];
            r0 = [r19 objectForKeyedSubscript:@"logging"];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKeyedSubscript:@"enabled"];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 boolValue];
            r3 = @"vungleLoggerEnabled";
            [r24 setBool:r0 forKey:r3];
            [r26 release];
            [r25 release];
            [r24 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r29 = r29;
            r0 = [r0 retain];
            [r0 synchronize];
            [r20 release];
    }
    r0 = [r19 objectForKeyedSubscript:@"ri"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"ri"];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKeyedSubscript:@"enabled"];
            r29 = r29;
            r0 = [r0 retain];
            [r21 setReportIncentivizedEnabled:[r0 boolValue]];
            [r0 release];
            [r20 release];
    }
    r0 = [r21 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r20 = [r0 respondsToSelector:@selector(streamingSettingsUpdateShouldStream:streamingRequestTimeout:bufferingTimeout:), r3, r4];
    [r0 release];
    if (r20 != 0x0) {
            objc_initWeak(r29 - 0x60, r21);
            objc_copyWeak(&var_88 + 0x20, r29 - 0x60);
            dispatch_async(*__dispatch_main_q, &var_88);
            objc_destroyWeak(&var_88 + 0x20);
            objc_destroyWeak(r29 - 0x60);
    }
    r0 = [r21 placementsCoordinator];
    r0 = [r0 retain];
    [r0 updateConfiguration:r19 error:&var_90];
    [r0 release];
    [var_98 release];
    [var_A0 release];
    [r19 release];
    return;
}

-(void)setPublisherInformation:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)publisherInformation {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setStreamingBufferTimeout:(double)arg2 {
    *(self + 0x28) = d0;
    return;
}

-(void)setStreamingRequestTimeout:(double)arg2 {
    *(self + 0x20) = d0;
    return;
}

-(double)streamingBufferTimeout {
    r0 = self;
    return r0;
}

-(bool)isRetryEnabled {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void *)URL {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x0);
    return r0;
}

-(void)setRetryEnabled:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(unsigned char)streamingFlags {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setPlacementsCoordinator:(void *)arg2 {
    objc_storeWeak(self + 0x38, arg2);
    return;
}

-(void *)placementsCoordinator {
    r0 = objc_loadWeakRetained(self + 0x38);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setStreamingFlags:(unsigned char)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void *)backoffCalculator {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setBackoffCalculator:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void *)configQueue {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setConfigQueue:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(bool)configRequestScheduled {
    r0 = *(int8_t *)(self + 0xa) & 0x1;
    return r0;
}

-(void)setConfigRequestScheduled:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

-(void *)viewabilityStatusDictionary {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setViewabilityStatusDictionary:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(bool)reportIncentivizedEnabled {
    r0 = *(int8_t *)(self + 0xb);
    return r0;
}

-(void)setReportIncentivizedEnabled:(bool)arg2 {
    *(int8_t *)(self + 0xb) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_destroyWeak(self + 0x38);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    return;
}

@end