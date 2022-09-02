@implementation USRVSdkProperties

+(bool)isInitialized {
    return *(int8_t *)0x1011d1b38;
}

+(bool)isDebug {
    return 0x1;
}

+(bool)isTestMode {
    return *(int8_t *)0x1011d1b39;
}

+(void)setInitialized:(bool)arg2 {
    *(int8_t *)0x1011d1b38 = arg2;
    return;
}

+(void)setTestMode:(bool)arg2 {
    *(int8_t *)0x1011d1b39 = arg2;
    return;
}

+(int)getVersionCode {
    return 0xbbb;
}

+(void *)getCacheDirectoryName {
    objc_retainAutorelease(@"UnityAdsCache");
    return @"UnityAdsCache";
}

+(void *)getVersionName {
    objc_retainAutorelease(@"3.0.3");
    return @"3.0.3";
}

+(void *)getCacheFilePrefix {
    objc_retainAutorelease(@"UnityAdsCache-");
    return @"UnityAdsCache-";
}

+(void *)getLocalStorageFilePrefix {
    objc_retainAutorelease(@"UnityAdsStorage-");
    return @"UnityAdsStorage-";
}

+(void)setConfigUrl:(void *)arg2 {
    objc_storeStrong(0x1011d1b20, arg2);
    return;
}

+(void *)getConfigUrl {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011d1b20 == 0x0) {
            r0 = [USRVSdkProperties getDefaultConfigUrl:@"release"];
            r0 = [r0 retain];
            r8 = *0x1011d1b20;
            *0x1011d1b20 = r0;
            [r8 release];
    }
    r0 = *0x1011d1b20;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)getLocalWebViewFile {
    r20 = [[USRVSdkProperties getCacheDirectory] retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)getDefaultConfigUrl:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r20 = [[USRVSdkProperties getVersionName] retain];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForInfoDictionaryKey:@"UADSWebviewBranch"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [NSString class];
    r25 = [r24 isKindOfClass:r2];
    [r24 release];
    [r23 release];
    if (r25 != 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 objectForInfoDictionaryKey:@"UADSWebviewBranch"];
            r29 = r29;
            r22 = [r0 retain];
            [r20 release];
            [r21 release];
            r20 = r22;
    }
    r21 = [[@"https://config.unityads.unity3d.com/webview/" stringByAppendingFormat:@"%@/%@/config.json"] retain];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)getCacheDirectory {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011d1b28 == 0x0) {
            r0 = NSSearchPathForDirectoriesInDomains(0xd, 0x1, 0x1);
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            if ([r0 count] != 0x0) {
                    r20 = [[NSFileManager defaultManager] retain];
                    r0 = [r19 firstObject];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r20 fileExistsAtPath:r21 isDirectory:&var_21];
                    [r21 release];
                    [r20 release];
                    if (var_21 != 0x0) {
                            r0 = [r19 firstObject];
                    }
                    else {
                            r0 = NSTemporaryDirectory();
                    }
            }
            else {
                    r0 = [r19 firstObject];
            }
            r0 = [r0 retain];
            r8 = *0x1011d1b28;
            *0x1011d1b28 = r0;
            [r8 release];
            [r19 release];
    }
    r0 = *0x1011d1b28;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setInitializationTime:(long long)arg2 {
    *0x1011d1b40 = arg2;
    return;
}

+(long long)getInitializationTime {
    return *0x1011d1b40;
}

+(void)setReinitialized:(bool)arg2 {
    *(int8_t *)0x1011d1b48 = arg2;
    return;
}

+(bool)isReinitialized {
    return *(int8_t *)0x1011d1b48;
}

+(void)setDebugMode:(bool)arg2 {
    *(int8_t *)0x1011d1b49 = arg2;
    if (arg2 != 0x0) {
            [USRVDeviceLog setLogLevel:r2];
    }
    else {
            [USRVDeviceLog setLogLevel:r2];
    }
    return;
}

+(bool)getDebugMode {
    return *(int8_t *)0x1011d1b49;
}

+(void *)getDelegate {
    r0 = *0x1011d1b30;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setDelegate:(void *)arg2 {
    objc_storeStrong(0x1011d1b30, arg2);
    return;
}

@end