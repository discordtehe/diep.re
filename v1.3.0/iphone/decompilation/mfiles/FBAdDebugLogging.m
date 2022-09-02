@implementation FBAdDebugLogging

+(void)logDebugEventWithType:(void *)arg2 code:(unsigned long long)arg3 description:(void *)arg4 {
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r0 = [NSMutableDictionary new];
    [r0 adnw_setNullStringIfNilObject:r19 forKey:@"description"];
    [r19 release];
    [self logDebugEventWithType:r22 code:arg3 info:r0];
    [r22 release];
    [r0 release];
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
    r0 = objc_getClass("FBAdDebugLogging");
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

+(void)logDebugEventWithType:(void *)arg2 code:(unsigned long long)arg3 exception:(void *)arg4 {
    r20 = [arg2 retain];
    r23 = [arg4 retain];
    r22 = [NSMutableDictionary new];
    r24 = [[r23 name] retain];
    [r22 adnw_setNonNilObject:r24 forKey:@"exception_name"];
    [r24 release];
    r24 = [[r23 reason] retain];
    [r22 adnw_setNonNilObject:r24 forKey:@"exception_reason"];
    [r24 release];
    r24 = [[r23 userInfo] retain];
    [r23 release];
    [r22 adnw_setNonNilObject:r24 forKey:@"exception_info"];
    [r24 release];
    [self logDebugEventWithType:r20 code:arg3 info:r22];
    [r20 release];
    [r22 release];
    return;
}

+(void)logDebugEventWithType:(void *)arg2 code:(unsigned long long)arg3 info:(void *)arg4 {
    r20 = [arg2 retain];
    r22 = [arg4 retain];
    r21 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"iOS"];
    [FBAdDevice freeDiskSpace];
    r24 = [[NSString stringWithFormat:@"%llu"] retain];
    [r21 setObject:r24 forKey:@"available_disk_space"];
    [r24 release];
    [r21 setObject:@"5.4.0" forKey:@"sdk_version"];
    r0 = [NSNumber numberWithUnsignedInteger:arg3];
    r0 = [r0 retain];
    r25 = [[r0 stringValue] retain];
    [r21 setObject:r25 forKey:@"subtype_code"];
    [r25 release];
    [r0 release];
    [r21 setObject:r20 forKey:@"subtype"];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r25 = [[r0 bundleIdentifier] retain];
    [r21 adnw_setNonNilObject:r25 forKey:@"bundle_package_name"];
    [r25 release];
    [r0 release];
    r24 = [[FBAdDevice machine] retain];
    [r21 adnw_setNonNilObject:r24 forKey:@"device_marketing_name"];
    [r24 release];
    r24 = [[FBAdDevice systemVersion] retain];
    [r21 adnw_setNonNilObject:r24 forKey:@"os_version"];
    [r24 release];
    r24 = [[FBAdEnvironmentData shortEnvironmentData] retain];
    [r21 addEntriesFromDictionary:r24];
    [r24 release];
    r24 = [[FBAdUtility getJSONStringFromObject:r22] retain];
    [r22 release];
    [r21 adnw_setNonNilObject:r24 forKey:@"additional_info"];
    r0 = [FBAdEventManager sharedManager];
    r0 = [r0 retain];
    [r0 logDebugEventWithSubtype:r20 code:arg3 extraData:r21];
    [r20 release];
    [r0 release];
    [r24 release];
    [r21 release];
    return;
}

+(bool)shouldLogCacheDebugEventsForCurrentSession {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)byte_1011dcc50 == 0x1) {
            if (*(int8_t *)byte_1011dcc51 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = [FBAdDebugLogging recalculateCacheDebugEventsSamplingRate];
            *(int8_t *)0x1011dcc51 = r0;
    }
    return r0;
}

+(void)logDSLErrorForRequestId:(void *)arg2 withData:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSMutableDictionary new];
    [r0 adnw_setNonNilObject:r21 forKey:@"ad_request_id"];
    [r21 release];
    [r0 adnw_setNonNilObject:r19 forKey:@"additional_info"];
    [r19 release];
    [self logDebugEventWithType:@"dsl" code:0x898 info:r0];
    [r0 release];
    return;
}

+(unsigned int)randomPercentage {
    r0 = arc4random_uniform(0x64);
    return r0;
}

+(void *)mutableDictionaryWithAdFormat:(void *)arg2 creative:(void *)arg3 cacheContext:(void *)arg4 requestId:(void *)arg5 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r0 = [NSMutableDictionary new];
    [r0 adnw_setNonNilObject:r22 forKey:@"ad_format_type"];
    [r22 release];
    [r0 adnw_setNonNilObject:r21 forKey:@"ad_creative_type"];
    [r21 release];
    [r0 adnw_setNonNilObject:r20 forKey:@"cache_context"];
    [r20 release];
    [r0 adnw_setNonNilObject:r19 forKey:@"ad_request_id"];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(void)logCacheHitForAdFormat:(void *)arg2 creative:(void *)arg3 cacheContext:(void *)arg4 requestId:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [[self mutableDictionaryWithAdFormat:r23 creative:r21 cacheContext:r20 requestId:arg5] retain];
    [r20 release];
    [r21 release];
    [r23 release];
    [self logDebugEventWithType:@"cache" code:0x83e info:r19];
    [r19 release];
    return;
}

