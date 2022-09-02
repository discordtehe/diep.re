@implementation SSEOrientationContext

+(long long)deviceOrientation {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [r0 orientation];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)supportedInterfaceOrientations {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 objectForInfoDictionaryKey:@"UISupportedInterfaceOrientations"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(unsigned long long)topMostViewControllerOrientation {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 keyWindow];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 rootViewController];
    r0 = [r0 retain];
    r22 = [r0 supportedInterfaceOrientations];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(long long)preferredInterfaceOrientationForPresentation {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 keyWindow];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 rootViewController];
    r0 = [r0 retain];
    r22 = [r0 preferredInterfaceOrientationForPresentation];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(unsigned long long)topMostViewControlleShouldAutorotate {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 keyWindow];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 rootViewController];
    r0 = [r0 retain];
    r22 = [r0 shouldAutorotate];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(long long)statusBarOrientation {
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = [r0 statusBarOrientation];
    [r0 release];
    r0 = r20;
    return r0;
}

+(unsigned long long)windowOrientation {
    r20 = [[UIApplication sharedApplication] retain];
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 retain];
    r21 = [[r0 keyWindow] retain];
    r22 = [r20 supportedInterfaceOrientationsForWindow:r21];
    [r21 release];
    [r0 release];
    [r20 release];
    r0 = r22;
    return r0;
}

+(bool)isWindowOrientationOverrided {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 delegate];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r22 = @selector(delegate);
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r23 = r0;
            r0 = objc_msgSend(r0, r22);
            r0 = [r0 retain];
            r21 = [r0 respondsToSelector:@selector(application:supportedInterfaceOrientationsForWindow:), r3];
            [r0 release];
            [r23 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(unsigned long long)supportedOrientationForViewController:(void *)arg2 {
    r2 = arg2;
    if (r2 != 0x0) {
            r0 = [r2 supportedInterfaceOrientations];
    }
    else {
            r0 = 0xffffffffffffffff;
    }
    return r0;
}

+(void *)applicationOrientationData {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[ISOrientationData alloc] init];
    [r20 setCurrentDeviceOrientation:[r19 deviceOrientation]];
    r21 = [[r19 supportedInterfaceOrientations] retain];
    [r20 setPlistOrientation:r21];
    [r21 release];
    [r20 setWindowOrientation:[r19 windowOrientation]];
    [r20 setTopMostViewControllerOrientation:[r19 topMostViewControllerOrientation]];
    if ([r19 topMostViewControlleShouldAutorotate] != 0x0) {
            if (CPU_FLAGS & NE) {
                    r2 = 0x1;
            }
    }
    [r20 setTopMostViewControllerShouldAutorotate:r2];
    [r20 setPreferredInterfaceOrientationForPresentation:[r19 preferredInterfaceOrientationForPresentation]];
    [r20 setStatusBarOrientation:[r19 statusBarOrientation]];
    [r20 setIsWindowOrientationOverrided:[r19 isWindowOrientationOverrided]];
    r0 = [r20 autorelease];
    return r0;
}

+(long long)orientationLockedState {
    r31 = r31 - 0x140;
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
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 objectForInfoDictionaryKey:@"UISupportedInterfaceOrientations"] retain];
    [r0 release];
    var_108 = q0;
    r0 = [r20 retain];
    r19 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r21 = objc_msgSend(r0, r1);
    if (r21 != 0x0) {
            r26 = 0x0;
            r27 = 0x0;
            r28 = *var_108;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_108 != r28) {
                                    objc_enumerationMutation(r19);
                            }
                            r8 = var_110;
                            r25 = *(r8 + r23 * 0x8);
                            if ([r25 rangeOfString:r2 options:r3] == 0x7fffffffffffffff) {
                                    if ([r25 rangeOfString:r2 options:r3] != 0x7fffffffffffffff) {
                                            if (CPU_FLAGS & NE) {
                                                    r8 = 0x1;
                                            }
                                    }
                                    r26 = r26 | r8;
                            }
                            else {
                                    r27 = 0x1;
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r21);
                    r21 = objc_msgSend(r19, var_120);
            } while (r21 != 0x0);
            [r19 release];
            r8 = r26 ^ r27;
            if ((r26 & 0x1) == 0x0) {
                    asm { cinc       x9, x9, eq };
            }
            r20 = 0x7fffffffffffffff;
            if ((r8 & 0x1) != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r20 = 0x0;
                    }
                    else {
                            r20 = 0x1;
                    }
            }
    }
    else {
            [r19 release];
            r20 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)applicationOrientationDataWithAppDelegateDataIfAllowed:(bool)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r0 = [SSEOrientationContext applicationOrientationData];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (arg2 == 0x0 || [r19 isWindowOrientationOverrided] == 0x0) goto loc_10070ad38;

loc_10070abc4:
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 delegate];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_10070ad30;

loc_10070ac08:
    r22 = @selector(delegate);
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r25 = r0;
    r0 = objc_msgSend(r0, r22);
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(application:supportedInterfaceOrientationsForWindow:), r3];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    if (r27 == 0x0) goto loc_10070ad38;

loc_10070ac74:
    r22 = @selector(delegate);
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 retain];
    r23 = r0;
    r22 = [objc_msgSend(r0, r22) retain];
    r24 = [[UIApplication sharedApplication] retain];
    r0 = @class(UIApplication);
    r0 = [r0 sharedApplication];
    r0 = [r0 retain];
    r25 = [[r0 keyWindow] retain];
    [r19 setWindowOrientation:[r22 application:r24 supportedInterfaceOrientationsForWindow:r25]];
    [r25 release];
    [r0 release];
    [r24 release];
    [r22 release];
    goto loc_10070ad30;

loc_10070ad30:
    [r23 release];
    goto loc_10070ad38;

loc_10070ad38:
    r0 = [r19 autorelease];
    return r0;
}

@end