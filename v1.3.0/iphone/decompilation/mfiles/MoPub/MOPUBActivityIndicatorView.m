@implementation MOPUBActivityIndicatorView

-(void)startAnimating {
    r0 = [self bgView];
    r0 = [r0 retain];
    [r0 setHidden:0x0];
    [r0 release];
    r0 = [self activityIndicator];
    r0 = [r0 retain];
    [r0 startAnimating];
    [r0 release];
    return;
}

-(void)stopAnimating {
    r0 = [self bgView];
    r0 = [r0 retain];
    [r0 setHidden:0x1];
    [r0 release];
    r0 = [self activityIndicator];
    r0 = [r0 retain];
    [r0 stopAnimating];
    [r0 release];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
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
    r0 = [[&var_50 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = @selector(initWithFrame:);
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r20);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_bgView));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            r20 = [[UIColor mp_colorFromHexString:@"#000000" alpha:r3] retain];
            [*(r19 + r21) setBackgroundColor:r20];
            [r20 release];
            r0 = *(r19 + r21);
            r0 = [r0 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r20];
            [r0 release];
            [r19 addSubview:*(r19 + r21)];
            r0 = objc_alloc();
            r0 = [r0 initWithActivityIndicatorStyle:0x1];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_activityIndicator));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r19 center];
            [*(r19 + r21) setCenter:0x1];
            CGRectIntegral([*(r19 + r21) frame]);
            [*(r19 + r21) setFrame:r2];
            [r19 addSubview:*(r19 + r21)];
    }
    r0 = r19;
    return r0;
}

-(bool)isAnimating {
    r0 = [self activityIndicator];
    r0 = [r0 retain];
    r20 = [r0 isAnimating];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)activityIndicator {
    r0 = self->_activityIndicator;
    return r0;
}

-(void)setActivityIndicator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_activityIndicator, arg2);
    return;
}

-(void *)bgView {
    r0 = self->_bgView;
    return r0;
}

-(void)setBgView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_bgView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_bgView, 0x0);
    objc_storeStrong((int64_t *)&self->_activityIndicator, 0x0);
    return;
}

@end