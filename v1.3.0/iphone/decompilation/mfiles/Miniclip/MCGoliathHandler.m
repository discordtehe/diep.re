@implementation MCGoliathHandler

+(void *)sharedMCGoliathHandler {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d0a40;
    if (r0 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            *0x1011d0a40 = r0;
    }
    return r0;
}

+(void)releaseSharedMCGoliathHandler {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d0a40 != 0x0) {
            [*0x1011d0a40 release];
            *0x1011d0a40 = 0x0;
    }
    return;
}

+(bool)isMCGoliathHandlerInitialized {
    r0 = self;
    if (*qword_1011d0a40 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
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
            *(r19 + 0x128) = 0x0;
            *(int16_t *)(r19 + 0x130) = 0x0;
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    }
    r0 = r19;
    return r0;
}

-(void)setCountryAndCallClientInit:(void *)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 UTF8String];
    r0 = sub_100085738(&var_28, r0);
    r20 = r19 + 0x110;
    if ((sign_extend_64(*(int8_t *)(r19 + 0x127)) & 0xffffffff80000000) != 0x0) {
            operator delete(*r20);
    }
    *(r20 + 0x10) = var_18;
    *(int128_t *)r20 = var_28;
    *(int8_t *)(r19 + 0x131) = 0x1;
    [r19 clientInit];
    return;
}

-(void)interstitialStep:(int)arg2 provider:(void *)arg3 {
    [self postEvent:@"interstitial_funnel" content:[NSDictionary dictionaryWithObjectsAndKeys:[self getStepNameForType:arg2]]];
    return;
}

-(void)session {
    r0 = self;
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(r0 + 0x130) != 0x0) {
            r19 = r0;
            *(int8_t *)(r0 + 0x130) = 0x0;
            r20 = time(0x0);
            r21 = time(0x0) - *(int32_t *)(r19 + 0x128);
            r20 = [NSNumber numberWithInt:r20];
            r0 = @class(NSNumber);
            [r0 numberWithInt:r21];
            [r19 postEvent:@"session" content:[NSDictionary dictionaryWithObjectsAndKeys:r20]];
    }
    return;
}

-(void)clientInit {
    r31 = r31 - 0x1a0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(self + 0x8) == 0x0) {
            [r19 start];
    }
    if (*(int8_t *)(r19 + 0x130) == 0x0) {
            if (*(int8_t *)(r19 + 0x131) != 0x0) {
                    *(int8_t *)(r19 + 0x130) = 0x1;
                    sub_100085738(r29 - 0x48, [[[[UIDevice currentDevice] identifierForVendor] UUIDString] UTF8String]);
                    r20 = r19 + 0x138;
                    r8 = *(int8_t *)(r19 + 0x14f);
                    r10 = *(r19 + 0x140);
                    if (sign_extend_64(r8) < 0x0) {
                            if (!CPU_FLAGS & L) {
                                    r8 = r8;
                            }
                            else {
                                    r8 = r10;
                            }
                    }
                    if (r8 == 0x0 && std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() == 0x0) {
                            sub_1005cbb90();
                            time(0x0);
                            sub_100085738(r29 - 0x60, [[NSString stringWithFormat:r2] UTF8String]);
                    }
                    else {
                            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
                    }
                    if ((sign_extend_64(*(int8_t *)(r19 + 0x14f)) & 0xffffffff80000000) != 0x0) {
                            operator delete(*r20);
                    }
                    *(r20 + 0x10) = var_50;
                    *(int128_t *)r20 = var_60;
                    *(r19 + 0x128) = time(0x0);
                    sub_100086930(&stack[-392], r19 + 0x10);
                    (*(*r21 + 0x10))(r21, &stack[-392], r29 - 0x48, r20);
                    sub_100086c38(&stack[-392]);
                    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_48);
                    }
            }
    }
    return;
}

