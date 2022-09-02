@implementation TJSdkConfiguration

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
            r21 = [[NSMutableDictionary dictionary] retain];
            [r19 setSourceFromAppRuntime:r21];
            [r21 release];
            r20 = objc_msgSend([TJBackoff alloc], r20);
            [r19 setRequestContentRetryBackoff:r20];
            [r20 release];
            [r19 setFactoryConfiguration];
    }
    r0 = r19;
    return r0;
}

-(void)loadSourceFromBuildConfig:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([r19 isKindOfClass:[NSDictionary class]] != 0x0) {
            r0 = r20;
    }
    else {
            r0 = r20;
    }
    [r0 setSourceFromBuildConfig:r2];
    [r19 release];
    return;
}

-(void)loadConfiguration {
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r22 = [[r0 dictionaryForKey:@"TJSourceFromServerDefault"] retain];
    [r19 setSourceFromServerDefault:r22];
    [r22 release];
    r21 = [[r0 dictionaryForKey:@"TJSourceFromServerFinal"] retain];
    [r19 setSourceFromServerFinal:r21];
    [r21 release];
    [r19 applyConfiguration];
    [r0 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)applyConfiguration {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setFactoryConfiguration];
    r0 = [r19 sourceFromServerDefault];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 sourceFromServerDefault];
            r29 = r29;
            r20 = [r0 retain];
            [r19 setConfigurationFromDictionary:r20];
            [r20 release];
    }
    r0 = [r19 sourceFromConnectFlags];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 sourceFromConnectFlags];
            r29 = r29;
            r20 = [r0 retain];
            [r19 setConfigurationFromDictionary:r20];
            [r20 release];
    }
    r0 = [r19 sourceFromAppRuntime];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 sourceFromAppRuntime];
            r29 = r29;
            r20 = [r0 retain];
            [r19 setConfigurationFromDictionary:r20];
            [r20 release];
    }
    r0 = [r19 sourceFromServerFinal];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 sourceFromServerFinal];
            r29 = r29;
            r20 = [r0 retain];
            [r19 setConfigurationFromDictionary:r20];
            [r20 release];
    }
    r0 = [r19 sourceFromBuildConfig];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 sourceFromBuildConfig];
            r29 = r29;
            r20 = [r0 retain];
            [r19 setConfigurationFromDictionary:r20];
            [r20 release];
    }
    if ([r19 shouldEnableUsageTracking] != 0x0) {
            r1 = @selector(enable);
    }
    else {
            r1 = @selector(disable);
    }
    objc_msgSend(@class(TJUsageTracking), r1);
    r20 = @class(TJUsageTracking);
    r19 = [[r19 usageTrackingExclude] retain];
    [r20 setExcludedUsageNames:r19];
    [r19 release];
    return;
}

