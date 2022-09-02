@implementation GADApplication

+(void)load {
    r19 = objc_autoreleasePoolPush();
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    r23 = [[r0 addObserverForName:**_UIApplicationWillChangeStatusBarFrameNotification object:0x0 queue:0x0 usingBlock:0x100e97730] retain];
    [r0 release];
    r20 = [[NSNotificationCenter defaultCenter] retain];
    r8 = *_UIApplicationDidFinishLaunchingNotification;
    r21 = *r8;
    var_38 = r23;
    r23 = [r23 retain];
    r0 = [r20 addObserverForName:r21 object:0x0 queue:0x0 usingBlock:&var_58];
    [[r0 retain] release];
    [r20 release];
    [var_38 release];
    [r23 release];
    objc_autoreleasePoolPop(r19);
    return;
}

+(void *)sharedInstance {
    if (*qword_1011dbe10 != -0x1) {
            dispatch_once(0x1011dbe10, 0x100e977a0);
    }
    r0 = *0x1011dbe18;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0xa0;
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
    r0 = [[&var_58 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 bundleIdentifier];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_mainBundleIdentifier));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r22 release];
            asm { stlrb      wzr, [x8] };
            r22 = [[r20 objectForInfoDictionaryKey:@"CFBundleShortVersionString"] retain];
            r23 = [[r20 objectForInfoDictionaryKey:**_kCFBundleVersionKey] retain];
            r0 = sub_1007dab30(r22);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_version));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = sub_1007dab30(r23);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_buildNumber));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableData alloc];
            r0 = [r0 initWithLength:0x8];
            r0 = objc_retainAutorelease(r0);
            arc4random_buf([r0 mutableBytes], [r0 length]);
            [r25 getBytes:&var_48 length:0x8];
            r26 = [[NSString alloc] initWithFormat:@"%020qu"];
            [r25 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_sessionIdentifier));
            r0 = *(r19 + r8);
            *(r19 + r8) = r26;
            [r0 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r21);
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r24);
            *(r19 + r24) = r0;
            [r8 release];
            objc_initWeak(&var_48, r19);
            objc_copyWeak(&var_80 + 0x20, &var_48);
            [r24 addObserverForName:r25 object:0x0 queue:0x0 usingBlock:&var_80];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&var_48);
            [r23 release];
            [r22 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)updateBackgroundTimeIntervalSinceBoot {
    sub_1008b9904();
    self->_backgroundTimeIntervalSinceBoot = d0;
    return;
}

-(void *)context {
    r0 = [GADEventContext rootContext];
    return r0;
}

-(void)appDidFinishLaunching {
    *(int8_t *)(int64_t *)&self->_appDidFinishLaunching = 0x1;
    return;
}

-(bool)active {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = [r0 applicationState];
    r0 = [r0 release];
    if (r21 == 0x2) {
            if (*(int8_t *)(int64_t *)&r19->_appDidFinishLaunching == 0x0) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

-(void)runBackgroundEarlyActivitiesWithCompletionHandler:(void *)arg2 {
    r19 = [arg2 retain];
    r20 = [dispatch_get_global_queue(0x0, 0x0) retain];
    var_18 = r19;
    [r19 retain];
    dispatch_async(r20, &var_38);
    [r20 release];
    [var_18 release];
    [r19 release];
    return;
}

-(void)updateApplicationContext {
    r22 = [[GADEventContext rootContext] retain];
    r23 = [[self sessionIdentifier] retain];
    [r22 setUserInfoObject:r23 forKey:*0x100e97438];
    [r23 release];
    [r22 release];
    r0 = @class(GADEventContext);
    r0 = [r0 rootContext];
    r0 = [r0 retain];
    [r0 setUserInfoObject:*0x100e9f550 forKey:*0x100e97440];
    [r0 release];
    r0 = @class(GADEventContext);
    r0 = [r0 rootContext];
    r0 = [r0 retain];
    [r0 setUserInfoObject:self->_mainBundleIdentifier forKey:*0x100e97450];
    [r0 release];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r22 = [[r0 arrayForKey:*0x100e9b6a8] retain];
    [r0 release];
    r21 = [[r22 componentsJoinedByString:@","] retain];
    r0 = @class(GADEventContext);
    r0 = [r0 rootContext];
    r0 = [r0 retain];
    [r0 setUserInfoObject:r21 forKey:*0x100e97448];
    [r0 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)runEarlyActivities {
    r0 = self;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            r0 = [r0 retain];
            [r0 runBackgroundEarlyActivitiesWithCompletionHandler:&var_38];
            [r0 release];
    }
    return;
}

-(bool)additionalEarlyActivitiesCalled {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_hasCalledAdditionalEarlyActivities));
    r8 = self + r8;
    asm { ldarb      w8, [x8] };
    r0 = r8 & 0x1;
    return r0;
}

