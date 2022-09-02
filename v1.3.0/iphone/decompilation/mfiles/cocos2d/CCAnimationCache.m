@implementation CCAnimationCache

+(void *)sharedAnimationCache {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d2da0;
    if (r0 == 0x0) {
            r0 = [CCAnimationCache alloc];
            r0 = [r0 init];
            *0x1011d2da0 = r0;
    }
    return r0;
}

+(void *)alloc {
    r0 = [[&var_10 super] alloc];
    return r0;
}

+(void)purgeSharedAnimationCache {
    [*0x1011d2da0 release];
    *0x1011d2da0 = 0x0;
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
            *(r19 + 0x8) = [[NSMutableDictionary alloc] initWithCapacity:0x14];
    }
    r0 = r19;
    return r0;
}

-(void *)description {
    [self class];
    r0 = *(self + 0x8);
    [r0 count];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)removeAnimationByName:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [*(r0 + 0x8) removeObjectForKey:r2];
    }
    return;
}

-(void *)animationByName:(void *)arg2 {
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void)addAnimation:(void *)arg2 name:(void *)arg3 {
    [*(self + 0x8) setObject:r2 forKey:r3];
    return;
}

-(void)addAnimationsWithDictionary:(void *)arg2 {
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
    r22 = arg2;
    r19 = self;
    r0 = [r22 objectForKey:r2];
    if (r0 == 0x0) goto loc_1002c0738;

loc_1002c05e4:
    var_138 = r0;
    r0 = [r22 objectForKey:r2];
    r22 = r0;
    var_130 = r19;
    if (r0 != 0x0) {
            r8 = 0x101137000;
            objc_msgSend([r22 objectForKey:r2], *(r8 + 0x2e0));
            asm { sxtw       x8, w0 };
    }
    else {
            r8 = 0x1;
    }
    var_128 = r8;
    r0 = [r22 objectForKey:r2];
    r21 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r28 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r21);
                            }
                            r24 = @selector(sharedSpriteFrameCache);
                            [objc_msgSend(@class(CCSpriteFrameCache), r24) addSpriteFramesWithFile:r2];
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    r8 = var_128;
    if (r8 == 0x2) goto loc_1002c0728;

loc_1002c0710:
    r0 = var_130;
    if (r8 != 0x1) goto loc_1002c0738;

loc_1002c071c:
    r1 = @selector(parseVersion1:);
    goto loc_1002c0734;

loc_1002c0734:
    objc_msgSend(r0, r1);
    goto loc_1002c0738;

loc_1002c0738:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1002c0728:
    r1 = @selector(parseVersion2:);
    r0 = var_130;
    goto loc_1002c0734;
}

