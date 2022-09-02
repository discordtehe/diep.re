@implementation VungleURLConfiguration

+(void *)defaultConfigURL {
    r0 = [self defaultBaseURL];
    r0 = [r0 retain];
    r20 = [[r0 URLByAppendingPathComponent:@"config"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)defaultBaseURL {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"vungle.api_endpoint"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 release];
    if (r20 == 0x0) {
    }
    r19 = [[NSURL URLWithString:r2] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)defaultReachabilityURL {
    r0 = [NSURL URLWithString:r2];
    return r0;
}

+(void *)defaultReportAdURL {
    r0 = [self defaultBaseURL];
    r0 = [r0 retain];
    r20 = [[r0 URLByAppendingPathComponent:@"report_ad"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)configURL {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x1);
    return r0;
}

-(void *)registerUserURL {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x1);
    return r0;
}

-(void)setConfigURL:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setRegisterUserURL:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)setAdsURL:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)adsURL {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x1);
    return r0;
}

-(void)setWillPlayAdURL:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)willPlayAdURL {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x1);
    return r0;
}

-(void *)logURL {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x1);
    return r0;
}

-(void *)reportAdURL {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x1);
    return r0;
}

-(void)setReportAdURL:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"config"];
            r29 = r29;
            r21 = [r0 retain];
            r0 = [VungleUtil isNullOrNil:r2];
            var_68 = r21;
            if ((r0 & 0x1) != 0x0) {
                    r21 = 0x0;
                    r23 = 0x0;
            }
            else {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r23 = [r0 retain];
                    r21 = 0x1;
            }
            objc_storeStrong(r20 + 0x8, r23);
            if (r21 != 0x0) {
                    [r23 release];
            }
            r0 = [r19 objectForKeyedSubscript:@"ads"];
            r29 = r29;
            r21 = [r0 retain];
            r0 = [VungleUtil isNullOrNil:r2];
            var_70 = r21;
            if ((r0 & 0x1) != 0x0) {
                    r21 = 0x0;
                    r25 = 0x0;
            }
            else {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r25 = [r0 retain];
                    r21 = 0x1;
            }
            objc_storeStrong(r20 + 0x18, r25);
            if (r21 != 0x0) {
                    [r25 release];
            }
            r0 = [r19 objectForKeyedSubscript:@"will_play_ad"];
            r29 = r29;
            r25 = [r0 retain];
            if (([VungleUtil isNullOrNil:r2] & 0x1) != 0x0) {
                    r21 = 0x0;
                    r26 = 0x0;
            }
            else {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    r21 = 0x1;
            }
            objc_storeStrong(r20 + 0x20, r26);
            if (r21 != 0x0) {
                    [r26 release];
            }
            r0 = [r19 objectForKeyedSubscript:@"report_ad"];
            r29 = r29;
            r26 = [r0 retain];
            if (([VungleUtil isNullOrNil:r2] & 0x1) != 0x0) {
                    r21 = 0x0;
                    r27 = 0x0;
            }
            else {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r27 = [r0 retain];
                    r21 = 0x1;
            }
            objc_storeStrong(r20 + 0x28, r27);
            if (r21 != 0x0) {
                    [r27 release];
            }
            r0 = [r19 objectForKeyedSubscript:@"new"];
            r29 = r29;
            r27 = [r0 retain];
            if (([VungleUtil isNullOrNil:r2] & 0x1) != 0x0) {
                    r21 = 0x0;
                    r28 = 0x0;
            }
            else {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r28 = [r0 retain];
                    r21 = 0x1;
            }
            objc_storeStrong(r20 + 0x10, r28);
            if (r21 != 0x0) {
                    [r28 release];
            }
            r0 = [r19 objectForKeyedSubscript:@"log"];
            r29 = r29;
            r28 = [r0 retain];
            if (([VungleUtil isNullOrNil:r2] & 0x1) != 0x0) {
                    r23 = 0x0;
                    r21 = 0x0;
            }
            else {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r21 = [r0 retain];
                    r23 = 0x1;
            }
            objc_storeStrong(r20 + 0x30, r21);
            if (r23 != 0x0) {
                    [r21 release];
            }
            r0 = [r19 objectForKeyedSubscript:@"ri"];
            r29 = r29;
            r22 = [r0 retain];
            if (([VungleUtil isNullOrNil:r2] & 0x1) != 0x0) {
                    r23 = 0x0;
                    r21 = 0x0;
            }
            else {
                    r21 = [[NSURL URLWithString:r2] retain];
                    r23 = 0x1;
            }
            objc_storeStrong(r20 + 0x38, r21);
            if (r23 != 0x0) {
                    [r21 release];
            }
            [r22 release];
            [r28 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [var_70 release];
            [var_68 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)reportIncentivizedURL {
    r0 = objc_getProperty(self, _cmd, 0x38, 0x1);
    return r0;
}

-(void)setLogURL:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end