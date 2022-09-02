@implementation UserWallet

+(void *)userWallet {
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 preloadWalletStructuresFromConfig];
    }
    r0 = r19;
    return r0;
}

-(void)preloadWalletStructuresFromConfig {
    return;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(int)quantityOwnedOf:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > *)arg2 {
    r0 = sub_100080ed0(self + 0x8, arg2, 0x100b9f481, &var_8, &stack[-32]);
    r0 = *(int32_t *)(r0 + 0x38);
    return r0;
}

-(struct vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > > *)productIdsFor:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > *)arg2 {
    r0 = sub_100080bc0(self + 0x20, arg2, 0x100b9f481, &var_8, &stack[-32]);
    r0 = r0 + 0x38;
    return r0;
}

-(void).cxx_destruct {
    sub_1000812d4(self + 0x20);
    r0 = self + 0x8;
    r1 = *(self + 0x10);
    r29 = r29;
    r30 = r30;
    r20 = r20;
    r19 = r19;
    r31 = r31 + 0x0;
    if (r1 != 0x0) {
            var_30 = r20;
            stack[-56] = r19;
            r31 = r31 + 0xffffffffffffffe0;
            var_20 = r29;
            stack[-40] = r30;
            r19 = r1;
            loc_100081284(r0, *r1);
            loc_100081284(r20, *(r19 + 0x8));
            if ((sign_extend_64(*(int8_t *)(r19 + 0x37)) & 0xffffffff80000000) != 0x0) {
                    operator delete(*(r19 + 0x20));
            }
            operator delete(r19);
    }
    return;
}

-(struct vector<std::__1::basic_string<char>, std::__1::allocator<std::__1::basic_string<char> > >)productTypes {
    r1 = _cmd;
    r0 = self;
    r31 = r31 - 0x90;
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
    *(int128_t *)r8 = 0x0;
    *(int128_t *)(r8 + 0x8) = 0x0;
    *(r8 + 0x10) = 0x0;
    r27 = *(r0 + 0x20);
    r23 = r0 + 0x28;
    if (r27 == r23) goto .l11;

loc_1000806bc:
    r19 = r8;
    r8 = 0x0;
    r21 = 0x0;
    r20 = r19 + 0x10;
    goto loc_1000806e4;

loc_1000806e4:
    r22 = r27 + 0x20;
    if (r21 == r8) goto loc_100080708;

loc_1000806f0:
    r1 = r22;
    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    *(r19 + 0x8) = r21 + 0x18;
    goto loc_1000807d8;

loc_1000807d8:
    r8 = *(r27 + 0x8);
    if (r8 != 0x0) {
            do {
                    r27 = r8;
                    r8 = *r8;
            } while (r8 != 0x0);
    }
    else {
            r8 = r27 + 0x10;
            r9 = *r8;
            if (*r9 != r27) {
                    do {
                            r9 = *r8;
                            r8 = r9 + 0x10;
                            r27 = *r8;
                    } while (*r27 != r9);
            }
            else {
                    r27 = r9;
            }
    }
    if (r27 == r23) goto .l11;

loc_10008082c:
    r21 = *(int128_t *)(r19 + 0x8);
    r8 = *(int128_t *)(r19 + 0x10);
    goto loc_1000806e4;

.l11:
    return r0;

loc_100080708:
    r2 = (SAR(r8 - *r19, 0x3)) * 0xaaaaaaaaaaaaaaab;
    r8 = r2 + 0x1;
    if (r8 > 0xaaaaaaaaaaaaaaaa) goto loc_100080854;

loc_100080724:
    r9 = r2 << 0x1;
    if (r9 < r8) {
            if (!CPU_FLAGS & B) {
                    r8 = r9;
            }
            else {
                    r8 = r8;
            }
    }
    if (r2 < 0x5555555555555555) {
            if (!CPU_FLAGS & B) {
                    r1 = 0xaaaaaaaaaaaaaaaa;
            }
            else {
                    r1 = r8;
            }
    }
    sub_10000e520(&var_78, r1, r2, r20);
    r1 = r22;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r10 = var_68 + 0x18;
    var_68 = r10;
    r9 = *(int128_t *)r19;
    r11 = *(int128_t *)(r19 + 0x8);
    if (r11 != r9) {
            r8 = var_70;
            do {
                    q0 = *(int128_t *)(r11 + 0xffffffffffffffe8);
                    *(r8 + 0xfffffffffffffff8) = *(r11 + 0xfffffffffffffff8);
                    *(int128_t *)(r8 + 0xffffffffffffffe8) = q0;
                    *(int128_t *)(r11 + 0xfffffffffffffff0) = 0x0;
                    *(int128_t *)(r11 + 0xfffffffffffffff8) = 0x0;
                    *(r11 + 0xffffffffffffffe8) = 0x0;
                    r10 = r11 - 0x18;
                    r8 = var_70 - 0x18;
                    var_70 = r8;
                    r11 = r10;
            } while (r9 != r10);
            q0 = *(int128_t *)r19;
            r10 = var_68;
    }
    else {
            r8 = var_70;
            asm { dup        v0.2d, x9 };
    }
    *(int128_t *)r19 = r8;
    *(int128_t *)(r19 + 0x8) = r10;
    var_70 = q0;
    r8 = *(r19 + 0x10);
    *(r19 + 0x10) = var_60;
    var_60 = r8;
    r0 = sub_10000e598(&var_78);
    goto loc_1000807d8;

loc_100080854:
    r0 = std::__1::__vector_base_common<true>::__throw_length_error();
    return r0;
}

