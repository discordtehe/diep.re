@implementation SimplePing

-(void *)initWithHostName:(void *)arg2 address:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r22 = @selector(copy);
            *(r20 + 0x20) = objc_msgSend(r21, r22);
            *(r20 + 0x28) = objc_msgSend(r19, r22);
            *(int16_t *)(r20 + 0x18) = arc4random();
    }
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [self stop];
    [[&var_20 super] dealloc];
    return;
}

+(void *)simplePingWithHostName:(void *)arg2 {
    r0 = [SimplePing alloc];
    r0 = [r0 initWithHostName:arg2 address:0x0];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)simplePingWithHostAddress:(void *)arg2 {
    r0 = [SimplePing alloc];
    r0 = [r0 initWithHostName:0x0 address:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void)noop {
    return;
}

-(void)didFailWithError:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    [self performSelector:@selector(noop) withObject:0x0 afterDelay:r4];
    [r20 stop];
    if ([r20 delegate] != 0x0 && [[r20 delegate] respondsToSelector:@selector(simplePing:didFailWithError:), 0x0] != 0x0) {
            [[r20 delegate] simplePing:r20 didFailWithError:r19];
    }
    return;
}

-(void)didFailWithHostStreamError:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 == sign_extend_64(*(int32_t *)*_kCFStreamErrorDomainNetDB)) {
            r20 = @class(NSDictionary);
            r0 = @class(NSNumber);
            asm { sxtw       x2, w3 };
            r4 = [r20 dictionaryWithObjectsAndKeys:[r0 numberWithInteger:r2]];
    }
    else {
            r4 = 0x0;
    }
    [r19 didFailWithError:[NSError errorWithDomain:**_kCFErrorDomainCFNetwork code:0x2 userInfo:r4]];
    return;
}

+(unsigned long long)icmpHeaderOffsetInPacket:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if ([arg2 length] >= 0x1c) {
            r20 = @selector(length);
            r21 = *(int8_t *)[r19 bytes] << 0x2 & 0x3c;
            r0 = objc_msgSend(r19, r20);
            if (r0 < r21 + 0x8) {
                    if (!CPU_FLAGS & B) {
                            r0 = r21;
                    }
                    else {
                            r0 = 0x7fffffffffffffff;
                    }
            }
    }
    else {
            r0 = 0x7fffffffffffffff;
    }
    return r0;
}

+(struct ICMPHeader *)icmpInPacket:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [self icmpHeaderOffsetInPacket:r2];
    if (r0 == 0x7fffffffffffffff) {
            r0 = 0x0;
    }
    else {
            r20 = r0;
            r0 = [r19 bytes];
            r0 = r0 + r20;
    }
    return r0;
}

-(void)sendPingWithData:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x70;
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
    r19 = self;
    if (r2 != 0x0) {
            r23 = r2;
    }
    else {
            r21 = @class(NSString);
            [r19 nextSequenceNumber] * 0x51eb851f >> 0x25;
            asm { neg        w10, w0 };
            asm { madd       w8, w8, w9, w10 };
            r23 = [[r21 stringWithFormat:r2] dataUsingEncoding:0x1];
    }
    r0 = [NSMutableData dataWithLength:[r23 length] + 0x8];
    r21 = r0;
    r0 = [r0 mutableBytes];
    *(int32_t *)r0 = 0x8;
    r8 = &@selector(alloc);
    objc_msgSend(r19, *(r8 + 0xe08));
    asm { rev16      w8, w0 };
    *(int16_t *)(r25 + 0x4) = r8;
    objc_msgSend(r19, r20);
    asm { rev16      w8, w0 };
    *(int16_t *)(r25 + 0x6) = r8;
    memcpy(r25 + 0x8, [r23 bytes], objc_msgSend(r23, r22));
    *(int16_t *)(r25 + 0x2) = sub_1005f08b0(objc_msgSend(r21, r24), objc_msgSend(r21, r22));
    r0 = *(r19 + 0x10);
    if (r0 == 0x0) goto loc_1005f07e4;

loc_1005f06d4:
    r23 = CFSocketGetNative(r0);
    r25 = [r21 bytes];
    r26 = [r21 length];
    r24 = [[r19 hostAddress] bytes];
    r0 = [r19 hostAddress];
    r0 = [r0 length];
    r0 = sendto(r23, r25, r26, 0x0, r24, r0);
    if ((r0 & 0xffffffff80000000) != 0x0) goto loc_1005f07d4;

loc_1005f0750:
    r23 = r0;
    if (r0 == 0x0 || r23 != [r21 length]) goto loc_1005f07e0;

loc_1005f076c:
    if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:@selector(simplePing:didSendPacket:), 0x0] != 0x0) {
            [[r19 delegate] simplePing:r19 didSendPacket:r21];
    }
    goto loc_1005f0870;

loc_1005f0870:
    [r19 setNextSequenceNumber:[r19 nextSequenceNumber] + 0x1 & 0xffff];
    return;

