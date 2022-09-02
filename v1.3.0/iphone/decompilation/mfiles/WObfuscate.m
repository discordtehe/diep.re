@implementation WObfuscate

-(void *)initWithKey:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (*qword_1011dea48 != -0x1) {
            dispatch_once(0x1011dea48, 0x100eb2270);
    }
    r0 = [r19 length];
    r23 = r0;
    *(int32_t *)0x1011dea30 = r23 + 0x4;
    asm { sxtw       x0, w8 };
    *0x1011dea38 = malloc(r0);
    if (r23 >= 0x1) {
            r21 = 0x0;
            r23 = r23 & 0xffffffff;
            do {
                    *(int8_t *)(0x4 + *0x1011dea38 + r21) = [r19 characterAtIndex:r2] & 0x7f;
                    r21 = r21 + 0x1;
            } while (r23 != r21);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)encode:(void *)arg2 {
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
    r19 = arg2;
    [arg2 retain];
    r8 = 0x0;
    r9 = *(int32_t *)0x1011dea40;
    *(int32_t *)0x1011dea40 = r9 + 0x779b9 & 0xfffff;
    do {
            *(int8_t *)(*0x1011dea38 + r8) = (r9 & 0x1f) + 0x30;
            r9 = SAR(r9, 0x5);
            r8 = r8 + 0x1;
    } while (r8 != 0x4);
    r22 = 0x1011de000;
    r28 = [PRF new];
    r0 = [r19 length];
    r24 = r0;
    asm { sxtw       x0, w8 };
    r21 = malloc(r0);
    r8 = 0x0;
    r9 = *(r22 + 0xa38);
    do {
            *(int8_t *)(r21 + r8) = *(int8_t *)(r9 + r8);
            r8 = r8 + 0x1;
    } while (r8 != 0x4);
    if (r24 >= 0x1) {
            r2 = 0x0;
            r22 = @selector(characterAtIndex:);
            r20 = r24 & 0xffffffff;
            r27 = 0x4;
            var_58 = r20;
            do {
                    r26 = r2 + 0x1;
                    r0 = objc_msgSend(r19, r22);
                    r24 = r0;
                    r8 = r0 - 0x20 & 0xff;
                    if (r8 >= 0x5e) {
                            r20 = r22;
                            r22 = r19;
                            r25 = sign_extend_64(r24);
                            r1 = @selector(enc:);
                            r0 = objc_msgSend(r28, r1);
                            asm { sxtw       x8, w27 };
                            r19 = r8 + 0x1;
                            *(int8_t *)(r21 + (r27 << r1)) = r0;
                            if ((r25 & 0xffffffff80000000) == 0x0) {
                                    *(int8_t *)(r21 + r19) = [r28 enc:r2];
                                    r8 = r27 + 0x2;
                                    r19 = r8;
                            }
                            r23 = @selector(enc:);
                            asm { ubfx       w8, w25, #0x6, #0x5 };
                            r0 = objc_msgSend(r28, r23);
                            r27 = r19 + 0x1;
                            *(int8_t *)(r21 + (r19 << r23)) = r0;
                            r24 = (r24 & 0x3f) + 0x30;
                            r19 = r22;
                            r22 = r20;
                            r20 = var_58;
                    }
                    *(int8_t *)(r21 + (r27 << @selector(enc:))) = [r28 enc:r2];
                    r27 = r27 + 0x1;
                    r2 = r26;
            } while (r20 != r26);
            asm { sxtw       x22, w27 };
    }
    else {
            r22 = 0x4;
    }
    r21 = [[NSString alloc] initWithBytes:r21 length:r22 encoding:0x4];
    [r28 release];
    [r19 release];
    [r21 autorelease];
    r0 = r21;
    return r0;
}

@end