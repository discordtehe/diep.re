@implementation CLSDataCollectionArbiter

+(long long)stickySetting {
    r0 = [CLSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [r0 integerForKey:@"com.crashlytics.data_collection"];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void)setCrashlyticsCollectionEnabled:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [CLSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = r0;
    if (arg2 == 0x0) {
            asm { cinc       x2, x8, eq };
    }
    [r0 setInteger:r2 forKey:@"com.crashlytics.data_collection"];
    [r20 synchronize];
    [r20 release];
    return;
}

+(bool)isLegacyPlistCrashlyticsCollectionEnabled {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = [[r0 infoDictionary] retain];
    [r0 release];
    r20 = [[r19 objectForKey:@"firebase_crashlytics_collection_enabled"] retain];
    [NSString class];
    if (([r20 isKindOfClass:r2] & 0x1) == 0x0) {
            r22 = @selector(isKindOfClass:);
            [NSNumber class];
            if (objc_msgSend(r20, r22) != 0x0) {
                    r21 = [r20 boolValue];
            }
            else {
                    r21 = 0x1;
            }
    }
    else {
            r21 = [r20 boolValue];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)isCrashlyticsCollectionEnabled {
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
    r0 = [CLSDataCollectionArbiter stickySetting];
    if (r0 != 0x0) {
            if (r0 == 0x1) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r19 = [[r0 infoDictionary] retain];
            [r0 release];
            r20 = [[r19 objectForKey:@"FirebaseCrashlyticsCollectionEnabled"] retain];
            r8 = [r20 isKindOfClass:[NSString class]];
            r23 = &@selector(boolValue);
            r0 = r20;
            if ((r8 & 0x1) == 0x0) {
                    r23 = &@selector(boolValue);
                    r0 = [r20 isKindOfClass:[NSNumber class]];
                    if (r0 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r23 = &@selector(isDataCollectionDefaultEnabled);
                            }
                            else {
                                    r23 = &@selector(boolValue);
                            }
                    }
                    if (CPU_FLAGS & NE) {
                            if (!CPU_FLAGS & NE) {
                                    r0 = @class(CLSFIRApp);
                            }
                            else {
                                    r0 = r20;
                            }
                    }
            }
            r21 = objc_msgSend(r0, *r23);
            [r20 release];
            [r19 release];
            r0 = r21;
    }
    return r0;
}

@end