loc_1005f07e0:
    r3 = 0x0;
    goto loc_1005f07e4;

loc_1005f07e4:
    r0 = @class(NSError);
    r2 = **_NSPOSIXErrorDomain;
    asm { sxtw       x3, w8 };
    r22 = [r0 errorWithDomain:r2 code:r3 userInfo:0x0];
    if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:@selector(simplePing:didFailToSendPacket:error:), r3, 0x0] != 0x0) {
            [[r19 delegate] simplePing:r19 didFailToSendPacket:r21 error:r22];
    }
    goto loc_1005f0870;

loc_1005f07d4:
    r3 = 0x0;
    if (*(int32_t *)__error() == 0x0) {
            r3 = 0x0;
    }
    goto loc_1005f07e4;
}

-(bool)isValidPingResponsePacket:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    r0 = [self class];
    r0 = [r0 icmpHeaderOffsetInPacket:r21];
    if (r0 != 0x7fffffffffffffff) {
            r22 = r0;
            r20 = [r21 mutableBytes] + r22;
            r23 = *(int16_t *)(r20 + 0x2);
            *(int16_t *)(r20 + 0x2) = 0x0;
            r0 = [r21 length];
            r0 = sub_1005f08b0(r20, r0 - r22);
            *(int16_t *)(r20 + 0x2) = r23;
            if (*(int8_t *)(r20 + 0x1) == 0x0 && r23 == r0 && *(int8_t *)r20 == 0x0) {
                    asm { rev        w21, w8 };
                    if ([r19 identifier] == r21 / 0x10000) {
                            asm { rev        w20, w8 };
                            r0 = [r19 nextSequenceNumber];
                            if (r0 > r20 / 0x10000) {
                                    if (CPU_FLAGS & A) {
                                            r0 = 0x1;
                                    }
                            }
                    }
                    else {
                            r0 = 0x0;
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)startWithHostAddress {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)([[self hostAddress] bytes] + 0x1) == 0x2) {
            r0 = socket(0x2, 0x2, 0x1);
            r21 = r0;
            if ((r0 & 0xffffffff80000000) == 0x0) {
                    r0 = CFSocketCreateWithNative(0x0, r21, 0x1, 0x1005f0e1c, &var_48);
                    *(r19 + 0x10) = r0;
                    CFRunLoopAddSource(CFRunLoopGetCurrent(), CFSocketCreateRunLoopSource(0x0, r0, 0x0), **_kCFRunLoopDefaultMode);
                    CFRelease(r21);
                    if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:@selector(simplePing:didStartWithAddress:), 0x1005f0e1c] != 0x0) {
                            [[r19 delegate] simplePing:r19 didStartWithAddress:[r19 hostAddress]];
                    }
            }
            else {
                    if (*(int32_t *)__error() == 0x0) {
                            r0 = CFSocketCreateWithNative(0x0, r21, 0x1, 0x1005f0e1c, &var_48);
                            *(r19 + 0x10) = r0;
                            CFRunLoopAddSource(CFRunLoopGetCurrent(), CFSocketCreateRunLoopSource(0x0, r0, 0x0), **_kCFRunLoopDefaultMode);
                            CFRelease(r21);
                            if ([r19 delegate] != 0x0 && [[r19 delegate] respondsToSelector:@selector(simplePing:didStartWithAddress:), 0x1005f0e1c] != 0x0) {
                                    [[r19 delegate] simplePing:r19 didStartWithAddress:[r19 hostAddress]];
                            }
                    }
                    else {
                            r0 = @class(NSError);
                            r2 = **_NSPOSIXErrorDomain;
                            asm { sxtw       x3, w8 };
                            [r19 didFailWithError:[r0 errorWithDomain:r2 code:r3 userInfo:0x0]];
                    }
            }
    }
    else {
            r0 = @class(NSError);
            r2 = **_NSPOSIXErrorDomain;
            asm { sxtw       x3, w8 };
            [r19 didFailWithError:[r0 errorWithDomain:r2 code:r3 userInfo:0x0]];
    }
    return;
}