-(void)setFactoryConfiguration {
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
    var_48 = **___stack_chk_guard;
    r20 = [@(0xffffffffffffffff) retain];
    r21 = [@(0x0) retain];
    r22 = [@(0x1f4) retain];
    r23 = [@(0x2710) retain];
    r25 = [[NSNumber numberWithDouble:0x2710] retain];
    r26 = [[NSArray arrayWithObjects:&var_88 count:0x4] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&var_68 count:0x2];
    r24 = [r0 retain];
    [r26 release];
    [r25 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [self setConfigurationFromDictionary:r24];
    [self setCachePolicy:0x0];
    [self setUsageTrackingExclude:0x0];
    [self setShouldEnableUsageTracking:0x0];
    [self setShouldEnableMMExternalCache:0x1];
    [r24 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)updateConfigurations:(void *)arg2 {
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
    r19 = self;
    r22 = @selector(objectForKey:);
    r23 = [arg2 retain];
    r20 = [objc_msgSend(arg2, r22) retain];
    r0 = objc_msgSend(arg2, r22);
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    if (r20 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r22 = [r0 retain];
            if (r20 != r22) {
                    [NSDictionary class];
                    r23 = [r20 isKindOfClass:r2];
            }
            else {
                    r23 = 0x0;
            }
            [r22 release];
    }
    else {
            r23 = 0x0;
    }
    r0 = [NSUserDefaults standardUserDefaults];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 != 0x0) {
            [r24 setObject:r2 forKey:r3];
    }
    else {
            [r24 removeObjectForKey:r2];
    }
    [r24 release];
    if (r21 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r23 = [r0 retain];
            if (r21 != r23) {
                    [NSDictionary class];
                    r24 = [r21 isKindOfClass:r2];
            }
            else {
                    r24 = 0x0;
            }
            [r23 release];
    }
    else {
            r24 = 0x0;
    }
    r22 = [[NSUserDefaults standardUserDefaults] retain];
    if (r24 != 0x0) {
            [r22 setObject:r2 forKey:r3];
    }
    else {
            [r22 removeObjectForKey:r2];
    }
    [r22 release];
    [r19 loadConfiguration];
    [r21 release];
    [r20 release];
    return;
}

-(void)setConfigurationFromDictionary:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:@"placement_request_content_retry_backoff"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [NSArray class];
    r25 = [r24 isKindOfClass:r2];
    [r24 release];
    if (r25 != 0x0) {
            r24 = [[r20 requestContentRetryBackoff] retain];
            r0 = [r19 objectForKeyedSubscript:@"placement_request_content_retry_backoff"];
            r29 = r29;
            r25 = [r0 retain];
            [r24 updateWithArray:r25];
            [r25 release];
            [r24 release];
    }
    r0 = [r19 objectForKeyedSubscript:@"placement_request_content_retry_timeout"];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 setRequestContentRetryTimeout:[r25 intValue]];
    }
    r24 = @selector(respondsToSelector:);
    r0 = [r19 objectForKeyedSubscript:@"usage_tracking_enabled"];
    r29 = r29;
    r26 = [r0 retain];
    [r25 release];
    if (objc_msgSend(r26, r24) != 0x0) {
            [r20 setShouldEnableUsageTracking:[r26 boolValue]];
    }
    r23 = @selector(isKindOfClass:);
    r0 = [r19 objectForKeyedSubscript:@"usage_tracking_exclude"];
    r29 = r29;
    r27 = [r0 retain];
    [NSArray class];
    if (objc_msgSend(r27, r23) != 0x0) {
            [r20 setUsageTrackingExclude:r27];
    }
    r24 = @selector(respondsToSelector:);
    r21 = [[r19 objectForKeyedSubscript:@"use_old_ios_cache_policy"] retain];
    [r26 release];
    if (objc_msgSend(r21, r24) != 0x0) {
            if ([r21 boolValue] != 0x0) {
                    r0 = r20;
            }
            else {
                    r0 = r20;
            }
            [r0 setCachePolicy:r2];
    }
    [r27 release];
    [r21 release];
    [r19 release];
    return;
}

+(void *)sharedInstance {
    if (*qword_1011dc1e8 != -0x1) {
            dispatch_once(0x1011dc1e8, 0x100ea3108);
    }
    r0 = *0x1011dc1e0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)loadServerProvidedConfiguration {
    r0 = [self class];
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 loadConfiguration];
    [r0 release];
    return;
}

+(void)updateServerProvidedConfiguration:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self class];
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 updateConfigurations:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)setConnectFlags:(void *)arg2 {
    [arg2 retain];
    r0 = [self class];
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r21 = [[NSDictionary dictionaryWithDictionary:r19] retain];
    [r20 setSourceFromConnectFlags:r21];
    [r21 release];
    [r20 applyConfiguration];
    objc_sync_exit(r20);
    [r20 release];
    [r20 release];
    [r19 release];
    return;
}

