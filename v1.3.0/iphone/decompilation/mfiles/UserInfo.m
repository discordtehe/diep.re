@implementation UserInfo

+(void *)userInfo {
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
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
            *(int128_t *)(r19 + 0x1c) = 0x0;
            *(int128_t *)(r19 + 0x20) = 0x0;
            *(r19 + 0x8) = 0x0;
            *(int8_t *)(r19 + 0x10) = 0x0;
    }
    r0 = r19;
    return r0;
}

-(int)level {
    r0 = *(int32_t *)(self + 0x8);
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(int)xp_in_level {
    r0 = *(int32_t *)(self + 0xc);
    return r0;
}

-(void)setIsPayingUser {
    *(int8_t *)(self + 0x10) = 0x1;
    return;
}

-(bool)isPayingUser {
    r0 = *(int8_t *)(self + 0x10);
    return r0;
}

-(void)checkUnknownSkinEquip {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [Application sharedApplication];
    r0 = [r0 configuration];
    r21 = r20 + 0x28;
    sub_1000910b8(r0, r21);
    r23 = var_40;
    r19 = var_38;
    if (r19 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
            r22 = var_38;
            if (r22 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 != 0x0) {
                            if (r23 != 0x0) {
                                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
                                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
                            }
                    }
                    else {
                            (*(*r22 + 0x10))(r22);
                            std::__1::__shared_weak_count::__release_weak();
                            if (r23 != 0x0) {
                                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
                                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
                            }
                    }
            }
            else {
                    if (r23 != 0x0) {
                            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
                            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
                    }
            }
    }
    else {
            if (r23 != 0x0) {
                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
            }
    }
    if (r19 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r19 + 0x10))(r19);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    return;
}

-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >)selected_skin {
    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    return r0;
}

-(void)selectSkin:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >)arg2 {
    memcpy(&r2, &arg2, 0x8);
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    return;
}

-(int)startingLevel {
    r0 = *(int32_t *)(self + 0x14);
    return r0;
}

-(void)setStartingLevel:(int)arg2 {
    *(int32_t *)(self + 0x14) = arg2;
    return;
}

-(void)setEndingLevel:(int)arg2 {
    *(int32_t *)(self + 0x18) = arg2;
    return;
}

-(int)endingLevel {
    r0 = *(int32_t *)(self + 0x18);
    return r0;
}

-(int)deathsTotal {
    r0 = *(int32_t *)(self + 0x20);
    return r0;
}

-(void)setDeathsTotal:(int)arg2 {
    *(int32_t *)(self + 0x20) = arg2;
    return;
}

-(int)deathsThisSession {
    r0 = *(int32_t *)(self + 0x1c);
    return r0;
}

-(void)setDeathsThisSession:(int)arg2 {
    *(int32_t *)(self + 0x1c) = arg2;
    return;
}

-(void).cxx_destruct {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ((sign_extend_64(*(int8_t *)(self + 0x57)) & 0xffffffff80000000) != 0x0) {
            operator delete(*(r19 + 0x40));
    }
    if ((sign_extend_64(*(int8_t *)(r19 + 0x3f)) & 0xffffffff80000000) != 0x0) {
            operator delete(*(r19 + 0x28));
    }
    return;
}

-(void *).cxx_construct {
    r0 = self;
    *(int128_t *)(r0 + 0x48) = q0;
    *(int128_t *)(r0 + 0x38) = q0;
    *(int128_t *)(r0 + 0x28) = q0;
    return r0;
}

@end