@implementation UARApiAR

+(void)WebViewExposed_isARSupported:(void *)arg2 callback:(void *)arg3 {
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    r21 = [UADSARUtils arConfigurationIsSupported:r20];
    [r20 release];
    r20 = [[NSNumber numberWithBool:r21] retain];
    [arg3 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

+(void)WebViewExposed_getSupportedVideoFormats:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [UADSARUtils arConfigurationSupportedVideoFormats:r21];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            [r19 invoke:r20];
    }
    else {
            r21 = [[NSNull null] retain];
            [r19 invoke:r21];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setDepthFar:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[UADSARView getInstance] retain];
    if (r21 != 0x0) {
            [r19 floatValue];
            [r21 setArFar:r2];
            [r20 invoke:0x0];
    }
    else {
            [r20 error:@"Error setting far plane." arg1:0x0];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_restartSession:(void *)arg2 callback:(void *)arg3 {
    var_40 = r26;
    stack[-72] = r25;
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
    r0 = [UADSARView getInstance];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r21 arSession];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r25 = [[r19 objectForKey:@"configuration"] retain];
                    r0 = [UADSARUtils createConfigurationFromProperties:r25];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r25 release];
                    if (r22 != 0x0) {
                            [r21 setArConfiguration:r22];
                            r0 = [r19 objectForKey:@"runOptions"];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    [r21 setArRunOptions:[r24 integerValue]];
                            }
                            r23 = [[r21 arSession] retain];
                            r26 = [[r21 arConfiguration] retain];
                            [UADSARUtils arSessionRestart:r23 withConfiguration:r26 withOptions:[r21 arRunOptions]];
                            [r26 release];
                            [r23 release];
                            [r20 invoke:0x0];
                            [r24 release];
                            [r22 release];
                    }
                    else {
                            [r20 error:r2 arg1:r3];
                    }
            }
            else {
                    [r20 error:r2 arg1:r3];
            }
    }
    else {
            [r20 error:r2 arg1:r3];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setDepthNear:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[UADSARView getInstance] retain];
    if (r21 != 0x0) {
            [r19 floatValue];
            [r21 setArNear:r2];
            [r20 invoke:0x0];
    }
    else {
            [r20 error:@"Error setting near plane." arg1:0x0];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_showCameraFeed:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[UADSARView getInstance] retain];
    if (r20 != 0x0) {
            [r20 setShowCameraFeed:0x1];
            [r19 invoke:0x0];
    }
    else {
            [r19 error:@"ARView is null" arg1:0x0];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_hideCameraFeed:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[UADSARView getInstance] retain];
    if (r20 != 0x0) {
            [r20 setShowCameraFeed:0x0];
            [r19 invoke:0x0];
    }
    else {
            [r19 error:@"ARView is null" arg1:0x0];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_advanceFrame:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [UADSARView getInstance];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r20 arSession];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [r20 setDrawNextCameraFrame:0x1];
                    [r19 invoke:0x0];
            }
            else {
                    [r19 error:@"Error during advanceFrame." arg1:0x0];
            }
    }
    else {
            [r19 error:@"Error during advanceFrame." arg1:0x0];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_addAnchor:(void *)arg2 withMatrix:(void *)arg3 callback:(void *)arg4 {
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
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [UADSARView getInstance];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r22 arSession];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [r22 addAnchor:r19 withTransform:r20];
                    [r21 invoke:0x0];
            }
            else {
                    [r21 error:@"Error adding anchor." arg1:0x0];
            }
    }
    else {
            [r21 error:@"Error adding anchor." arg1:0x0];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_removeAnchor:(void *)arg2 callback:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [UADSARView getInstance];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r21 arSession];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [r21 removeAnchor:r19];
                    [r20 invoke:0x0];
            }
            else {
                    [r20 error:@"Error removing anchor." arg1:0x0];
            }
    }
    else {
            [r20 error:@"Error removing anchor." arg1:0x0];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_setFrameScaling:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0xd0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = [UADSARView getInstance];
    r29 = &var_10;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 objectForKey:r2];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r0 = [r19 objectForKey:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r20 release];
                    if (r0 != 0x0) {
                            r23 = [[r19 valueForKey:@"scaleX"] retain];
                            r0 = [r19 valueForKey:@"scaleY"];
                            r29 = r29;
                            [r0 retain];
                            [r23 floatValue];
                            asm { fcvt       d0, s0 };
                            [r21 setArVideoScaleX:r2];
                            objc_msgSend(r20, r24);
                            asm { fcvt       d0, s0 };
                            [r21 setArVideoScaleY:r2];
                            [r20 release];
                            [r23 release];
                    }
            }
            r0 = [r19 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    var_C8 = r25;
                    r0 = [r19 valueForKey:@"transform"];
                    r0 = [r0 retain];
                    r22 = r0;
                    r23 = [[r0 valueForKey:@"a"] retain];
                    r24 = [[r22 valueForKey:@"b"] retain];
                    r25 = [[r22 valueForKey:@"c"] retain];
                    r26 = [[r22 valueForKey:@"d"] retain];
                    r28 = [[r22 valueForKey:@"tx"] retain];
                    r27 = [[r22 valueForKey:@"ty"] retain];
                    [r23 floatValue];
                    [r24 floatValue];
                    [r25 floatValue];
                    [r26 floatValue];
                    [r28 floatValue];
                    [r27 floatValue];
                    asm { fcvt       d1, s8 };
                    asm { fcvt       d2, s9 };
                    asm { fcvt       d3, s10 };
                    asm { fcvt       d4, s11 };
                    asm { fcvt       d5, s12 };
                    asm { fcvt       d0, s0 };
                    [r21 setArVideoTransform:&var_C0];
                    [r27 release];
                    [r28 release];
                    [r26 release];
                    [r25 release];
                    [r24 release];
                    [r23 release];
                    [r22 release];
                    r25 = var_C8;
            }
            [r21 setArVideoScaled:0x1];
            [r25 invoke:0x0];
    }
    else {
            [r25 error:@"No ARView" arg1:0x0];
    }
    [r21 release];
    [r25 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getFrameInfo:(void *)arg2 {
    r31 = r31 - 0x1f0;
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
    r19 = [arg2 retain];
    r0 = [UADSARView getInstance];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r20 arSession];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r21 = [[r20 arSession] retain];
                    r0 = [UADSARUtils sessionGetCurrentFrame:r21];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r21 release];
                    if (r22 != 0x0) {
                            r0 = [UIApplication sharedApplication];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = [r0 statusBarOrientation];
                            var_190 = r24;
                            [r0 release];
                            r0 = @class(UADSARUtils);
                            r0 = [r0 arFrameCapturedImage:r22];
                            r25 = CVPixelBufferGetWidth(r0);
                            r0 = CVPixelBufferGetHeight(r0);
                            r21 = @class(UADSARUtils);
                            [r21 sizeForOrientation:r24 width:r25 height:r0];
                            [r21 arFrame:r22 displayTransformForOrientation:r24 viewSize:r0];
                            r28 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                            r0 = *(r28 + 0xfc0);
                            asm { fcvt       s0, d0 };
                            var_170 = r22;
                            r22 = @selector(numberWithFloat:);
                            r0 = objc_msgSend(r0, r22);
                            r29 = r29;
                            var_178 = [r0 retain];
                            r0 = *(r28 + 0xfc0);
                            asm { fcvt       s0, d0 };
                            r0 = objc_msgSend(r0, r22);
                            r29 = r29;
                            var_180 = [r0 retain];
                            r0 = *(r28 + 0xfc0);
                            asm { fcvt       s0, d0 };
                            r0 = objc_msgSend(r0, r22);
                            r29 = r29;
                            var_188 = [r0 retain];
                            r0 = *(r28 + 0xfc0);
                            asm { fcvt       s0, d0 };
                            r0 = objc_msgSend(r0, r22);
                            r29 = r29;
                            var_198 = [r0 retain];
                            r0 = *(r28 + 0xfc0);
                            asm { fcvt       s0, d0 };
                            r0 = objc_msgSend(r0, r22);
                            r29 = r29;
                            var_1A0 = [r0 retain];
                            r0 = *(r28 + 0xfc0);
                            asm { fcvt       s0, d0 };
                            var_1A8 = [objc_msgSend(r0, r22) retain];
                            r24 = &@class(MCConfigurationData);
                            r26 = @selector(dictionaryWithObjects:forKeys:count:);
                            r0 = objc_msgSend(@class(NSDictionary), r26);
                            r29 = r29;
                            var_1B0 = [r0 retain];
                            r0 = *(r28 + 0xfc0);
                            asm { ucvtf      s0, x25 };
                            r0 = objc_msgSend(r0, r22);
                            r29 = r29;
                            var_1B8 = [r0 retain];
                            r0 = *(r28 + 0xfc0);
                            asm { ucvtf      s0, x27 };
                            var_1C0 = [objc_msgSend(r0, r22) retain];
                            var_1C8 = [objc_msgSend(*(r24 + 0x18), r26) retain];
                            r0 = [r20 mtkView];
                            r0 = [r0 retain];
                            var_1D0 = r0;
                            [r0 drawableSize];
                            asm { fcvt       s0, d0 };
                            [objc_msgSend(r21, r22) retain];
                            r0 = objc_msgSend(r20, r25);
                            r0 = [r0 retain];
                            objc_msgSend(r0, r27);
                            asm { fcvt       s0, d1 };
                            r25 = [objc_msgSend(r23, r22) retain];
                            r23 = [objc_msgSend(@class(NSDictionary), r26) retain];
                            r27 = [[*(r28 + 0xfc0) numberWithInteger:var_190] retain];
                            r22 = [objc_msgSend(@class(NSDictionary), r26) retain];
                            [r27 release];
                            [r23 release];
                            [r25 release];
                            [r21 release];
                            [r24 release];
                            [var_1D0 release];
                            [var_1C8 release];
                            [var_1C0 release];
                            [var_1B8 release];
                            [var_1B0 release];
                            [var_1A8 release];
                            [var_1A0 release];
                            [var_198 release];
                            [var_188 release];
                            [var_180 release];
                            [var_178 release];
                            [r19 invoke:r22];
                            r0 = r22;
                            r22 = var_170;
                            [r0 release];
                    }
                    else {
                            [r19 error:@"No ARFrame yet." arg1:0x0];
                    }
                    [r22 release];
            }
            else {
                    [r19 error:@"No ARView or no session" arg1:0x0];
            }
    }
    else {
            [r19 error:@"No ARView or no session" arg1:0x0];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end