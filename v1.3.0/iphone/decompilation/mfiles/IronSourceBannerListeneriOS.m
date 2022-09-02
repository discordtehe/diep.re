@implementation IronSourceBannerListeneriOS

-(void)bannerWillPresentScreen {
    return;
}

-(void)bannerDidFailToLoadWithError:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 description];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_100530464(&var_50, r0);
    [r19 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83110;
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    sub_100543bd0(&stack[-72]);
    r0 = r19;
    if (&stack[-72] == r0) goto loc_1005307e0;

loc_1005307d0:
    if (r0 == 0x0) goto loc_1005307ec;

loc_1005307d4:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1005307e8;

loc_1005307e8:
    (r8)();
    goto loc_1005307ec;

loc_1005307ec:
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(var_68);
    }
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1005307e0:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1005307e8;
}

-(void)bannerDidLoad:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    objc_storeStrong(0x1011d8798, arg2);
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 keyWindow];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 rootViewController];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 view];
    r0 = [r0 retain];
    [r0 addSubview:*0x1011d8798];
    [r0 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [*0x1011d8798 setHidden:0x1];
    [WrapperUtilsIos adjustAdViewFrameToShowAdView:*0x1011d8798 onPosition:*(int32_t *)0x1011d87d0];
    sub_100543bd0(&var_58);
    r0 = &var_58;
    if (&var_58 == r0) goto loc_100530650;

loc_100530640:
    if (r0 == 0x0) goto loc_10053065c;

loc_100530644:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100530658;

loc_100530658:
    (r8)();
    goto loc_10053065c;

loc_10053065c:
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_100530650:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100530658;
}

-(void)didClickBanner {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_100543bd0(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10053092c;

loc_10053091c:
    if (r0 == 0x0) goto loc_100530938;

loc_100530920:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100530934;

loc_100530934:
    (r8)();
    goto loc_100530938;

loc_100530938:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10053092c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100530934;
}

-(void)bannerDidDismissScreen {
    return;
}

-(void)bannerWillLeaveApplication {
    return;
}

@end