@implementation FBCustomEndcardPresentation

-(double)transitionDuration:(void *)arg2 {
    r0 = self;
    return r0;
}

-(void)animateTransition:(void *)arg2 {
    r31 = r31 - 0x130;
    var_A0 = d15;
    stack[-152] = d14;
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [[r0 containerView] retain];
    r0 = [r19 viewControllerForKey:**_UITransitionContextToViewControllerKey];
    r29 = &var_10;
    r0 = [r0 retain];
    r24 = r0;
    if (([r0 respondsToSelector:r2] & 0x1) != 0x0) {
            r27 = @selector(respondsToSelector:);
            r0 = [r19 viewControllerForKey:**_UITransitionContextFromViewControllerKey];
            r29 = r29;
            r0 = [r0 retain];
            r27 = objc_msgSend(r0, r27);
            [r0 release];
            [r24 release];
            if ((r27 & 0x1) != 0x0) {
                    r25 = **_UITransitionContextFromViewControllerKey;
                    r22 = **_UITransitionContextToViewControllerKey;
                    var_110 = r21;
                    r25 = [[r19 viewControllerForKey:r25] retain];
                    r0 = [r19 viewControllerForKey:r22];
                    r0 = [r0 retain];
                    r28 = r0;
                    r23 = [[r0 view] retain];
                    r21 = [[r25 view] retain];
                    [r23 layoutIfNeeded];
                    var_118 = r21;
                    [r20 addSubview:r21];
                    var_120 = r23;
                    [r20 addSubview:r23];
                    r27 = [[r28 adDetailsAndCTAButtonContainerView] retain];
                    r0 = [r25 adDetailsAndCTAButtonContainerView];
                    r0 = [r0 retain];
                    r26 = r0;
                    [r0 alpha];
                    v9 = v0;
                    r0 = [r26 adDetailsView];
                    r0 = [r0 retain];
                    [r0 alpha];
                    [r0 release];
                    [r26 alpha];
                    v8 = v0;
                    r0 = [r26 callToActionButton];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 alpha];
                    [r0 release];
                    if (r27 != 0x0) {
                            if (d8 < d11) {
                                    asm { fcsel      d8, d8, d11, mi };
                            }
                            if (d9 < d10) {
                                    asm { fcsel      d9, d9, d10, mi };
                            }
                            [r26 frame];
                            r0 = [r26 superview];
                            r0 = [r0 retain];
                            var_128 = @selector(callToActionButton);
                            r21 = r0;
                            [r20 convertRect:r21 fromView:r3];
                            [r27 frame];
                            r0 = [r27 superview];
                            r29 = r29;
                            r23 = [r0 retain];
                            r25 = r25;
                            r28 = r28;
                            [r20 convertRect:r23 fromView:r3];
                            d10 = d10 - d1;
                            [r23 release];
                            [r21 release];
                            if (d10 < 0x0) {
                                    asm { fcsel      d10, d0, d10, mi };
                            }
                            r0 = [r27 adDetailsView];
                            r0 = [r0 retain];
                            [r0 setAlpha:@selector(adDetailsAndCTAButtonContainerView)];
                            [r0 release];
                            r0 = objc_msgSend(r27, var_128);
                            r0 = [r0 retain];
                            v0 = v8;
                            [r0 setAlpha:@selector(adDetailsAndCTAButtonContainerView)];
                            [r0 release];
                            [r27 frame];
                            [r27 setFrame:r2];
                    }
                    else {
                            d10 = 0x0;
                    }
                    [var_110 transitionDuration:r19];
                    r22 = [r27 retain];
                    var_E8 = [r19 retain];
                    r24 = [var_120 retain];
                    [UIView animateWithDuration:&var_D8 animations:&var_108 completion:r4];
                    [var_120 release];
                    [var_E8 release];
                    [r27 release];
                    [r24 release];
                    [r22 release];
                    [r26 release];
                    [var_118 release];
                    [r28 release];
                    [r25 release];
            }
            else {
                    [r19 completeTransition:0x0];
            }
    }
    else {
            [r24 release];
            [r19 completeTransition:0x0];
    }
    [r20 release];
    [r19 release];
    return;
}

@end