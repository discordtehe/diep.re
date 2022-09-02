@implementation ISOrientationUtillis

+(int)convertControllerStringOrientationToISOrientation:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r8 = [r0 integerValue];
    if (r19 != 0x0 && r8 != 0x0) {
            r1 = @selector(orientationNumberToISOrientation:);
    }
    else {
            r1 = @selector(orientationNameToISOrientation:);
    }
    r20 = objc_msgSend(@class(ISOrientationUtillis), r1);
    [r19 release];
    r0 = r20;
    return r0;
}

+(int)orientationNumberToISOrientation:(long long)arg2 {
    r0 = arg2;
    return r0;
}

+(int)orientationNameToISOrientation:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x6;
    }
    else {
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r20 = 0x18;
            }
            else {
                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                            r20 = 0x2;
                    }
                    else {
                            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                    r20 = 0x4;
                            }
                            else {
                                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                            r20 = 0x10;
                                    }
                                    else {
                                            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                                    r20 = 0x8;
                                            }
                                            else {
                                                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                                            r20 = 0x1a;
                                                    }
                                                    else {
                                                            r20 = @selector(isEqualToString:);
                                                            if (objc_msgSend(r19, r20) != 0x0) {
                                                                    if (!CPU_FLAGS & NE) {
                                                                            r20 = 0x0;
                                                                    }
                                                                    else {
                                                                            r20 = 0x1e;
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(int)plistSupportedOrientationMask {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*qword_1011dace0 != -0x1) {
            dispatch_once(0x1011dace0, 0x100e8d4d0);
    }
    r0 = *(int32_t *)0x1011dacd8;
    if (r0 == 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r19 = [r0 statusBarOrientation];
            [r0 release];
            if (r19 < 0x5) {
                    r0 = *(int32_t *)(0x100bf31f0 + r19 * 0x4);
            }
            else {
                    r0 = *(int32_t *)0x1011dacd8;
            }
    }
    return r0;
}

+(int)UIInterfaceOrientation2ISOrientation:(long long)arg2 {
    r8 = arg2 - 0x1;
    if (r8 <= 0x3) {
            r0 = *(int32_t *)(0x100bf3210 + r8 * 0x4);
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(long long)ISOrientation2UIInterfaceOrientation:(int)arg2 {
    r0 = arg2 & 0x1e;
    return r0;
}

+(long long)orientationLockedStateFromOrientation:(int)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            r9 = r2 & 0x18;
            r8 = r2 & 0x6;
            if (r8 != 0x0 && r9 != 0x0) {
                    r0 = 0x3;
            }
            else {
                    if (r9 != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r9 = 0x1;
                            }
                    }
                    if (r8 == 0x0) {
                            asm { csinc      x0, x9, xzr, eq };
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(struct CGRect)orientationDependantFullScreenRect {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 statusBarOrientation] < 0x3) {
            if (CPU_FLAGS & B) {
                    r21 = 0x1;
            }
    }
    [r20 release];
    r0 = [r19 orientationDependantFullScreenRect:r21];
    return r0;
}

+(struct CGRect)orientationDependantFullScreenRect:(bool)arg2 {
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 bounds];
    v8 = v0;
    v9 = v1;
    r0 = [r0 release];
    if (d10 < d11) {
            asm { fcsel      d0, d10, d11, mi };
    }
    if (CPU_FLAGS & S) {
            asm { fcsel      d1, d11, d10, mi };
    }
    if (r19 != 0x0) {
            asm { fcsel      d2, d0, d1, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { fcsel      d3, d1, d0, ne };
    }
    return r0;
}

+(bool)orientationsHasSharedOrientation:(int)arg2 andOrientation:(int)arg3 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self sharedOrientationsBetweenOrientation:arg2 andOrientation:arg3];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void *)lockedStateAsControllerString:(long long)arg2 {
    r31 = r31 - 0xa0;
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
    var_48 = **___stack_chk_guard;
    r21 = [@(0x0) retain];
    r22 = [@(0x1) retain];
    r23 = [@(0x2) retain];
    r24 = [@(0x3) retain];
    r25 = [[NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_88 count:0x4] retain];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    r20 = [[NSNumber numberWithInteger:arg2] retain];
    r19 = [[r25 objectForKeyedSubscript:r20] retain];
    [r20 release];
    [r25 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(int)sharedOrientationsBetweenOrientation:(int)arg2 andOrientation:(int)arg3 {
    r0 = arg3 & arg2;
    return r0;
}

@end