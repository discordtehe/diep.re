@implementation ISConstrainsHelper

+(void)removeConstraintsForView:(void *)arg2 constraints:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r21 release];
    if (r23 != -0x1) {
            [NSLayoutConstraint deactivateConstraints:r20];
    }
    else {
            [r19 removeConstraints:r20];
            r0 = [r19 superview];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 superview];
                    r0 = [r0 retain];
                    [r0 removeConstraints:r20];
                    [r0 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

+(void *)setFullScreenConstraintsForViewAccordingToSuperView:(void *)arg2 {
    var_50 = d9;
    stack[-88] = d8;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [[NSMutableArray alloc] init];
    if ([r19 translatesAutoresizingMaskIntoConstraints] != 0x0) {
            [r19 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    }
    r23 = @class(NSLayoutConstraint);
    r24 = [[r19 superview] retain];
    r25 = [[r23 constraintWithItem:r19 attribute:0x7 relatedBy:0x0 toItem:r24 attribute:0x7 multiplier:r7 constant:var_50] retain];
    [r20 addObject:r25];
    [r25 release];
    [r24 release];
    r24 = @class(NSLayoutConstraint);
    r25 = [[r19 superview] retain];
    r24 = [[r24 constraintWithItem:r19 attribute:0x8 relatedBy:0x0 toItem:r25 attribute:0x8 multiplier:r7 constant:var_50] retain];
    [r20 addObject:r24];
    [r24 release];
    [r25 release];
    r24 = @class(NSLayoutConstraint);
    r25 = [[r19 superview] retain];
    r24 = [[r24 constraintWithItem:r19 attribute:0x9 relatedBy:0x0 toItem:r25 attribute:0x9 multiplier:r7 constant:var_50] retain];
    [r20 addObject:r24];
    [r24 release];
    [r25 release];
    r24 = @class(NSLayoutConstraint);
    r25 = [[r19 superview] retain];
    r22 = [[r24 constraintWithItem:r19 attribute:0xa relatedBy:0x0 toItem:r25 attribute:0xa multiplier:r7 constant:var_50] retain];
    [r20 addObject:r22];
    [r22 release];
    [r25 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r22 release];
    if (r24 != -0x1) {
            [NSLayoutConstraint activateConstraints:r20];
    }
    else {
            r0 = [r19 superview];
            r0 = [r0 retain];
            [r0 addConstraints:r20];
            [r0 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)setView:(void *)arg2 ToTopView:(void *)arg3 withScreenRatio:(double)arg4 isFirstViewOnScreen:(bool)arg5 {
    var_50 = d9;
    stack[-88] = d8;
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
    r29 = &saved_fp;
    v8 = v0;
    r23 = arg3;
    r19 = [arg2 retain];
    r24 = [r23 retain];
    r20 = [[NSMutableArray alloc] init];
    [r19 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    if (arg4 == 0x0) {
            asm { cinc       x6, x8, eq };
    }
    r21 = [[NSLayoutConstraint constraintWithItem:r19 attribute:0x3 relatedBy:0x0 toItem:r23 attribute:r6 multiplier:r7 constant:var_50] retain];
    [r24 release];
    [r20 addObject:r21];
    [r21 release];
    r24 = @class(NSLayoutConstraint);
    r25 = [[r19 superview] retain];
    r24 = [[r24 constraintWithItem:r19 attribute:0x5 relatedBy:0x0 toItem:r25 attribute:0x5 multiplier:r7 constant:var_50] retain];
    [r20 addObject:r24];
    [r24 release];
    [r25 release];
    r24 = @class(NSLayoutConstraint);
    r25 = [[r19 superview] retain];
    r24 = [[r24 constraintWithItem:r25 attribute:0x6 relatedBy:0x0 toItem:r19 attribute:0x6 multiplier:r7 constant:var_50] retain];
    [r20 addObject:r24];
    [r24 release];
    [r25 release];
    r24 = @class(NSLayoutConstraint);
    r25 = [[r19 superview] retain];
    r22 = [[r24 constraintWithItem:r19 attribute:0x8 relatedBy:0x0 toItem:r25 attribute:0x8 multiplier:r7 constant:var_50] retain];
    [r25 release];
    [r20 addObject:r22];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r23 release];
    if (r25 != -0x1) {
            [NSLayoutConstraint activateConstraints:r20];
    }
    else {
            r0 = [r19 superview];
            r0 = [r0 retain];
            [r0 addConstraints:r20];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)setFullScreenConstraintsLandscapeToPortraitViewAccordingToSuperView:(void *)arg2 {
    var_50 = d9;
    stack[-88] = d8;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [[NSMutableArray alloc] init];
    if ([r19 translatesAutoresizingMaskIntoConstraints] != 0x0) {
            [NSException raise:@"Invalid Constraints" format:@"Can't setup Constraints for view with translatesAutoresizingMaskIntoConstraints, please set the view translatesAutoresizingMaskIntoConstraints to no first"];
    }
    else {
            [[NSLayoutConstraint constraintWithItem:r19 attribute:0x8 relatedBy:0x0 toItem:[[r19 superview] retain] attribute:0x7 multiplier:r7 constant:var_50] retain];
            [r20 addObject:r2];
            [r25 release];
            [r24 release];
            r24 = @class(NSLayoutConstraint);
            [[r24 constraintWithItem:r19 attribute:0x7 relatedBy:0x0 toItem:[[r19 superview] retain] attribute:0x8 multiplier:r7 constant:var_50] retain];
            objc_msgSend(r20, r23);
            [r24 release];
            [r25 release];
            r24 = @class(NSLayoutConstraint);
            [[r24 constraintWithItem:r19 attribute:0x9 relatedBy:0x0 toItem:[[r19 superview] retain] attribute:0x9 multiplier:r7 constant:var_50] retain];
            objc_msgSend(r20, r23);
            [r24 release];
            [r25 release];
            r0 = [NSLayoutConstraint constraintWithItem:r19 attribute:0xa relatedBy:0x0 toItem:[[r19 superview] retain] attribute:0xa multiplier:r7 constant:var_50];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r20, r23);
            [r21 release];
            [r22 release];
    }
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r21 release];
    if (r23 != -0x1) {
            [NSLayoutConstraint activateConstraints:r20];
    }
    else {
            r0 = [r19 superview];
            r0 = [r0 retain];
            [r0 addConstraints:r20];
            [r0 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end