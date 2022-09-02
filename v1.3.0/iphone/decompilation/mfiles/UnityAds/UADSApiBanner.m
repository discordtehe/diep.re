@implementation UADSApiBanner

+(void)WebViewExposed_load:(void *)arg2 bannerStyle:(void *)arg3 width:(void *)arg4 height:(void *)arg5 callback:(void *)arg6 {
    var_60 = d9;
    stack[-104] = d8;
    r31 = r31 + 0xffffffffffffff90;
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
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r25 = [arg4 retain];
    r26 = [arg5 retain];
    r20 = [arg6 retain];
    r0 = [UADSBannerView getOrCreateInstance];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [arg4 floatValue];
    v8 = v0;
    [r25 release];
    [arg5 floatValue];
    v9 = v0;
    [r26 release];
    asm { fcvt       d8, s8 };
    asm { fcvt       d9, s9 };
    [r21 setAdSize:r2];
    r8 = [USRVClientProperties getbannerDefaultPosition];
    if (r8 == 0x7) {
            r8 = sub_1000eaa84();
    }
    [r21 setPosition:r2];
    [r21 setFrame:r8];
    [r21 setViews:r22];
    [r22 release];
    r0 = [USRVWebViewApp getCurrentApp];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r23 = [sub_1000eaba4() retain];
            r24 = [sub_1000d1038() retain];
            [r22 sendEvent:r23 category:r24 param1:0x0];
            [r24 release];
            [r23 release];
    }
    [r20 invoke:0x0];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_destroy:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [UADSBannerView getInstance];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            [r20 close];
            r0 = [USRVWebViewApp getCurrentApp];
            r29 = r29;
            r21 = [r0 retain];
            [UADSBannerView destroyInstance];
            if (r21 != 0x0) {
                    r22 = [sub_1000eaba4() retain];
                    r23 = [sub_1000d1038() retain];
                    [r21 sendEvent:r22 category:r23 param1:0x0];
                    [r23 release];
                    [r22 release];
            }
            [r21 release];
    }
    [r19 invoke:0x0];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setViewFrame:(void *)arg2 x:(void *)arg3 y:(void *)arg4 width:(void *)arg5 height:(void *)arg6 callback:(void *)arg7 {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
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
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r24 = [arg7 retain];
    r25 = [[UADSBannerView getInstance] retain];
    if (r25 != 0x0) {
            [r20 floatValue];
            [r21 floatValue];
            [r22 floatValue];
            [r23 floatValue];
            [r25 setViewFrame:r19 x:r3 y:r4 width:r5 height:r6];
    }
    [r24 invoke:0x0];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setBannerFrame:(void *)arg2 width:(void *)arg3 height:(void *)arg4 callback:(void *)arg5 {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
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
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [[UADSBannerView getInstance] retain];
    if (r23 != 0x0) {
            [r20 floatValue];
            v8 = v0;
            [r21 floatValue];
            asm { fcvt       d8, s8 };
            asm { fcvt       d9, s0 };
            [r23 setAdSize:r2];
            r8 = [USRVClientProperties getbannerDefaultPosition];
            if (r8 == 0x7) {
                    r8 = sub_1000eaa84();
            }
            [r23 setPosition:r2];
            [r23 setFrame:r2];
    }
    [r22 invoke:0x0];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setViews:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[UADSBannerView getInstance] retain];
    if (r21 != 0x0) {
            [r21 setViews:r19];
    }
    [r20 invoke:0x0];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end