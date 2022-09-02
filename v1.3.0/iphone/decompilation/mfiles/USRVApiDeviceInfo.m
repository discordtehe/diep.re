@implementation USRVApiDeviceInfo

+(void)WebViewExposed_getAdvertisingTrackingId:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getAdvertisingTrackingId] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getLimitAdTrackingFlag:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithBool:[USRVDevice isLimitTrackingEnabled]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getOsVersion:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getOsVersion] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getModel:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getModel] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getConnectionType:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r0 = [USRVConnectivityUtils getNetworkStatus];
    if (r0 != 0x2) {
            if (r0 == 0x1) {
                    r21 = @"wifi";
            }
            else {
                    r21 = @"none";
            }
    }
    else {
            r21 = @"cellular";
    }
    [r21 retain];
    [r19 invoke:r21];
    [r20 release];
    [r21 release];
    return;
}

+(void)WebViewExposed_getNetworkType:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithInteger:[USRVDevice getNetworkType]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getScreenScale:(void *)arg2 {
    r23 = [arg2 retain];
    [USRVDevice getScreenScale];
    r20 = [[NSNumber numberWithFloat:r2] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getScreenWidth:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getScreenWidth] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getScreenHeight:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getScreenHeight] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getNetworkOperator:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getNetworkOperator] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getNetworkOperatorName:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getNetworkOperatorName] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getHeadset:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithBool:[USRVDevice isWiredHeadsetOn]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getTimeZone:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    r24 = [arg3 retain];
    r20 = [arg2 boolValue];
    [r21 release];
    r20 = [[USRVDevice getTimeZone:r20] retain];
    [arg3 invoke:r20];
    [r24 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getDeviceVolume:(void *)arg2 {
    r23 = [arg2 retain];
    [USRVDevice getOutputVolume];
    r20 = [[NSNumber numberWithFloat:r2] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getSystemLanguage:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getPreferredLocalization] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getTimeZoneOffset:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithInteger:[USRVDevice getTimeZoneOffset]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getScreenBrightness:(void *)arg2 {
    r23 = [arg2 retain];
    [USRVDevice getScreenBrightness];
    r20 = [[NSNumber numberWithFloat:r2] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getFreeSpace:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getFreeSpaceInKilobytes] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getTotalSpace:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getTotalSpaceInKilobytes] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getBatteryLevel:(void *)arg2 {
    r23 = [arg2 retain];
    [USRVDevice getBatteryLevel];
    r20 = [[NSNumber numberWithFloat:r2] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getBatteryStatus:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithInteger:[USRVDevice getBatteryStatus]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getFreeMemory:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getFreeMemoryInKilobytes] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getTotalMemory:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getTotalMemoryInKilobytes] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_isRooted:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithBool:[USRVDevice isRooted]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getUniqueEventId:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getUniqueEventId] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getUserInterfaceIdiom:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithInteger:[USRVDevice getUserInterfaceIdiom]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_isSimulator:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithBool:[USRVDevice isSimulator]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getSupportedOrientationsPlist:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVClientProperties getSupportedOrientationsPlist] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getSupportedOrientations:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithInt:[USRVClientProperties getSupportedOrientations]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getProcessInfo:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = [r21 retain];
    r0 = [USRVDevice getProcessInfo];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r22 = [[USRVDevice getProcessInfo] retain];
            [r21 invoke:r22];
    }
    else {
            r22 = [sub_1000e3f74() retain];
            [r21 error:r22 arg1:0x0];
    }
    [r20 release];
    [r22 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getSensorList:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [USRVDevice getSensorList];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            [r19 invoke:r20];
    }
    else {
            r21 = [sub_1000e3f74() retain];
            [r19 error:r21 arg1:0x0];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getStatusBarWidth:(void *)arg2 {
    r19 = arg2;
    r20 = @class(NSNumber);
    r23 = [r19 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = r0;
    [r0 statusBarFrame];
    asm { fcvt       s0, d2 };
    r20 = [[r20 numberWithFloat:r2] retain];
    [r21 release];
    [r19 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getStatusBarHeight:(void *)arg2 {
    r19 = arg2;
    r20 = @class(NSNumber);
    r23 = [r19 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = r0;
    [r0 statusBarFrame];
    asm { fcvt       s0, d3 };
    r20 = [[r20 numberWithFloat:r2] retain];
    [r21 release];
    [r19 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getGLVersion:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[USRVDevice getGLVersion] retain];
    [arg2 invoke:r20];
    [r22 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_isStatusBarHidden:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = [[NSNumber numberWithBool:[r0 isStatusBarHidden]] retain];
    [r0 release];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getDeviceMaxVolume:(void *)arg2 {
    r23 = [arg2 retain];
    [USRVDevice getDeviceMaxVolume];
    r20 = [[NSNumber numberWithFloat:r2] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_registerVolumeChangeListener:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (*0x1011d1b58 == 0x0) {
            r0 = [USRVVolumeChangeListener alloc];
            r0 = [r0 init];
            r8 = *0x1011d1b58;
            *0x1011d1b58 = r0;
            [r8 release];
            [USRVVolumeChange registerDelegate:r2];
    }
    [r19 invoke:0x0];
    [r19 release];
    return;
}

+(void)WebViewExposed_unregisterVolumeChangeListener:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (*0x1011d1b58 != 0x0) {
            [USRVVolumeChange unregisterDelegate:r2];
            r0 = *0x1011d1b58;
            *0x1011d1b58 = 0x0;
            [r0 release];
    }
    [r19 invoke:0x0];
    [r19 release];
    return;
}

+(void)WebViewExposed_getCPUCount:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithUnsignedInteger:[USRVDevice getCPUCount]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

@end