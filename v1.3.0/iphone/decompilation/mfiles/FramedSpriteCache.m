@implementation FramedSpriteCache

+(void *)sharedFramedSpriteCache {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = self;
    r0 = *0x1011d4330;
    if (r0 == 0x0) {
            r0 = [[&var_20 super] allocWithZone:0x0];
            r0 = [r0 init];
            *0x1011d4330 = r0;
    }
    return r0;
}

+(void)clearCache {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d4330 != 0x0) {
            [*0x1011d4330 release];
            *0x1011d4330 = 0x0;
    }
    return;
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
            *(r19 + 0x8) = [[NSMutableDictionary alloc] initWithCapacity:0xa];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

+(void *)framedSpriteWithName:(void *)arg2 {
    r0 = [self sharedFramedSpriteCache];
    r0 = [r0 framedSpriteWithName:arg2];
    return r0;
}

-(void *)framedSpriteWithName:(void *)arg2 {
    r0 = [FramedSprite framedSpriteWithDictionary:[self descriptionWithName:arg2]];
    return r0;
}

+(void *)getFrameFromFramedSpriteDescription:(void *)arg2 {
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(arg2, r19);
    r0 = objc_msgSend(r0, r19);
    return r0;
}

+(void *)getTexture_MCC2DFromFramedSpriteDescription:(void *)arg2 {
    r0 = [arg2 objectForKey:r2];
    return r0;
}

-(void *)descriptionWithName:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    r21 = r0;
    if (r0 == 0x0) {
            if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
                    if (r19 != 0x0) {
                            r1 = [r19 UTF8String];
                    }
                    else {
                            r1 = "";
                    }
                    sub_100312338(&var_58, r1);
                    r0 = sub_10042ccfc(&var_58);
                    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_58);
                    }
                    sub_10098f1a4(r29 - 0x40);
                    r9 = var_41;
                    r8 = sign_extend_64(r9);
                    r10 = var_50;
                    if (r8 < 0x0) {
                            if (!CPU_FLAGS & L) {
                                    r9 = r9;
                            }
                            else {
                                    r9 = r10;
                            }
                    }
                    if (r9 == 0x5) {
                            if (std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() != 0x0) {
                                    if (CPU_FLAGS & NE) {
                                            r21 = 0x1;
                                    }
                            }
                            r8 = var_41;
                    }
                    else {
                            r21 = 0x1;
                    }
                    if ((sign_extend_64(r8) & 0xffffffff80000000) == 0x0) {
                            if (r21 != 0x0) {
                                    sub_10098f4f4(r29 - 0x40);
                                    sub_100312338(&var_88, "plist");
                                    r0 = sub_10098f2e8(&var_70, &var_88);
                                    if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_40);
                                    }
                                    var_40 = var_58;
                                    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_88);
                                    }
                                    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_70);
                                    }
                            }
                    }
                    else {
                            operator delete(var_58);
                            if (r21 != 0x0) {
                                    sub_10098f4f4(r29 - 0x40);
                                    sub_100312338(&var_88, "plist");
                                    r0 = sub_10098f2e8(&var_70, &var_88);
                                    if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_40);
                                    }
                                    var_40 = var_58;
                                    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_88);
                                    }
                                    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_70);
                                    }
                            }
                    }
                    r21 = sub_100316658(r29 - 0x40, 0x0);
                    if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_40);
                    }
            }
            else {
                    r21 = [CCFileUtils sharedFileUtils];
                    r21 = [NSDictionary dictionaryWithContentsOfFile:[r21 fullPathForFilename:[r19 stringByAppendingPathExtension:@"plist"]]];
            }
            r21 = [r20 processDictionary:r21 withName:r19];
            [*(r20 + 0x8) setObject:r2 forKey:r3];
    }
    r0 = r21;
    return r0;
}

