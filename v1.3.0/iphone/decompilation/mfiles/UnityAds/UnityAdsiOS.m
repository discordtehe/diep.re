@implementation UnityAdsiOS

-(bool)loadInterstitial:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    sub_1005247d8(&var_38, [r0 UTF8String]);
    r0 = sub_1002ef864(0x1011d8630, &var_38);
    r20 = r0;
    if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
            operator delete(var_38);
    }
    if (r20 == 0x1011d8638) goto loc_10052468c;

loc_100524640:
    if ([UnityAds isReady:r19] != 0x0) {
            r20 = &var_38;
            var_20 = r20;
            sub_10097b5f0(0x1, &var_38, 0x0, 0x0, 0x10);
    }
    else {
            *(int8_t *)0x1011d8660 = 0x1;
            [r19 retain];
            r20 = &var_38;
            var_20 = r20;
            sub_10097b5f0(0x1, &var_38, 0x2710, 0x0, 0x10);
    }
    r0 = var_20;
    if (r20 == r0) goto loc_100524714;

loc_100524704:
    if (r0 == 0x0) goto loc_100524720;

loc_100524708:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052471c;

loc_10052471c:
    (r8)();
    goto loc_100524720;

loc_100524720:
    r20 = 0x1;
    goto loc_100524724;

loc_100524724:
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_18) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100524714:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052471c;

loc_10052468c:
    loc_10098a5e8(0x0);
    r20 = 0x0;
    goto loc_100524724;
}

-(bool)showInterstitial:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if ([UnityAds isInitialized] == 0x0 || ([UnityAds isReady:r19] & 0x1) == 0x0) goto loc_100524920;

loc_1005248d0:
    [r19 retain];
    sub_10097b5f0(0x0, &var_38, 0x0, 0x0, 0x10);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052494c;

loc_100524910:
    if (r0 == 0x0) goto loc_100524958;

loc_100524914:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100524954;

loc_100524954:
    (r8)();
    goto loc_100524958;

loc_100524958:
    r20 = 0x1;
    goto loc_10052495c;

loc_10052495c:
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_18) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10052494c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100524954;

loc_100524920:
    loc_10098a5e8(0x0);
    r20 = 0x0;
    goto loc_10052495c;
}

-(bool)loadRewardedVideo:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    sub_1005247d8(&var_38, [r0 UTF8String]);
    r0 = sub_1002ef864(0x1011d8648, &var_38);
    r20 = r0;
    if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
            operator delete(var_38);
    }
    if (r20 == 0x1011d8650) goto loc_100524aa0;

loc_100524a54:
    if ([UnityAds isReady:r19] != 0x0) {
            r20 = &var_38;
            var_20 = r20;
            sub_10097b5f0(0x1, &var_38, 0x0, 0x0, 0x10);
    }
    else {
            *(int8_t *)0x1011d8661 = 0x1;
            [r19 retain];
            r20 = &var_38;
            var_20 = r20;
            sub_10097b5f0(0x1, &var_38, 0x2710, 0x0, 0x10);
    }
    r0 = var_20;
    if (r20 == r0) goto loc_100524b28;

loc_100524b18:
    if (r0 == 0x0) goto loc_100524b34;

loc_100524b1c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100524b30;

loc_100524b30:
    (r8)();
    goto loc_100524b34;

loc_100524b34:
    r20 = 0x1;
    goto loc_100524b38;

loc_100524b38:
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_18) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100524b28:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100524b30;

loc_100524aa0:
    loc_10098a5e8(0x0);
    r20 = 0x0;
    goto loc_100524b38;
}

-(bool)showRewardedVideo:(void *)arg2 withUserId:(void *)arg3 withCustomData:(void *)arg4 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if ([UnityAds isInitialized] == 0x0 || ([UnityAds isReady:r19] & 0x1) == 0x0) goto loc_100524c98;

loc_100524c48:
    [r19 retain];
    sub_10097b5f0(0x0, &var_38, 0x0, 0x0, 0x10);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_100524cc4;