-(void)parseVersion1:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x220;
    var_238 = arg2;
    r19 = [arg2 allKeys];
    var_1F8 = [CCSpriteFrameCache sharedSpriteFrameCache];
    var_1A0 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_258 = r19;
    var_208 = r1;
    r0 = objc_msgSend(r19, r1);
    var_228 = r0;
    if (r0 != 0x0) {
            var_240 = *var_1A0;
            do {
                    r20 = 0x0;
                    r22 = @selector(count);
                    var_248 = r22;
                    do {
                            if (*var_1A0 != var_240) {
                                    objc_enumerationMutation(var_258);
                            }
                            r23 = *(var_1A8 + r20 * 0x8);
                            r0 = [var_238 objectForKey:r23];
                            r28 = [r0 objectForKey:@"frames"];
                            r0 = [r0 objectForKey:@"delay"];
                            if (r28 != 0x0) {
                                    var_220 = r0;
                                    var_218 = r23;
                                    var_210 = r20;
                                    objc_msgSend(r28, r22);
                                    var_200 = [NSMutableArray arrayWithCapacity:r2];
                                    var_1E0 = q0;
                                    r0 = objc_msgSend(r28, var_208);
                                    if (r0 != 0x0) {
                                            r19 = r0;
                                            r21 = *var_1E0;
                                            do {
                                                    r25 = 0x0;
                                                    do {
                                                            if (*var_1E0 != r21) {
                                                                    objc_enumerationMutation(r28);
                                                            }
                                                            r0 = [var_1F8 spriteFrameByName:*(var_1E8 + r25 * 0x8)];
                                                            if (r0 != 0x0) {
                                                                    r22 = [[CCAnimationFrame alloc] initWithSpriteFrame:r0 delayUnits:0x0 userInfo:0x10];
                                                                    [var_200 addObject:r22];
                                                                    [r22 release];
                                                            }
                                                            r25 = r25 + 0x1;
                                                    } while (r25 < r19);
                                                    r0 = objc_msgSend(r28, var_208);
                                                    r19 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    r24 = var_200;
                                    r22 = var_248;
                                    r0 = objc_msgSend(r24, r22);
                                    r21 = var_218;
                                    r20 = var_210;
                                    r23 = var_220;
                                    if (r0 != 0x0) {
                                            objc_msgSend(r24, r22);
                                            objc_msgSend(r28, r22);
                                            [r23 floatValue];
                                            [CCAnimation animationWithAnimationFrames:r24 delayPerUnit:0x1 loops:0x10];
                                            [[CCAnimationCache sharedAnimationCache] addAnimation:r2 name:r3];
                                    }
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < var_228);
                    r0 = objc_msgSend(var_258, var_208);
                    var_228 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)parseVersion1WithStringMap:(struct StringMap *)arg2 {
    r31 = r31 - 0xe0;
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
    var_80 = [CCSpriteFrameCache sharedSpriteFrameCache];
    r20 = *(arg2 + 0x10);
    if (r20 != 0x0) {
            do {
                    if (*(int32_t *)(r20 + 0x30) == 0x6) {
                            r22 = *(r20 + 0x28);
                            sub_1002c0ac0(&var_78, "frames");
                            r0 = sub_1002c1520(r22, &var_78);
                            r21 = r0;
                            if ((sign_extend_64(var_61) & 0xffffffff80000000) == 0x0) {
                                    if (r21 != 0x0) {
                                            if (*(int32_t *)(r21 + 0x30) == 0x5) {
                                                    r21 = *(r21 + 0x28);
                                                    if (*(int128_t *)r21 != *(int128_t *)(r21 + 0x8)) {
                                                            var_88 = [[NSMutableArray alloc] initWithCapacity:SAR(*(int128_t *)(r21 + 0x8) - *(int128_t *)r21, 0x4)];
                                                            r19 = *r21;
                                                            r21 = *(r21 + 0x8);
                                                            if (r19 != r21) {
                                                                    do {
                                                                            if (*(int32_t *)(r19 + 0x8) == 0x4) {
                                                                                    r2 = *r19;
                                                                                    if ((sign_extend_64(*(int8_t *)(r2 + 0x17)) & 0xffffffff80000000) != 0x0) {
                                                                                            r2 = *r2;
                                                                                    }
                                                                                    r0 = [var_80 spriteFrameByName:[NSString stringWithUTF8String:r2]];
                                                                                    if (r0 != 0x0) {
                                                                                            r25 = r0;
                                                                                            r0 = [CCAnimationFrame alloc];
                                                                                            v0 = v8;
                                                                                            r25 = [r0 initWithSpriteFrame:r25 delayUnits:0x0 userInfo:r4];
                                                                                            [var_88 addObject:r25];
                                                                                            [r25 release];
                                                                                    }
                                                                            }
                                                                            r19 = r19 + 0x10;
                                                                    } while (r21 != r19);
                                                            }
                                                            [var_88 count];
                                                            sub_1002c0ac0(&var_78, "delay");
                                                            r0 = sub_1002c1520(r22, &var_78);
                                                            r23 = r0;
                                                            if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
                                                                    operator delete(var_78);
                                                            }
                                                            r22 = r20 + 0x10;
                                                            if (r23 != 0x0) {
                                                                    sub_1009cafd0(r23 + 0x28);
                                                                    v9 = v0;
                                                            }
                                                            r0 = [CCAnimation alloc];
                                                            v0 = v9;
                                                            r23 = [r0 initWithAnimationFrames:var_88 delayPerUnit:0x1 loops:r4];
                                                            r24 = [CCAnimationCache sharedAnimationCache];
                                                            if ((sign_extend_64(*(int8_t *)(r22 + 0x17)) & 0xffffffff80000000) != 0x0) {
                                                                    r22 = *r22;
                                                            }
                                                            [NSString stringWithUTF8String:r2];
                                                            [r24 addAnimation:r2 name:r3];
                                                            [var_88 release];
                                                            [r23 release];
                                                    }
                                            }
                                    }
                            }
                            else {
                                    operator delete(var_78);
                                    if (r21 != 0x0) {
                                            if (*(int32_t *)(r21 + 0x30) == 0x5) {
                                                    r21 = *(r21 + 0x28);
                                                    if (*(int128_t *)r21 != *(int128_t *)(r21 + 0x8)) {
                                                            var_88 = [[NSMutableArray alloc] initWithCapacity:SAR(*(int128_t *)(r21 + 0x8) - *(int128_t *)r21, 0x4)];
                                                            r19 = *r21;
                                                            r21 = *(r21 + 0x8);
                                                            if (r19 != r21) {
                                                                    do {
                                                                            if (*(int32_t *)(r19 + 0x8) == 0x4) {
                                                                                    r2 = *r19;
                                                                                    if ((sign_extend_64(*(int8_t *)(r2 + 0x17)) & 0xffffffff80000000) != 0x0) {
                                                                                            r2 = *r2;
                                                                                    }
                                                                                    r0 = [var_80 spriteFrameByName:[NSString stringWithUTF8String:r2]];
                                                                                    if (r0 != 0x0) {
                                                                                            r25 = r0;
                                                                                            r0 = [CCAnimationFrame alloc];
                                                                                            v0 = v8;
                                                                                            r25 = [r0 initWithSpriteFrame:r25 delayUnits:0x0 userInfo:r4];
                                                                                            [var_88 addObject:r25];
                                                                                            [r25 release];
                                                                                    }
                                                                            }
                                                                            r19 = r19 + 0x10;
                                                                    } while (r21 != r19);
                                                            }
                                                            [var_88 count];
                                                            sub_1002c0ac0(&var_78, "delay");
                                                            r0 = sub_1002c1520(r22, &var_78);
                                                            r23 = r0;
                                                            if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
                                                                    operator delete(var_78);
                                                            }
                                                            r22 = r20 + 0x10;
                                                            if (r23 != 0x0) {
                                                                    sub_1009cafd0(r23 + 0x28);
                                                                    v9 = v0;
                                                            }
                                                            r0 = [CCAnimation alloc];
                                                            v0 = v9;
                                                            r23 = [r0 initWithAnimationFrames:var_88 delayPerUnit:0x1 loops:r4];
                                                            r24 = [CCAnimationCache sharedAnimationCache];
                                                            if ((sign_extend_64(*(int8_t *)(r22 + 0x17)) & 0xffffffff80000000) != 0x0) {
                                                                    r22 = *r22;
                                                            }
                                                            [NSString stringWithUTF8String:r2];
                                                            [r24 addAnimation:r2 name:r3];
                                                            [var_88 release];
                                                            [r23 release];
                                                    }
                                            }
                                    }
                            }
                    }
                    r20 = *r20;
            } while (r20 != 0x0);
    }
    return;
}

-(void)parseVersion2:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x260;
    var_260 = arg2;
    r19 = [arg2 allKeys];
    var_1F8 = [CCSpriteFrameCache sharedSpriteFrameCache];
    var_1A0 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2B0 = r19;
    var_220 = r1;
    r0 = objc_msgSend(r19, r1);
    var_250 = r0;
    if (r0 != 0x0) {
            var_268 = *var_1A0;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_1A0 != var_268) {
                                    objc_enumerationMutation(var_2B0);
                            }
                            r20 = *(var_1A8 + r19 * 0x8);
                            r0 = [var_260 objectForKey:r20];
                            r23 = r0;
                            r22 = [r0 objectForKey:@"loops"];
                            r21 = [[r23 objectForKey:@"restoreOriginalFrame"] boolValue];
                            r0 = [r23 objectForKey:@"frames"];
                            if (r0 != 0x0) {
                                    r26 = r0;
                                    var_248 = r23;
                                    var_240 = r22;
                                    var_234 = r21;
                                    var_230 = r20;
                                    stack[-568] = r19;
                                    var_210 = [[NSMutableArray alloc] initWithCapacity:[r26 count]];
                                    v0 = 0x0;
                                    var_1E0 = q0;
                                    r0 = objc_msgSend(r26, var_220);
                                    if (r0 != 0x0) {
                                            r25 = r0;
                                            r19 = *var_1E0;
                                            var_218 = r26;
                                            do {
                                                    r27 = 0x0;
                                                    do {
                                                            if (*var_1E0 != r19) {
                                                                    objc_enumerationMutation(var_218);
                                                            }
                                                            r23 = *(var_1E8 + r27 * 0x8);
                                                            r0 = [var_1F8 spriteFrameByName:[r23 objectForKey:@"spriteframe"]];
                                                            if (r0 != 0x0) {
                                                                    r21 = r0;
                                                                    [[r23 objectForKey:@"delayUnits"] floatValue];
                                                                    r23 = [r23 objectForKey:@"notification"];
                                                                    r0 = [CCAnimationFrame alloc];
                                                                    v0 = v0;
                                                                    r21 = [r0 initWithSpriteFrame:r21 delayUnits:r23 userInfo:0x10];
                                                                    [var_210 addObject:r21];
                                                                    [r21 release];
                                                            }
                                                            r27 = r27 + 0x1;
                                                    } while (r27 < r25);
                                                    r0 = objc_msgSend(var_218, var_220);
                                                    r25 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    [[var_248 objectForKey:@"delayPerUnit"] floatValue];
                                    v8 = v0;
                                    r20 = [CCAnimation alloc];
                                    r0 = var_240;
                                    if (r0 != 0x0) {
                                            [r0 intValue];
                                    }
                                    var_2A8 = @selector(addAnimation:name:);
                                    var_288 = @selector(initWithAnimationFrames:delayPerUnit:loops:);
                                    var_290 = @selector(release);
                                    var_298 = @selector(setRestoreOriginalFrame:);
                                    var_2A0 = @selector(sharedAnimationCache);
                                    r19 = stack[-568];
                                    asm { sxtw       x3, w0 };
                                    objc_msgSend(r20, var_288);
                                    objc_msgSend(var_210, var_290);
                                    objc_msgSend(r20, var_298);
                                    objc_msgSend(objc_msgSend(@class(CCAnimationCache), var_2A0), var_2A8);
                                    objc_msgSend(r20, var_290);
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < var_250);
                    r0 = objc_msgSend(var_2B0, var_220);
                    var_250 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)addAnimationsWithValue:(struct Value *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x80;
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
    if (*(int32_t *)(r2 + 0x8) != 0x6) goto .l1;

loc_1002c1118:
    r19 = r0;
    r21 = *r2;
    sub_1002c0ac0(&var_68, "animations");
    r0 = sub_1002c1520(r21, &var_68);
    r20 = r0;
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) goto loc_1002c1150;

loc_1002c1148:
    if (r20 != 0x0) goto loc_1002c115c;

.l1:
    return;

loc_1002c115c:
    if (*(int32_t *)(r20 + 0x30) != 0x6) goto .l1;

loc_1002c1168:
    r20 = *(r20 + 0x28);
    sub_1002c0ac0(&var_68, "properties");
    r0 = sub_1002c1520(r21, &var_68);
    r21 = r0;
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) goto loc_1002c119c;

loc_1002c1194:
    if (r21 != 0x0) goto loc_1002c11a8;

loc_1002c12f8:
    r1 = @selector(parseVersion1WithStringMap:);
    goto loc_1002c1300;

loc_1002c1300:
    objc_msgSend(r19, r1);
    return;

loc_1002c11a8:
    if (*(int32_t *)(r21 + 0x30) != 0x6) goto .l1;

loc_1002c11b4:
    r22 = *(r21 + 0x28);
    sub_1002c0ac0(&var_68, "format");
    r0 = sub_1002c1520(r22, &var_68);
    r21 = r0;
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(var_68);
    }
    if (r21 != 0x0) {
            r21 = sub_1009caf88(r21 + 0x28, 0x1);
    }
    else {
            r21 = 0x1;
    }
    sub_1002c0ac0(&var_68, "spritesheets");
    r0 = sub_1002c1520(r22, &var_68);
    r22 = r0;
    var_70 = r21;
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(var_68);
    }
    if (r22 == 0x0) goto loc_1002c12e4;