-(void)runAdditionalEarlyActivities {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            asm { stlrb      w9, [x8] };
            if (sub_100818a24() != 0x0) {
                    var_18 = [r19 retain];
                    sub_100860a80();
                    [var_18 release];
            }
    }
    return;
}

-(void)runMainThreadEarlyActivities {
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
    r29 = &saved_fp;
    r19 = self;
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            r0 = [GADDevice sharedInstance];
            r29 = r29;
            [[r0 retain] release];
            if (sub_100818a24() != 0x0) {
                    sub_100858054();
                    [[objc_msgSend(@class(GADAnalytics), r20) retain] release];
                    [NSURLProtocol registerClass:[GADWebAdViewInterceptor class]];
                    [[objc_msgSend(@class(GADNetwork), r20) retain] release];
                    [[objc_msgSend(@class(GADIntermission), r20) retain] release];
                    [[objc_msgSend(@class(GADCrashReporter), r20) retain] release];
                    [[objc_msgSend(@class(GADEventLogger), r20) retain] release];
                    [[objc_msgSend(@class(GADNetworkLogger), r20) retain] release];
                    [[objc_msgSend(@class(GADEventConsoleLogger), r20) retain] release];
                    [[objc_msgSend(@class(GADRequestStatisticsSignals), r20) retain] release];
                    [[objc_msgSend(@class(GADDeviceOrientationSignalCache), r20) retain] release];
                    r0 = objc_msgSend(@class(GADInAppPurchaseTransactionReporter), r20);
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    if ([r0 shouldBeEnabled] != 0x0) {
                            [r21 enableReporting];
                    }
                    r0 = [GADSettings sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 boolForKey:r2];
                    [r0 release];
                    if (r24 != 0x0) {
                            r0 = [GADDeviceAudioSignals sharedVolumeView];
                            r29 = r29;
                            [[r0 retain] release];
                    }
                    r0 = [NSBundle mainBundle];
                    r0 = [r0 retain];
                    r23 = [[r0 infoDictionary] retain];
                    [r0 release];
                    r0 = [r23 objectForKeyedSubscript:@"GADDelayEarlyActivities"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if ([r0 respondsToSelector:r2] != 0x0) {
                            if (([r24 boolValue] & 0x1) == 0x0) {
                                    [r19 runAdditionalEarlyActivities];
                            }
                    }
                    else {
                            r0 = [GADSettings sharedInstance];
                            r0 = [r0 retain];
                            r22 = [r0 boolForKey:r2];
                            [r0 release];
                            if ((r22 & 0x1) == 0x0) {
                                    [r19 runAdditionalEarlyActivities];
                            }
                    }
                    [r19 updateApplicationContext];
                    [r24 release];
                    [r23 release];
                    [r21 release];
            }
    }
    return;
}

-(void)link {
    sub_1007ce06c(0x0, @"Do not call this method.");
    sub_10081f6ec();
    sub_100810f5c();
    return;
}

-(void *)version {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_version)), 0x0);
    return r0;
}

-(void *)buildNumber {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_buildNumber)), 0x0);
    return r0;
}

-(void *)mainBundleIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mainBundleIdentifier)), 0x0);
    return r0;
}

-(bool)debugModeEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_debugModeEnabled;
    return r0;
}

-(void)setDebugModeEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_debugModeEnabled = arg2;
    return;
}

-(void *)inAppPreviewCreativeToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_inAppPreviewCreativeToken)), 0x0);
    return r0;
}

-(void)setInAppPreviewCreativeToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)backgroundTimeIntervalSinceBoot {
    r0 = self;
    return r0;
}

-(void *)sessionIdentifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sessionIdentifier)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_sessionIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_inAppPreviewCreativeToken, 0x0);
    objc_storeStrong((int64_t *)&self->_mainBundleIdentifier, 0x0);
    objc_storeStrong((int64_t *)&self->_buildNumber, 0x0);
    objc_storeStrong((int64_t *)&self->_version, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end