loc_100524c88:
    if (r0 == 0x0) goto loc_100524cd0;

loc_100524c8c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100524ccc;

loc_100524ccc:
    (r8)();
    goto loc_100524cd0;

loc_100524cd0:
    r20 = 0x1;
    goto loc_100524cd4;

loc_100524cd4:
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_18) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100524cc4:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100524ccc;

loc_100524c98:
    loc_10098a5e8(0x0);
    r20 = 0x0;
    goto loc_100524cd4;
}

-(void)unityAdsDidError:(long long)arg2 withMessage:(void *)arg3 {
    return;
}

-(void)unityAdsReady:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    sub_1005247d8(&var_48, [r0 UTF8String]);
    r0 = sub_1002ef864(0x1011d8630, &var_48);
    r21 = r0;
    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
            operator delete(var_48);
    }
    if (r21 == 0x1011d8638) goto loc_100524e18;

loc_100524dd4:
    if (*(int8_t *)0x1011d8660 != 0x1) goto loc_100524ed0;

loc_100524de4:
    *(int8_t *)0x1011d8660 = 0x0;
    r21 = &var_48;
    var_30 = r21;
    sub_10097b5f0(0x1, &var_48, 0x0, 0x0, 0x10);
    goto loc_100524ea8;

loc_100524ea8:
    r0 = var_30;
    if (r21 == r0) goto loc_100524ec4;

loc_100524eb4:
    if (r0 == 0x0) goto loc_100524ed0;

loc_100524eb8:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100524ecc;

loc_100524ecc:
    (r8)();
    goto loc_100524ed0;

loc_100524ed0:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_100524ec4:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100524ecc;

loc_100524e18:
    sub_1005247d8(&var_48, [objc_retainAutorelease(r19) UTF8String]);
    r0 = sub_1002ef864(0x1011d8648, &var_48);
    r20 = r0;
    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
            operator delete(var_48);
    }
    if (r20 == 0x1011d8650 || *(int8_t *)0x1011d8661 != 0x1) goto loc_100524ed0;

loc_100524e78:
    *(int8_t *)0x1011d8661 = 0x0;
    r21 = &var_48;
    var_30 = r21;
    sub_10097b5f0(0x1, &var_48, 0x0, 0x0, 0x10);
    goto loc_100524ea8;
}

-(void)unityAdsDidStart:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    sub_1005247d8(&var_48, [r0 UTF8String]);
    r0 = sub_1002ef864(0x1011d8630, &var_48);
    r21 = r0;
    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
            operator delete(var_48);
    }
    if (r21 == 0x1011d8638) goto loc_100525038;

loc_100525008:
    r21 = &var_48;
    var_30 = r21;
    sub_10097b5f0(0x1, &var_48, 0x0, 0x0, 0x10);
    goto loc_1005250b4;

loc_1005250b4:
    r0 = var_30;
    if (r21 == r0) goto loc_1005250d0;

loc_1005250c0:
    if (r0 == 0x0) goto loc_1005250dc;

loc_1005250c4:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1005250d8;

loc_1005250d8:
    (r8)();
    goto loc_1005250dc;

loc_1005250dc:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_1005250d0:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1005250d8;

loc_100525038:
    sub_1005247d8(&var_48, [objc_retainAutorelease(r19) UTF8String]);
    r0 = sub_1002ef864(0x1011d8648, &var_48);
    r20 = r0;
    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
            operator delete(var_48);
    }
    if (r20 == 0x1011d8650) goto loc_1005250dc;

loc_100525088:
    r21 = &var_48;
    var_30 = r21;
    sub_10097b5f0(0x1, &var_48, 0x0, 0x0, 0x10);
    goto loc_1005250b4;
}

-(bool)debugLog {
    r0 = *(int8_t *)(self + 0x8) & 0x1;
    return r0;
}

-(void)onAdDismissed:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    sub_1005247d8(&var_48, [r0 UTF8String]);
    r0 = sub_1002ef864(0x1011d8630, &var_48);
    r21 = r0;
    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
            operator delete(var_48);
    }
    if (r21 == 0x1011d8638) goto loc_100525624;

