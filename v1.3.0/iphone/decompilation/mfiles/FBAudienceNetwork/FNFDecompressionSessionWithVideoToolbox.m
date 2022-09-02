@implementation FNFDecompressionSessionWithVideoToolbox

-(struct opaqueCMFormatDescription *)format {
    r0 = self->_format;
    return r0;
}

-(void)closeSession {
    r0 = self;
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r0->_decompressionSession;
    if (r20 != 0x0) {
            r0 = [r0 retain];
            var_28 = r0;
            dispatch_async(*(r0 + sign_extend_64(*(int32_t *)ivar_offset(_decompressionSessionQueue))), &var_80);
            r0 = *(r19 + r22);
            *(r19 + r22) = 0x0;
            [r0 release];
            CFRelease(r19->_format);
            _Block_object_dispose(&var_50, 0x8);
            [var_28 release];
    }
    return;
}

-(unsigned char)canAcceptFormatDescription:(struct opaqueCMFormatDescription *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self->_decompressionSession;
    if (*qword_1011dcf18 != -0x1) {
            dispatch_once_f(0x1011dcf18, 0x1011c5f50, 0x100a3d91c);
    }
    r2 = *0x1011dcf20;
    r0 = (r2)(r20, r19, r2);
    return r0;
}

-(struct CGSize)inputSize {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_destinationPixelBufferAttributes, 0x0);
    objc_storeStrong((int64_t *)&self->_decompressionSessionQueue, 0x0);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)enqueueSampleBuffer:(struct opaqueCMSampleBuffer *)arg2 iFrame:(unsigned long long)arg3 {
    r31 = r31 - 0x110;
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_firstFrameEnqueued));
    if (*(int8_t *)(self + r24) != 0x0) goto loc_100b6be8c;

loc_100b6bc6c:
    if (*qword_1011dd3a8 != -0x1) {
            dispatch_once_f(0x1011dd3a8, 0x1011c6580, 0x100a3d91c);
    }
    r22 = qword_1011dd3b0(r20);
    if (*qword_1011dd318 != -0x1) {
            dispatch_once_f(0x1011dd318, 0x1011c64a8, 0x100a3d91c);
    }
    r0 = qword_1011dd320(r22);
    r23 = r0;
    var_48 = r0;
    var_98 = 0x0;
    if (*qword_1011dd258 != -0x1) {
            dispatch_once_f(0x1011dd258, 0x1011c6388, 0x100a3d91c);
    }
    if (qword_1011dd260(r22, 0x0, r23) != 0x0) {
            sub_100a3e878(r22, 0x0, r29 - 0x48, r29 - 0x50);
    }
    else {
            if (r23 != 0x0) {
                    r0 = sub_100357194(&var_98, r23);
                    r2 = var_48;
                    r23 = var_98;
            }
            else {
                    r2 = 0x0;
            }
            if (*qword_1011dd288 != -0x1) {
                    dispatch_once_f(0x1011dd288, 0x1011c63d0, 0x100a3d91c);
            }
            qword_1011dd290(r22, 0x0);
            var_50 = var_98;
    }
    r8 = var_48;
    if (r8 < 0x6) goto loc_100b6bdb4;

loc_100b6bd60:
    r9 = 0x0;
    r10 = var_50;
    goto loc_100b6bd68;

loc_100b6bd68:
    if ((*(int8_t *)(0x4 + r9 + r10) & 0x1f) == 0x5) goto loc_100b6bdbc;

