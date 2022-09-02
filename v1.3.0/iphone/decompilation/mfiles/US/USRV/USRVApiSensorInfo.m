@implementation USRVApiSensorInfo

+(void)WebViewExposed_startAccelerometerUpdates:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    r24 = [arg3 retain];
    [arg2 doubleValue];
    [r21 release];
    r20 = [[NSNumber numberWithBool:[USRVSensorInfo startAccelerometerUpdates:r2]] retain];
    [arg3 invoke:r20];
    [r24 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_stopAccelerometerUpdates:(void *)arg2 {
    r22 = [arg2 retain];
    [USRVSensorInfo stopAccelerometerUpdates];
    [arg2 invoke:0x0];
    [r22 release];
    return;
}

+(void)WebViewExposed_getAccelerometerData:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [USRVSensorInfo getAccelerometerData];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            [r19 invoke:r20];
    }
    else {
            r21 = [sub_1000e2fc8() retain];
            [r19 error:r21 arg1:0x0];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_isAccelerometerActive:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[NSNumber numberWithBool:[USRVSensorInfo isAccelerometerActive]] retain];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

@end