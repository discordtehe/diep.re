@implementation MPAdConversionTracker

+(void *)sharedConversionTracker {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (*0x1011d8310 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            r8 = *0x1011d8310;
            *0x1011d8310 = r0;
            [r8 release];
    }
    [*0x1011d8310 retain];
    objc_sync_exit(r19);
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)reportApplicationOpenForApplicationID:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r19 forKey:@"com.mopub.conversion.appId"];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r0 release];
    r0 = [MPConsentManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 canCollectPersonalInfo];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [NSUserDefaults standardUserDefaults];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 boolForKey:@"com.mopub.conversion"];
            [r0 release];
            if ((r22 & 0x1) == 0x0) {
                    r23 = [[NSString stringWithFormat:@"Tracking conversion"] retain];
                    r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
                    [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
                    [r22 release];
                    [r23 release];
                    r21 = objc_alloc();
                    r22 = [[MPAdServerURLBuilder conversionTrackingURLForAppID:r19] retain];
                    r21 = [r21 initWithURL:r22];
                    [r22 release];
                    r22 = [[MPHTTPNetworkSession startTaskWithHttpRequest:r21 responseHandler:0x100e7e888 errorHandler:0x0] retain];
                    [r20 setTask:r22];
                    [r22 release];
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

-(void *)task {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setTask:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end