loc_1002c123c:
    if (*(int32_t *)(r22 + 0x30) != 0x5) goto .l1;

loc_1002c1248:
    r8 = *(r22 + 0x28);
    r26 = *(int128_t *)r8;
    r27 = *(int128_t *)(r8 + 0x8);
    if (r26 != r27) {
            do {
                    if (*(int32_t *)(r26 + 0x8) == 0x4) {
                            r25 = [CCSpriteFrameCache sharedSpriteFrameCache];
                            r2 = 0x1011e6e18;
                            if (*(int32_t *)(r26 + 0x8) == 0x4) {
                                    r2 = *r26;
                            }
                            if ((sign_extend_64(*(int8_t *)(r2 + 0x17)) & 0xffffffff80000000) != 0x0) {
                                    r2 = *r2;
                            }
                            [NSString stringWithUTF8String:r2];
                            [r25 addSpriteFramesWithFile:r2];
                    }
                    r26 = r26 + 0x10;
            } while (r27 != r26);
    }
    goto loc_1002c12e4;

loc_1002c12e4:
    r8 = var_70;
    if (r8 == 0x2) goto loc_1002c132c;

loc_1002c12f0:
    if (r8 != 0x1) goto .l1;
    goto loc_1002c12f8;

loc_1002c132c:
    r1 = @selector(parseVersion2WithStringMap:);
    goto loc_1002c1300;

