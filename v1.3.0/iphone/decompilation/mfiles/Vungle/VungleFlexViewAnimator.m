@implementation VungleFlexViewAnimator

-(void *)initWithIsPresentation:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(r0 + 0x8) = r19;
    }
    return r0;
}

-(double)transitionDuration:(void *)arg2 {
    r0 = self;
    return r0;
}

-(bool)isPresentation {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)animateTransition:(void *)arg2 {
    r31 = r31 - 0x110;
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
    r29 = &var_10;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isPresentation] != 0x0) {
            r21 = [[r19 viewControllerForKey:**_UITransitionContextToViewControllerKey] retain];
            r25 = [[r19 containerView] retain];
            r0 = [r21 view];
            r29 = r29;
            r2 = [r0 retain];
            [r25 addSubview:r2];
            [r26 release];
            [r25 release];
    }
    else {
            r0 = [r19 viewControllerForKey:**_UITransitionContextFromViewControllerKey];
            r29 = r29;
            r21 = [r0 retain];
    }
    [r19 finalFrameForViewController:r21];
    v8 = v2;
    v9 = v3;
    r0 = [r19 containerView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 frame];
    v12 = v2;
    v13 = v3;
    [r24 release];
    if (d12 > d13) {
            asm { fcsel      d14, d12, d10, gt };
    }
    if (CPU_FLAGS & G) {
            asm { fcsel      d15, d11, d13, gt };
    }
    if ([r20 isPresentation] != 0x0) {
            asm { fcsel      d12, d15, d11, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { fcsel      d13, d14, d10, ne };
    }
    if ([r20 isPresentation] != 0x0) {
            asm { fcsel      d14, d10, d14, ne };
    }
    if (CPU_FLAGS & NE) {
            asm { fcsel      d11, d11, d15, ne };
    }
    r0 = [r21 view];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    [r20 transitionDuration:r19];
    var_C8 = r21;
    [r21 retain];
    var_F0 = r19;
    r22 = @selector(animateWithDuration:delay:options:animations:completion:);
    [r19 retain];
    objc_msgSend(@class(UIView), r22);
    [var_F0 release];
    [var_C8 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)setIsPresentation:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

@end