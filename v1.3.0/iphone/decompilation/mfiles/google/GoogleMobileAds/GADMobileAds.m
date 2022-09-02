@implementation GADMobileAds

+(void)configureWithApplicationID:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    [r0 configureWithApplicationID:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)initialize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if ([GADMobileAds class] == self) {
            r0 = [GADApplication sharedInstance];
            r0 = [r0 retain];
            [r0 runEarlyActivities];
            [r0 release];
    }
    return;
}

+(void)disableAutomatedInAppPurchaseReporting {
    sub_100860a80();
    return;
}

+(void)disableSDKCrashReporting {
    sub_100833ad0();
    return;
}

+(void)enableBackgroundAdLoading {
    return;
}

+(void *)sharedInstance {
    if (*qword_1011dbfb0 != -0x1) {
            dispatch_once(0x1011dbfb0, 0x100e9f5c0);
    }
    r0 = *0x1011dbfb8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)extendedVersion {
    objc_retainAutorelease(@"afma-sdk-i-v7.44.0+0");
    return @"afma-sdk-i-v7.44.0+0";
}

-(void *)version {
    objc_retainAutorelease(@"afma-sdk-i-v7.44.0");
    return @"afma-sdk-i-v7.44.0";
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            *(int32_t *)(int64_t *)&r19->_applicationVolume = 0x3f800000;
            r0 = [GADAudioVideoManager alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_audioVideoManager));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [GADRequestConfiguration alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestConfiguration));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.mobile-ads", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)configureWithApplicationID:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ((sub_1008c3098() & 0x1) != 0x0) {
            do {
                    asm { ldaxrb     w10, [x8] };
                    asm { stlxrb     w11, w9, [x8] };
            } while (r11 != 0x0);
            if ((r10 & 0x1) == 0x0) {
                    [r20 setGoogleMobileAdsAppID:r19];
                    if (sub_100818a24() != 0x0) {
                            r0 = [GADApplication sharedInstance];
                            r0 = [r0 retain];
                            [r0 runBackgroundEarlyActivitiesWithCompletionHandler:0x100e9f600];
                            [r0 release];
                    }
            }
    }
    else {
            NSLog(@"<Google> Invalid application ID. Follow instructions at https://goo.gl/QJ4sUK to find your app ID in the AdMob UI.");
    }
    [r19 release];
    return;
}

-(void)setApplicationVolume:(float)arg2 {
    r19 = self->_lockQueue;
    var_30 = [self retain];
    dispatch_async(r19, &var_50);
    [var_30 release];
    return;
}

-(float)applicationVolume {
    r19 = self->_lockQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    [var_50 release];
    r0 = _Block_object_dispose(&var_40, 0x8);
    return r0;
}

-(void)setApplicationMuted:(bool)arg2 {
    r20 = self->_lockQueue;
    var_20 = [self retain];
    dispatch_async(r20, &var_40);
    [var_20 release];
    return;
}

-(bool)applicationMuted {
    r19 = self->_lockQueue;
    var_40 = [self retain];
    dispatch_sync(r19, &var_60);
    [var_40 release];
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void)registerMediationAdapterClassName:(void *)arg2 {
    [[arg2 retain] retain];
    sub_100860a80();
    [r0 release];
    [r19 release];
    return;
}

-(bool)isSDKVersionAtLeastMajor:(long long)arg2 minor:(long long)arg3 patch:(long long)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r3 == 0x2c) {
            if (CPU_FLAGS & E) {
                    r10 = 0x1;
            }
    }
    if (r4 < 0x1) {
            if (CPU_FLAGS & L) {
                    r11 = 0x1;
            }
    }
    r9 = 0x1;
    r10 = r10 & r11;
    if (r3 < 0x2c) {
            if (!CPU_FLAGS & L) {
                    r9 = r10;
            }
            else {
                    r9 = 0x1;
            }
    }
    if (r2 != 0x7) {
            if (!CPU_FLAGS & NE) {
                    r9 = r9;
            }
            else {
                    r9 = 0x0;
            }
    }
    if (CPU_FLAGS & L) {
            if (!CPU_FLAGS & L) {
                    r0 = r9;
            }
            else {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)setGoogleMobileAdsAppID:(void *)arg2 {
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

-(void *)googleMobileAdsAppIDFromPlist {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = [[r0 objectForInfoDictionaryKey:@"GADApplicationIdentifier"] retain];
    [r0 release];
    [NSString class];
    if ([r19 isKindOfClass:r2] != 0x0 && sub_1008c3098() != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)googleMobileAdsAppID {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self googleMobileAdsAppIDFromPlist] retain];
    if (r19 != 0x0) {
            r20 = [r19 retain];
    }
    else {
            var_48 = &var_50;
            r21 = r20->_lockQueue;
            var_60 = [r20 retain];
            dispatch_sync(r21, &var_80);
            if (sub_1008c3098() != 0x0) {
                    r0 = *(var_48 + 0x28);
            }
            else {
                    r0 = 0x0;
            }
            r20 = [r0 retain];
            [var_60 release];
            _Block_object_dispose(&var_50, 0x8);
            [0x0 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)initializationStatus {
    r0 = [GADAdapterInitializer sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 status] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)startWithCompletionHandler:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (sub_100818a24() != 0x0) {
            [[[GADCrashReporter sharedInstance] retain] release];
            r0 = [GADApplication sharedInstance];
            r0 = [r0 retain];
            [r0 runBackgroundEarlyActivitiesWithCompletionHandler:0x100e9f850];
            [r0 release];
            r20 = [[GADAdapterInitializer sharedInstance] retain];
            var_28 = [r19 retain];
            [r20 startWithCompletionHandler:&var_48];
            [var_28 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)audioVideoManager {
    r0 = self->_audioVideoManager;
    return r0;
}

-(void *)requestConfiguration {
    r0 = self->_requestConfiguration;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_requestConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_audioVideoManager, 0x0);
    objc_storeStrong((int64_t *)&self->_googleMobileAdsAppID, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end