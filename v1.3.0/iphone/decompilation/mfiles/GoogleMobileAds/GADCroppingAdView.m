@implementation GADCroppingAdView

-(void *)initWithView:(void *)arg2 size:(struct CGSize)arg3 context:(void *)arg4 messageSource:(void *)arg5 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0xa0;
    var_50 = d9;
    stack[-88] = d8;
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
    r20 = [r3 retain];
    r21 = [r4 retain];
    r0 = [[&var_60 super] initWithFrame:r20 context:r3];
    r22 = r0;
    if (r22 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_contentSize));
            *(int128_t *)(r22 + r8) = d9;
            *(int128_t *)(0x8 + r22 + r8) = d8;
            objc_storeWeak((int64_t *)&r22->_messageSource, r21);
            [r22 setClipsToBounds:0x1];
            [r22 setUpSubview:r19];
            r0 = [GADObserverCollection alloc];
            r0 = [r0 init];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r22 + r24);
            *(r22 + r24) = r0;
            [r8 release];
            objc_initWeak(&stack[-120], r22);
            objc_copyWeak(&var_90 + 0x20, &stack[-120]);
            [r24 addObserverForName:*0x100e9c218 object:r21 queue:0x0 usingBlock:&var_90];
            objc_destroyWeak(&var_90 + 0x20);
            objc_destroyWeak(&stack[-120]);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)mediationBannerInnerRefreshWithView:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = r19->_view;
    if (r20 != r2) {
            r22 = [r2 retain];
            [r20 removeFromSuperview];
            [r19 setUpSubview:r22];
            [r22 release];
    }
    return;
}

-(void)setUpSubview:(void *)arg2 {
    r0 = [arg2 retain];
    [r0 setTranslatesAutoresizingMaskIntoConstraints:0x1];
    [self center];
    [r0 setCenter:0x1];
    [r0 setAutoresizingMask:0x2d];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_view));
    r21 = *(self + r8);
    *(self + r8) = r0;
    [r0 retain];
    [r21 release];
    [self addSubview:r2];
    [r20 release];
    return;
}

-(void)layoutSubviews {
    [[&var_40 super] layoutSubviews];
    CGRectGetMidX([self bounds]);
    CGRectGetMidY([self bounds]);
    [r20 setCenter:r2];
    return;
}

-(struct CGSize)intrinsicContentSize {
    r0 = self;
    return r0;
}

-(void)updateAdSizeFromNotification:(void *)arg2 {
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    [[r0 objectForKeyedSubscript:@"size"] retain];
    [r0 release];
    sub_10083ecd8();
    sub_100845b10(&stack[-88]);
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_view));
    [*(self + r20) frame];
    [*(self + r20) setFrame:@"size"];
    [self setContentSize:r2];
    [r21 release];
    return;
}

-(void)setContentSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_contentSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    [self invalidateIntrinsicContentSize];
    [self setNeedsLayout];
    r19 = objc_loadWeakRetained((int64_t *)&self->_messageSource);
    if (r19 != 0x0) {
            [sub_10081ce6c() retain];
            sub_1008833e8(*0x100e9c210, r19, [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain]);
            [r22 release];
            [r21 release];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(struct CGSize)contentSize {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_destroyWeak((int64_t *)&self->_messageSource);
    objc_storeStrong((int64_t *)&self->_view, 0x0);
    return;
}

@end