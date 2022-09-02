@implementation TR_DDTTYLoggerColorProfile

-(void *)description {
    r9 = sign_extend_64(*(int32_t *)ivar_offset(mask));
    r9 = *(self + r9);
    r10 = sign_extend_64(*(int32_t *)ivar_offset(context));
    r10 = *(self + r10);
    r11 = sign_extend_64(*(int32_t *)ivar_offset(fg_r));
    r11 = *(int8_t *)(self + r11);
    r12 = sign_extend_64(*(int32_t *)ivar_offset(fg_g));
    r12 = *(int8_t *)(self + r12);
    r13 = sign_extend_64(*(int32_t *)ivar_offset(fg_b));
    r13 = *(int8_t *)(self + r13);
    r14 = sign_extend_64(*(int32_t *)ivar_offset(bg_r));
    r15 = sign_extend_64(*(int32_t *)ivar_offset(bg_g));
    r16 = sign_extend_64(*(int32_t *)ivar_offset(bg_b));
    r0 = [NSString stringWithFormat:@"<DDTTYLoggerColorProfile: %p mask:%i ctxt:%ld fg:%u,%u,%u bg:%u,%u,%u fgCode:%@ bgCode:%@>", r3, r4, r5, r6, r7, self, r9, r10, r11, r12, r13];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->bgCodeRaw, 0x0);
    objc_storeStrong((int64_t *)&self->fgCodeRaw, 0x0);
    return;
}

-(void *)initWithForegroundColor:(struct UIColor *)arg2 backgroundColor:(struct UIColor *)arg3 flag:(unsigned long long)arg4 context:(long long)arg5 {
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
    r29 = &saved_fp;
    r22 = arg5;
    r23 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_60 super] init];
    r21 = r0;
    if (r21 == 0x0) goto loc_10040084c;

loc_100400388:
    r21->mask = r23;
    r21->context = r22;
    if (r19 != 0x0) {
            r5 = r19;
            [TR_DDTTYLogger getRed:&var_68 green:&var_70 blue:&var_78 fromColor:r5];
            r8 = 0x100ba3000;
            asm { fcvtzs     w8, d0 };
            *(int8_t *)(int64_t *)&r21->fg_r = r8;
            asm { fcvtzs     w8, d0 };
            *(int8_t *)(int64_t *)&r21->fg_g = r8;
            asm { fcvtzs     w8, d0 };
            *(int8_t *)(int64_t *)&r21->fg_b = r8;
    }
    if (r20 != 0x0) {
            r5 = r20;
            [TR_DDTTYLogger getRed:&var_68 green:&var_70 blue:&var_78 fromColor:r5];
            r8 = 0x100ba3000;
            asm { fcvtzs     w8, d0 };
            *(int8_t *)(int64_t *)&r21->bg_r = r8;
            asm { fcvtzs     w8, d0 };
            *(int8_t *)(int64_t *)&r21->bg_g = r8;
            asm { fcvtzs     w8, d0 };
            *(int8_t *)(int64_t *)&r21->bg_b = r8;
    }
    if (r19 == 0x0) goto loc_100400610;

loc_100400494:
    if (*(int8_t *)byte_1011d6e01 != 0x1) goto loc_100400594;

loc_1004004a4:
    r8 = [TR_DDTTYLogger codeIndexForColor:r19];
    r21->fgCodeIndex = r8;
    r0 = *0x1011d6de0;
    r0 = [r0 objectAtIndexedSubscript:r8];
    r29 = r29;
    r0 = [r0 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(fgCodeRaw));
    r8 = *(r21 + r27);
    *(r21 + r27) = r0;
    [r8 release];
    r22 = [@"\x1B[" lengthOfBytesUsingEncoding:0x4];
    r23 = [*(r21 + r27) lengthOfBytesUsingEncoding:0x4];
    r24 = [@"\x1B[" getCString:(int64_t *)&r21->fgCode maxLength:r22 + 0x1 encoding:0x4];
    r0 = *(r21 + r27);
    r0 = [r0 getCString:(int64_t *)&r21->fgCode + r22 maxLength:r23 + 0x1 encoding:0x4];
    if (r24 == 0x0 || r0 == 0x0) goto loc_100400730;

loc_10040058c:
    r8 = r23 + r22;
    goto loc_100400620;

