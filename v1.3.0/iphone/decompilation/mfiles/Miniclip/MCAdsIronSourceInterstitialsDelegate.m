@implementation MCAdsIronSourceInterstitialsDelegate

-(void)interstitialDidFailToLoadWithError:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[arg2 retain] retain];
    sub_10053dfcc(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052d810;

loc_10052d800:
    if (r0 == 0x0) goto loc_10052d81c;

loc_10052d804:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052d818;

loc_10052d818:
    (r8)();
    goto loc_10052d81c;

loc_10052d81c:
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;

loc_10052d810:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052d818;
}

-(void)interstitialDidOpen {
    return;
}

-(void)interstitialDidLoad {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_10053dfcc(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052d73c;

loc_10052d72c:
    if (r0 == 0x0) goto loc_10052d748;

loc_10052d730:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052d744;

loc_10052d744:
    (r8)();
    goto loc_10052d748;

loc_10052d748:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10052d73c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052d744;
}

-(void)interstitialDidClose {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_10053dfcc(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052d8e8;

loc_10052d8d8:
    if (r0 == 0x0) goto loc_10052d8f4;

loc_10052d8dc:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052d8f0;

loc_10052d8f0:
    (r8)();
    goto loc_10052d8f4;

loc_10052d8f4:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10052d8e8:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052d8f0;
}

-(void)interstitialDidShow {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_10053dfcc(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052d9ac;

loc_10052d99c:
    if (r0 == 0x0) goto loc_10052d9b8;

loc_10052d9a0:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052d9b4;

loc_10052d9b4:
    (r8)();
    goto loc_10052d9b8;

loc_10052d9b8:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10052d9ac:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052d9b4;
}

-(void)interstitialDidFailToShowWithError:(void *)arg2 {
    return;
}

-(void)didClickInterstitial {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_10053dfcc(&var_38);
    r0 = &var_38;
    if (&var_38 == r0) goto loc_10052da74;

loc_10052da64:
    if (r0 == 0x0) goto loc_10052da80;

loc_10052da68:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_10052da7c;

loc_10052da7c:
    (r8)();
    goto loc_10052da80;

loc_10052da80:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_10052da74:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_10052da7c;
}

@end