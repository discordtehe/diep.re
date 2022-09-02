@implementation ISNViewVisibilityParameters

+(bool)isViewVisible:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isHidden] & 0x1) == 0x0 && [r19 isOpaque] != 0x0) {
            r0 = [r19 window];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r0 = [r19 window];
                    r0 = [r0 retain];
                    r21 = [r0 isKeyWindow];
                    [r0 release];
                    [r20 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)isViewHierarchyVisible:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r22 = @selector(superview);
    r0 = objc_msgSend(r0, r22);
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100712404;

loc_1007123a0:
    if (([r19 isHidden] & 0x1) != 0x0) goto loc_10071240c;

loc_1007123b0:
    r23 = [objc_msgSend(r19, r22) retain];
    [r19 release];
    r0 = [r23 superview];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    r19 = r23;
    r22 = @selector(superview);
    if (r0 != 0x0) goto loc_1007123a0;

loc_1007123f8:
    r20 = 0x1;
    r19 = r23;
    goto loc_100712410;

loc_100712410:
    [r19 release];
    r0 = r20;
    return r0;

loc_10071240c:
    r20 = 0x0;
    goto loc_100712410;

loc_100712404:
    r20 = 0x1;
    goto loc_100712410;
}

+(bool)isViewFoundInHierarchy:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r19 = [arg2 retain];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 keyWindow];
    r0 = [r0 retain];
    r20 = [[r0 rootViewController] retain];
    [r0 release];
    [r21 release];
    r0 = [r20 view];
    r0 = [r0 retain];
    r22 = [[r0 subviews] retain];
    [r0 release];
    var_108 = q0;
    r0 = [r22 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 == 0x0) goto loc_1007122e4;

loc_100712274:
    r25 = *var_108;
    goto loc_100712280;

loc_100712280:
    r27 = 0x0;
    goto loc_100712288;

loc_100712288:
    if (*var_108 != r25) {
            objc_enumerationMutation(r21);
    }
    if (([r19 isDescendantOfView:r2] & 0x1) != 0x0) goto loc_1007122ec;

loc_1007122b8:
    r27 = r27 + 0x1;
    if (r27 < r23) goto loc_100712288;

loc_1007122c4:
    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) goto loc_100712280;

loc_1007122e4:
    r22 = 0x0;
    goto loc_1007122f0;

loc_1007122f0:
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1007122ec:
    r22 = 0x1;
    goto loc_1007122f0;
}

+(void *)collectViewVisibilityParametersIntoDictionary:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isHidden] & 0x1) == 0x0 && [r19 isOpaque] != 0x0) {
            r0 = [r19 window];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r0 = [r19 window];
                    r29 = r29;
                    r0 = [r0 retain];
                    var_A0 = r0;
                    r2 = [r0 isKeyWindow];
                    r28 = 0x1;
                    r21 = 0x1;
            }
            else {
                    r21 = 0x0;
                    r2 = 0x0;
                    r28 = 0x1;
            }
    }
    else {
            r28 = 0x0;
            r21 = 0x0;
            r2 = 0x0;
    }
    r24 = [[NSNumber numberWithBool:r2] retain];
    r23 = [[NSNumber numberWithBool:[r19 isHidden]] retain];
    r22 = [[NSNumber numberWithBool:[r19 isOpaque]] retain];
    r26 = @class(NSNumber);
    r0 = [r19 window];
    r0 = [r0 retain];
    r26 = [[r26 numberWithBool:[r0 isKeyWindow]] retain];
    r25 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r26 release];
    [r0 release];
    [r22 release];
    [r23 release];
    [r24 release];
    if (r21 != 0x0) {
            [var_A0 release];
    }
    if (r28 != 0x0) {
            [r20 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r25 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end