-(void)readData {
    r31 = r31 - 0xd0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = malloc(0xffff);
    r0 = *(r20 + 0x10);
    r0 = CFSocketGetNative(r0);
    r0 = recvfrom(r0, r19, 0xffff, 0x0, &stack[-200], &var_BC);
    if ((r0 & 0xffffffff80000000) != 0x0) goto loc_1005f0bac;

loc_1005f0b3c:
    r3 = r0;
    if (r0 == 0x0) goto loc_1005f0bbc;

loc_1005f0b44:
    r21 = [NSMutableData dataWithBytes:r19 length:r3];
    r23 = [r20 isValidPingResponsePacket:r21];
    r0 = [r20 delegate];
    if (r23 == 0x0) goto loc_1005f0c30;

loc_1005f0b90:
    if (r0 == 0x0) goto loc_1005f0bf8;

loc_1005f0b94:
    r0 = [r20 delegate];
    r23 = @selector(simplePing:didReceivePingResponsePacket:);
    goto loc_1005f0c48;

loc_1005f0c48:
    if ([r0 respondsToSelector:r2] != 0x0) {
            objc_msgSend([r20 delegate], r23);
    }
    goto loc_1005f0bf8;

loc_1005f0bf8:
    var_38 = **___stack_chk_guard;
    free(r19);
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_1005f0c30:
    if (r0 == 0x0) goto loc_1005f0bf8;

loc_1005f0c34:
    r0 = [r20 delegate];
    r23 = @selector(simplePing:didReceiveUnexpectedPacket:);
    goto loc_1005f0c48;

loc_1005f0bbc:
    r0 = @class(NSError);
    r2 = **_NSPOSIXErrorDomain;
    asm { sxtw       x3, w8 };
    [r20 didFailWithError:[r0 errorWithDomain:r2 code:r3 userInfo:0x0]];
    goto loc_1005f0bf8;

loc_1005f0bac:
    r3 = 0x0;
    *(int32_t *)__error();
    goto loc_1005f0bbc;
}

-(void)start {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(self + 0x28) != 0x0) {
            [r19 startWithHostAddress];
    }
    else {
            r0 = [r19 hostName];
            r0 = CFHostCreateWithName(0x0, r0);
            *(r19 + 0x8) = r0;
            CFHostSetClient(r0, 0x1005f1104, &var_38);
            CFHostScheduleWithRunLoop(*(r19 + 0x8), CFRunLoopGetCurrent(), **_kCFRunLoopDefaultMode);
            NSLog(@">CFHostStartInfoResolution");
            r0 = *(r19 + 0x8);
            r0 = CFHostStartInfoResolution(r0, 0x0, &var_48);
            NSLog(@"<CFHostStartInfoResolution");
            if (r20 == 0x0) {
                    [r19 didFailWithHostStreamError:var_48];
            }
    }
    return;
}

-(void)stopHostResolution {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            CFHostSetClient(r0, 0x0, 0x0);
            CFHostUnscheduleFromRunLoop(*(r19 + 0x8), CFRunLoopGetCurrent(), **_kCFRunLoopDefaultMode);
            CFRelease(*(r19 + 0x8));
            *(r19 + 0x8) = 0x0;
    }
    return;
}

-(void)hostResolutionDone {
    r31 = r31 - 0x150;
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
    r19 = self;
    r0 = *(self + 0x8);
    r0 = CFHostGetAddressing(r0, &var_E1);
    if (r0 != 0x0) {
            asm { ccmp       w8, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & E) goto loc_1005f0f78;

loc_1005f0e7c:
    r20 = r0;
    var_E1 = 0x0;
    var_120 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1005f0f78;

loc_1005f0eb0:
    r22 = r0;
    r27 = *var_120;
    r8 = 0x101137000;
    goto loc_1005f0ec4;

loc_1005f0ec4:
    r28 = 0x0;
    r21 = r8;
    r24 = *(r8 + 0x260);
    goto loc_1005f0ed4;

loc_1005f0ed4:
    if (*var_120 != r27) {
            objc_enumerationMutation(r20);
    }
    r25 = *(var_128 + r28 * 0x8);
    r26 = [r25 bytes];
    if (objc_msgSend(r25, r24) < 0x10 || *(int8_t *)(r26 + 0x1) != 0x2) goto loc_1005f0f24;

loc_1005f0f5c:
    [r19 setHostAddress:r25];
    var_E1 = 0x1;
    goto loc_1005f0f78;

loc_1005f0f78:
    [r19 stopHostResolution];
    if (var_E1 != 0x0) {
            [r19 startWithHostAddress];
    }
    else {
            [r19 didFailWithError:[NSError errorWithDomain:**_kCFErrorDomainCFNetwork code:0x1 userInfo:0x0]];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1005f0f24:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_1005f0ed4;

loc_1005f0f30:
    r0 = objc_msgSend(r20, var_138);
    r22 = r0;
    r8 = r21;
    if (r0 != 0x0) goto loc_1005f0ec4;
}

-(void)stopDataTransfer {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x10);
    if (r0 != 0x0) {
            CFSocketInvalidate(r0);
            CFRelease(*(r19 + 0x10));
            *(r19 + 0x10) = 0x0;
    }
    return;
}

-(void)stop {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self stopHostResolution];
    [r19 stopDataTransfer];
    if ([r19 hostName] != 0x0) {
            [r19 setHostAddress:0x0];
    }
    return;
}

-(void *)hostName {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void *)hostAddress {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(void *)delegate {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setHostAddress:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(unsigned short)identifier {
    r0 = *(int16_t *)(self + 0x18);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    *(self + 0x30) = arg2;
    return;
}

-(void)setNextSequenceNumber:(unsigned short)arg2 {
    *(int16_t *)(self + 0x1a) = arg2;
    return;
}

-(unsigned short)nextSequenceNumber {
    r0 = *(int16_t *)(self + 0x1a);
    return r0;
}

@end