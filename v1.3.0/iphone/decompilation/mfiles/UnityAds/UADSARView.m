@implementation UADSARView

+(void *)getInstance {
    r0 = *0x1011d1cf0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_40 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 commonInit];
    }
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            [r19 frame];
            [r19 frame];
            [r19 frame];
            [r19 frame];
            NSLog(@"%@/UnityAds: %s (line:%d) :: self.frame: (%f, %f, %f, %f)", @selector(frame), r2, r3, r4, r5, r6, r7);
    }
    r0 = r19;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 commonInit];
    }
    r0 = r19;
    return r0;
}

-(void)initAR {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setArRunOptions:0x0];
    r20 = [[UADSARUtils sessionCreate] retain];
    [r19 setArSession:r20];
    [r20 release];
    r20 = [[UADSARUtils createConfiguration:"ARWorldTrackingConfiguration"] retain];
    [r19 setArConfiguration:r20];
    [r20 release];
    r0 = [r19 arSession];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 arSession] retain];
            [UADSARUtils session:r20 setDelegate:r19];
            [r20 release];
    }
    return;
}

-(void)addAnchor:(void *)arg2 withTransform:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r22 = arg2;
    r20 = self;
    r19 = [r22 retain];
    r0 = [arg3 componentsSeparatedByString:@","];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r23 = 0x0;
    r27 = &var_90;
    do {
            r0 = [r21 objectAtIndexedSubscript:r23];
            r29 = r29;
            r0 = [r0 retain];
            [r0 floatValue];
            *(int32_t *)(r27 + r23 * 0x4) = s0;
            [r26 release];
            r23 = r23 + 0x1;
    } while (r23 != 0x10);
    r23 = [[UADSARUtils anchorInitWithTransform:r2] retain];
    r24 = @class(UADSARUtils);
    r25 = [[r20 arSession] retain];
    [r24 sessionAddAnchor:r25 anchor:r23];
    [r25 release];
    r0 = @class(UADSARUtils);
    r0 = [r0 arAnchorIdentifier:r23];
    r0 = [r0 retain];
    r25 = [[r0 UUIDString] retain];
    [r0 release];
    [r20->jsAnchorIdsToObjCAnchorIds setValue:r25 forKey:r19];
    [r20->objCAnchorIdsToJSAnchorIds setValue:r22 forKey:r25];
    [r20->anchors setValue:r23 forKey:r19];
    [r19 release];
    [r25 release];
    [r23 release];
    [r21 release];
    return;
}

-(void)removeAnchor:(void *)arg2 {
    r25 = sign_extend_64(*(int32_t *)ivar_offset(anchors));
    r22 = *(self + r25);
    r21 = [arg2 retain];
    r22 = [[r22 objectForKeyedSubscript:arg2] retain];
    r23 = @class(UADSARUtils);
    r24 = [[self arSession] retain];
    [r23 sessionRemoveAnchor:r24 anchor:r22];
    [r24 release];
    r0 = @class(UADSARUtils);
    r0 = [r0 arAnchorIdentifier:r22];
    r0 = [r0 retain];
    r24 = [[r0 UUIDString] retain];
    [r0 release];
    [self->jsAnchorIdsToObjCAnchorIds removeObjectForKey:arg2];
    [self->objCAnchorIdsToJSAnchorIds removeObjectForKey:r24];
    [*(self + r25) removeObjectForKey:arg2];
    [r21 release];
    [r24 release];
    [r22 release];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            [r19 frame];
            r0 = NSStringFromCGRect();
            r29 = r29;
            [r0 retain];
            NSLog(@"%@/UnityAds: %s (line:%d) :: LAYOUTSUBVIEWS %@", r20, r2, r3, r4);
            [r21 release];
    }
    r20 = @selector(frame);
    [[&var_30 super] layoutSubviews];
    *(int8_t *)(int64_t *)&r19->updateWindowSize = 0x1;
    [[r19 mtkView] retain];
    objc_msgSend(r19, r20);
    [r21 setFrame:r2];
    [r21 release];
    return;
}

-(void)removeFromSuperview {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] removeFromSuperview];
    r0 = [r19 arSession];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 arSession] retain];
            [UADSARUtils sessionPause:r20];
            [r20 release];
    }
    if (*0x1011d1cf0 == r19) {
            *0x1011d1cf0 = 0x0;
            [r19 release];
    }
    return;
}