loc_100b6bd7c:
    r11 = 0x0;
    r12 = r10 + r9;
    do {
            r14 = *(int8_t *)(r12 + r11);
            asm { bfi        w14, w13, #0x8, #0x18 };
            r11 = r11 + 0x1;
    } while (r11 != 0x4);
    r9 = r9 + r14 + 0x4;
    if (r9 + 0x5 < r8) goto loc_100b6bd68;

loc_100b6bdb4:
    r22 = 0x0;
    goto loc_100b6bdc0;

loc_100b6bdc0:
    r0 = var_98;
    if (r0 != 0x0) {
            operator delete(r0);
    }
    if ((r22 & 0x1) == 0x0) {
            r22 = @"";
            [r22 retain];
            r0 = sub_100a3e768(r20, &var_98, r29 - 0x48);
            if (r0 == 0x0) {
                    r0 = [NSString stringWithFormat:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    [@"" release];
            }
            [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFDecompressionSession/FNFDecompressionSession/FNFDecompressionSessionWithVideoToolbox.mm" lineNumber:0xa6 format:@"%@ first sample buffer is not a key frame: framesEnqueued:%llu errString:%@"];
            [r22 release];
    }
    *(int8_t *)(r21 + r24) = 0x1;
    goto loc_100b6be8c;

loc_100b6be8c:
    objc_initWeak(r29 - 0x48, r21);
    CFRetain(r20);
    objc_copyWeak(&var_E0 + 0x28, r29 - 0x48);
    dispatch_async(r21, &var_E0);
    objc_destroyWeak(&var_E0 + 0x28);
    objc_destroyWeak(r29 - 0x48);
    _Block_object_dispose(&var_98, 0x8);
    return;

loc_100b6bdbc:
    r22 = 0x1;
    goto loc_100b6bdc0;
}

-(void *)initWithDelegate:(void *)arg2 sampleBufferFormatDescription:(struct opaqueCMFormatDescription *)arg3 videoSize:(struct CGSize)arg4 async:(bool)arg5 timerManager:(void *)arg6 {
    memcpy(&r4, &arg4, 0x8);
    r31 = r31 - 0x1f0;
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
    r29 = &saved_fp;
    v8 = v1;
    v9 = v0;
    r22 = arg3;
    r28 = [arg2 retain];
    r0 = [[&var_170 super] init];
    r20 = r0;
    if (r0 == 0x0) goto loc_100b6b934;

loc_100b6b238:
    sub_100a3e8f4(r22);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_inputSize));
    *(int128_t *)(r20 + r8) = d0;
    *(int128_t *)(0x8 + r20 + r8) = d1;
    if (*qword_1011dd008 != -0x1) {
            dispatch_once_f(0x1011dd008, 0x1011c60a0, 0x100a3d91c);
    }
    d10 = **_kCFCoreFoundationVersionNumber;
    r0 = **qword_1011dd010;
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    var_188 = r0;
    if (d10 < *double_value_1240_1) {
            r0 = @(0x34323076);
            r29 = r29;
            r23 = [r0 retain];
            if (*qword_1011dcfa8 != -0x1) {
                    r2 = 0x34323076;
                    dispatch_once_f(0x1011dcfa8, 0x1011c6028, 0x100a3d91c);
            }
            r24 = [**qword_1011dcfb0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithBool:0x1];
            r29 = r29;
            r25 = [r0 retain];
            if (*qword_1011dcfc8 != -0x1) {
                    r2 = 0x1;
                    dispatch_once_f(0x1011dcfc8, 0x1011c6040, 0x100a3d91c);
            }
            var_1A8 = [**qword_1011dcfd0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithBool:0x1];
            r29 = r29;
            var_1B0 = [r0 retain];
            if (*qword_1011dd018 != -0x1) {
                    r2 = 0x1;
                    dispatch_once_f(0x1011dd018, 0x1011c60b8, 0x100a3d91c);
            }
            var_1B8 = [**qword_1011dd020 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithDouble:r2];
            r29 = r29;
            var_1C0 = [r0 retain];
            var_190 = r23;
            if (*qword_1011dd028 != -0x1) {
                    dispatch_once_f(0x1011dd028, 0x1011c60d0, 0x100a3d91c);
            }
            r23 = [**qword_1011dd030 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithDouble:r2];
            r29 = r29;
            r21 = [r0 retain];
            var_1A0 = r25;
            var_198 = r24;
            if (*qword_1011dd038 != -0x1) {
                    dispatch_once_f(0x1011dd038, 0x1011c60e8, 0x100a3d91c);
            }
            r19 = [**qword_1011dd040 retain];
            r26 = [[NSDictionary dictionaryWithObjects:&var_120 forKeys:&var_150 count:0x6] retain];
            r0 = [NSMutableDictionary dictionaryWithDictionary:r26];
            r29 = r29;
            r0 = [r0 retain];
            r24 = (int64_t *)&r20->_destinationPixelBufferAttributes;
            r27 = *r24;
            *r24 = r0;
    }
    else {
            r0 = @(0x34323076);
            r29 = r29;
            r21 = [r0 retain];
            if (*qword_1011dcfa8 != -0x1) {
                    r2 = 0x34323076;
                    dispatch_once_f(0x1011dcfa8, 0x1011c6028, 0x100a3d91c);
            }
            r23 = [**qword_1011dcfb0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithBool:0x1];
            r29 = r29;
            r24 = [r0 retain];
            if (*qword_1011dcfc8 != -0x1) {
                    r2 = 0x1;
                    dispatch_once_f(0x1011dcfc8, 0x1011c6040, 0x100a3d91c);
            }
            r25 = [**qword_1011dcfd0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithBool:0x1];
            r29 = r29;
            var_1B0 = [r0 retain];
            if (*qword_1011dcfd8 != -0x1) {
                    r2 = 0x1;
                    dispatch_once_f(0x1011dcfd8, 0x1011c6058, 0x100a3d91c);
            }
            var_1B8 = [**qword_1011dcfe0 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithBool:0x1];
            r29 = r29;
            r19 = [r0 retain];
            var_198 = r23;
            var_190 = r21;
            var_1A8 = r25;
            var_1A0 = r24;
            if (*qword_1011dd018 != -0x1) {
                    r2 = 0x1;
                    dispatch_once_f(0x1011dd018, 0x1011c60b8, 0x100a3d91c);
            }
            r23 = [**qword_1011dd020 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithDouble:r2];
            r29 = r29;
            r21 = [r0 retain];
            var_1C0 = r19;
            if (*qword_1011dd028 != -0x1) {
                    dispatch_once_f(0x1011dd028, 0x1011c60d0, 0x100a3d91c);
            }
            var_1C8 = r22;
            r19 = [**qword_1011dd030 retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithDouble:r2];
            r29 = r29;
            r26 = [r0 retain];
            r22 = r28;
            if (*qword_1011dd038 != -0x1) {
                    dispatch_once_f(0x1011dd038, 0x1011c60e8, 0x100a3d91c);
            }
            r27 = [**qword_1011dd040 retain];
            r28 = [[NSDictionary dictionaryWithObjects:r29 - 0xb8 forKeys:&var_F0 count:0x7] retain];
            r0 = [NSMutableDictionary dictionaryWithDictionary:r28];
            r29 = r29;
            r0 = [r0 retain];
            r24 = (int64_t *)&r20->_destinationPixelBufferAttributes;
            r8 = *r24;
            *r24 = r0;
            [r8 release];
            [r28 release];
            r28 = r22;
            r22 = var_1C8;
    }
    [r27 release];
    [r26 release];
    [r19 release];
    [r21 release];
    [r23 release];
    [var_1C0 release];
    [var_1B8 release];
    [var_1B0 release];
    [var_1A8 release];
    [var_1A0 release];
    [var_198 release];
    [var_190 release];
    [var_188 release];
    objc_storeWeak((int64_t *)&r20->_delegate, r28);
    *(int8_t *)(int64_t *)&r20->_firstFrameEnqueued = 0x0;
    OSMemoryBarrier();
    r19 = *r24;
    r21 = (int64_t *)&r20->_decompressionSession;
    if (*qword_1011dcec8 != -0x1) {
            dispatch_once_f(0x1011dcec8, 0x1011c5ef0, 0x100a3d91c);
    }
    r0 = qword_1011dced0(0x0, r22, 0x0, r19, &var_180, r21);
    if (r0 == 0x0) goto loc_100b6b8f8;

loc_100b6b824:
    r25 = @selector(dictionaryWithObjects:forKeys:count:);
    r23 = &@class(MCConfigurationData);
    r19 = r0;
    [FBAdLogger logAtLevel:0x5 file:"Libraries/FNFDecompressionSession/FNFDecompressionSession/FNFDecompressionSessionWithVideoToolbox.mm" lineNumber:0x59 format:@"%@ error in decompression session create: err: %d"];
    r21 = @class(NSError);
    asm { sxtw       x19, w19 };
    r22 = [objc_msgSend(*(r23 + 0x18), r25) retain];
    r19 = [[r21 errorWithDomain:@"FNFGLDecompression" code:r19 userInfo:r22] retain];
    [r28 handleDecompressionSessionError:r19];
    [r19 release];
    [r22 release];
    r19 = 0x0;
    goto loc_100b6b940;

loc_100b6b940:
    var_80 = **___stack_chk_guard;
    [r28 release];
    [r20 release];
    if (**___stack_chk_guard == var_80) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b6b8f8:
    r0 = dispatch_queue_create("decompression_session_encoding", 0x0);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_decompressionSessionQueue));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r20->_format = CFRetain(r22);
    goto loc_100b6b934;

loc_100b6b934:
    r19 = [r20 retain];
    goto loc_100b6b940;
}

@end