-(void *)processDictionary:(void *)arg2 withName:(void *)arg3 {
    r31 = r31 - 0x1a0;
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
    r19 = arg3;
    r22 = arg2;
    *(r29 + 0xffffffffffffff60) = **___stack_chk_guard;
    r0 = [r22 objectForKey:r2];
    if (r0 != 0x0) {
            r20 = @selector(objectForKey:);
            r21 = r0;
            r0 = [NSMutableDictionary dictionaryWithDictionary:r22];
            var_188 = r0;
            [r0 removeObjectForKey:@"UniqueImage"];
            r0 = objc_msgSend(r22, r20);
            var_190 = sub_10034dd34([r0 stringByAppendingString:@".png"]);
            [objc_msgSend(r21, r20) floatValue];
            sub_10035ec68();
            s12 = s8 * *(int32_t *)0x1011bcf4c;
            [objc_msgSend(r21, r20) floatValue];
            sub_10035ec68();
            s13 = s8 * *(int32_t *)0x1011bcf4c;
            [objc_msgSend(r21, r20) floatValue];
            sub_10035ec68();
            s14 = s8 * *(int32_t *)0x1011bcf4c;
            [objc_msgSend(r21, r20) floatValue];
            sub_10035ec68();
            s15 = s8 * *(int32_t *)0x1011bcf4c;
            r22 = [r22 stringByAppendingString:@".plist"];
            r0 = objc_msgSend(r21, r20);
            r0 = sub_10034dba0(r22, r0, 0x0);
            [r0 rectInPixels];
            r0 = [r0 rotated];
            var_194 = r0;
            if (r0 != 0x0) {
                    asm { fcsel      d0, d9, d8, ne };
            }
            s0 = *(int32_t *)0x1011bcf4c;
            asm { fcvt       s0, d0 };
            *(int128_t *)(r29 + 0xffffffffffffff50) = s0;
            *(int128_t *)(r29 + 0xffffffffffffff54) = s12 + s0;
            s1 = s13 + s0;
            asm { fcvt       d0, s0 };
            d0 = d10 + d0;
            asm { fcvt       s0, d0 };
            *(int128_t *)(r29 + 0xffffffffffffff58) = s1;
            *(int128_t *)(r29 + 0xffffffffffffff5c) = s0;
            if (CPU_FLAGS & NE) {
                    asm { fcsel      d0, d8, d9, ne };
            }
            s0 = *(int32_t *)0x1011bcf4c;
            asm { fcvt       s0, d0 };
            *(int128_t *)(r29 + 0xffffffffffffff40) = s0;
            *(int128_t *)(r29 + 0xffffffffffffff44) = s14 + s0;
            s1 = s15 + s0;
            asm { fcvt       d0, s0 };
            asm { fcvt       s0, d0 };
            *(int128_t *)(r29 + 0xffffffffffffff48) = s1;
            *(int128_t *)(r29 + 0xffffffffffffff4c) = s0;
            r0 = [r19 UTF8String];
            r0 = sub_100312338(&var_E8, r0);
            r23 = 0x0;
            do {
                    r26 = 0x0;
                    var_160 = r23 + 0x1;
                    r25 = 0x2;
                    do {
                            r2 = r23;
                            [FramedSprite placeToString:r2 :r3];
                            r21 = [NSMutableDictionary dictionary];
                            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > std::__1::operator+<char, std::__1::char_traits<char>, std::__1::allocator<char> >();
                            r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
                            var_140 = *(int128_t *)r0;
                            *(int128_t *)(r0 + 0x8) = 0x0;
                            *(int128_t *)(r0 + 0x10) = 0x0;
                            *r0 = 0x0;
                            r8 = var_E9;
                            r10 = var_100;
                            r11 = stack[-248];
                            r9 = &var_100;
                            if (CPU_FLAGS & L) {
                                    if (!CPU_FLAGS & L) {
                                            r2 = r8;
                                    }
                                    else {
                                            r2 = r11;
                                    }
                            }
                            r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
                            q0 = *(int128_t *)r0;
                            var_110 = *(r0 + 0x10);
                            var_120 = q0;
                            *(int128_t *)(r0 + 0x8) = 0x0;
                            *(int128_t *)(r0 + 0x10) = 0x0;
                            *r0 = 0x0;
                            r9 = var_120;
                            r8 = &var_120;
                            if (sign_extend_64(var_109) < 0x0) {
                                    if (!CPU_FLAGS & L) {
                                            r2 = r8;
                                    }
                                    else {
                                            r2 = r9;
                                    }
                            }
                            r24 = @class(NSString);
                            r24 = [r24 stringWithUTF8String:r2];
                            if ((sign_extend_64(var_109) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_120);
                            }
                            if ((sign_extend_64(var_129) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_140);
                            }
                            if ((sign_extend_64(var_141) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_158);
                            }
                            [r21 setObject:r24 forKey:@"spriteFrame"];
                            [r21 setObject:@(NO) forKey:@"flipX"];
                            [r21 setObject:@(NO) forKey:@"flipY"];
                            r9 = var_100;
                            r8 = &var_100;
                            if (sign_extend_64(var_E9) < 0x0) {
                                    if (!CPU_FLAGS & L) {
                                            r2 = r8;
                                    }
                                    else {
                                            r2 = r9;
                                    }
                            }
                            [var_188 setObject:r21 forKey:[NSString stringWithUTF8String:r2]];
                            if (var_194 != 0x0) {
                                    r22 = @selector(placeToString::);
                                    var_170 = @selector(frameWithTexture:rectInPixels:rotated:offset:originalSize:);
                                    asm { fcvt       d0, s3 };
                                    asm { fcvt       d1, s2 };
                                    asm { fcvt       d2, s2 };
                                    asm { fcvt       d3, s3 };
                                    r21 = objc_msgSend(@class(CCSpriteFrame), var_170);
                                    r2 = r23;
                                    objc_msgSend(@class(FramedSprite), r22);
                            }
                            else {
                                    r22 = @selector(placeToString::);
                                    var_170 = @selector(frameWithTexture:rectInPixels:rotated:offset:originalSize:);
                                    asm { fcvt       d0, s2 };
                                    asm { fcvt       d1, s3 };
                                    asm { fcvt       d2, s2 };
                                    asm { fcvt       d3, s3 };
                                    r21 = objc_msgSend(@class(CCSpriteFrame), var_170);
                                    r2 = r23;
                                    objc_msgSend(@class(FramedSprite), r22);
                            }
                            if ((sign_extend_64(var_E9) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_100);
                            }
                            var_100 = var_120;
                            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > std::__1::operator+<char, std::__1::char_traits<char>, std::__1::allocator<char> >();
                            r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
                            var_140 = *(int128_t *)r0;
                            *(int128_t *)(r0 + 0x8) = 0x0;
                            *(int128_t *)(r0 + 0x10) = 0x0;
                            *r0 = 0x0;
                            r8 = var_E9;
                            r10 = var_100;
                            r11 = stack[-248];
                            r9 = &var_100;
                            if (CPU_FLAGS & L) {
                                    if (!CPU_FLAGS & L) {
                                            r2 = r8;
                                    }
                                    else {
                                            r2 = r11;
                                    }
                            }
                            r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
                            var_120 = *(int128_t *)r0;
                            *(int128_t *)(r0 + 0x8) = 0x0;
                            *(int128_t *)(r0 + 0x10) = 0x0;
                            *r0 = 0x0;
                            r9 = var_120;
                            r8 = &var_120;
                            if (sign_extend_64(var_109) < 0x0) {
                                    if (!CPU_FLAGS & L) {
                                            r2 = r8;
                                    }
                                    else {
                                            r2 = r9;
                                    }
                            }
                            r24 = [NSString stringWithUTF8String:r2];
                            if ((sign_extend_64(var_109) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_120);
                            }
                            if ((sign_extend_64(var_129) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_140);
                            }
                            if ((sign_extend_64(var_141) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_158);
                            }
                            [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFrame:r2 name:r3];
                            if ((sign_extend_64(var_E9) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_100);
                            }
                            r26 = r26 + 0x1;
                            r25 = r25 - 0x1;
                    } while (r26 != 0x3);
                    r23 = var_160;
            } while (var_160 != 0x3);
            if ((sign_extend_64(var_D1) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_E8);
            }
            r22 = var_188;
    }
    if (**___stack_chk_guard == *(r29 + 0xffffffffffffff60)) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end