-(void)adjustVideoScaling {
    r31 = r31 - 0xd0;
    var_60 = d13;
    stack[-104] = d12;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [[self arSession] retain];
    r0 = [UADSARUtils sessionGetCurrentFrame:r21];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            r21 = [UADSARUtils arFrameCapturedImage:r20];
            if (r21 != 0x0) {
                    CVPixelBufferGetWidth(r21);
                    CVPixelBufferGetHeight(r21);
                    asm { ucvtf      d8, x22 };
                    asm { ucvtf      d9, x0 };
                    [r19 arVideoTransform];
                    CGAffineTransformInvert(&stack[-208]);
                    CGRectApplyAffineTransform(&stack[-160], @selector(arVideoTransform));
                    r21 = @selector(mtkView);
                    asm { fdiv       d12, d9, d8 };
                    r0 = objc_msgSend(r19, r21);
                    r0 = [r0 retain];
                    [r0 drawableSize];
                    r0 = objc_msgSend(r19, r21);
                    r0 = [r0 retain];
                    objc_msgSend(r0, r22);
                    asm { fdiv       d13, d10, d1 };
                    [r24 release];
                    [r23 release];
                    r0 = objc_msgSend(r19, r21);
                    r0 = [r0 retain];
                    objc_msgSend(r0, r22);
                    [r23 release];
                    r0 = objc_msgSend(r19, r21);
                    r0 = [r0 retain];
                    objc_msgSend(r0, r22);
                    [r21 release];
                    if (d13 > d12) {
                            asm { fdiv       d0, d0, d12 };
                    }
                    else {
                            asm { fdiv       d0, d0, d13 };
                    }
                    r1 = @selector(setArVideoScaleX:);
                    asm { fdiv       d0, d10, d9 };
                    objc_msgSend(r19, r1);
                    r1 = @selector(setArVideoScaleY:);
                    asm { fdiv       d0, d11, d8 };
                    objc_msgSend(r19, r1);
            }
    }
    [r20 release];
    return;
}

-(void)mtkView:(void *)arg2 drawableSizeWillChange:(struct CGSize)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v1;
    v9 = v0;
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            [NSStringFromCGSize() retain];
            NSLog(@"%@/UnityAds: %s (line:%d) :: DRAWABLESIZEWILLCHANGE SIZE: %@", @selector(getLogLevel), r2, r3, r4);
            [r19 release];
    }
    return;
}

-(void)commonInit {
    r31 = r31 - 0xd0;
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
    var_68 = **___stack_chk_guard;
    objc_storeStrong(0x1011d1cf0, self);
    self->timeOfLastDrawnCameraFrame = 0x0;
    [self initAR];
    r21 = [MTKView alloc];
    [self frame];
    r22 = MTLCreateSystemDefaultDevice();
    r21 = [r21 initWithFrame:r22 device:r3];
    [self setMtkView:r21];
    [r21 release];
    [r22 release];
    r0 = [self mtkView];
    r0 = [r0 retain];
    [r0 setDelegate:self];
    [r0 release];
    r0 = [self mtkView];
    r0 = [r0 retain];
    [r0 setAutoResizeDrawable:0x1];
    [r0 release];
    r0 = [self mtkView];
    r0 = [r0 retain];
    [r0 setFramebufferOnly:0x0];
    [r0 release];
    r22 = [[self mtkView] retain];
    [self addSubview:r22];
    [r22 release];
    r0 = [self mtkView];
    r0 = [r0 retain];
    r23 = r0;
    r25 = [[r0 device] retain];
    r0 = [CIContext contextWithMTLDevice:r25];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(ciContext));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r25 release];
    [r23 release];
    r0 = [self mtkView];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 device];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 newCommandQueue];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(commandQueue));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r22 release];
    [r21 release];
    self->colorSpace = CGColorSpaceCreateDeviceRGB();
    r0 = CGColorSpaceCreateDeviceRGB();
    r0 = CGColorCreate(r0, &var_90);
    r22 = [[CIColor colorWithCGColor:r0] retain];
    r0 = [CIImage imageWithColor:r22];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(testImage));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r22 release];
    [self setArNear:r22];
    [self setArFar:r22];
    [self setShowCameraFeed:0x0];
    [self setArVideoScaled:0x0];
    [self setArVideoTransform:&var_C0];
    *(int8_t *)(int64_t *)&self->sendARFrame = 0x0;
    *(int8_t *)(int64_t *)&self->updateWindowSize = 0x0;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    self->interfaceOrientation = [r0 statusBarOrientation];
    [r0 release];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(jsAnchorIdsToObjCAnchorIds));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(objCAnchorIdsToJSAnchorIds));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(anchors));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [self adjustVideoScaling];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)sessionWasInterrupted:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: sessionWasInterrupted %@", @selector(getLogLevel), r2, r3, r4);
    }
    r20 = [[USRVWebViewApp getCurrentApp] retain];
    r21 = [sub_1000ee080() retain];
    r22 = [sub_1000d1038() retain];
    [r20 sendEvent:r21 category:r22 param1:0x0];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)session:(void *)arg2 didFailWithError:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r3 retain];
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: didFailWithError %@", @selector(getLogLevel), r2, r3, r4);
    }
    r20 = [[USRVWebViewApp getCurrentApp] retain];
    r21 = [sub_1000ee080() retain];
    r22 = [sub_1000d1038() retain];
    r23 = [[NSNumber numberWithInteger:[r19 code]] retain];
    [r20 sendEvent:r21 category:r22 param1:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)sessionInterruptionEnded:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: sessionInterruptionEnded %@", @selector(getLogLevel), r2, r3, r4);
    }
    r20 = [[USRVWebViewApp getCurrentApp] retain];
    r21 = [sub_1000ee080() retain];
    r22 = [sub_1000d1038() retain];
    [r20 sendEvent:r21 category:r22 param1:0x0];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)drawInMTKView:(void *)arg2 {
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
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
    r31 = r31 + 0xffffffffffffff80 - 0x1c0;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 statusBarOrientation];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(interfaceOrientation));
    *(r20 + r26) = r0;
    [r21 release];
    r23 = [[r20 arSession] retain];
    r0 = [UADSARUtils sessionGetCurrentFrame:r23];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1000ef3a4;