+(void *)newRequestContentRetryBackoff {
    r0 = [self class];
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r20 = [TJBackoff alloc];
    r21 = [[r19 requestContentRetryBackoff] retain];
    [r20 initWithBackoff:r21];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)setByAppWithObject:(void *)arg2 forKey:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self class];
    r0 = [r0 sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r21 = r0;
    objc_sync_enter(r0);
    if (r19 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != r19) {
                    r0 = [r21 sourceFromAppRuntime];
                    r0 = [r0 retain];
                    r22 = r0;
                    [r0 setObject:r2 forKey:r3];
            }
            else {
                    r0 = [r21 sourceFromAppRuntime];
                    r0 = [r0 retain];
                    r22 = r0;
                    [r0 removeObjectForKey:r2];
            }
    }
    else {
            r0 = [r21 sourceFromAppRuntime];
            r0 = [r0 retain];
            r22 = r0;
            [r0 removeObjectForKey:r2];
    }
    [r22 release];
    [r21 applyConfiguration];
    objc_sync_exit(r21);
    [r21 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(int)requestContentRetryTimeout {
    r0 = [self class];
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [r19 requestContentRetryTimeout];
    objc_sync_exit(r19);
    [r19 release];
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)isMMExternalCacheEnabled {
    r0 = [self class];
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [r19 shouldEnableMMExternalCache];
    objc_sync_exit(r19);
    [r19 release];
    [r19 release];
    r0 = r20;
    return r0;
}

+(unsigned long long)getCachePolicy {
    r0 = [self class];
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r20 = [r0 cachePolicy];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)usageTrackingExclude {
    r0 = self->_usageTrackingExclude;
    return r0;
}

-(void)setUsageTrackingExclude:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_usageTrackingExclude, arg2);
    return;
}

-(bool)shouldEnableUsageTracking {
    r0 = *(int8_t *)(int64_t *)&self->_shouldEnableUsageTracking;
    return r0;
}

-(void)setShouldEnableUsageTracking:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldEnableUsageTracking = arg2;
    return;
}

-(bool)shouldEnableMMExternalCache {
    r0 = *(int8_t *)(int64_t *)&self->_shouldEnableMMExternalCache;
    return r0;
}

-(void)setShouldEnableMMExternalCache:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldEnableMMExternalCache = arg2;
    return;
}

-(int)requestContentRetryTimeout {
    r0 = *(int32_t *)(int64_t *)&self->_requestContentRetryTimeout;
    return r0;
}

-(void)setRequestContentRetryTimeout:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_requestContentRetryTimeout = arg2;
    return;
}

-(void *)requestContentRetryBackoff {
    r0 = self->_requestContentRetryBackoff;
    return r0;
}

-(void)setRequestContentRetryBackoff:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requestContentRetryBackoff, arg2);
    return;
}

-(void *)sourceFromBuildConfig {
    r0 = self->_sourceFromBuildConfig;
    return r0;
}

-(void)setSourceFromBuildConfig:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sourceFromBuildConfig, arg2);
    return;
}

-(void *)sourceFromServerFinal {
    r0 = self->_sourceFromServerFinal;
    return r0;
}

-(void)setSourceFromServerFinal:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sourceFromServerFinal, arg2);
    return;
}

-(void *)sourceFromAppRuntime {
    r0 = self->_sourceFromAppRuntime;
    return r0;
}

-(void)setSourceFromAppRuntime:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sourceFromAppRuntime, arg2);
    return;
}

-(void *)sourceFromConnectFlags {
    r0 = self->_sourceFromConnectFlags;
    return r0;
}

-(void)setSourceFromConnectFlags:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sourceFromConnectFlags, arg2);
    return;
}

-(void *)sourceFromServerDefault {
    r0 = self->_sourceFromServerDefault;
    return r0;
}

-(void)setSourceFromServerDefault:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sourceFromServerDefault, arg2);
    return;
}

-(unsigned long long)cachePolicy {
    r0 = self->_cachePolicy;
    return r0;
}

-(void)setCachePolicy:(unsigned long long)arg2 {
    self->_cachePolicy = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_sourceFromServerDefault, 0x0);
    objc_storeStrong((int64_t *)&self->_sourceFromConnectFlags, 0x0);
    objc_storeStrong((int64_t *)&self->_sourceFromAppRuntime, 0x0);
    objc_storeStrong((int64_t *)&self->_sourceFromServerFinal, 0x0);
    objc_storeStrong((int64_t *)&self->_sourceFromBuildConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_requestContentRetryBackoff, 0x0);
    objc_storeStrong((int64_t *)&self->_usageTrackingExclude, 0x0);
    return;
}

@end