-(void)gamePlayed:(void *)arg2 {
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
    r20 = arg2;
    r19 = self;
    r24 = time(0x0);
    r0 = *0x1011dea68;
    r23 = *(int128_t *)(r0 + 0x24ca7c);
    r22 = *(int128_t *)(r0 + 0x24ca80);
    r21 = *(int32_t *)(r0 + 0x24ca90);
    sub_100018310(r0);
    sub_100018328(*0x1011dea68);
    if (r21 >= 0x1) {
            r24 = [NSNumber numberWithInt:r24];
            [NSNumber numberWithInt:r23];
            [NSNumber numberWithInt:r22];
            r0 = @class(NSNumber);
            [r0 numberWithInt:r21];
            r0 = [NSMutableDictionary dictionaryWithObjectsAndKeys:r24];
            [r0 addEntriesFromDictionary:r20];
            [r19 postEvent:@"game_played" content:r0];
    }
    return;
}

-(void)postEvent:(void *)arg2 content:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [self setGlobalParameters];
    r19 = *(self + 0x8);
    r0 = [arg2 UTF8String];
    r0 = sub_100085738(&var_38, r0);
    r0 = sub_1005d8944();
    r0 = [r0 UTF8String];
    r0 = sub_100085738(&var_50, r0);
    sub_1005a7618(r19);
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
            operator delete(var_38);
    }
    return;
}

-(void)start {
    r31 = r31 - 0x130;
    var_20 = r28;
    stack[-40] = r27;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    sub_100085738(&var_A0, "674");
    sub_100085738(&var_B8, "1affc90e-3328-4c48-ae52-d50004b86852");
    sub_100085738(&var_D0, "v1.2.1");
    sub_100085738(&var_E8, "https://goliath.bi.miniclippt.com");
    sub_100085738(&var_100, "6d189788-7233-11e9-b312-06a2aa13cf6c");
    sub_100085738(&var_118, "");
    var_30 = r29 - 0x48;
    r0 = sub_1005a7194(&var_A0, &var_B8, &var_D0, &var_E8, &var_100, &var_118, r29 - 0x48, r29 - 0x68);
    *(self + 0x8) = r0;
    r0 = r29 - 0x68;
    if (r29 - 0x68 == r0) goto loc_1000859a8;

loc_100085998:
    if (r0 == 0x0) goto loc_1000859b4;

loc_10008599c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1000859b0;

loc_1000859b0:
    (r8)();
    goto loc_1000859b4;

loc_1000859b4:
    r0 = var_30;
    if (r29 - 0x48 == r0) goto loc_1000859d4;

loc_1000859c4:
    if (r0 == 0x0) goto loc_1000859e0;

loc_1000859c8:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1000859dc;

loc_1000859dc:
    (r8)();
    goto loc_1000859e0;

loc_1000859e0:
    if ((sign_extend_64(var_101) & 0xffffffff80000000) != 0x0) {
            operator delete(var_118);
    }
    if ((sign_extend_64(var_E9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_100);
    }
    if ((sign_extend_64(var_D1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_E8);
    }
    if ((sign_extend_64(var_B9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D0);
    }
    if ((sign_extend_64(var_A1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_B8);
    }
    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A0);
    }
    sub_1005a7bc0(r29 - 0x88);
    r0 = r29 - 0x88;
    if (r29 - 0x88 == r0) goto loc_100085a80;

loc_100085a70:
    if (r0 == 0x0) goto loc_100085a8c;

loc_100085a74:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100085a88;

loc_100085a88:
    (r8)();
    goto loc_100085a8c;

loc_100085a8c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100085a80:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100085a88;

loc_1000859d4:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1000859dc;

loc_1000859a8:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1000859b0;
}

-(void)postConfigurationUpdate:(void *)arg2 withOldVersion:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_100085738(&var_38, [arg2 UTF8String]);
    sub_100085738(&var_50, [arg3 UTF8String]);
    r0 = sub_1005a7850(r19, &var_38, &var_50);
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
            operator delete(var_38);
    }
    return;
}

-(void *)getStepNameForType:(int)arg2 {
    r8 = arg2 - 0x1;
    if (r8 <= 0x3) {
            r0 = (0x1000865f0 + *(int8_t *)(0x100b9f671 + r8) * 0x4)();
    }
    else {
            r0 = @"request";
    }
    return r0;
}