-(void *).cxx_construct {
    r0 = self;
    *(r0 + 0x10) = 0x0;
    *(r0 + 0x8) = r0 + 0x10;
    *(r0 + 0x30) = 0x0;
    *(r0 + 0x28) = 0x0;
    *(int128_t *)(r0 + 0x18) = 0x0;
    *(int128_t *)(r0 + 0x20) = r0 + 0x28;
    return r0;
}

-(struct vector<std::__1::pair<std::__1::basic_string<char>, int>, std::__1::allocator<std::__1::pair<std::__1::basic_string<char>, int> > >)quantitiesOwnedWith:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > *)arg2 {
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
    r20 = self;
    r19 = r8;
    *(int128_t *)r8 = 0x0;
    *(int128_t *)(r8 + 0x8) = 0x0;
    *(r8 + 0x10) = 0x0;
    r0 = [self productIdsFor:arg2];
    r21 = *(int128_t *)r0;
    r24 = *(int128_t *)(r0 + 0x8);
    if (r21 == r24) goto .l11;

loc_100080958:
    r25 = r19 + 0x10;
    goto loc_100080968;

loc_100080968:
    r23 = [r20 quantityOwnedOf:r2];
    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    var_80 = r23;
    r8 = *(int128_t *)(r19 + 0x8);
    r9 = *(int128_t *)(r19 + 0x10);
    if (r8 >= r9) goto loc_1000809c4;

loc_100080998:
    *(r8 + 0x10) = var_88;
    *(int128_t *)r8 = var_98;
    var_88 = 0x0;
    var_98 = 0x0;
    *(int32_t *)(r8 + 0x18) = var_80;
    *(r19 + 0x8) = r8 + 0x20;
    goto loc_100080a70;

loc_100080a70:
    r21 = r21 + 0x18;
    if (r24 != r21) goto loc_100080968;

.l11:
    return r0;

loc_1000809c4:
    r10 = *r19;
    r28 = SAR(r8 - r10, 0x5);
    r8 = r28 + 0x1;
    if (r8 >> 0x3b != 0x0) goto loc_100080a9c;

loc_1000809dc:
    r9 = r9 - r10;
    r10 = SAR(r9, 0x4);
    if (r10 < r8) {
            if (!CPU_FLAGS & B) {
                    r8 = r10;
            }
            else {
                    r8 = r8;
            }
    }
    if (0x3ffffffffffffff > r9 / 0x20) {
            if (!CPU_FLAGS & A) {
                    r26 = 0x7ffffffffffffff;
            }
            else {
                    r26 = r8;
            }
    }
    if (r26 == 0x0) goto loc_100080a14;

loc_100080a00:
    if (r26 >> 0x3b != 0x0) goto loc_100080aa8;

loc_100080a08:
    r0 = operator new();
    goto loc_100080a18;

loc_100080a18:
    *(0x10 + r0 + r28 * 0x20) = var_88;
    *(int128_t *)(r0 + r28 * 0x20) = var_98;
    var_88 = 0x0;
    var_98 = 0x0;
    *(int32_t *)(0x18 + r0 + r28 * 0x20) = r23;
    sub_100081198(r19, &var_78);
    r0 = sub_100081224(&var_78);
    if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
            var_98 = 0x0;
            r0 = operator delete(var_98);
    }
    goto loc_100080a70;

loc_100080aa8:
    r0 = sub_100080b48();
    return r0;

loc_100080a14:
    r0 = 0x0;
    goto loc_100080a18;

loc_100080a9c:
    r0 = std::__1::__vector_base_common<true>::__throw_length_error();
    return r0;
}

@end