loc_1000eee94:
    r0 = [r19 currentDrawable];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_1000ef3a4;

loc_1000eeeb8:
    r0 = [r19 currentRenderPassDescriptor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r0 == 0x0) goto loc_1000ef3ac;

loc_1000eeeec:
    CACurrentMediaTime();
    v8 = v0;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(timeOfLastDrawnCameraFrame));
    d0 = *(r20 + r23);
    if (d0 == 0x0) {
            *(r20 + r23) = d8;
            v0 = v8;
    }
    d0 = d8 - d0;
    if (d0 >= 0x3fe0000000000000 || [r20 drawNextCameraFrame] != 0x0) goto loc_1000eef34;

loc_1000ef3ac:
    [r21 release];
    [r19 release];
    return;

loc_1000eef34:
    *(int8_t *)(int64_t *)&r20->sendARFrame = 0x1;
    *(r20 + r23) = d8;
    [r20 setDrawNextCameraFrame:0x0];
    if ([r20 showCameraFeed] == 0x0) goto loc_1000ef3ac;

loc_1000eef70:
    r0 = @class(UADSARUtils);
    r0 = [r0 arFrameCapturedImage:r21];
    r23 = r0;
    r24 = CVPixelBufferGetWidth(r0);
    r4 = CVPixelBufferGetHeight(r23);
    r25 = @class(UADSARUtils);
    r26 = *(r20 + r26);
    [r25 sizeForOrientation:r26 width:r24 height:r4];
    [r25 arFrame:r21 displayTransformForOrientation:r26 viewSize:r4];
    [r20 setArVideoTransform:r29 - 0xd0];
    if (([r20 arVideoScaled] & 0x1) == 0x0) {
            [r20 adjustVideoScaling];
    }
    [r20 setArVideoScaled:0x0];
    [[CIImage imageWithCVPixelBuffer:r23] retain];
    [r20 arVideoTransform];
    CGAffineTransformInvert(&stack[-320]);
    [r20 arVideoScaleX];
    CGAffineTransformMakeScale([r20 arVideoScaleY], @selector(arVideoScaleY));
    CGAffineTransformConcat(&var_1C0, &var_1F0);
    r25 = [[r23 imageByApplyingTransform:&stack[-416]] retain];
    [r23 release];
    [r25 extent];
    [r25 extent];
    r0 = [r20 mtkView];
    r0 = [r0 retain];
    [r0 drawableSize];
    [r0 release];
    [r25 extent];
    [r25 extent];
    r0 = [r20 mtkView];
    r0 = [r0 retain];
    [r0 drawableSize];
    CGAffineTransformMakeTranslation([r0 release], @selector(drawableSize));
    var_228 = [[r25 imageByApplyingTransform:&stack[-560]] retain];
    [r25 release];
    r0 = [r20 mtkView];
    r0 = [r0 retain];
    r25 = r0;
    [r0 drawableSize];
    r0 = [r20 mtkView];
    r0 = [r0 retain];
    [r0 drawableSize];
    [r0 release];
    [r25 release];
    r25 = [[r20->commandQueue commandBuffer] retain];
    r26 = r20->ciContext;
    r0 = [r20 mtkView];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 currentDrawable];
    r0 = [r0 retain];
    r24 = [[r0 texture] retain];
    [r26 render:var_228 toMTLTexture:r24 commandBuffer:r25 bounds:r20->colorSpace colorSpace:r6];
    [r24 release];
    [r0 release];
    [r27 release];
    r0 = [r20 mtkView];
    r0 = [r0 retain];
    r22 = [[r0 currentDrawable] retain];
    [r25 presentDrawable:r22];
    [r22 release];
    [r0 release];
    [r25 commit];
    [r25 release];
    r0 = var_228;
    goto loc_1000ef3a8;

loc_1000ef3a8:
    [r0 release];
    goto loc_1000ef3ac;

loc_1000ef3a4:
    r0 = r23;
    goto loc_1000ef3a8;
}