-(void)setGlobalParameters {
    r31 = r31 - 0xb0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 identifierForVendor];
    r0 = [r0 UUIDString];
    r0 = [r0 UTF8String];
    r0 = sub_100085738(&var_60, r0);
    sub_100085738(&var_78, "user_id");
    r0 = sub_100086f20(r29 - 0x48, &var_78, 0x100b9f731, &var_90);
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    r21 = r19 + 0x138;
    r8 = *(int8_t *)(r19 + 0x14f);
    r10 = *(r19 + 0x140);
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r8 = r8;
            }
            else {
                    r8 = r10;
            }
    }
    if (r8 == 0x0 && std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare() == 0x0) {
            sub_1005cbb90();
            time(0x0);
            r0 = [NSString stringWithFormat:r2];
            r0 = [r0 UTF8String];
            r0 = sub_100085738(&var_78, r0);
    }
    else {
            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    }
    sub_100085738(&var_90, "session_id");
    r0 = sub_100086f20(r29 - 0x48, &var_90, 0x100b9f731, r29 - 0x28);
    r20 = r0 + 0x38;
    if ((sign_extend_64(*(int8_t *)(r0 + 0x4f)) & 0xffffffff80000000) != 0x0) {
            operator delete(*r20);
    }
    *(r20 + 0x10) = var_68;
    *(int128_t *)r20 = var_78;
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
            if ((sign_extend_64(0x0) & 0xffffffff80000000) != 0x0) {
                    operator delete(0x0);
            }
    }
    sub_1005a75e8(*(r19 + 0x8), r29 - 0x48);
    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
            operator delete(var_60);
    }
    sub_10002be7c(r29 - 0x48);
    return;
}

-(void).cxx_destruct {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ((sign_extend_64(*(int8_t *)(self + 0x14f)) & 0xffffffff80000000) != 0x0) {
            operator delete(*(r19 + 0x138));
    }
    sub_100086c38(r19 + 0x10);
    return;
}

-(void *).cxx_construct {
    r31 = r31 - 0x170;
    var_20 = r28;
    stack[-40] = r27;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    sub_100085738(&saved_fp - 0x38, "");
    sub_100085738(&saved_fp - 0x50, "");
    sub_100085738(&saved_fp - 0x68, "");
    sub_100085738(&saved_fp - 0x80, "");
    sub_100085738(&saved_fp - 0x98, "");
    sub_100085738(&var_B0, "");
    sub_100085738(&var_C8, "");
    sub_100085738(&var_E0, "");
    sub_100085738(&var_F8, "");
    sub_100085738(&var_128, "");
    r0 = sub_1005a782c(r19 + 0x10, 0xffffffffffffffff, &saved_fp - 0x38, &saved_fp - 0x50, &saved_fp - 0x68, &saved_fp - 0x80, &saved_fp - 0x98, &var_B0, 0xffffffffffffffff, &var_C8, &var_E0, &var_F8, &var_110, &var_128);
    if ((sign_extend_64(var_111) & 0xffffffff80000000) != 0x0) {
            operator delete(var_128);
    }
    sub_10000e380(&var_110);
    if ((sign_extend_64(var_E1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_F8);
    }
    if ((sign_extend_64(var_C9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_E0);
    }
    if ((sign_extend_64(var_B1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C8);
    }
    if ((sign_extend_64(var_99) & 0xffffffff80000000) != 0x0) {
            operator delete(var_B0);
    }
    if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
            operator delete(var_98);
    }
    if ((sign_extend_64(var_69) & 0xffffffff80000000) != 0x0) {
            operator delete(var_80);
    }
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(var_68);
    }
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
            operator delete(var_38);
    }
    *(int128_t *)(r19 + 0x138) = 0x0;
    *(int128_t *)(r19 + 0x140) = 0x0;
    *(r19 + 0x148) = 0x0;
    r0 = r19;
    return r0;
}

@end