loc_1005255f4:
    r21 = &var_48;
    var_30 = r21;
    sub_10097b5f0(0x1, &var_48, 0x0, 0x0, 0x10);
    goto loc_1005256a0;

loc_1005256a0:
    r0 = var_30;
    if (r21 == r0) goto loc_1005256bc;

loc_1005256ac:
    if (r0 == 0x0) goto loc_1005256c8;

loc_1005256b0:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1005256c4;

loc_1005256c4:
    (r8)();
    goto loc_1005256c8;

loc_1005256c8:
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_1005256bc:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1005256c4;

loc_100525624:
    sub_1005247d8(&var_48, [objc_retainAutorelease(r19) UTF8String]);
    r0 = sub_1002ef864(0x1011d8648, &var_48);
    r20 = r0;
    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
            operator delete(var_48);
    }
    if (r20 == 0x1011d8650) goto loc_1005256c8;

loc_100525674:
    r21 = &var_48;
    var_30 = r21;
    sub_10097b5f0(0x1, &var_48, 0x0, 0x0, 0x10);
    goto loc_1005256a0;
}

-(void)setDebugLog:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void)unityAdsDidFinish:(void *)arg2 withFinishState:(long long)arg3 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r21 == 0x2) goto loc_100525268;

loc_1005251d0:
    if (r21 == 0x1) goto loc_100525388;

loc_1005251d8:
    if (r21 != 0x0) goto loc_100525444;

loc_1005251dc:
    r0 = objc_retainAutorelease(r19);
    r21 = r0;
    sub_1005247d8(&var_58, [r0 UTF8String]);
    r0 = sub_1002ef864(0x1011d8630, &var_58);
    r22 = r0;
    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
            operator delete(var_58);
    }
    if (r22 == 0x1011d8638) goto loc_1005253a0;

loc_100525238:
    r21 = &var_58;
    var_40 = r21;
    sub_10097b5f0(0x1, &var_58, 0x0, 0x0, 0x10);
    goto loc_10052541c;

loc_10052541c:
    r0 = var_40;
    if (r21 == r0) goto loc_100525438;

loc_100525428:
    if (r0 == 0x0) goto loc_100525444;

loc_10052542c:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100525440;

loc_100525440:
    (r8)();
    goto loc_100525444;

loc_100525444:
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_100525438:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100525440;

loc_1005253a0:
    sub_1005247d8(&var_58, [objc_retainAutorelease(r21) UTF8String]);
    r0 = sub_1002ef864(0x1011d8648, &var_58);
    r20 = r0;
    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
            operator delete(var_58);
    }
    if (r20 == 0x1011d8650) goto loc_100525444;

loc_1005253f0:
    r21 = &var_58;
    var_40 = r21;
    sub_10097b5f0(0x1, &var_58, 0x0, 0x0, 0x10);
    goto loc_10052541c;

loc_100525388:
    [r20 onAdDismissed:r19];
    goto loc_100525444;

loc_100525268:
    r0 = objc_retainAutorelease(r19);
    r21 = r0;
    sub_1005247d8(&var_58, [r0 UTF8String]);
    r0 = sub_1002ef864(0x1011d8648, &var_58);
    r22 = r0;
    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
            operator delete(var_58);
    }
    if (r22 != 0x1011d8650 && *0x1011e4ad8 != 0x0) {
            r0 = std::__1::__shared_weak_count::lock();
            if (r0 != 0x0) {
                    r22 = r0;
                    if (*0x1011e4ad0 != 0x0) {
                            sub_1005247d8(&var_58, "unityads");
                            sub_1005247d8(&var_70, "");
                            r0 = (*(*r23 + 0x40))(r23, &var_58, &var_70, 0x0);
                            if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_70);
                            }
                            if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_58);
                            }
                    }
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r22 + 0x10))(r22);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    [r20 onAdDismissed:r21];
    goto loc_100525444;
}

@end