-(void)session:(void *)arg2 didAddAnchors:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self getPlanesString:arg3];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r20 = [[USRVWebViewApp getCurrentApp] retain];
            r21 = [sub_1000ee080() retain];
            r22 = [sub_1000d1038() retain];
            [r20 sendEvent:r21 category:r22 param1:r19];
            [r22 release];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)session:(void *)arg2 didUpdateAnchors:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self getPlanesString:arg3];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r20 = [[USRVWebViewApp getCurrentApp] retain];
            r21 = [sub_1000ee080() retain];
            r22 = [sub_1000d1038() retain];
            [r20 sendEvent:r21 category:r22 param1:r19];
            [r22 release];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)session:(void *)arg2 didRemoveAnchors:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [r21 getPlanesString:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r22 = [[USRVWebViewApp getCurrentApp] retain];
            r23 = [sub_1000ee080() retain];
            r0 = sub_1000d1038();
            r29 = r29;
            r24 = [r0 retain];
            [r22 sendEvent:r23 category:r24 param1:r20];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    r0 = [r21 getAnchorsString:r19];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r22 = [[USRVWebViewApp getCurrentApp] retain];
            r23 = [sub_1000ee080() retain];
            r24 = [sub_1000d1038() retain];
            [r22 sendEvent:r23 category:r24 param1:r21];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(float)arNear {
    r0 = self;
    return r0;
}

-(void)setArNear:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_arNear = s0;
    return;
}

-(float)arFar {
    r0 = self;
    return r0;
}

-(void)setArFar:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_arFar = s0;
    return;
}

-(void *)arSession {
    r0 = self->_arSession;
    return r0;
}

