@implementation FBAdIntroCardTransition

-(void *)initWithTitle:(void *)arg2 subtitle:(void *)arg3 iconURL:(void *)arg4 iconStyle:(unsigned long long)arg5 shouldShowIntroCardTransition:(bool)arg6 token:(void *)arg7 {
    r31 = r31 - 0x70;
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
    r21 = arg7;
    r22 = arg6;
    r26 = arg5;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = [arg4 retain];
    r25 = [r21 retain];
    r0 = [[&var_60 super] init];
    r24 = r0;
    if (r0 != 0x0) {
            r0 = [FBAdIntroScreenView alloc];
            r0 = [r0 initWithTitle:r19 subtitle:r20 iconURL:r23 iconStyle:r26];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_introScreenView));
            r26 = *(r24 + r8);
            *(r24 + r8) = r0;
            [r0 retain];
            [r26 release];
            r0 = [UIVisualEffectView new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_blurEffectView));
            r8 = *(r24 + r9);
            *(r24 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r24->_showIntroCardTransition = r22;
            objc_storeStrong((int64_t *)&r24->_token, r21);
            [r27 release];
    }
    [r25 release];
    [r23 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void)blurInitialViewFromView:(void *)arg2 toView:(void *)arg3 topViewController:(void *)arg4 transitionContext:(void *)arg5 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r24 = [[UIBlurEffect effectWithStyle:0x2] retain];
    [r22 frame];
    r0 = [self blurEffectView];
    r0 = [r0 retain];
    [r0 setFrame:0x2];
    [r0 release];
    r25 = [[self blurEffectView] retain];
    [r22 addSubview:r25];
    [r25 release];
    r23 = [r24 retain];
    var_B0 = r22;
    r22 = [r22 retain];
    var_A8 = r21;
    r21 = [r21 retain];
    var_A0 = r20;
    r20 = [r20 retain];
    var_98 = r19;
    r19 = [r19 retain];
    [UIView animateWithDuration:&var_90 animations:&var_D8 completion:r4];
    [var_98 release];
    [var_A0 release];
    [var_A8 release];
    [var_B0 release];
    [r24 release];
    [r19 release];
    [r20 release];
    [r21 release];
    [r22 release];
    [r23 release];
    return;
}

-(void)animateTransition:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 viewControllerForKey:**_UITransitionContextToViewControllerKey];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [UINavigationController class];
    r24 = [r21 isKindOfClass:r2];
    [r21 release];
    if ((r24 & 0x1) != 0x0) {
            r22 = **_UITransitionContextToViewControllerKey;
            r21 = [[r19 viewControllerForKey:**_UITransitionContextFromViewControllerKey] retain];
            r0 = [r19 viewControllerForKey:r22];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 topViewController];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r23 = [[r22 topViewController] retain];
                    r24 = [[r19 containerView] retain];
                    r25 = [[r22 view] retain];
                    r0 = [r21 view];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r24 addSubview:r26];
                    if ([r20 showIntroCardTransition] != 0x0) {
                            r27 = [[FBAdFunnelLogging sharedFunnelLogger] retain];
                            r28 = [[r20 token] retain];
                            [r27 logUXFunnelEventOfSubtype:@"intro_card_shown" withToken:r28 withExtraData:0x0];
                            [r28 release];
                            [r27 release];
                            [r20 blurInitialViewFromView:r26 toView:r25 topViewController:r23 transitionContext:r19];
                    }
                    else {
                            r27 = [[r20 introScreenView] retain];
                            [r20 fadeInFinalViewFromView:r26 toView:r25 introScreenView:r27 topViewController:r23 transitionContext:r19];
                            [r27 release];
                    }
                    [r26 release];
                    [r25 release];
                    [r24 release];
                    [r23 release];
            }
            else {
                    [r19 completeTransition:0x1];
            }
            [r22 release];
            [r21 release];
    }
    else {
            [r19 completeTransition:0x1];
    }
    [r19 release];
    return;
}

