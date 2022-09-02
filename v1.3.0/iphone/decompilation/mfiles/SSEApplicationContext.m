@implementation SSEApplicationContext

+(void *)getCachesDirectoryPath {
    r0 = NSSearchPathForDirectoriesInDomains(0xd, 0x1, 0x1);
    r0 = [r0 retain];
    r20 = [[r0 lastObject] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)defaultApplicationContext {
    r19 = [[SSEApplicationContext alloc] init];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r21 = [[r0 bundleIdentifier] retain];
    [r19 setApplicationBundleId:r21];
    [r21 release];
    [r0 release];
    r20 = [[SSEApplicationContext getCachesDirectoryPath] retain];
    [r19 setFilePathCacheDirectory:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)dictionaryForAppTransportSecurityFlag {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 objectForInfoDictionaryKey:@"NSAppTransportSecurity"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getAllowsArbitraryLoadsFlagInATS {
    r0 = [SSEApplicationContext dictionaryForAppTransportSecurityFlag];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getAllowsArbitraryLoadsInWebContentFlagInATS {
    r0 = [SSEApplicationContext dictionaryForAppTransportSecurityFlag];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)applicationBundleId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_applicationBundleId)), 0x1);
    return r0;
}

+(bool)isUIViewControllerBasedStatusBarAppearanceFlagSetToNo {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    r19 = [[r0 objectForKey:r2] retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 boolValue] ^ 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)getAppVersion {
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
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    if (r22 == 0x0) {
            r21 = @selector(objectForKey:);
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 infoDictionary];
            r0 = [r0 retain];
            r22 = [objc_msgSend(r0, r21) retain];
            [r0 release];
            [r19 release];
    }
    r0 = [r22 autorelease];
    return r0;
}

-(void)setApplicationBundleId:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)filePathCacheDirectory {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_filePathCacheDirectory)), 0x1);
    return r0;
}

-(void)setFilePathCacheDirectory:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_filePathCacheDirectory, 0x0);
    objc_storeStrong((int64_t *)&self->_applicationBundleId, 0x0);
    return;
}

@end