-(void *)getAnchorsString:(void *)arg2 {
    r31 = r31 - 0x190;
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
    var_B8 = self;
    r0 = [arg2 retain];
    r23 = r0;
    if ([r0 count] != 0x0) {
            r22 = 0x0;
            var_60 = 0x0;
            r24 = @selector(arPlaneAnchorClass);
            r25 = @selector(isKindOfClass:);
            r19 = @selector(count);
            r20 = @selector(objectAtIndexedSubscript:);
            r26 = &@class(MCConfigurationData);
            var_70 = r24;
            var_C0 = r19;
            var_80 = r20;
            var_78 = r25;
            do {
                    r27 = [objc_msgSend(r23, r20) retain];
                    r0 = *(r26 + 0x950);
                    r0 = objc_msgSend(r0, r24);
                    r29 = r29;
                    r28 = [r0 retain];
                    if ((objc_msgSend(r27, r25) & 0x1) != 0x0) {
                            [r28 release];
                            [r27 release];
                    }
                    else {
                            r21 = r23;
                            r20 = [objc_msgSend(r23, r20) retain];
                            r23 = r25;
                            r25 = r26;
                            r0 = *(r26 + 0x950);
                            r0 = [r0 arFaceAnchorClass];
                            r29 = r29;
                            r24 = [r0 retain];
                            r26 = objc_msgSend(r20, r23);
                            [r24 release];
                            [r20 release];
                            [r28 release];
                            [r27 release];
                            if ((r26 & 0x1) != 0x0) {
                                    r26 = r25;
                                    r25 = var_78;
                                    r24 = var_70;
                                    r20 = var_80;
                                    r23 = r21;
                            }
                            else {
                                    r19 = var_60;
                                    if (r19 == 0x0) {
                                            r19 = @"[";
                                            [r19 retain];
                                    }
                                    var_F0 = @selector(stringByAppendingString:);
                                    var_E8 = @selector(stringWithFormat:);
                                    r23 = r21;
                                    [objc_msgSend(r23, var_80) retain];
                                    [*(r25 + 0x950) anchorTransform:r2];
                                    r20 = var_B8->objCAnchorIdsToJSAnchorIds;
                                    r0 = *(r25 + 0x950);
                                    r0 = [r0 arAnchorIdentifier:r2];
                                    r0 = [r0 retain];
                                    r24 = r0;
                                    r26 = [[r0 UUIDString] retain];
                                    r0 = [r20 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    r0 = r26;
                                    r26 = r25;
                                    [r0 release];
                                    [r24 release];
                                    q3 = q0;
                                    asm { fcvt       d0, s3 };
                                    r0 = @class(NSString);
                                    asm { fcvt       d1, s1 };
                                    asm { fcvt       d2, s2 };
                                    asm { fcvt       d3, s3 };
                                    asm { fcvt       d4, s7 };
                                    asm { fcvt       d5, s5 };
                                    asm { fcvt       d6, s6 };
                                    asm { fcvt       d7, s7 };
                                    asm { fcvt       d16, s19 };
                                    asm { fcvt       d17, s17 };
                                    asm { fcvt       d18, s18 };
                                    asm { fcvt       d19, s19 };
                                    asm { fcvt       d20, s23 };
                                    asm { fcvt       d21, s21 };
                                    asm { fcvt       d22, s22 };
                                    asm { fcvt       d23, s23 };
                                    r0 = objc_msgSend(r0, var_E8);
                                    r0 = [r0 retain];
                                    r24 = [objc_msgSend(r0, var_F0) retain];
                                    [r0 release];
                                    r0 = objc_msgSend(r19, var_F0);
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [r19 release];
                                    [r24 release];
                                    [r27 release];
                                    [r28 release];
                                    var_60 = r20;
                                    r20 = r21;
                                    r25 = var_78;
                                    r24 = var_70;
                                    r19 = var_C0;
                            }
                    }
                    r22 = r22 + 0x1;
            } while (objc_msgSend(r23, r19) > r22);
            r20 = var_60;
            if (r20 != 0x0) {
                    r22 = [[r20 substringToIndex:[r20 length] - 0x1] retain];
                    [r20 release];
                    r20 = [[r22 stringByAppendingString:@"]"] retain];
                    [r22 release];
            }
    }
    else {
            r20 = 0x0;
    }
    [r23 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)getPlanesString:(void *)arg2 {
    var_A0 = d15;
    stack[-152] = d14;
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
    r29 = &var_10;
    r31 = r31 + 0xffffffffffffff60 - 0x1f0;
    *(r29 + 0xffffffffffffff60) = **___stack_chk_guard;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            r21 = 0x0;
            r23 = 0x0;
            r22 = @selector(objectAtIndexedSubscript:);
            r28 = @selector(arPlaneAnchorClass);
            r24 = @selector(isKindOfClass:);
            r20 = &@class(MCConfigurationData);
            *(r29 + 0xffffffffffffff30) = @selector(stringByAppendingString:);
            *(r29 + 0xffffffffffffff38) = @selector(count);
            var_188 = r19;
            do {
                    r25 = [objc_msgSend(r19, r22) retain];
                    r0 = *(r20 + 0x950);
                    r0 = objc_msgSend(r0, r28);
                    r29 = r29;
                    r26 = [r0 retain];
                    r27 = objc_msgSend(r25, r24);
                    [r26 release];
                    [r25 release];
                    if (r27 != 0x0) {
                            if (r23 == 0x0) {
                                    r23 = @"[";
                                    [r23 retain];
                            }
                            var_180 = @selector(stringWithFormat:);
                            objc_initWeak(r29 - 0xc0, [objc_msgSend(r19, r22) retain]);
                            [r25 release];
                            r26 = *(r20 + 0x950);
                            r25 = objc_loadWeakRetained(r29 - 0xc0);
                            [r26 anchorTransform:r25];
                            *(int128_t *)(r29 + 0xffffffffffffff00) = q2;
                            *(int128_t *)(r29 + 0xffffffffffffff10) = q1;
                            *(int128_t *)(r29 + 0xffffffffffffff20) = q0;
                            [r25 release];
                            r26 = *(r20 + 0x950);
                            r25 = objc_loadWeakRetained(r29 - 0xc0);
                            [r26 arAnchorCenter:r25 center:r29 - 0xac];
                            [r25 release];
                            r26 = *(r20 + 0x950);
                            objc_loadWeakRetained(r29 - 0xc0);
                            [r26 arAnchorExtent:r2 extent:r3];
                            r19 = r23;
                            r27 = r20;
                            [r25 release];
                            r26 = *(r27 + 0x950);
                            r25 = objc_loadWeakRetained(r29 - 0xc0);
                            [r26 arPlaneAnchorAlignment:r2];
                            [r25 release];
                            r25 = @class(NSString);
                            r20 = r27;
                            r27 = *(r27 + 0x950);
                            r26 = objc_loadWeakRetained(r29 - 0xc0);
                            r0 = [r27 arAnchorIdentifier:r2];
                            asm { fcvt       d0, s0 };
                            asm { fcvt       d0, s0 };
                            asm { fcvt       d0, s0 };
                            asm { fcvt       d0, s0 };
                            asm { fcvt       d0, s0 };
                            asm { fcvt       d0, s0 };
                            asm { fcvt       d0, s0 };
                            asm { fcvt       d9, s1 };
                            asm { fcvt       d0, s0 };
                            *(r29 + 0xffffffffffffff00) = d0;
                            asm { fcvt       d11, s0 };
                            asm { fcvt       d12, s0 };
                            asm { fcvt       d13, s1 };
                            q1 = *(int128_t *)(r29 + 0xffffffffffffff20);
                            asm { fcvt       d14, s0 };
                            asm { fcvt       d8, s0 };
                            asm { fcvt       d15, s0 };
                            asm { fcvt       d10, s1 };
                            r27 = [r0 retain];
                            asm { fcvt       d1, s0 };
                            s2 = *(int32_t *)(r29 + 0xffffffffffffff50);
                            asm { fcvt       d3, s2 };
                            asm { fcvt       d4, s4 };
                            s5 = s2 * s5;
                            asm { fcvt       d5, s5 };
                            asm { fcvt       d0, s0 };
                            asm { fcvt       d2, s2 };
                            d0 = *(r29 + 0xffffffffffffff00);
                            r25 = [objc_msgSend(r25, var_180) retain];
                            [r27 release];
                            [r26 release];
                            r26 = [objc_msgSend(r25, *(r29 + 0xffffffffffffff30)) retain];
                            [r25 release];
                            r0 = objc_msgSend(r19, *(r29 + 0xffffffffffffff30));
                            r29 = r29;
                            [r0 retain];
                            [r19 release];
                            [r26 release];
                            objc_destroyWeak(r29 - 0xc0);
                            r28 = r24;
                            r24 = r22;
                            r22 = r23;
                            r23 = r25;
                            r19 = var_188;
                    }
                    r21 = r21 + 0x1;
            } while (objc_msgSend(r19, *(r29 + 0xffffffffffffff38)) > r21);
            if (r23 != 0x0) {
                    r21 = [[r23 substringToIndex:[r23 length] - 0x1] retain];
                    [r23 release];
                    r0 = [r21 stringByAppendingString:@"]"];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r21 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    if (**___stack_chk_guard == *(r29 + 0xffffffffffffff60)) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setArSession:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_arSession, arg2);
    return;
}

-(void *)arConfiguration {
    r0 = self->_arConfiguration;
    return r0;
}

-(void)setArConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_arConfiguration, arg2);
    return;
}

