@implementation UnityAdsBanner

+(void)loadBanner {
    r20 = [[UADSPlacement getDefaultBannerPlacement] retain];
    [self loadBanner:r20];
    [r20 release];
    return;
}

+(void)loadBanner:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r2 = r19;
    if ([UnityAds isReady:r2] == 0x0) goto loc_1000e9018;

loc_1000e8f8c:
    if ([USRVDeviceLog getLogLevel] >= 0x3) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads opening banner ad unit for placement %@", @selector(getLogLevel), r2, r3, r4);
    }
    r20 = [[UADSWebViewBannerShowOperation alloc] initWithPlacementId:r19];
    [USRVWebViewMethodInvokeQueue addOperation:r20];
    r0 = r20;
    goto loc_1000e9088;

loc_1000e9088:
    [r0 release];
    goto loc_1000e90c0;

loc_1000e90c0:
    [r19 release];
    return;

loc_1000e9018:
    if (([UnityAds isSupported] & 0x1) == 0x0 || ([UnityAds isInitialized] & 0x1) == 0x0) goto loc_1000e90b4;

loc_1000e9040:
    r21 = [[NSString stringWithFormat:@"Placement \"%@\" is not ready"] retain];
    [r20 handleShowError:r19 message:r21];
    r0 = r21;
    goto loc_1000e9088;

loc_1000e90b4:
    [r20 handleShowError:r2 message:r3];
    goto loc_1000e90c0;
}

+(void)setBannerPosition:(long long)arg2 {
    [USRVClientProperties setBannerDefaultPosition:arg2];
    return;
}

+(void)destroy {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if ([USRVDeviceLog getLogLevel] >= 0x3) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads destroying current banner ad unit.", @selector(getLogLevel), r2, r3);
    }
    r19 = [[UADSWebViewBannerHideOperation alloc] init];
    [USRVWebViewMethodInvokeQueue addOperation:r19];
    [r19 release];
    return;
}

+(void *)getDelegate {
    r0 = [UADSBannerProperties getDelegate];
    return r0;
}

+(void)setDelegate:(void *)arg2 {
    [UADSBannerProperties setDelegate:arg2];
    return;
}

+(void)handleShowError:(void *)arg2 message:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x70;
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
    r0 = [NSString stringWithFormat:@"Unity Ads Banner load failed: %@"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if ([USRVDeviceLog getLogLevel] >= 0x1) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: %@", @selector(getLogLevel), @"Unity Ads Banner load failed: %@", r3, r4);
    }
    r0 = [r20 getDelegate];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [r20 getDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:@selector(unityAdsBannerDidError:)];
            [r0 release];
            [r23 release];
            if (r25 != 0x0) {
                    r0 = [r20 getDelegate];
                    r0 = [r0 retain];
                    [r0 unityAdsBannerDidError:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

@end