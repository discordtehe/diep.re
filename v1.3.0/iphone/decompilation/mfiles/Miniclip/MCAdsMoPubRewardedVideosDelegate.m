@implementation MCAdsMoPubRewardedVideosDelegate

-(void)rewardedVideoAdWillAppearForAdUnitID:(void *)arg2 {
    return;
}

-(void)rewardedVideoAdDidLoadForAdUnitID:(void *)arg2 {
    r31 = r31 - 0xc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_10051a810(&var_60, r0);
    r21 = [[objc_getClass("MPRewardedVideo") sharedInstance] retain];
    [self findNetworkName:r21 adUnitId:r19];
    [r21 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e80908;
    *(r0 + 0x18) = var_98;
    *(int128_t *)(r0 + 0x8) = var_A8;
    q0 = *(int128_t *)(&var_A8 + 0x18);
    *(r0 + 0x30) = *(&var_A8 + 0x28);
    *(int128_t *)(r0 + 0x20) = q0;
    *(int128_t *)(&var_A8 + 0x20) = 0x0;
    *(int128_t *)(&var_A8 + 0x28) = 0x0;
    *(&var_A8 + 0x18) = 0x0;
    sub_10053e5d8(&saved_fp - 0x48);
    r0 = r0;
    if (&saved_fp - 0x48 == r0) goto loc_10051a9d8;

loc_10051a9c8:
    if (r0 == 0x0) goto loc_10051a9e4;

loc_10051a9cc:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10051a9e0;

loc_10051a9e0:
    (r8)();
    goto loc_10051a9e4;

loc_10051a9e4:
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
            operator delete(var_60);
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_10051a9d8:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10051a9e0;
}

-(void)rewardedVideoAdDidExpireForAdUnitID:(void *)arg2 {
    r31 = r31 - 0xc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_10051a810(&var_60, r0);
    r21 = [[objc_getClass("MPRewardedVideo") sharedInstance] retain];
    [self findNetworkName:r21 adUnitId:r19];
    [r21 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e80a08;
    *(r0 + 0x18) = var_98;
    *(int128_t *)(r0 + 0x8) = var_A8;
    q0 = *(int128_t *)(&var_A8 + 0x18);
    *(r0 + 0x30) = *(&var_A8 + 0x28);
    *(int128_t *)(r0 + 0x20) = q0;
    *(int128_t *)(&var_A8 + 0x20) = 0x0;
    *(int128_t *)(&var_A8 + 0x28) = 0x0;
    *(&var_A8 + 0x18) = 0x0;
    sub_10053e5d8(&saved_fp - 0x48);
    r0 = r0;
    if (&saved_fp - 0x48 == r0) goto loc_10051afac;

loc_10051af9c:
    if (r0 == 0x0) goto loc_10051afb8;

loc_10051afa0:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10051afb4;

loc_10051afb4:
    (r8)();
    goto loc_10051afb8;

loc_10051afb8:
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
            operator delete(var_60);
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_10051afac:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10051afb4;
}

-(void)rewardedVideoAdDidAppearForAdUnitID:(void *)arg2 {
    r31 = r31 - 0xc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_10051a810(&var_60, r0);
    r21 = [[objc_getClass("MPRewardedVideo") sharedInstance] retain];
    [self findNetworkName:r21 adUnitId:r19];
    [r21 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e80a88;
    *(r0 + 0x18) = var_98;
    *(int128_t *)(r0 + 0x8) = var_A8;
    q0 = *(int128_t *)(&var_A8 + 0x18);
    *(r0 + 0x30) = *(&var_A8 + 0x28);
    *(int128_t *)(r0 + 0x20) = q0;
    *(int128_t *)(&var_A8 + 0x20) = 0x0;
    *(int128_t *)(&var_A8 + 0x28) = 0x0;
    *(&var_A8 + 0x18) = 0x0;
    sub_10053e5d8(&saved_fp - 0x48);
    r0 = r0;
    if (&saved_fp - 0x48 == r0) goto loc_10051b21c;

loc_10051b20c:
    if (r0 == 0x0) goto loc_10051b228;

loc_10051b210:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10051b224;

loc_10051b224:
    (r8)();
    goto loc_10051b228;

loc_10051b228:
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
            operator delete(var_60);
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_10051b21c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10051b224;
}

-(void)rewardedVideoAdWillDisappearForAdUnitID:(void *)arg2 {
    return;
}

-(void)rewardedVideoAdDidFailToLoadForAdUnitID:(void *)arg2 error:(void *)arg3 {
    r31 = r31 - 0x100;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = objc_retainAutorelease(r21);
    r19 = r0;
    sub_10051a810(&saved_fp - 0x70, [r0 UTF8String]);
    r23 = [[objc_getClass("MPRewardedVideo") sharedInstance] retain];
    [self findNetworkName:r23 adUnitId:r19];
    [r23 release];
    r0 = [r20 description];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r22 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_10051a810(&var_A0, r0);
    [r22 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e80988;
    *(r0 + 0x18) = var_D8;
    *(int128_t *)(r0 + 0x8) = var_E8;
    q0 = *(int128_t *)(&var_E8 + 0x18);
    *(r0 + 0x30) = *(&var_E8 + 0x28);
    *(int128_t *)(r0 + 0x20) = q0;
    *(int128_t *)(&var_E8 + 0x20) = 0x0;
    *(int128_t *)(&var_E8 + 0x28) = 0x0;
    *(&var_E8 + 0x18) = 0x0;
    q0 = *(int128_t *)(&var_E8 + 0x30);
    *(r0 + 0x48) = *(&var_E8 + 0x40);
    *(int128_t *)(r0 + 0x38) = q0;
    *(int128_t *)(&var_E8 + 0x38) = 0x0;
    *(int128_t *)(&var_E8 + 0x40) = 0x0;
    *(&var_E8 + 0x30) = 0x0;
    sub_10053e5d8(&saved_fp - 0x58);
    r0 = r0;
    if (&saved_fp - 0x58 == r0) goto loc_10051accc;

loc_10051acbc:
    if (r0 == 0x0) goto loc_10051acd8;

loc_10051acc0:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10051acd4;

loc_10051acd4:
    (r8)();
    goto loc_10051acd8;

loc_10051acd8:
    if ((sign_extend_64(var_A1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_B8);
    }
    if ((sign_extend_64(var_B9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D0);
    }
    if ((sign_extend_64(var_D1) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A0);
    }
    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
            operator delete(var_88);
    }
    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
            operator delete(var_70);
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_10051accc:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10051acd4;
}

-(void)rewardedVideoAdWillLeaveApplicationForAdUnitID:(void *)arg2 {
    return;
}

-(void)rewardedVideoAdDidFailToPlayForAdUnitID:(void *)arg2 error:(void *)arg3 {
    r31 = r31 - 0x100;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = objc_retainAutorelease(r21);
    r19 = r0;
    sub_10051a810(&saved_fp - 0x70, [r0 UTF8String]);
    r23 = [[objc_getClass("MPRewardedVideo") sharedInstance] retain];
    [self findNetworkName:r23 adUnitId:r19];
    [r23 release];
    r0 = [r20 description];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r22 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_10051a810(&var_A0, r0);
    [r22 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e80b08;
    *(r0 + 0x18) = var_D8;
    *(int128_t *)(r0 + 0x8) = var_E8;
    q0 = *(int128_t *)(&var_E8 + 0x18);
    *(r0 + 0x30) = *(&var_E8 + 0x28);
    *(int128_t *)(r0 + 0x20) = q0;
    *(int128_t *)(&var_E8 + 0x20) = 0x0;
    *(int128_t *)(&var_E8 + 0x28) = 0x0;
    *(&var_E8 + 0x18) = 0x0;
    q0 = *(int128_t *)(&var_E8 + 0x30);
    *(r0 + 0x48) = *(&var_E8 + 0x40);
    *(int128_t *)(r0 + 0x38) = q0;
    *(int128_t *)(&var_E8 + 0x38) = 0x0;
    *(int128_t *)(&var_E8 + 0x40) = 0x0;
    *(&var_E8 + 0x30) = 0x0;
    sub_10053e5d8(&saved_fp - 0x58);
    r0 = r0;
    if (&saved_fp - 0x58 == r0) goto loc_10051b510;

loc_10051b500:
    if (r0 == 0x0) goto loc_10051b51c;

loc_10051b504:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10051b518;

loc_10051b518:
    (r8)();
    goto loc_10051b51c;

loc_10051b51c:
    if ((sign_extend_64(var_A1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_B8);
    }
    if ((sign_extend_64(var_B9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D0);
    }
    if ((sign_extend_64(var_D1) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A0);
    }
    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
            operator delete(var_88);
    }
    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
            operator delete(var_70);
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_10051b510:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10051b518;
}

-(void)rewardedVideoAdDidReceiveTapEventForAdUnitID:(void *)arg2 {
    r31 = r31 - 0xc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_10051a810(&var_60, r0);
    r21 = [[objc_getClass("MPRewardedVideo") sharedInstance] retain];
    [self findNetworkName:r21 adUnitId:r19];
    [r21 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e80c08;
    *(r0 + 0x18) = var_98;
    *(int128_t *)(r0 + 0x8) = var_A8;
    q0 = *(int128_t *)(&var_A8 + 0x18);
    *(r0 + 0x30) = *(&var_A8 + 0x28);
    *(int128_t *)(r0 + 0x20) = q0;
    *(int128_t *)(&var_A8 + 0x20) = 0x0;
    *(int128_t *)(&var_A8 + 0x28) = 0x0;
    *(&var_A8 + 0x18) = 0x0;
    sub_10053e5d8(&saved_fp - 0x48);
    r0 = r0;
    if (&saved_fp - 0x48 == r0) goto loc_10051ba60;

loc_10051ba50:
    if (r0 == 0x0) goto loc_10051ba6c;

loc_10051ba54:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10051ba68;

loc_10051ba68:
    (r8)();
    goto loc_10051ba6c;

loc_10051ba6c:
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
            operator delete(var_60);
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_10051ba60:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10051ba68;
}

-(void)rewardedVideoAdDidDisappearForAdUnitID:(void *)arg2 {
    r31 = r31 - 0xc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_10051a810(&var_60, r0);
    r21 = [[objc_getClass("MPRewardedVideo") sharedInstance] retain];
    [self findNetworkName:r21 adUnitId:r19];
    [r21 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e80b88;
    *(r0 + 0x18) = var_98;
    *(int128_t *)(r0 + 0x8) = var_A8;
    q0 = *(int128_t *)(&var_A8 + 0x18);
    *(r0 + 0x30) = *(&var_A8 + 0x28);
    *(int128_t *)(r0 + 0x20) = q0;
    *(int128_t *)(&var_A8 + 0x20) = 0x0;
    *(int128_t *)(&var_A8 + 0x28) = 0x0;
    *(&var_A8 + 0x18) = 0x0;
    sub_10053e5d8(&saved_fp - 0x48);
    r0 = r0;
    if (&saved_fp - 0x48 == r0) goto loc_10051b7f4;

loc_10051b7e4:
    if (r0 == 0x0) goto loc_10051b800;

loc_10051b7e8:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10051b7fc;

loc_10051b7fc:
    (r8)();
    goto loc_10051b800;

loc_10051b800:
    if ((sign_extend_64(var_79) & 0xffffffff80000000) != 0x0) {
            operator delete(var_90);
    }
    if ((sign_extend_64(var_91) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_61) & 0xffffffff80000000) != 0x0) {
            operator delete(var_78);
    }
    if ((sign_extend_64(var_49) & 0xffffffff80000000) != 0x0) {
            operator delete(var_60);
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;

loc_10051b7f4:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10051b7fc;
}

-(void)rewardedVideoAdShouldRewardForAdUnitID:(void *)arg2 reward:(void *)arg3 {
    r31 = r31 - 0x100;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = objc_retainAutorelease(r21);
    r19 = r0;
    sub_10051a810(&saved_fp - 0x70, [r0 UTF8String]);
    r23 = [[objc_getClass("MPRewardedVideo") sharedInstance] retain];
    [self findNetworkName:r23 adUnitId:r19];
    [r23 release];
    r0 = [r20 currencyType];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r22 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_10051a810(&var_A0, r0);
    [r22 release];
    r0 = [r20 amount];
    r0 = [r0 retain];
    [r0 intValue];
    [r0 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e80c88;
    *(r0 + 0x18) = var_E0;
    *(int128_t *)(r0 + 0x8) = var_F0;
    q0 = *(int128_t *)(&var_F0 + 0x18);
    *(r0 + 0x30) = *(&var_F0 + 0x28);
    *(int128_t *)(r0 + 0x20) = q0;
    *(int128_t *)(&var_F0 + 0x20) = 0x0;
    *(int128_t *)(&var_F0 + 0x28) = 0x0;
    *(&var_F0 + 0x18) = 0x0;
    q0 = *(int128_t *)(&var_F0 + 0x30);
    *(r0 + 0x48) = *(&var_F0 + 0x40);
    *(int128_t *)(r0 + 0x38) = q0;
    *(int128_t *)(&var_F0 + 0x38) = 0x0;
    *(int128_t *)(&var_F0 + 0x40) = 0x0;
    *(&var_F0 + 0x30) = 0x0;
    *(int32_t *)(r0 + 0x50) = r21;
    sub_10053e5d8(&saved_fp - 0x58);
    r0 = r0;
    if (&saved_fp - 0x58 == r0) goto loc_10051bd94;

loc_10051bd84:
    if (r0 == 0x0) goto loc_10051bda0;

loc_10051bd88:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10051bd9c;

loc_10051bd9c:
    (r8)();
    goto loc_10051bda0;

loc_10051bda0:
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_C0);
    }
    if ((sign_extend_64(var_C1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D8);
    }
    if ((sign_extend_64(var_D9) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) {
            operator delete(var_A0);
    }
    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
            operator delete(var_88);
    }
    if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
            operator delete(var_70);
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_10051bd94:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10051bd9c;
}

-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >)findNetworkName:(void *)arg2 adUnitId:(void *)arg3 {
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
    var_60 = self;
    r22 = r8;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 class];
    r0 = NSStringFromClass(r0);
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 lowercaseString];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r25 release];
    objc_getClass("MPRewardedVideoCustomEvent");
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10051c038;

loc_10051c004:
    [r21 rangeOfString:r2];
    if (r23 != 0x0) {
            sub_10051a810(r22, "AdColony");
    }
    else {
            [r21 rangeOfString:r2];
            if (r23 != 0x0) {
                    sub_10051a810(r22, "AppLovin");
            }
            else {
                    [r21 rangeOfString:r2];
                    if (r23 != 0x0) {
                            sub_10051a810(r22, "Facebook");
                    }
                    else {
                            [r21 rangeOfString:r2];
                            if (r23 != 0x0) {
                                    sub_10051a810(r22, "Google");
                            }
                            else {
                                    [r21 rangeOfString:r2];
                                    if (r23 != 0x0) {
                                            sub_10051a810(r22, "IronSource");
                                    }
                                    else {
                                            [r21 rangeOfString:r2];
                                            if (r23 != 0x0) {
                                                    sub_10051a810(r22, "Tapjoy");
                                            }
                                            else {
                                                    [r21 rangeOfString:r2];
                                                    if (r23 != 0x0) {
                                                            sub_10051a810(r22, "Unity");
                                                    }
                                                    else {
                                                            [r21 rangeOfString:r2];
                                                            if (r23 != 0x0) {
                                                                    sub_10051a810(r22, "Vungle");
                                                            }
                                                            else {
                                                                    [r21 rangeOfString:r2];
                                                                    if (r23 == 0x0) {
                                                                            [r21 rangeOfString:r2];
                                                                            if (@selector(rangeOfString:) != 0x0) {
                                                                                    sub_10051a810(r22, "MoPub");
                                                                            }
                                                                            else {
                                                                                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
                                                                            }
                                                                    }
                                                                    else {
                                                                            sub_10051a810(r22, "MoPub");
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    goto loc_10051c3bc;

loc_10051c3bc:
    [r21 release];
    [r20 release];
    r0 = [r19 release];
    return r0;

loc_10051c038:
    r0 = [r19 class];
    r0 = class_copyIvarList(r0, &var_54);
    r24 = r0;
    if (r0 == 0x0) goto loc_10051c330;

loc_10051c054:
    var_78 = r21;
    if (var_54 == 0x0) goto loc_10051c324;

loc_10051c060:
    r21 = 0x0;
    var_80 = r22 + 0x1;
    goto loc_10051c08c;

loc_10051c08c:
    r28 = *(r24 + r21 * 0x8);
    r0 = ivar_getTypeEncoding(r28);
    r27 = r0;
    if (r0 == 0x0) goto loc_10051c314;

loc_10051c0a0:
    if (strcmp(r27, "@\"NSMutableDictionary\"") == 0x0 || strcmp(r27, "@\"NSDictionary\"") == 0x0) goto loc_10051c0c4;

loc_10051c1f4:
    if (strcmp(r27, "@\"MPRewardedVideoAdManager\"") == 0x0 || strcmp(r27, "@\"MPRewardedVideoAdapter\"") == 0x0 || strcmp(r27, "@\"MPRewardedVideoCustomEvent\"") == 0x0) goto loc_10051c230;

loc_10051c314:
    r21 = r21 + 0x1;
    if (r21 < var_54) goto loc_10051c08c;

loc_10051c324:
    free(r24);
    r21 = var_78;
    goto loc_10051c330;

loc_10051c330:
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    goto loc_10051c3bc;

loc_10051c230:
    r0 = object_getIvar(r19, r28);
    r29 = r29;
    r25 = [r0 retain];
    r1 = @selector(findNetworkName:adUnitId:);
    r2 = r25;
    objc_msgSend(var_60, r1);
    r0 = [r25 release];
    r8 = *(int8_t *)(r22 + 0x17);
    r10 = *(r22 + 0x8);
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r10;
            }
    }
    r10 = *(int8_t *)0x1011d85cf;
    r9 = sign_extend_64(r10);
    if (r9 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r10 = *(int8_t *)0x1011d85cf;
                    r10 = r10;
            }
            else {
                    r10 = *0x1011d85c0;
            }
    }
    if (r2 != r10) goto loc_10051c370;

loc_10051c29c:
    r10 = sign_extend_64(r8);
    r25 = *r22;
    if (r10 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r0 = r22;
            }
            else {
                    r0 = r25;
            }
    }
    if (r9 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r1 = 0x1011d85b8;
            }
            else {
                    r1 = *0x1011d85b8;
            }
    }
    if ((r10 & 0xffffffff80000000) != 0x0) goto loc_10051c300;

loc_10051c2c8:
    if (r2 == 0x0) goto loc_10051c314;

loc_10051c2cc:
    if (*(int8_t *)r1 != zero_extend_64(r25)) goto loc_10051c370;

loc_10051c2d8:
    r8 = r8 - 0x1;
    r9 = r1 + 0x1;
    r10 = var_80;
    goto loc_10051c2e4;

loc_10051c2e4:
    if (r8 == 0x0) goto loc_10051c314;

loc_10051c2e8:
    r11 = *(int8_t *)r10;
    r10 = r10 + 0x1;
    r12 = *(int8_t *)r9;
    r9 = r9 + 0x1;
    r8 = r8 - 0x1;
    if (r11 == r12) goto loc_10051c2e4;

loc_10051c370:
    free(r24);
    goto loc_10051c3b8;

loc_10051c3b8:
    r21 = var_78;
    goto loc_10051c3bc;

loc_10051c300:
    if (r2 == 0x0 || memcmp(r0, r1, r2) == 0x0) goto loc_10051c30c;
    goto loc_10051c370;

loc_10051c30c:
    operator delete(r25);
    goto loc_10051c314;

loc_10051c0c4:
    r0 = object_getIvar(r19, r28);
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 == 0x0) goto loc_10051c1ec;

loc_10051c0e0:
    r0 = [r25 objectForKey:r20];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10051c1ec;

loc_10051c104:
    r0 = [r25 objectForKey:r20];
    r29 = r29;
    r26 = [r0 retain];
    r1 = @selector(findNetworkName:adUnitId:);
    r2 = r26;
    objc_msgSend(var_60, r1);
    r0 = [r26 release];
    r8 = *(int8_t *)(r22 + 0x17);
    r10 = *(r22 + 0x8);
    if (sign_extend_64(r8) < 0x0) {
            if (!CPU_FLAGS & L) {
                    r2 = r8;
            }
            else {
                    r2 = r10;
            }
    }
    r10 = *(int8_t *)0x1011d85cf;
    r9 = sign_extend_64(r10);
    if (r9 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r10 = *(int8_t *)0x1011d85cf;
                    r10 = r10;
            }
            else {
                    r10 = *0x1011d85c0;
            }
    }
    if (r2 != r10) goto loc_10051c3a8;

loc_10051c174:
    r10 = sign_extend_64(r8);
    r26 = *r22;
    if (r10 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r0 = r22;
            }
            else {
                    r0 = r26;
            }
    }
    if (r9 < 0x0) {
            if (!CPU_FLAGS & L) {
                    r1 = 0x1011d85b8;
            }
            else {
                    r1 = *0x1011d85b8;
            }
    }
    if ((r10 & 0xffffffff80000000) != 0x0) goto loc_10051c1d8;

loc_10051c1a0:
    if (r2 == 0x0) goto loc_10051c1ec;

loc_10051c1a4:
    if (*(int8_t *)r1 != zero_extend_64(r26)) goto loc_10051c3a8;

loc_10051c1b0:
    r8 = r8 - 0x1;
    r9 = r1 + 0x1;
    r10 = var_80;
    goto loc_10051c1bc;

loc_10051c1bc:
    if (r8 == 0x0) goto loc_10051c1ec;

loc_10051c1c0:
    r11 = *(int8_t *)r10;
    r10 = r10 + 0x1;
    r12 = *(int8_t *)r9;
    r9 = r9 + 0x1;
    r8 = r8 - 0x1;
    if (r11 == r12) goto loc_10051c1bc;

loc_10051c3a8:
    free(r24);
    [r25 release];
    goto loc_10051c3b8;

loc_10051c1ec:
    [r25 release];
    goto loc_10051c1f4;

loc_10051c1d8:
    if (r2 == 0x0 || memcmp(r0, r1, r2) == 0x0) goto loc_10051c1e4;
    goto loc_10051c3a8;

loc_10051c1e4:
    operator delete(r26);
    goto loc_10051c1ec;
}

@end