loc_1002c119c:
    operator delete(var_68);
    if (r21 == 0x0) goto loc_1002c12f8;
    goto loc_1002c11a8;

loc_1002c1150:
    operator delete(var_68);
    if (r20 == 0x0) goto .l1;
}

-(void)addAnimationsWithFile:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            if (r21 != 0x0) {
                    r1 = [r21 UTF8String];
            }
            else {
                    r1 = "";
            }
            sub_1002c0ac0(&var_50, r1);
            r0 = sub_10042ccfc(&var_50);
            if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_50);
            }
            if ([[CCConfiguration sharedConfiguration] useNewPlistSerialization] != 0x0) {
                    r0 = sub_1003167cc(&var_38, 0x0);
                    [r19 addAnimationsWithValue:&var_50];
                    sub_1009ca77c(&var_50);
                    r21 = 0x0;
                    r20 = 0x0;
            }
            else {
                    r0 = sub_100316658(&var_38, 0x0);
                    r20 = r0;
                    r21 = 0x1;
            }
            if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_38);
            }
            if ((r21 & 0x1) != 0x0) {
                    [r19 addAnimationsWithDictionary:r20];
            }
    }
    else {
            r20 = [NSDictionary dictionaryWithContentsOfFile:[[CCFileUtils sharedFileUtils] fullPathForFilename:r21]];
            [r19 addAnimationsWithDictionary:r20];
    }
    return;
}

