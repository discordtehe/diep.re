@implementation UADSApiAdUnit

+(void *)getAdUnit {
    r0 = *0x1011d1a38;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setAdUnit:(void *)arg2 {
    objc_storeStrong(0x1011d1a38, arg2);
    return;
}

+(void)WebViewExposed_open:(void *)arg2 supportedOrientations:(void *)arg3 callback:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r23 = [@(0x0) retain];
    [UADSApiAdUnit WebViewExposed_open:r21 supportedOrientations:r20 statusBarHidden:r23 callback:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    [r23 release];
    return;
}

+(void)WebViewExposed_open:(void *)arg2 supportedOrientations:(void *)arg3 statusBarHidden:(void *)arg4 callback:(void *)arg5 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r24 = [@(YES) retain];
    [UADSApiAdUnit WebViewExposed_open:r22 supportedOrientations:r21 statusBarHidden:r20 shouldAutorotate:r24 callback:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    [r22 release];
    [r24 release];
    return;
}

+(void)WebViewExposed_open:(void *)arg2 supportedOrientations:(void *)arg3 statusBarHidden:(void *)arg4 shouldAutorotate:(void *)arg5 callback:(void *)arg6 {
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r21 = [arg5 retain];
    r20 = [arg6 retain];
    r25 = [@(NO) retain];
    [UADSApiAdUnit WebViewExposed_open:r19 supportedOrientations:r23 statusBarHidden:r22 shouldAutorotate:r21 isTransparent:r25 callback:r20];
    [r20 release];
    [r21 release];
    [r22 release];
    [r23 release];
    [r19 release];
    [r25 release];
    return;
}

+(void)WebViewExposed_open:(void *)arg2 supportedOrientations:(void *)arg3 statusBarHidden:(void *)arg4 shouldAutorotate:(void *)arg5 isTransparent:(void *)arg6 callback:(void *)arg7 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [arg4 retain];
    r23 = [arg5 retain];
    r22 = [arg6 retain];
    r21 = [arg7 retain];
    r26 = [@(YES) retain];
    [UADSApiAdUnit WebViewExposed_open:r19 supportedOrientations:r20 statusBarHidden:r24 shouldAutorotate:r23 isTransparent:r22 withAnimation:r26 callback:r21];
    [r21 release];
    [r22 release];
    [r23 release];
    [r24 release];
    [r20 release];
    [r19 release];
    [r26 release];
    return;
}

+(void)WebViewExposed_open:(void *)arg2 supportedOrientations:(void *)arg3 statusBarHidden:(void *)arg4 shouldAutorotate:(void *)arg5 isTransparent:(void *)arg6 withAnimation:(void *)arg7 callback:(void *)arg8 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r24 = [arg5 retain];
    r23 = [arg6 retain];
    r22 = [arg7 retain];
    r25 = [arg8 retain];
    r27 = [@(YES) retain];
    [UADSApiAdUnit WebViewExposed_open:r19 supportedOrientations:r20 statusBarHidden:r21 shouldAutorotate:r24 isTransparent:r23 withAnimation:r22 homeIndicatorAutoHidden:r27 callback:r25];
    [r25 release];
    [r22 release];
    [r23 release];
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r27 release];
    return;
}

+(void)WebViewExposed_open:(void *)arg2 supportedOrientations:(void *)arg3 statusBarHidden:(void *)arg4 shouldAutorotate:(void *)arg5 isTransparent:(void *)arg6 withAnimation:(void *)arg7 homeIndicatorAutoHidden:(void *)arg8 callback:(void *)arg9 {
    r26 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r27 = [arg5 retain];
    r28 = [arg6 retain];
    r19 = [arg7 retain];
    r25 = [arg8 retain];
    r20 = [arg9 retain];
    var_90 = r26;
    var_B8 = [r26 retain];
    var_88 = r23;
    [r23 retain];
    var_80 = r22;
    [r22 retain];
    [r27 retain];
    [r28 retain];
    var_68 = r25;
    [r25 retain];
    [r20 retain];
    var_58 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_B0);
    [r25 invoke:0x0];
    [var_58 release];
    [r20 release];
    [var_68 release];
    [r28 release];
    [r27 release];
    [var_80 release];
    [var_88 release];
    [var_90 release];
    [r19 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r26 release];
    [var_B8 release];
    return;
}

+(void)WebViewExposed_close:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_38);
            [r20 invoke:0x0];
            r0 = r20;
    }
    else {
            r20 = [sub_1000c1318() retain];
            [r19 error:r20 arg1:0x0];
            r0 = r20;
    }
    [r0 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setViews:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_38 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_58);
            [r20 invoke:0x0];
            [r21 release];
            r0 = var_38;
    }
    else {
            r22 = [sub_1000c1318() retain];
            [r20 error:r22 arg1:0x0];
            [r21 release];
            r0 = r22;
    }
    [r0 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setSupportedOrientations:(void *)arg2 callback:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [[UADSApiAdUnit getAdUnit] retain];
            [r22 setSupportedOrientations:[r19 intValue]];
            [r22 release];
            [r20 invoke:0x0];
            r0 = r21;
    }
    else {
            r22 = [sub_1000c1318() retain];
            [r20 error:r22 arg1:0x0];
            [r21 release];
            r0 = r22;
    }
    [r0 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getViews:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [UADSApiAdUnit getAdUnit];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 currentViews] retain];
            [r20 invoke:r22];
            [r19 release];
            r0 = r22;
    }
    else {
            r21 = [sub_1000c1318() retain];
            [r20 error:r21 arg1:0x0];
            r0 = r19;
    }
    [r0 release];
    [r21 release];
    return;
}

