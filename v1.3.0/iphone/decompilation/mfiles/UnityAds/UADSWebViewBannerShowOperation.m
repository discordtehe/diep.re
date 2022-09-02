@implementation UADSWebViewBannerShowOperation

-(void *)initWithPlacementId:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r22 = [arg2 retain];
    r0 = [NSArray arrayWithObjects:&var_30 count:0x1];
    r20 = [r0 retain];
    [UADSProperties getShowTimeout];
    r8 = 0x10624dd3;
    asm { smull      x8, w0, w8 };
    r0 = [[&var_40 super] initWithMethod:@"showBanner" webViewClass:@"webview" parameters:r20 waitTime:(SAR(r8, 0x26)) + (r8 >> 0x3f)];
    r19 = r0;
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard == var_28) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)main {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&saved_fp - 0x20 super] main];
    r20 = [r19 success];
    r0 = [USRVDeviceLog getLogLevel];
    if ((r20 & 0x1) != 0x0) {
            if (r0 >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: SHOW BANNER SUCCESS", @selector(getLogLevel), r2, r3);
            }
    }
    else {
            if (r0 >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads webapp timeout, shutting down Unity Ads", @selector(getLogLevel), r2, r3);
            }
            dispatch_async(*__dispatch_main_q, &var_48);
    }
    return;
}

+(void)callback:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r22 = [r0 isEqualToString:r2];
    [r0 release];
    if (r22 != 0x0) {
            [[&var_30 super] callback:r19];
    }
    [r19 release];
    return;
}

@end