+(bool)recalculateCacheDebugEventsSamplingRate {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [FBAdConfigManager sharedManager];
    r0 = [r0 retain];
    r19 = [r0 cacheDebugEventsSamplingRate];
    [r0 release];
    *(int8_t *)0x1011dcc50 = 0x1;
    if (r19 >= 0x1) {
            asm { scvtf      s0, x19 };
            asm { fdiv       s0, s1, s0 };
            asm { fcvtzu     x19, s0 };
            r0 = [FBAdDebugLogging randomPercentage];
            if (r0 < r19) {
                    if (CPU_FLAGS & BE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    *(int8_t *)0x1011dcc51 = r0;
    return r0;
}

+(void)logCacheMissForAdFormat:(void *)arg2 creative:(void *)arg3 cacheContext:(void *)arg4 requestId:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [[self mutableDictionaryWithAdFormat:r23 creative:r21 cacheContext:r20 requestId:arg5] retain];
    [r20 release];
    [r21 release];
    [r23 release];
    [self logDebugEventWithType:@"cache" code:0x83f info:r19];
    [r19 release];
    return;
}

+(void)logCacheOnDiskWipeSuccess:(unsigned long long)arg2 {
    [self logCacheOnDiskWipeEventWithSize:arg2 reason:0x0 success:0x1];
    return;
}

+(void)logCacheOnDiskWipeFailure:(unsigned long long)arg2 reason:(void *)arg3 {
    [self logCacheOnDiskWipeEventWithSize:arg2 reason:arg3 success:0x0];
    return;
}

+(void)logCacheWriteToDiskFailureForAdFormat:(void *)arg2 creative:(void *)arg3 cacheContext:(void *)arg4 requestId:(void *)arg5 reason:(void *)arg6 {
    r24 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r21 = [arg5 retain];
    r20 = [arg6 retain];
    r25 = [[self mutableDictionaryWithAdFormat:r24 creative:r23 cacheContext:r22 requestId:r21] retain];
    [r21 release];
    [r22 release];
    [r23 release];
    [r24 release];
    [r25 adnw_setNonNilObject:r20 forKey:@"failure_reason"];
    [r20 release];
    [self logDebugEventWithType:@"cache" code:0x841 info:r25];
    [r25 release];
    return;
}

+(void)logCacheWriteToDiskSuccessForAdFormat:(void *)arg2 creative:(void *)arg3 cacheContext:(void *)arg4 requestId:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [[self mutableDictionaryWithAdFormat:r23 creative:r21 cacheContext:r20 requestId:arg5] retain];
    [r20 release];
    [r21 release];
    [r23 release];
    [self logDebugEventWithType:@"cache" code:0x840 info:r19];
    [r19 release];
    return;
}

+(void)logCreativeDownloadFailure:(void *)arg2 creative:(void *)arg3 requestId:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [[self mutableDictionaryWithAdFormat:r22 creative:r20 cacheContext:@"load" requestId:arg4] retain];
    [r20 release];
    [r22 release];
    [self logDebugEventWithType:@"cache" code:0x847 info:r19];
    [r19 release];
    return;
}

+(void)logCacheOnDiskWipeEventWithSize:(unsigned long long)arg2 reason:(void *)arg3 success:(bool)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r21 = [NSMutableDictionary new];
    [[NSString stringWithFormat:@"%llu"] retain];
    [r21 adnw_setNonNilObject:r2 forKey:r3];
    [r24 release];
    if ((arg4 & 0x1) != 0x0) {
            r3 = 0x842;
    }
    else {
            [r21 adnw_setNonNilObject:r2 forKey:r3];
            r3 = 0x843;
    }
    [r20 logDebugEventWithType:@"cache" code:r3 info:r21];
    [r21 release];
    [r19 release];
    return;
}

+(void)logVideoWrapperCachedWithVideoMissingForAdFormat:(void *)arg2 requestId:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self mutableDictionaryWithAdFormat:r21 creative:@"video" cacheContext:@"load" requestId:arg3] retain];
    [r21 release];
    [self logDebugEventWithType:@"cache" code:0x844 info:r19];
    [r19 release];
    return;
}

+(void)logInMemoryCacheFailedForAdFormat:(void *)arg2 creative:(void *)arg3 requestId:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [[self mutableDictionaryWithAdFormat:r22 creative:r20 cacheContext:@"load" requestId:arg4] retain];
    [r20 release];
    [r22 release];
    [self logDebugEventWithType:@"cache" code:0x845 info:r19];
    [r19 release];
    return;
}

+(void)logAdLoadedForAdFormat:(void *)arg2 requestId:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSMutableDictionary new];
    [r0 adnw_setNonNilObject:r19 forKey:@"ad_request_id"];
    [r19 release];
    [r0 adnw_setNonNilObject:r21 forKey:@"ad_format_type"];
    [r21 release];
    [self logDebugEventWithType:@"cache" code:0x848 info:r0];
    [r0 release];
    return;
}

+(void)logAdapterFailedForAdFormat:(void *)arg2 requestId:(void *)arg3 reason:(void *)arg4 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [NSMutableDictionary new];
    [r0 adnw_setNonNilObject:r21 forKey:@"ad_request_id"];
    [r21 release];
    [r0 adnw_setNonNilObject:r22 forKey:@"ad_format_type"];
    [r22 release];
    [r0 adnw_setNonNilObject:r20 forKey:@"failure_reason"];
    [r20 release];
    [self logDebugEventWithType:@"cache" code:0x84a info:r0];
    [r0 release];
    return;
}

@end