+(void)WebViewExposed_setKeepScreenOn:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg2 boolValue];
    [r21 release];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    [r0 setIdleTimerDisabled:r20];
    [r0 release];
    [arg3 invoke:0x0];
    [r23 release];
    return;
}

+(void)WebViewExposed_getSupportedOrientations:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [UADSApiAdUnit getAdUnit];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[NSNumber numberWithInt:[r0 supportedOrientations]] retain];
            [r20 invoke:r22];
            [r19 release];
            r0 = r22;
    }
    else {
            r21 = [sub_1000c1318() retain];
            [r20 error:r21 arg1:0x0];
            r0 = r19;
    }
    [r0 release];
    [r21 release];
    return;
}

+(void)WebViewExposed_setStatusBarHidden:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [[UADSApiAdUnit getAdUnit] retain];
            [r22 setStatusBarHidden:[r19 boolValue]];
            [r22 release];
            [r20 invoke:r19];
            r0 = r21;
    }
    else {
            r22 = [sub_1000c1318() retain];
            [r20 error:r22 arg1:0x0];
            [r21 release];
            r0 = r22;
    }
    [r0 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getStatusBarHidden:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [UADSApiAdUnit getAdUnit];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[NSNumber numberWithInt:[r0 statusBarHidden]] retain];
            [r20 invoke:r22];
            [r19 release];
            r0 = r22;
    }
    else {
            r21 = [sub_1000c1318() retain];
            [r20 error:r21 arg1:0x0];
            r0 = r19;
    }
    [r0 release];
    [r21 release];
    return;
}

+(void)WebViewExposed_setShouldAutorotate:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [[UADSApiAdUnit getAdUnit] retain];
            [r22 setAutorotate:[r19 boolValue]];
            [r22 release];
            [r20 invoke:r19];
            r0 = r21;
    }
    else {
            r22 = [sub_1000c1318() retain];
            [r20 error:r22 arg1:0x0];
            [r21 release];
            r0 = r22;
    }
    [r0 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getShouldAutorotate:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [UADSApiAdUnit getAdUnit];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[NSNumber numberWithInt:[r0 autorotate]] retain];
            [r20 invoke:r22];
            [r19 release];
            r0 = r22;
    }
    else {
            r21 = [sub_1000c1318() retain];
            [r20 error:r21 arg1:0x0];
            r0 = r19;
    }
    [r0 release];
    [r21 release];
    return;
}

+(void)WebViewExposed_setTransform:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_58);
            [r20 invoke:r22];
            [r21 release];
            r0 = r22;
    }
    else {
            r22 = [sub_1000c1318() retain];
            [r20 error:r22 arg1:0x0];
            [r21 release];
            r0 = r22;
    }
    [r0 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setViewFrame:(void *)arg2 x:(void *)arg3 y:(void *)arg4 width:(void *)arg5 height:(void *)arg6 callback:(void *)arg7 {
    r31 = r31 - 0xb0;
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
    r24 = arg7;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r25 = [r24 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_78 = [r19 retain];
            var_70 = [r20 retain];
            var_68 = [r21 retain];
            var_60 = [r22 retain];
            var_58 = [r23 retain];
            dispatch_async(*__dispatch_main_q, &var_98);
            [r24 invoke:0x0];
            [r25 release];
            [var_58 release];
            [var_60 release];
            [var_68 release];
            [var_70 release];
            r0 = var_78;
    }
    else {
            r26 = [sub_1000c1318() retain];
            [r24 error:r26 arg1:0x0];
            [r25 release];
            r0 = r26;
    }
    [r0 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getTransform:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r19 = [arg2 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1000c41f0;

loc_1000c410c:
    r0 = [UADSApiAdUnit getAdUnit];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 view];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 valueForKeyPath:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r0 == 0x0) goto loc_1000c4200;

loc_1000c417c:
    r0 = [UADSApiAdUnit getAdUnit];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 view];
    r0 = [r0 retain];
    r22 = [[r0 valueForKeyPath:r2] retain];
    [r19 invoke:r22];
    [r22 release];
    [r0 release];
    goto loc_1000c422c;

loc_1000c422c:
    [r20 release];
    [r19 release];
    return;

loc_1000c4200:
    r0 = sub_1000c1318();
    goto loc_1000c420c;

loc_1000c420c:
    r20 = [r0 retain];
    [r19 error:r20 arg1:0x0];
    goto loc_1000c422c;

loc_1000c41f0:
    r0 = sub_1000c1318();
    goto loc_1000c420c;
}

