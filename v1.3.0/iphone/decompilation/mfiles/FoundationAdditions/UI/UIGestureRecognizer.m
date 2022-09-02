@implementation UIGestureRecognizer

-(void)mcAds_touchesBegan:(void *)arg2 withEvent:(void *)arg3 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [self mcAds_touchesBegan:r19 withEvent:arg3];
    r0 = [r19 anyObject];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [[r20 view] retain];
            [r20 locationInView:r21];
            [r21 release];
            if (*qword_1011e4c60 != 0x0) {
                    asm { fcvt       s0, d8 };
                    asm { fcvt       s1, d9 };
                    sub_100546da4(0x1011e4c48);
            }
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)load {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d8a98 != -0x1) {
            dispatch_once(0x1011d8a98, &var_28);
    }
    return;
}

@end