@implementation FBAdCardToFullscreenTransition

-(double)transitionDuration:(void *)arg2 {
    r0 = self;
    return r0;
}

-(void)animateTransition:(void *)arg2 {
    r31 = r31 - 0x100;
    var_60 = d9;
    stack[-104] = d8;
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 viewControllerForKey:**_UITransitionContextToViewControllerKey];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 conformsToProtocol:r2] & 0x1) != 0x0) {
            r0 = [r19 viewControllerForKey:**_UITransitionContextFromViewControllerKey];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 conformsToProtocol:r2];
            [r0 release];
            [r20 release];
            if ((r24 & 0x1) != 0x0) {
                    r23 = **_UITransitionContextFromViewControllerKey;
                    r21 = **_UITransitionContextToViewControllerKey;
                    r20 = [[r19 viewControllerForKey:r23] retain];
                    r28 = [[r19 viewControllerForKey:r21] retain];
                    r22 = [UIImageView alloc];
                    r23 = [[r20 targetImage] retain];
                    r22 = [r22 initWithImage:r23];
                    [r23 release];
                    [r20 targetFrame];
                    [r22 setFrame:r23];
                    [r22 setClipsToBounds:0x1];
                    [r22 setContentMode:0x2];
                    r0 = [r20 targetView];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = [r0 layer];
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 cornerRadius];
                    v8 = v0;
                    r0 = [r22 layer];
                    r0 = [r0 retain];
                    [r0 setCornerRadius:0x2];
                    [r0 release];
                    [r24 release];
                    [r23 release];
                    r23 = [[r20 mainView] retain];
                    r0 = [r28 mainView];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r23 != 0x0 && r22 != 0x0) {
                            if (r24 != 0x0) {
                                    r0 = [r28 view];
                                    r0 = [r0 retain];
                                    [r0 layoutIfNeeded];
                                    [r0 release];
                                    r21 = [[r19 containerView] retain];
                                    [r24 setAlpha:0x2];
                                    r0 = [r20 targetView];
                                    r0 = [r0 retain];
                                    [r0 setHidden:0x1];
                                    [r0 release];
                                    var_F0 = r21;
                                    [r21 addSubview:r23];
                                    [r21 addSubview:r24];
                                    [r21 addSubview:r22];
                                    r27 = [[CABasicAnimation animationWithKeyPath:@"cornerRadius"] retain];
                                    r0 = @(0x0);
                                    r0 = [r0 retain];
                                    var_E8 = r28;
                                    [r27 setToValue:r0];
                                    [r0 release];
                                    r28 = [[CAMediaTimingFunction functionWithName:**_kCAMediaTimingFunctionLinear] retain];
                                    [r27 setTimingFunction:r28];
                                    [r28 release];
                                    [r27 setRemovedOnCompletion:0x0];
                                    [r27 setDuration:0x0];
                                    r0 = [r22 layer];
                                    r0 = [r0 retain];
                                    [r0 addAnimation:r27 forKey:@"cornerRadius"];
                                    [r0 release];
                                    r0 = [r23 retain];
                                    r28 = r0;
                                    var_88 = r0;
                                    var_80 = [r24 retain];
                                    r0 = [r22 retain];
                                    r21 = r0;
                                    var_78 = r0;
                                    var_70 = [var_E8 retain];
                                    r0 = r28;
                                    r28 = var_E8;
                                    var_C0 = [r0 retain];
                                    var_B8 = [r21 retain];
                                    var_B0 = [r19 retain];
                                    [UIView animateWithDuration:&var_A8 animations:&var_E0 completion:r4];
                                    [var_B0 release];
                                    [var_B8 release];
                                    [var_C0 release];
                                    [var_70 release];
                                    [var_78 release];
                                    [var_80 release];
                                    [var_88 release];
                                    [r27 release];
                                    [var_F0 release];
                            }
                            else {
                                    [r19 completeTransition:0x0];
                            }
                    }
                    else {
                            [r19 completeTransition:0x0];
                    }
                    [r24 release];
                    [r23 release];
                    [r22 release];
                    [r28 release];
                    [r20 release];
            }
            else {
                    [r19 completeTransition:0x0];
            }
    }
    else {
            [r20 release];
            [r19 completeTransition:0x0];
    }
    [r19 release];
    return;
}

@end