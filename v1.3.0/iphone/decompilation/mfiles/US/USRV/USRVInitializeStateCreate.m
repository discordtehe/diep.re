@implementation USRVInitializeStateCreate

-(void *)initWithConfiguration:(void *)arg2 webViewData:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [[&var_30 super] initWithConfiguration:r21];
    r20 = r0;
    [r21 release];
    if (r20 != 0x0) {
            [r20 setWebViewData:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)webViewData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_webViewData)), 0x1);
    return r0;
}

-(void)setWebViewData:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)execute {
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
    r19 = self;
    r1 = @selector(getLogLevel);
    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads init: creating webapp", r1, r2, r3);
    }
    r21 = [[r19 configuration] retain];
    r22 = [[r19 webViewData] retain];
    [r21 setWebViewData:r22];
    [r22 release];
    [r21 release];
    r0 = [USRVDevice getOsVersion];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 componentsSeparatedByString:@"."];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    r25 = [r0 intValue];
    r0 = @class(USRVDeviceLog);
    r1 = @selector(getLogLevel);
    r0 = objc_msgSend(r0, r1);
    if (r25 < 0x9) goto loc_1000cb630;

loc_1000cb524:
    if (r0 >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Using WKWebView", r1, 0x0, r3);
    }
    r26 = @class(USRVWKWebViewApp);
    r27 = [[r19 configuration] retain];
    r2 = r27;
    [r26 create:r2];
    [r27 release];
    r0 = @class(USRVWKWebViewApp);
    r0 = [r0 getCurrentApp];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) goto loc_1000cb69c;

loc_1000cb5b8:
    r1 = @selector(getLogLevel);
    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Error creating WKWebView, falling back to UIWebView", r1, r2, r3);
    }
    r0 = [r19 configuration];
    r29 = r29;
    r26 = [r0 retain];
    [USRVWebViewApp create:r26];
    r0 = r26;
    goto loc_1000cb698;

loc_1000cb698:
    [r0 release];
    goto loc_1000cb69c;

loc_1000cb69c:
    r24 = [USRVInitializeStateComplete alloc];
    r19 = [[r19 configuration] retain];
    r20 = [r24 initWithConfiguration:r19];
    [r19 release];
    [r23 release];
    [r22 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;

loc_1000cb630:
    if (r0 >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Using UIWebView", r1, 0x0, r3);
    }
    r0 = [r19 configuration];
    r29 = r29;
    r25 = [r0 retain];
    [USRVWebViewApp create:r25];
    r0 = r25;
    goto loc_1000cb698;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webViewData, 0x0);
    return;
}

@end