-(void)setArRunOptions:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_arRunOptions = arg2;
    return;
}

-(int)arRunOptions {
    r0 = *(int32_t *)(int64_t *)&self->_arRunOptions;
    return r0;
}

-(bool)drawNextCameraFrame {
    r0 = *(int8_t *)(int64_t *)&self->_drawNextCameraFrame;
    return r0;
}

-(void)setDrawNextCameraFrame:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_drawNextCameraFrame = arg2;
    return;
}

-(bool)showCameraFeed {
    r0 = *(int8_t *)(int64_t *)&self->_showCameraFeed;
    return r0;
}

-(void)setShowCameraFeed:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_showCameraFeed = arg2;
    return;
}

-(struct CGAffineTransform)arVideoTransform {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_arVideoTransform));
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(int128_t *)(r8 + 0x10) = *(int128_t *)(0x10 + r0 + r9);
    *(int128_t *)(r8 + 0x20) = *(int128_t *)(0x20 + r0 + r9);
    return r0;
}

-(void)setArVideoTransform:(struct CGAffineTransform)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_arVideoTransform));
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(int128_t *)(0x10 + self + r8) = *(int128_t *)(r2 + 0x10);
    *(int128_t *)(0x20 + self + r8) = *(int128_t *)(r2 + 0x20);
    return;
}

-(double)arVideoScaleX {
    r0 = self;
    return r0;
}

-(double)arVideoScaleY {
    r0 = self;
    return r0;
}

-(void)setArVideoScaleX:(double)arg2 {
    self->_arVideoScaleX = d0;
    return;
}

-(void)setArVideoScaleY:(double)arg2 {
    self->_arVideoScaleY = d0;
    return;
}

-(void)setArVideoScaled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_arVideoScaled = arg2;
    return;
}

-(bool)arVideoScaled {
    r0 = *(int8_t *)(int64_t *)&self->_arVideoScaled;
    return r0;
}

-(void *)mtkView {
    r0 = self->_mtkView;
    return r0;
}

-(void)setMtkView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mtkView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mtkView, 0x0);
    objc_storeStrong((int64_t *)&self->_arConfiguration, 0x0);
    objc_storeStrong((int64_t *)&self->_arSession, 0x0);
    objc_storeStrong((int64_t *)&self->anchors, 0x0);
    objc_storeStrong((int64_t *)&self->objCAnchorIdsToJSAnchorIds, 0x0);
    objc_storeStrong((int64_t *)&self->jsAnchorIdsToObjCAnchorIds, 0x0);
    objc_storeStrong((int64_t *)&self->testImage, 0x0);
    objc_storeStrong((int64_t *)&self->ciContext, 0x0);
    objc_storeStrong((int64_t *)&self->commandQueue, 0x0);
    return;
}