+(void)WebViewExposed_setHomeIndicatorAutoHidden:(void *)arg2 callback:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [[UADSApiAdUnit getAdUnit] retain];
            [r22 setHomeIndicatorAutoHidden:[r19 boolValue]];
            [r22 release];
            [r20 invoke:0x0];
            r0 = r21;
    }
    else {
            r22 = [sub_1000c1318() retain];
            [r20 error:r22 arg1:0x0];
            [r21 release];
            r0 = r22;
    }
    [r0 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getHomeIndicatorAutoHidden:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [r20 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [UADSApiAdUnit getAdUnit];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[NSNumber numberWithBool:[r0 homeIndicatorAutoHidden]] retain];
            [r20 invoke:r22];
            [r19 release];
            r0 = r22;
    }
    else {
            r21 = [sub_1000c1318() retain];
            [r20 error:r21 arg1:0x0];
            r0 = r19;
    }
    [r0 release];
    [r21 release];
    return;
}

+(void)WebViewExposed_getViewFrame:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x90;
    var_60 = d11;
    stack[-104] = d10;
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1000c4318;

loc_1000c42c0:
    r23 = [r19 isEqualToString:r2];
    r0 = @class(UADSApiAdUnit);
    r0 = [r0 getAdUnit];
    r29 = r29;
    r22 = [r0 retain];
    if (r23 == 0x0) goto loc_1000c4328;

loc_1000c42f8:
    r0 = [r22 view];
    r29 = r29;
    r21 = [r0 retain];
    goto loc_1000c43cc;

loc_1000c43cc:
    [r22 release];
    if (r21 == 0x0) goto loc_1000c44b8;

loc_1000c43d8:
    [r21 frame];
    r26 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
    r0 = *(r26 + 0xfc0);
    asm { fcvt       s0, d0 };
    r23 = @selector(numberWithFloat:);
    r0 = objc_msgSend(r0, r23);
    r29 = r29;
    r22 = [r0 retain];
    r0 = *(r26 + 0xfc0);
    asm { fcvt       s0, d8 };
    r0 = objc_msgSend(r0, r23);
    r29 = r29;
    r24 = [r0 retain];
    r0 = *(r26 + 0xfc0);
    asm { fcvt       s0, d9 };
    r0 = objc_msgSend(r0, r23);
    r25 = [r0 retain];
    r0 = *(r26 + 0xfc0);
    asm { fcvt       s0, d10 };
    r23 = [objc_msgSend(r0, r23) retain];
    [r20 invoke:r22];
    [r23 release];
    [r25 release];
    [r24 release];
    [r22 release];
    goto loc_1000c44e4;

loc_1000c44e4:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000c44b8:
    r0 = sub_1000c1318();
    goto loc_1000c44c4;

loc_1000c44c4:
    r21 = [r0 retain];
    [r20 error:r21 arg1:0x0];
    goto loc_1000c44e4;

loc_1000c4328:
    if (r22 == 0x0) goto loc_1000c44b0;

loc_1000c432c:
    r0 = [UADSApiAdUnit getAdUnit];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 getViewHandler:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r22 release];
    if (r0 == 0x0) goto loc_1000c44b8;

loc_1000c437c:
    r0 = [UADSApiAdUnit getAdUnit];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 getViewHandler:r2];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 getView];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    goto loc_1000c43cc;

loc_1000c44b0:
    [r22 release];
    goto loc_1000c44b8;

loc_1000c4318:
    r0 = sub_1000c1318();
    goto loc_1000c44c4;
}

+(void)WebViewExposed_getSafeAreaInsets:(void *)arg2 {
    r31 = r31 - 0xc0;
    var_60 = d11;
    stack[-104] = d10;
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = [arg2 retain];
    r0 = [UADSApiAdUnit getAdUnit];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 keyWindow];
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
            r21 = NSSelectorFromString(@"safeAreaInsets");
            if ([r20 respondsToSelector:r2] != 0x0) {
                    ([r20 methodForSelector:r21])(r20, r21);
                    r21 = [[NSNumber numberWithDouble:r2] retain];
                    r22 = [[NSNumber numberWithDouble:r2] retain];
                    r24 = [[NSNumber numberWithDouble:r2] retain];
                    r23 = [[NSNumber numberWithDouble:r2] retain];
                    r0 = [NSDictionary dictionaryWithObjects:&var_88 forKeys:&var_A8 count:0x4];
                    r25 = [r0 retain];
                    [r23 release];
                    [r24 release];
                    [r22 release];
                    [r21 release];
                    [r19 invoke:r25];
                    r0 = r25;
            }
            else {
                    r21 = [sub_1000c1318() retain];
                    [r19 error:r21 arg1:0x0];
                    r0 = r21;
            }
            [r0 release];
    }
    else {
            r20 = [sub_1000c1318() retain];
            [r19 error:r20 arg1:0x0];
    }
    var_68 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

@end