-(void)parseVersion2WithStringMap:(struct StringMap *)arg2 {
    r31 = r31 - 0x110;
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
    var_98 = [CCSpriteFrameCache sharedSpriteFrameCache];
    r24 = *(arg2 + 0x10);
    if (r24 == 0x0) goto .l1;

loc_1002c0c14:
    do {
            if (*(int32_t *)(r24 + 0x30) == 0x6) {
                    r23 = *(r24 + 0x28);
                    sub_1002c0ac0(&var_88, "frames");
                    r0 = sub_1002c1520(r23, &var_88);
                    r28 = r0;
                    if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                            if (r28 != 0x0) {
                                    if (*(int32_t *)(r28 + 0x30) == 0x5) {
                                            r20 = *(r28 + 0x28);
                                            if (*(int128_t *)r20 != *(int128_t *)(r20 + 0x8)) {
                                                    r26 = [[NSMutableArray alloc] initWithCapacity:r2];
                                                    r19 = *(int128_t *)r20;
                                                    r25 = *(int128_t *)(r20 + 0x8);
                                                    if (r19 != r25) {
                                                            do {
                                                                    if (*(int32_t *)(r19 + 0x8) == 0x6) {
                                                                            r20 = 0x1011e6e48;
                                                                            if (*(int32_t *)(r28 + 0x30) == 0x6) {
                                                                                    r20 = *(r28 + 0x28);
                                                                            }
                                                                            sub_1002c0ac0(&var_88, "spriteframe");
                                                                            r0 = sub_1002c1520(r20, &var_88);
                                                                            r20 = r0;
                                                                            if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                                                    if (r20 != 0x0) {
                                                                                            if (*(int32_t *)(r20 + 0x30) == 0x4) {
                                                                                                    r2 = *(r20 + 0x28);
                                                                                                    if ((sign_extend_64(*(int8_t *)(r2 + 0x17)) & 0xffffffff80000000) != 0x0) {
                                                                                                            r2 = *r2;
                                                                                                    }
                                                                                                    r0 = [var_98 spriteFrameByName:[NSString stringWithUTF8String:r2]];
                                                                                                    if (r0 != 0x0) {
                                                                                                            r20 = r0;
                                                                                                            sub_1002c0ac0(&var_88, "delayUnits");
                                                                                                            r0 = sub_1002c1520(r23, &var_88);
                                                                                                            r22 = r0;
                                                                                                            if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                                                                                    if (r22 != 0x0) {
                                                                                                                            sub_1009cafd0(r22 + 0x28);
                                                                                                                            v8 = v0;
                                                                                                                    }
                                                                                                            }
                                                                                                            else {
                                                                                                                    operator delete(var_88);
                                                                                                                    if (r22 != 0x0) {
                                                                                                                            sub_1009cafd0(r22 + 0x28);
                                                                                                                            v8 = v0;
                                                                                                                    }
                                                                                                            }
                                                                                                            sub_1002c0ac0(&var_88, "notification");
                                                                                                            r0 = sub_1002c1520(r23, &var_88);
                                                                                                            r28 = r0;
                                                                                                            if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                                                                                    if (r28 != 0x0) {
                                                                                                                            sub_1009925cc();
                                                                                                                            r22 = [NSPropertyListSerialization propertyListWithData:[NSData dataWithBytesNoCopy:var_80 length:stack[-136] freeWhenDone:0x0] options:0x0 format:0x0 error:0x0];
                                                                                                                            sub_1009d0b44(&var_88);
                                                                                                                    }
                                                                                                                    else {
                                                                                                                            r22 = 0x0;
                                                                                                                    }
                                                                                                            }
                                                                                                            else {
                                                                                                                    operator delete(var_88);
                                                                                                                    if (r28 == 0x0) {
                                                                                                                            r22 = 0x0;
                                                                                                                    }
                                                                                                                    else {
                                                                                                                            sub_1009925cc();
                                                                                                                            r22 = [NSPropertyListSerialization propertyListWithData:[NSData dataWithBytesNoCopy:var_80 length:stack[-136] freeWhenDone:0x0] options:0x0 format:0x0 error:0x0];
                                                                                                                            sub_1009d0b44(&var_88);
                                                                                                                    }
                                                                                                            }
                                                                                                            r0 = [CCAnimationFrame alloc];
                                                                                                            v0 = v8;
                                                                                                            r20 = [r0 initWithSpriteFrame:r20 delayUnits:r22 userInfo:r4];
                                                                                                            [r26 addObject:r20];
                                                                                                            [r20 release];
                                                                                                    }
                                                                                            }
                                                                                    }
                                                                            }
                                                                            else {
                                                                                    operator delete(var_88);
                                                                                    if (r20 != 0x0) {
                                                                                            if (*(int32_t *)(r20 + 0x30) == 0x4) {
                                                                                                    r2 = *(r20 + 0x28);
                                                                                                    if ((sign_extend_64(*(int8_t *)(r2 + 0x17)) & 0xffffffff80000000) != 0x0) {
                                                                                                            r2 = *r2;
                                                                                                    }
                                                                                                    r0 = [var_98 spriteFrameByName:[NSString stringWithUTF8String:r2]];
                                                                                                    if (r0 != 0x0) {
                                                                                                            r20 = r0;
                                                                                                            sub_1002c0ac0(&var_88, "delayUnits");
                                                                                                            r0 = sub_1002c1520(r23, &var_88);
                                                                                                            r22 = r0;
                                                                                                            if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                                                                                    if (r22 != 0x0) {
                                                                                                                            sub_1009cafd0(r22 + 0x28);
                                                                                                                            v8 = v0;
                                                                                                                    }
                                                                                                            }
                                                                                                            else {
                                                                                                                    operator delete(var_88);
                                                                                                                    if (r22 != 0x0) {
                                                                                                                            sub_1009cafd0(r22 + 0x28);
                                                                                                                            v8 = v0;
                                                                                                                    }
                                                                                                            }
                                                                                                            sub_1002c0ac0(&var_88, "notification");
                                                                                                            r0 = sub_1002c1520(r23, &var_88);
                                                                                                            r28 = r0;
                                                                                                            if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                                                                                    if (r28 != 0x0) {
                                                                                                                            sub_1009925cc();
                                                                                                                            r22 = [NSPropertyListSerialization propertyListWithData:[NSData dataWithBytesNoCopy:var_80 length:stack[-136] freeWhenDone:0x0] options:0x0 format:0x0 error:0x0];
                                                                                                                            sub_1009d0b44(&var_88);
                                                                                                                    }
                                                                                                                    else {
                                                                                                                            r22 = 0x0;
                                                                                                                    }
                                                                                                            }
                                                                                                            else {
                                                                                                                    operator delete(var_88);
                                                                                                                    if (r28 == 0x0) {
                                                                                                                            r22 = 0x0;
                                                                                                                    }
                                                                                                                    else {
                                                                                                                            sub_1009925cc();
                                                                                                                            r22 = [NSPropertyListSerialization propertyListWithData:[NSData dataWithBytesNoCopy:var_80 length:stack[-136] freeWhenDone:0x0] options:0x0 format:0x0 error:0x0];
                                                                                                                            sub_1009d0b44(&var_88);
                                                                                                                    }
                                                                                                            }
                                                                                                            r0 = [CCAnimationFrame alloc];
                                                                                                            v0 = v8;
                                                                                                            r20 = [r0 initWithSpriteFrame:r20 delayUnits:r22 userInfo:r4];
                                                                                                            [r26 addObject:r20];
                                                                                                            [r20 release];
                                                                                                    }
                                                                                            }
                                                                                    }
                                                                            }
                                                                    }
                                                                    r19 = r19 + 0x10;
                                                            } while (r25 != r19);
                                                    }
                                                    [r26 count];
                                                    sub_1002c0ac0(&var_88, "delayPerUnit");
                                                    r0 = sub_1002c1520(r23, &var_88);
                                                    r19 = r0;
                                                    if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                            if (r19 != 0x0) {
                                                                    sub_1009cafd0(r19 + 0x28);
                                                                    v8 = v0;
                                                            }
                                                    }
                                                    else {
                                                            operator delete(var_88);
                                                            if (r19 != 0x0) {
                                                                    sub_1009cafd0(r19 + 0x28);
                                                                    v8 = v0;
                                                            }
                                                    }
                                                    sub_1002c0ac0(&var_88, "loops");
                                                    r0 = sub_1002c1520(r23, &var_88);
                                                    r19 = r0;
                                                    if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                            if (r19 != 0x0) {
                                                                    r20 = sub_1009caf88(r19 + 0x28, 0x1);
                                                            }
                                                            else {
                                                                    r20 = 0x1;
                                                            }
                                                    }
                                                    else {
                                                            operator delete(var_88);
                                                            if (r19 == 0x0) {
                                                                    r20 = 0x1;
                                                            }
                                                            else {
                                                                    r20 = sub_1009caf88(r19 + 0x28, 0x1);
                                                            }
                                                    }
                                                    sub_1002c0ac0(&var_88, "restoreOriginalFrame");
                                                    r0 = sub_1002c1520(r23, &var_88);
                                                    r21 = r0;
                                                    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_88);
                                                    }
                                                    r19 = r24 + 0x10;
                                                    if (r21 != 0x0) {
                                                            r21 = sub_1009cb068(r21 + 0x28, 0x0);
                                                    }
                                                    r0 = [CCAnimation alloc];
                                                    v0 = v8;
                                                    r20 = [r0 initWithAnimationFrames:r2 delayPerUnit:r3 loops:r4];
                                                    r22 = @selector(release);
                                                    objc_msgSend(r26, r22);
                                                    [r20 setRestoreOriginalFrame:r2];
                                                    r21 = [CCAnimationCache sharedAnimationCache];
                                                    if ((sign_extend_64(*(int8_t *)(r19 + 0x17)) & 0xffffffff80000000) != 0x0) {
                                                            r19 = *r19;
                                                    }
                                                    [NSString stringWithUTF8String:r2];
                                                    [r21 addAnimation:r2 name:r3];
                                                    objc_msgSend(r20, r22);
                                            }
                                    }
                            }
                    }
                    else {
                            operator delete(var_88);
                            if (r28 != 0x0) {
                                    if (*(int32_t *)(r28 + 0x30) == 0x5) {
                                            r20 = *(r28 + 0x28);
                                            if (*(int128_t *)r20 != *(int128_t *)(r20 + 0x8)) {
                                                    r26 = [[NSMutableArray alloc] initWithCapacity:r2];
                                                    r19 = *(int128_t *)r20;
                                                    r25 = *(int128_t *)(r20 + 0x8);
                                                    if (r19 != r25) {
                                                            do {
                                                                    if (*(int32_t *)(r19 + 0x8) == 0x6) {
                                                                            r20 = 0x1011e6e48;
                                                                            if (*(int32_t *)(r28 + 0x30) == 0x6) {
                                                                                    r20 = *(r28 + 0x28);
                                                                            }
                                                                            sub_1002c0ac0(&var_88, "spriteframe");
                                                                            r0 = sub_1002c1520(r20, &var_88);
                                                                            r20 = r0;
                                                                            if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                                                    if (r20 != 0x0) {
                                                                                            if (*(int32_t *)(r20 + 0x30) == 0x4) {
                                                                                                    r2 = *(r20 + 0x28);
                                                                                                    if ((sign_extend_64(*(int8_t *)(r2 + 0x17)) & 0xffffffff80000000) != 0x0) {
                                                                                                            r2 = *r2;
                                                                                                    }
                                                                                                    r0 = [var_98 spriteFrameByName:[NSString stringWithUTF8String:r2]];
                                                                                                    if (r0 != 0x0) {
                                                                                                            r20 = r0;
                                                                                                            sub_1002c0ac0(&var_88, "delayUnits");
                                                                                                            r0 = sub_1002c1520(r23, &var_88);
                                                                                                            r22 = r0;
                                                                                                            if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                                                                                    if (r22 != 0x0) {
                                                                                                                            sub_1009cafd0(r22 + 0x28);
                                                                                                                            v8 = v0;
                                                                                                                    }
                                                                                                            }
                                                                                                            else {
                                                                                                                    operator delete(var_88);
                                                                                                                    if (r22 != 0x0) {
                                                                                                                            sub_1009cafd0(r22 + 0x28);
                                                                                                                            v8 = v0;
                                                                                                                    }
                                                                                                            }
                                                                                                            sub_1002c0ac0(&var_88, "notification");
                                                                                                            r0 = sub_1002c1520(r23, &var_88);
                                                                                                            r28 = r0;
                                                                                                            if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                                                                                    if (r28 != 0x0) {
                                                                                                                            sub_1009925cc();
                                                                                                                            r22 = [NSPropertyListSerialization propertyListWithData:[NSData dataWithBytesNoCopy:var_80 length:stack[-136] freeWhenDone:0x0] options:0x0 format:0x0 error:0x0];
                                                                                                                            sub_1009d0b44(&var_88);
                                                                                                                    }
                                                                                                                    else {
                                                                                                                            r22 = 0x0;
                                                                                                                    }
                                                                                                            }
                                                                                                            else {
                                                                                                                    operator delete(var_88);
                                                                                                                    if (r28 == 0x0) {
                                                                                                                            r22 = 0x0;
                                                                                                                    }
                                                                                                                    else {
                                                                                                                            sub_1009925cc();
                                                                                                                            r22 = [NSPropertyListSerialization propertyListWithData:[NSData dataWithBytesNoCopy:var_80 length:stack[-136] freeWhenDone:0x0] options:0x0 format:0x0 error:0x0];
                                                                                                                            sub_1009d0b44(&var_88);
                                                                                                                    }
                                                                                                            }
                                                                                                            r0 = [CCAnimationFrame alloc];
                                                                                                            v0 = v8;
                                                                                                            r20 = [r0 initWithSpriteFrame:r20 delayUnits:r22 userInfo:r4];
                                                                                                            [r26 addObject:r20];
                                                                                                            [r20 release];
                                                                                                    }
                                                                                            }
                                                                                    }
                                                                            }
                                                                            else {
                                                                                    operator delete(var_88);
                                                                                    if (r20 != 0x0) {
                                                                                            if (*(int32_t *)(r20 + 0x30) == 0x4) {
                                                                                                    r2 = *(r20 + 0x28);
                                                                                                    if ((sign_extend_64(*(int8_t *)(r2 + 0x17)) & 0xffffffff80000000) != 0x0) {
                                                                                                            r2 = *r2;
                                                                                                    }
                                                                                                    r0 = [var_98 spriteFrameByName:[NSString stringWithUTF8String:r2]];
                                                                                                    if (r0 != 0x0) {
                                                                                                            r20 = r0;
                                                                                                            sub_1002c0ac0(&var_88, "delayUnits");
                                                                                                            r0 = sub_1002c1520(r23, &var_88);
                                                                                                            r22 = r0;
                                                                                                            if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                                                                                    if (r22 != 0x0) {
                                                                                                                            sub_1009cafd0(r22 + 0x28);
                                                                                                                            v8 = v0;
                                                                                                                    }
                                                                                                            }
                                                                                                            else {
                                                                                                                    operator delete(var_88);
                                                                                                                    if (r22 != 0x0) {
                                                                                                                            sub_1009cafd0(r22 + 0x28);
                                                                                                                            v8 = v0;
                                                                                                                    }
                                                                                                            }
                                                                                                            sub_1002c0ac0(&var_88, "notification");
                                                                                                            r0 = sub_1002c1520(r23, &var_88);
                                                                                                            r28 = r0;
                                                                                                            if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                                                                                    if (r28 != 0x0) {
                                                                                                                            sub_1009925cc();
                                                                                                                            r22 = [NSPropertyListSerialization propertyListWithData:[NSData dataWithBytesNoCopy:var_80 length:stack[-136] freeWhenDone:0x0] options:0x0 format:0x0 error:0x0];
                                                                                                                            sub_1009d0b44(&var_88);
                                                                                                                    }
                                                                                                                    else {
                                                                                                                            r22 = 0x0;
                                                                                                                    }
                                                                                                            }
                                                                                                            else {
                                                                                                                    operator delete(var_88);
                                                                                                                    if (r28 == 0x0) {
                                                                                                                            r22 = 0x0;
                                                                                                                    }
                                                                                                                    else {
                                                                                                                            sub_1009925cc();
                                                                                                                            r22 = [NSPropertyListSerialization propertyListWithData:[NSData dataWithBytesNoCopy:var_80 length:stack[-136] freeWhenDone:0x0] options:0x0 format:0x0 error:0x0];
                                                                                                                            sub_1009d0b44(&var_88);
                                                                                                                    }
                                                                                                            }
                                                                                                            r0 = [CCAnimationFrame alloc];
                                                                                                            v0 = v8;
                                                                                                            r20 = [r0 initWithSpriteFrame:r20 delayUnits:r22 userInfo:r4];
                                                                                                            [r26 addObject:r20];
                                                                                                            [r20 release];
                                                                                                    }
                                                                                            }
                                                                                    }
                                                                            }
                                                                    }
                                                                    r19 = r19 + 0x10;
                                                            } while (r25 != r19);
                                                    }
                                                    [r26 count];
                                                    sub_1002c0ac0(&var_88, "delayPerUnit");
                                                    r0 = sub_1002c1520(r23, &var_88);
                                                    r19 = r0;
                                                    if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                            if (r19 != 0x0) {
                                                                    sub_1009cafd0(r19 + 0x28);
                                                                    v8 = v0;
                                                            }
                                                    }
                                                    else {
                                                            operator delete(var_88);
                                                            if (r19 != 0x0) {
                                                                    sub_1009cafd0(r19 + 0x28);
                                                                    v8 = v0;
                                                            }
                                                    }
                                                    sub_1002c0ac0(&var_88, "loops");
                                                    r0 = sub_1002c1520(r23, &var_88);
                                                    r19 = r0;
                                                    if ((sign_extend_64(var_71) & 0xffffffff80000000) == 0x0) {
                                                            if (r19 != 0x0) {
                                                                    r20 = sub_1009caf88(r19 + 0x28, 0x1);
                                                            }
                                                            else {
                                                                    r20 = 0x1;
                                                            }
                                                    }
                                                    else {
                                                            operator delete(var_88);
                                                            if (r19 == 0x0) {
                                                                    r20 = 0x1;
                                                            }
                                                            else {
                                                                    r20 = sub_1009caf88(r19 + 0x28, 0x1);
                                                            }
                                                    }
                                                    sub_1002c0ac0(&var_88, "restoreOriginalFrame");
                                                    r0 = sub_1002c1520(r23, &var_88);
                                                    r21 = r0;
                                                    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                                                            operator delete(var_88);
                                                    }
                                                    r19 = r24 + 0x10;
                                                    if (r21 != 0x0) {
                                                            r21 = sub_1009cb068(r21 + 0x28, 0x0);
                                                    }
                                                    r0 = [CCAnimation alloc];
                                                    v0 = v8;
                                                    r20 = [r0 initWithAnimationFrames:r2 delayPerUnit:r3 loops:r4];
                                                    r22 = @selector(release);
                                                    objc_msgSend(r26, r22);
                                                    [r20 setRestoreOriginalFrame:r2];
                                                    r21 = [CCAnimationCache sharedAnimationCache];
                                                    if ((sign_extend_64(*(int8_t *)(r19 + 0x17)) & 0xffffffff80000000) != 0x0) {
                                                            r19 = *r19;
                                                    }
                                                    [NSString stringWithUTF8String:r2];
                                                    [r21 addAnimation:r2 name:r3];
                                                    objc_msgSend(r20, r22);
                                            }
                                    }
                            }
                    }
            }
            r24 = *r24;
    } while (r24 != 0x0);
    return;

.l1:
    return;
}

@end