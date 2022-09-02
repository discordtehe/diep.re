@implementation GADPushTransitionView

-(void)setViews:(void *)arg2 {
    r0 = [arg2 copy];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_views));
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    r20 = [[*(self + r20) firstObject] retain];
    [self setCurrentView:r20];
    [r20 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_animationGroupIdentifier));
    *(self + r8) = *(self + r8) + 0x1;
    [self dispatchAnimation];
    return;
}

-(void)setAnimationDuration:(double)arg2 {
    self->_animationDuration = d0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_animationGroupIdentifier));
    *(self + r8) = *(self + r8) + 0x1;
    [self dispatchAnimation];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_50 = d13;
    stack[-88] = d12;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r0 = [[&var_60 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b5f8];
            r19->_presentationDuration = d0;
            [r0 doubleForKey:*0x100e9b600];
            r19->_animationDuration = d0;
            CGRectGetHeight(CGRectGetWidth([r19 setClipsToBounds:0x1]));
            r0 = [UIView alloc];
            r0 = objc_msgSend(r0, r20);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_clippingView));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            [*(r19 + r20) setClipsToBounds:0x1];
            [r19 addSubview:r2];
            sub_1008897a8();
            [r21 release];
    }
    r0 = r19;
    return r0;
}

-(void)setPresentationDuration:(double)arg2 {
    self->_presentationDuration = d0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_animationGroupIdentifier));
    *(self + r8) = *(self + r8) + 0x1;
    [self dispatchAnimation];
    return;
}

-(void)setCurrentView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r21 = self;
    r19 = [r22 retain];
    r20 = (int64_t *)&r21->_currentView;
    r0 = *r20;
    if (r0 != r19) {
            [r0 removeFromSuperview];
            objc_storeStrong(r20, r22);
            if (*r20 != 0x0) {
                    [r21->_clippingView addSubview:r2];
                    sub_100889560();
            }
    }
    [r19 release];
    return;
}

-(void)dispatchAnimation {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([r19->_views count] >= 0x2) {
            asm { fcvtzs     x20, d0 };
            objc_initWeak(r29 - 0x28, r19);
            dispatch_time(0x0, r20);
            objc_copyWeak(&var_58 + 0x20, r29 - 0x28);
            dispatch_after(r20, *__dispatch_main_q, &var_58);
            objc_destroyWeak(&var_58 + 0x20);
            objc_destroyWeak(r29 - 0x28);
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_currentView, 0x0);
    objc_storeStrong((int64_t *)&self->_clippingView, 0x0);
    objc_storeStrong((int64_t *)&self->_views, 0x0);
    return;
}

-(void)animate {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_views));
    if ([*(r19 + r21) count] != 0x0) {
            r20 = @selector(count);
            [r19 dispatchAnimation];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_currentViewIndex));
            r8 = *(r19 + r22);
            r23 = r8 + 0x1;
            r0 = *(r19 + r21);
            r0 = objc_msgSend(r0, r20);
            asm { udiv       x8, x23, x0 };
            *(r19 + r22) = r23 - r8 * r0;
            r20 = [[*(r19 + r21) objectAtIndexedSubscript:r2] retain];
            [r19 setCurrentView:r20];
            r0 = [CATransition alloc];
            r0 = [r0 init];
            r21 = r0;
            [r0 setType:**_kCATransitionPush];
            r2 = **_kCATransitionFromTop;
            [r21 setSubtype:r2];
            [r21 setDuration:r2];
            r22 = [[CAMediaTimingFunction functionWithName:**_kCAMediaTimingFunctionEaseInEaseOut] retain];
            [r21 setTimingFunction:r22];
            [r22 release];
            r0 = r19->_clippingView;
            r0 = [r0 layer];
            r0 = [r0 retain];
            [r0 addAnimation:r21 forKey:@"PushNewView"];
            [r0 release];
            [r21 release];
            [r20 release];
    }
    return;
}

@end