@implementation UnityAds

+(void)initialize:(void *)arg2 delegate:(void *)arg3 {
    r21 = [arg2 retain];
    [self initialize:r21 delegate:arg3 testMode:0x0];
    [r21 release];
    return;
}

+(void)initialize:(void *)arg2 delegate:(void *)arg3 testMode:(bool)arg4 {
    r21 = [arg2 retain];
    [UADSProperties setDelegate:arg3];
    r22 = [[UnityServicesListener alloc] init];
    [UnityServices initialize:r21 delegate:r22 testMode:arg4];
    [r21 release];
    [r22 release];
    return;
}

+(void)show:(void *)arg2 {
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
    r0 = [UADSPlacement getDefaultPlacement];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[UADSPlacement getDefaultPlacement] retain];
            [UnityAds show:r19 placementId:r21];
            [r21 release];
    }
    else {
            [r20 handleShowError:@"" unityAdsError:0x0 message:@"Unity Ads default placement is not initialized"];
    }
    [r19 release];
    return;
}

+(void *)getDelegate {
    r0 = [UADSProperties getDelegate];
    return r0;
}

+(void)setDelegate:(void *)arg2 {
    [UADSProperties setDelegate:arg2];
    return;
}

+(void)show:(void *)arg2 placementId:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0xe0;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [r3 retain];
    r2 = r20;
    if ([UnityAds isReady:r2] == 0x0) goto loc_1000b7ea0;

loc_1000b7c18:
    if ([USRVDeviceLog getLogLevel] >= 0x3) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Unity Ads opening new ad unit for placement %@", @selector(getLogLevel), r2, r3, r4);
    }
    [USRVClientProperties setCurrentViewController:r19];
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 retain];
    r26 = [r0 statusBarOrientation];
    [r0 release];
    r21 = @class(NSNumber);
    r21 = [[r21 numberWithBool:[r19 shouldAutorotate]] retain];
    r23 = @class(NSNumber);
    r23 = [[r23 numberWithInt:[USRVClientProperties getSupportedOrientations]] retain];
    r25 = [[USRVClientProperties getSupportedOrientationsPlist] retain];
    r26 = [[NSNumber numberWithInteger:r26] retain];
    r27 = @class(NSNumber);
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 retain];
    r22 = r0;
    r24 = [[r27 numberWithBool:[r0 isStatusBarHidden]] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_80 forKeys:&var_A8 count:0x5];
    r27 = [r0 retain];
    [r24 release];
    [r22 release];
    [r26 release];
    [r25 release];
    [r23 release];
    [r21 release];
    r21 = [[UADSWebViewShowOperation alloc] initWithPlacementId:r20 parametersDictionary:r27];
    [USRVWebViewMethodInvokeQueue addOperation:r21];
    [r21 release];
    r0 = r27;
    goto loc_1000b7f14;

loc_1000b7f14:
    [r0 release];
    goto loc_1000b7f50;

loc_1000b7f50:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1000b7ea0:
    if (([r21 isSupported] & 0x1) == 0x0 || ([r21 isInitialized] & 0x1) == 0x0) goto loc_1000b7f40;

loc_1000b7ec8:
    r22 = [[NSString stringWithFormat:@"Placement \"%@\" is not ready"] retain];
    [r21 handleShowError:r20 unityAdsError:0x8 message:r22];
    r0 = r22;
    goto loc_1000b7f14;

loc_1000b7f40:
    [r21 handleShowError:r2 unityAdsError:r3 message:r4];
    goto loc_1000b7f50;
}

+(bool)getDebugMode {
    r0 = [UnityServices getDebugMode];
    return r0;
}

+(void)setDebugMode:(bool)arg2 {
    [UnityServices setDebugMode:arg2];
    return;
}

+(bool)isSupported {
    r0 = [UnityServices isSupported];
    return r0;
}

+(bool)isReady {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if ([UnityServices isSupported] != 0x0 && [UnityServices isInitialized] != 0x0) {
            r0 = [UADSPlacement isReady];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(long long)getPlacementState {
    r0 = [UADSPlacement getPlacementState];
    return r0;
}

+(bool)isReady:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if ([UnityServices isSupported] != 0x0 && [UnityServices isInitialized] != 0x0) {
            r20 = [UADSPlacement isReady:r19];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(long long)getPlacementState:(void *)arg2 {
    r0 = [UADSPlacement getPlacementState:arg2];
    return r0;
}

+(bool)isInitialized {
    r0 = [USRVSdkProperties isInitialized];
    return r0;
}

+(void)handleShowError:(void *)arg2 unityAdsError:(long long)arg3 message:(void *)arg4 {
    r22 = [arg2 retain];
    [[arg4 retain] retain];
    [r22 retain];
    dispatch_async(*__dispatch_main_q, &var_60);
    [r22 release];
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

+(void *)getVersion {
    r0 = [UnityServices getVersion];
    return r0;
}

@end