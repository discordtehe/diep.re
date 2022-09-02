@implementation MPRateLimitManager

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d8390 != -0x1) {
            dispatch_once(0x1011d8390, &var_28);
    }
    r0 = *0x1011d8388;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableDictionary dictionary];
            r0 = [r0 retain];
            r8 = *(r19 + 0x8);
            *(r19 + 0x8) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(unsigned long long)lastRateLimitMillisecondsForAdUnitId:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r21 = [r2 retain];
            r0 = [r0 configurationDictionary];
            r0 = [r0 retain];
            r20 = [[r0 objectForKeyedSubscript:r21] retain];
            [r21 release];
            r21 = [r20 lastRateLimitMilliseconds];
            [r20 release];
            [r0 release];
            r0 = r21;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)isRateLimitedForAdUnitId:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r21 = [r2 retain];
            r0 = [r0 configurationDictionary];
            r0 = [r0 retain];
            r20 = [[r0 objectForKeyedSubscript:r21] retain];
            [r21 release];
            r21 = [r20 isRateLimited];
            [r20 release];
            [r0 release];
            r0 = r21;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)lastRateLimitReasonForAdUnitId:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r21 = [r2 retain];
            r0 = [r0 configurationDictionary];
            r0 = [r0 retain];
            r20 = [[r0 objectForKeyedSubscript:r21] retain];
            [r21 release];
            r21 = [[r20 lastRateLimitReason] retain];
            [r20 release];
            [r0 release];
            r0 = [r21 autorelease];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)setRateLimitTimerWithAdUnitId:(void *)arg2 milliseconds:(long long)arg3 reason:(void *)arg4 {
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
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg4 retain];
    if (r19 != 0x0) {
            r0 = [r20 retain];
            r20 = r0;
            objc_sync_enter(r0);
            r0 = [r20 configurationDictionary];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r25 release];
            if (r0 == 0x0) {
                    r25 = [objc_alloc() init];
                    r0 = [r20 configurationDictionary];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setObject:r25 forKeyedSubscript:r19];
                    [r0 release];
                    [r25 release];
            }
            r0 = [r20 configurationDictionary];
            r0 = [r0 retain];
            r24 = [[r0 objectForKeyedSubscript:r2] retain];
            [r0 release];
            [r24 setRateLimitTimerWithMilliseconds:r22 reason:r21];
            [r24 release];
            objc_sync_exit(r20);
            [r20 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)configurationDictionary {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setConfigurationDictionary:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end