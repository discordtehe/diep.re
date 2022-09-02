@implementation WrapperUtilsIos

+(void)adjustAdViewFrameToShowAdView:(void *)arg2 onPosition:(int)arg3 {
    r31 = r31 - 0x150;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r29 = &var_10;
    r22 = arg3;
    *(r29 + 0xffffffffffffff70) = **___stack_chk_guard;
    r19 = [arg2 retain];
    if (sub_1009f787c(0x2, 0xb, 0x0, 0x0) == 0x0) goto loc_10052c354;

loc_10052c0b0:
    r0 = [r19 superview];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_10052c428;

loc_10052c0d0:
    [r19 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    [[r19 widthAnchor] retain];
    CGRectGetWidth([r19 frame]);
    [[r23 constraintEqualToConstant:0x0] retain];
    [[r19 heightAnchor] retain];
    CGRectGetHeight([r19 frame]);
    r28 = [[r26 constraintEqualToConstant:0x0] retain];
    r27 = [[NSArray arrayWithObjects:&var_B0 count:0x2] retain];
    r0 = [NSMutableArray arrayWithArray:r27];
    r29 = r29;
    r21 = [r0 retain];
    [r27 release];
    [r28 release];
    [r26 release];
    [r25 release];
    [r23 release];
    if (r22 > 0x6) goto loc_10052cb9c;

loc_10052c208:
    (0x10052c224 + *(int16_t *)(0x100be80f2 + r22 * 0x2) * 0x4)();
    return;

loc_10052cb9c:
    [NSLayoutConstraint activateConstraints:r21];
    [r19 frame];
    r0 = NSStringFromCGRect();
    r29 = r29;
    [r0 retain];
    NSLog(@"setting adView frame: %@", @selector(frame));
    [r22 release];
    [r21 release];
    goto loc_10052cd34;

loc_10052cd34:
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff70)) {
            __stack_chk_fail();
    }
    return;

loc_10052c428:
    NSLog(@"_adview.superview was nil! Was the ad view not added to another view?@");
    goto loc_10052cd34;

loc_10052c354:
    [r19 frame];
    v11 = v0;
    v10 = v1;
    v8 = v2;
    v9 = v3;
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    r0 = @class(UIScreen);
    r0 = [r0 mainScreen];
    r29 = r29;
    r0 = [r0 retain];
    [r0 bounds];
    [r0 release];
    if (r22 > 0x6) goto loc_10052cce4;

loc_10052c3ec:
    (0x10052c408 + *(int16_t *)(0x100be8100 + r22 * 0x2) * 0x4)();
    return;

loc_10052cce4:
    [r19 setFrame:r2];
    r0 = NSStringFromCGRect();
    r29 = r29;
    r20 = [r0 retain];
    NSLog(@"setting adView frame: %@", r1);
    goto loc_10052cd34;
}

@end