-(void)session:(void *)arg2 didUpdateFrame:(void *)arg3 {
    r3 = arg3;
    var_A0 = d15;
    stack[-152] = d14;
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
    r29 = &var_10;
    r31 = r31 + 0xffffffffffffff60 - 0x3c0;
    r23 = self;
    *(r29 + 0xffffffffffffff68) = **___stack_chk_guard;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(sendARFrame));
    if (*(int8_t *)(r23 + r9) != 0x0) {
            var_308 = r9;
            r20 = @class(UADSARUtils);
            r19 = [r3 retain];
            r24 = [[r20 arFrameCamera:r19] retain];
            r0 = [USRVWebViewApp getCurrentApp];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 webView];
            r29 = r29;
            [r0 retain];
            [r20 release];
            r0 = @class(UADSARUtils);
            r0 = [r0 arCamera:r24 viewMatrixForOrientation:*(r23 + sign_extend_64(*(int32_t *)ivar_offset(interfaceOrientation)))];
            var_2E0 = q0;
            var_2D0 = q1;
            var_2C0 = q2;
            var_2B0 = q3;
            __invert_f4(r0);
            var_300 = q0;
            var_2F0 = q3;
            r20 = @class(UADSARUtils);
            r21 = *(r23 + r21);
            [r25 frame];
            v8 = v2;
            var_318 = r25;
            [r25 frame];
            [r23 arNear];
            asm { fcvt       d10, s0 };
            [r23 arFar];
            asm { fcvt       d3, s0 };
            var_310 = r24;
            v0 = v8;
            [r20 arCamera:r24 projectionMatrixForOrientation:r21 viewportSize:r4 zNear:r5 zFar:r6];
            var_2A0 = q0;
            var_290 = q1;
            var_280 = q2;
            var_270 = q3;
            s0 = v21;
            s1 = v20;
            var_320 = r26;
            if (s0 < 0x0) {
                    COND = s19 <= s1;
                    s3 = s1 + (0x3ff0000000000000 - s19) - s0;
                    s4 = v19;
                    s2 = s19 + 0x3ff0000000000000;
                    s1 = s4 + s20;
                    s0 = s21 + v19;
                    if (COND) {
                            asm { fcsel      s0, s16, s0, le };
                    }
                    if (CPU_FLAGS & LE) {
                            asm { fcsel      s1, s3, s1, le };
                    }
                    if (CPU_FLAGS & LE) {
                            asm { fcsel      s2, s5, s19, le };
                    }
                    if (CPU_FLAGS & LE) {
                            asm { fcsel      s4, s3, s19, le };
                    }
                    if (CPU_FLAGS & LE) {
                            asm { fcsel      s3, s18, s6, le };
                    }
            }
            else {
                    COND = s19 >= -s1;
                    s3 = s0 + s1 + s19 + 0x3ff0000000000000;
                    s4 = v20;
                    s2 = s21 + v19;
                    s1 = s4 + v21;
                    if (COND) {
                            asm { fcsel      s0, s18, s19, pl };
                    }
                    if (CPU_FLAGS & NS) {
                            asm { fcsel      s1, s16, s1, pl };
                    }
                    if (CPU_FLAGS & NS) {
                            asm { fcsel      s2, s6, s2, pl };
                    }
                    if (CPU_FLAGS & NS) {
                            asm { fcsel      s4, s3, s19, pl };
                    }
                    if (CPU_FLAGS & NS) {
                            asm { fcsel      s3, s3, s5, pl };
                    }
            }
            r22 = &@class(MCConfigurationData);
            var_300 = r23;
            asm { fsqrt      s4, s4 };
            asm { fdiv       s4, s5, s4 };
            r23 = [[*(r22 + 0x950) arFrameLightEstimate:r19] retain];
            [r19 release];
            [*(r22 + 0x950) arLightEstimateAmbientIntensity:r23];
            [*(r22 + 0x950) arLightEstimateAmbientColorTemperature:r23];
            *(r29 + 0xffffffffffffff18) = @"position";
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:r23];
            r0 = [r0 retain];
            var_2F0 = r0;
            *(r29 + 0xffffffffffffff00) = r0;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:r23];
            r0 = [r0 retain];
            var_330 = r0;
            *(r29 + 0xffffffffffffff08) = r0;
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:r23];
            r0 = [r0 retain];
            var_340 = r0;
            *(r29 + 0xffffffffffffff10) = r0;
            r0 = @class(NSArray);
            r0 = [r0 arrayWithObjects:r29 - 0x100 count:0x3];
            r0 = [r0 retain];
            var_348 = r0;
            *(r29 + 0xffffffffffffff40) = r0;
            *(r29 + 0xffffffffffffff20) = @"orientation";
            var_350 = [[NSNumber numberWithFloat:r29 - 0x100] retain];
            var_358 = [[NSNumber numberWithFloat:r29 - 0x100] retain];
            var_360 = [[NSNumber numberWithFloat:r29 - 0x100] retain];
            var_368 = [[NSNumber numberWithFloat:r29 - 0x100] retain];
            r0 = @class(NSArray);
            r0 = [r0 arrayWithObjects:&var_130 count:0x4];
            r0 = [r0 retain];
            var_370 = r0;
            *(r29 + 0xffffffffffffff48) = r0;
            *(r29 + 0xffffffffffffff28) = @"viewMatrix";
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_378 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_380 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_388 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_2E0 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_390 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_398 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_3A0 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_2D0 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_3A8 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_3B0 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_3B8 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_2C0 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_3C0 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_3C8 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_3D0 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_130];
            var_2B0 = [r0 retain];
            r0 = @class(NSArray);
            r0 = [r0 arrayWithObjects:&var_1B0 count:0x10];
            r0 = [r0 retain];
            var_3D8 = r0;
            *(r29 + 0xffffffffffffff50) = r0;
            *(r29 + 0xffffffffffffff30) = @"projectionMatrix";
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_3E0 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_3E8 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_3F0 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_2A0 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_3F8 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_400 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_408 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_290 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_410 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_418 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_420 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_280 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_428 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_430 = [r0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:&var_1B0];
            var_438 = [r0 retain];
            r21 = [[NSNumber numberWithFloat:&var_1B0] retain];
            r0 = @class(NSArray);
            r0 = [r0 arrayWithObjects:&var_230 count:0x10];
            r29 = r29;
            r27 = [r0 retain];
            *(r29 + 0xffffffffffffff58) = r27;
            *(r29 + 0xffffffffffffff38) = @"lightEstimate";
            var_270 = r23;
            if (r23 != 0x0) {
                    r25 = @selector(numberWithFloat:);
                    r20 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    r0 = *(r20 + 0xfc0);
                    asm { fcvt       s0, d9 };
                    r0 = objc_msgSend(r0, r25);
                    r29 = r29;
                    r26 = [r0 retain];
                    r0 = *(r20 + 0xfc0);
                    asm { fcvt       s0, d8 };
                    r28 = [objc_msgSend(r0, r25) retain];
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r29 = r29;
                    r24 = [r0 retain];
                    r23 = 0x0;
                    r19 = 0x1;
            }
            else {
                    r26 = @selector(getCurrentApp);
                    r0 = [NSNull null];
                    r29 = r29;
                    r24 = [r0 retain];
                    r19 = 0x0;
                    r23 = 0x1;
            }
            r22 = @selector(dictionaryWithObjects:forKeys:count:);
            *(r29 + 0xffffffffffffff60) = r24;
            r0 = objc_msgSend(@class(NSDictionary), r22);
            r29 = r29;
            r22 = [r0 retain];
            if (r19 != 0x0) {
                    [r24 release];
                    [r28 release];
                    [r26 release];
            }
            if (r23 != 0x0) {
                    [r24 release];
            }
            [r27 release];
            [r21 release];
            [var_438 release];
            [var_430 release];
            [var_428 release];
            [var_280 release];
            [var_420 release];
            [var_418 release];
            [var_410 release];
            [var_290 release];
            [var_408 release];
            [var_400 release];
            [var_3F8 release];
            [var_2A0 release];
            [var_3F0 release];
            [var_3E8 release];
            [var_3E0 release];
            [var_3D8 release];
            [var_2B0 release];
            [var_3D0 release];
            [var_3C8 release];
            [var_3C0 release];
            [var_2C0 release];
            [var_3B8 release];
            [var_3B0 release];
            [var_3A8 release];
            [var_2D0 release];
            [var_3A0 release];
            [var_398 release];
            [var_390 release];
            [var_2E0 release];
            [var_388 release];
            [var_380 release];
            [var_378 release];
            [var_370 release];
            [var_368 release];
            [var_360 release];
            [var_358 release];
            [var_350 release];
            [var_348 release];
            [var_340 release];
            [var_330 release];
            [var_2F0 release];
            var_258 = 0x0;
            var_280 = r22;
            r21 = [[NSJSONSerialization dataWithJSONObject:r22 options:0x1 error:&var_258] retain];
            var_2A0 = [var_258 retain];
            r0 = [NSString alloc];
            var_290 = r21;
            r21 = [r0 initWithData:r21 encoding:0x4];
            r27 = var_320;
            r23 = [objc_msgSend(@class(USRVWebViewApp), r27) retain];
            r24 = [sub_1000ee080() retain];
            r0 = sub_1000d1038();
            r29 = r29;
            r26 = [r0 retain];
            [r23 sendEvent:r24 category:r26 param1:r21];
            [r26 release];
            [r24 release];
            [r23 release];
            r28 = sign_extend_64(*(int32_t *)ivar_offset(updateWindowSize));
            r19 = var_300;
            if (*(int8_t *)(r19 + r28) != 0x0) {
                    [r19 frame];
                    asm { fcvtzs     w27, d2 };
                    objc_msgSend(r19, r24);
                    asm { fcvtzs     w19, d3 };
                    r23 = [objc_msgSend(@class(USRVWebViewApp), r23) retain];
                    [sub_1000ee080() retain];
                    r0 = sub_1000d1038();
                    r29 = r29;
                    [r0 retain];
                    r0 = *(r20 + 0xfc0);
                    asm { scvtf      s0, w27 };
                    r0 = objc_msgSend(r0, r25);
                    r29 = r29;
                    [r0 retain];
                    r0 = *(r20 + 0xfc0);
                    asm { scvtf      s0, w19 };
                    r0 = objc_msgSend(r0, r25);
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r23, r22);
                    [r25 release];
                    [r27 release];
                    [r26 release];
                    [r24 release];
                    r19 = var_300;
                    [r23 release];
                    *(int8_t *)(r19 + r28) = 0x0;
            }
            *(int8_t *)(r19 + var_308) = 0x0;
            [r21 release];
            [var_290 release];
            [var_2A0 release];
            [var_280 release];
            [var_270 release];
            [var_318 release];
            [var_310 release];
    }
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff68)) {
            __stack_chk_fail();
    }
    return;
}

@end