@implementation UADSWebViewBannerHideOperation

-(void *)init {
    r31 = r31 - 0x40;
    r0 = [NSArray arrayWithObjects:&stack[-40] count:0x0];
    r20 = [r0 retain];
    [UADSProperties getShowTimeout];
    r8 = 0x10624dd3;
    asm { smull      x8, w0, w8 };
    r0 = [[&var_28 super] initWithMethod:@"hideBanner" webViewClass:@"webview" parameters:r20 waitTime:(SAR(r8, 0x26)) + (r8 >> 0x3f)];
    [r20 release];
    r0 = r0;
    return r0;
}

-(void)main {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [[&var_20 super] main];
    if ([self success] != 0x0 && [USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: HIDE BANNER SUCCESS", @selector(getLogLevel), r2, r3);
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