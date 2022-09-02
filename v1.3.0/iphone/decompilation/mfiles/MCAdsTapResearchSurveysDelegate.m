@implementation MCAdsTapResearchSurveysDelegate

-(void)tapResearchDidReceiveReward:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[arg2 retain] retain];
    sub_10054da00(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10053217c;

loc_10053216c:
    if (r0 == 0x0) goto loc_100532188;

loc_100532170:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100532184;

loc_100532184:
    (r8)();
    goto loc_100532188;

loc_100532188:
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;

loc_10053217c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100532184;
}

-(void)tapResearchSurveyWallOpenedWithPlacement:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 placementIdentifier];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_100531cb8(&var_50, r0);
    [r19 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e83330;
    *(r0 + 0x18) = var_58;
    *(int128_t *)(r0 + 0x8) = var_68;
    sub_10054da00(&stack[-72]);
    r0 = r0;
    if (&stack[-72] == r0) goto loc_100531e8c;

loc_100531e7c:
    if (r0 == 0x0) goto loc_100531e98;

loc_100531e80:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_100531e94;

loc_100531e94:
    (r8)();
    goto loc_100531e98;

loc_100531e98:
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100531e8c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_100531e94;
}

-(void)tapResearchSurveyWallDismissedWithPlacement:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 placementIdentifier];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r0 = [r0 UTF8String];
    r0 = sub_100531cb8(&var_50, r0);
    [r19 release];
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    r0 = operator new();
    *r0 = 0x100e833b0;
    *(r0 + 0x18) = var_58;
    *(int128_t *)(r0 + 0x8) = var_68;
    sub_10054da00(&stack[-72]);
    r0 = r0;
    if (&stack[-72] == r0) goto loc_100532034;

loc_100532024:
    if (r0 == 0x0) goto loc_100532040;

loc_100532028:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10053203c;

loc_10053203c:
    (r8)();
    goto loc_100532040;

loc_100532040:
    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
            operator delete(var_50);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_100532034:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10053203c;
}

@end