loc_100400620:
    r21->fgCodeLen = r8;
    if (r20 == 0x0) goto loc_1004007b4;

loc_100400630:
    if (*(int8_t *)byte_1011d6e01 != 0x1) goto loc_100400738;

loc_100400640:
    r8 = [TR_DDTTYLogger codeIndexForColor:r20];
    r21->bgCodeIndex = r8;
    r0 = *0x1011d6de8;
    r0 = [r0 objectAtIndexedSubscript:r8];
    r0 = [r0 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(bgCodeRaw));
    r8 = *(r21 + r27);
    *(r21 + r27) = r0;
    [r8 release];
    r22 = [@"\x1B[" lengthOfBytesUsingEncoding:0x4];
    r23 = [*(r21 + r27) lengthOfBytesUsingEncoding:0x4];
    r24 = [@"\x1B[" getCString:(int64_t *)&r21->bgCode maxLength:r22 + 0x1 encoding:0x4];
    r0 = *(r21 + r27);
    r0 = [r0 getCString:(int64_t *)&r21->bgCode + r22 maxLength:r23 + 0x1 encoding:0x4];
    if (r24 == 0x0 || r0 == 0x0) goto loc_100400730;

loc_100400728:
    r8 = r23 + r22;
    goto loc_1004007c4;

loc_1004007c4:
    r21->bgCodeLen = r8;
    if (*(int8_t *)byte_1011d6e01 != 0x1) goto loc_1004007f8;

loc_1004007e0:
    r0 = (int64_t *)&r21->resetCode;
    r4 = "\x1B[0m";
    goto loc_10040081c;

loc_10040081c:
    r0 = __snprintf_chk(r0, 0x8, 0x0, 0xffffffffffffffff, r4);
    r8 = r0 & !(r0 / 0xffffffff80000000);
    goto loc_10040083c;

loc_10040083c:
    r21->resetCodeLen = r8;
    goto loc_10040084c;

loc_10040084c:
    r22 = [r21 retain];
    goto loc_100400858;

loc_100400858:
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;

loc_1004007f8:
    r0 = (int64_t *)&r21->resetCode;
    if (*(int8_t *)byte_1011d6e00 != 0x1) goto loc_100400834;

loc_100400814:
    r4 = "\x1B[;";
    goto loc_10040081c;

loc_100400834:
    r8 = 0x0;
    *(int8_t *)r0 = 0x0;
    goto loc_10040083c;

loc_100400730:
    r22 = 0x0;
    goto loc_100400858;

loc_100400738:
    if (*(int8_t *)byte_1011d6e00 == 0x1) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(bg_r));
            r0 = __snprintf_chk((int64_t *)&r21->bgCode, 0x18, 0x0, 0xffffffffffffffff, "%sbg%u,%u,%u;", r5, r6, r7, "\x1B[");
            r8 = 0x17;
            if (r0 < 0x17) {
                    if (!CPU_FLAGS & L) {
                            r8 = 0x17;
                    }
                    else {
                            r8 = r0;
                    }
            }
            r8 = r8 & !(r8 / 0xffffffff80000000);
    }
    else {
            r8 = 0x0;
            *(int8_t *)(int64_t *)&r21->bgCode = 0x0;
    }
    goto loc_1004007c4;

loc_1004007b4:
    r8 = 0x0;
    *(int8_t *)(int64_t *)&r21->bgCode = 0x0;
    goto loc_1004007c4;

loc_100400594:
    if (*(int8_t *)byte_1011d6e00 == 0x1) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(fg_r));
            r0 = __snprintf_chk((int64_t *)&r21->fgCode, 0x18, 0x0, 0xffffffffffffffff, "%sfg%u,%u,%u;", r5, r6, r7, "\x1B[");
            r8 = 0x17;
            if (r0 < 0x17) {
                    if (!CPU_FLAGS & L) {
                            r8 = 0x17;
                    }
                    else {
                            r8 = r0;
                    }
            }
            r8 = r8 & !(r8 / 0xffffffff80000000);
    }
    else {
            r8 = 0x0;
            *(int8_t *)(int64_t *)&r21->fgCode = 0x0;
    }
    goto loc_100400620;

loc_100400610:
    r8 = 0x0;
    *(int8_t *)(int64_t *)&r21->fgCode = 0x0;
    goto loc_100400620;
}

@end