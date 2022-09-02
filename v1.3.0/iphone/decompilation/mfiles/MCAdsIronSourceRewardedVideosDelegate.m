@implementation MCAdsIronSourceRewardedVideosDelegate

-(void)rewardedVideoHasChangedAvailability:(bool)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (arg2 != 0x0) {
            sub_100532870();
            sub_100515080();
    }
    sub_100515c1c(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052e25c;

loc_10052e24c:
    if (r0 == 0x0) goto loc_10052e268;

loc_10052e250:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052e264;

loc_10052e264:
    (r8)();
    goto loc_10052e268;

loc_10052e268:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10052e25c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052e264;
}

-(void)rewardedVideoDidOpen {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_100515c1c(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052e4e8;

loc_10052e4d8:
    if (r0 == 0x0) goto loc_10052e4f4;

loc_10052e4dc:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052e4f0;

loc_10052e4f0:
    (r8)();
    goto loc_10052e4f4;

loc_10052e4f4:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10052e4e8:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052e4f0;
}

-(void)rewardedVideoDidFailToShowWithError:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[arg2 retain] retain];
    sub_100515c1c(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052e414;

loc_10052e404:
    if (r0 == 0x0) goto loc_10052e420;

loc_10052e408:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052e41c;

loc_10052e41c:
    (r8)();
    goto loc_10052e420;

loc_10052e420:
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;

loc_10052e414:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052e41c;
}

-(void)didReceiveRewardForPlacement:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[arg2 retain] retain];
    sub_100515c1c(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052e330;

loc_10052e320:
    if (r0 == 0x0) goto loc_10052e33c;

loc_10052e324:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052e338;

loc_10052e338:
    (r8)();
    goto loc_10052e33c;

loc_10052e33c:
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;

loc_10052e330:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052e338;
}

-(void)rewardedVideoDidClose {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_100515c1c(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052e5ac;

loc_10052e59c:
    if (r0 == 0x0) goto loc_10052e5b8;

loc_10052e5a0:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052e5b4;

loc_10052e5b4:
    (r8)();
    goto loc_10052e5b8;

loc_10052e5b8:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10052e5ac:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052e5b4;
}

-(void)rewardedVideoDidStart {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_100515c1c(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052e670;

loc_10052e660:
    if (r0 == 0x0) goto loc_10052e67c;

loc_10052e664:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052e678;

loc_10052e678:
    (r8)();
    goto loc_10052e67c;

loc_10052e67c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10052e670:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052e678;
}

-(void)rewardedVideoDidEnd {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_100515c1c(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052e734;

loc_10052e724:
    if (r0 == 0x0) goto loc_10052e740;

loc_10052e728:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052e73c;

loc_10052e73c:
    (r8)();
    goto loc_10052e740;

loc_10052e740:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10052e734:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052e73c;
}

-(void)didClickRewardedVideo:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[arg2 retain] retain];
    sub_100515c1c(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052e808;

loc_10052e7f8:
    if (r0 == 0x0) goto loc_10052e814;

loc_10052e7fc:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052e810;

loc_10052e810:
    (r8)();
    goto loc_10052e814;

loc_10052e814:
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;

loc_10052e808:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052e810;
}

@end