-(void)introCardScaleUpFromView:(void *)arg2 toView:(void *)arg3 topViewController:(void *)arg4 transitionContext:(void *)arg5 {
    [arg2 retain];
    [arg3 retain];
    [arg4 retain];
    r0 = [arg5 retain];
    r19 = [[r0 containerView] retain];
    r25 = [[self introScreenView] retain];
    [r19 addSubview:r25];
    CGAffineTransformMakeScale([r25 layoutIfNeeded], @selector(layoutIfNeeded));
    [r25 setTransform:&var_D0];
    [r25 setAlpha:&var_D0];
    r26 = @class(UIView);
    r0 = [r25 retain];
    var_D8 = r0;
    [r26 animateWithDuration:&var_F8 animations:r3];
    r26 = @class(UIView);
    r0 = [r0 retain];
    var_148 = r24;
    [r24 retain];
    var_140 = r23;
    [r23 retain];
    [r0 retain];
    var_130 = r21;
    [r21 retain];
    var_128 = r20;
    r25 = @selector(animateWithDuration:delay:options:animations:completion:);
    [r20 retain];
    objc_msgSend(r26, r25);
    [var_128 release];
    [var_130 release];
    [r0 release];
    [var_140 release];
    [var_148 release];
    [r0 release];
    [var_D8 release];
    [r20 release];
    [r21 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)introCardScaleDownFromView:(void *)arg2 toView:(void *)arg3 introScreenView:(void *)arg4 topViewController:(void *)arg5 transitionContext:(void *)arg6 {
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r24 = [arg4 retain];
    r22 = [arg5 retain];
    r25 = @class(UIView);
    r23 = [arg6 retain];
    r0 = [r24 retain];
    [r25 animateWithDuration:0x30000 delay:&var_98 options:0x0 animations:r5 completion:r6];
    r25 = @class(UIView);
    r24 = [r0 retain];
    [r25 animateWithDuration:0x0 delay:&var_C0 options:0x0 animations:r5 completion:r6];
    [self fadeInFinalViewFromView:r19 toView:r20 introScreenView:r24 topViewController:r22 transitionContext:r23];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    [r0 release];
    [r0 release];
    [r24 release];
    return;
}

-(double)transitionDuration:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self showIntroCardTransition];
    if (r0 != 0x0) {
            asm { fcsel      d0, d1, d0, ne };
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_token, 0x0);
    objc_storeStrong((int64_t *)&self->_blurEffectView, 0x0);
    objc_storeStrong((int64_t *)&self->_introScreenView, 0x0);
    return;
}

-(void)fadeInFinalViewFromView:(void *)arg2 toView:(void *)arg3 introScreenView:(void *)arg4 topViewController:(void *)arg5 transitionContext:(void *)arg6 {
    r31 = r31 - 0x1a0;
    var_70 = d11;
    stack[-120] = d10;
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
    r29 = &saved_fp;
    r21 = self;
    r22 = [arg2 retain];
    r25 = [arg3 retain];
    r23 = [arg4 retain];
    r20 = [arg5 retain];
    r24 = [arg6 retain];
    r0 = [r21 showIntroCardTransition];
    d1 = 0x0;
    if (r0 != 0x0) {
            asm { fcsel      d8, d0, d1, ne };
    }
    r0 = [r24 containerView];
    r0 = [r0 retain];
    var_188 = r0;
    [r0 addSubview:r25];
    [r25 release];
    r0 = [r20 view];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setAlpha:r25];
    [r0 release];
    r26 = *(&@class(MCConfigurationData) + 0xe0);
    r0 = [r20 retain];
    r20 = r0;
    var_80 = r0;
    r0 = [r22 retain];
    var_190 = r0;
    var_B8 = r0;
    r0 = [r23 retain];
    r22 = r0;
    var_B0 = r0;
    r0 = [r24 retain];
    r23 = r0;
    var_A8 = r0;
    [r26 animateWithDuration:0x30000 delay:r29 - 0xa0 options:&var_E0 animations:r5 completion:r6];
    if ([r20 respondsToSelector:r2] != 0x0) {
            r0 = [r20 toolbarView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setAlpha:@selector(toolbarView)];
            r28 = @class(UIView);
            r0 = [r0 retain];
            [r28 animateWithDuration:0x30000 delay:&var_108 options:0x0 animations:r5 completion:r6];
            [r0 frame];
            d1 = 0xc02c000000000000;
            [r0 setFrame:0x30000];
            r28 = @class(UIView);
            r27 = [r0 retain];
            [r28 animateWithDuration:0x0 delay:&var_130 options:0x0 animations:r5 completion:r6];
            [r0 release];
            [r0 release];
            [r27 release];
    }
    r2 = @selector(adDetailsAndCTAButtonContainerView);
    if ([r20 respondsToSelector:r2] != 0x0) {
            r0 = [r20 adDetailsAndCTAButtonContainerView];
            r0 = [r0 retain];
            [r0 setAlpha:r2];
            r25 = *(&@class(MCConfigurationData) + 0xe0);
            r0 = [r0 retain];
            [r25 animateWithDuration:0x30000 delay:&var_158 options:0x0 animations:r5 completion:r6];
            [r0 frame];
            [r0 setFrame:0x30000];
            r25 = *(&@class(MCConfigurationData) + 0xe0);
            r26 = [r0 retain];
            [r25 animateWithDuration:0x0 delay:&var_180 options:0x0 animations:r5 completion:r6];
            [r0 release];
            [r0 release];
            [r26 release];
    }
    [var_A8 release];
    [var_B0 release];
    [var_B8 release];
    [var_80 release];
    [var_188 release];
    [r23 release];
    [r20 release];
    [r22 release];
    [var_190 release];
    return;
}

-(void *)introScreenView {
    r0 = self->_introScreenView;
    return r0;
}

-(void)setIntroScreenView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_introScreenView, arg2);
    return;
}

-(void *)blurEffectView {
    r0 = self->_blurEffectView;
    return r0;
}

-(void)setBlurEffectView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_blurEffectView, arg2);
    return;
}

-(bool)showIntroCardTransition {
    r0 = *(int8_t *)(int64_t *)&self->_showIntroCardTransition;
    return r0;
}

-(void)setShowIntroCardTransition:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_showIntroCardTransition = arg2;
    return;
}

-(void *)token {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_token)), 0x0);
    return r0;
}

-(void)setToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end