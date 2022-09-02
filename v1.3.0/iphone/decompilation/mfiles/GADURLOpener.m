@implementation GADURLOpener

+(void *)sharedInstance {
    if (*qword_1011db8b8 != -0x1) {
            dispatch_once(0x1011db8b8, 0x100e93e70);
    }
    r0 = *0x1011db8c0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)openURL:(void *)arg2 forAd:(void *)arg3 {
    sub_10081efb0([arg2 retain], [arg3 retain], [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain], 0x0);
    [r19 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)openDeepLinkURL:(void *)arg2 forAd:(void *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0x70;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ((sub_10089a100(r19, @"http") & 0x1) == 0x0 && (sub_10089a100(r19, @"https") & 0x1) == 0x0) {
            r23 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    }
    else {
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            r24 = [[r0 stringForKey:*0x100e9b770] retain];
            [r0 release];
            r25 = [@(YES) retain];
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r23 = [r0 retain];
            [r25 release];
            [r24 release];
            if (r23 == 0x0) {
                    r23 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            }
    }
    var_48 = **___stack_chk_guard;
    sub_10081efb0(r19, r20, r23, r21);
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

@end