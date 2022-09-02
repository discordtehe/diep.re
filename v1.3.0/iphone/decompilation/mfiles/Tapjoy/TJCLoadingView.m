@implementation TJCLoadingView

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
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [TJCUtil getMainResourceBundle];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 loadNibNamed:@"TJCLoadingView" owner:r19 options:0x0];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 objectAtIndex:0x0];
            r0 = [r0 retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_mainView));
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            [r21 release];
            [*(r19 + r22) setFrame:0x0];
            r0 = objc_loadWeakRetained((int64_t *)&r19->_loadingBG);
            r21 = r0;
            r0 = [r0 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:0x0];
            [r0 release];
            [r21 release];
            r0 = objc_loadWeakRetained((int64_t *)&r19->_fullBGView);
            r21 = r0;
            [r0 alpha];
            asm { fcvt       s0, d0 };
            *(int32_t *)(int64_t *)&r19->_bgAlpha = s0;
            [r21 release];
            *(int8_t *)(int64_t *)&r19->_enabled = 0x0;
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)disable {
    [self->_mainView setAlpha:r2];
    r0 = objc_loadWeakRetained((int64_t *)&self->_fullBGView);
    [r0 setAlpha:r2];
    [r0 release];
    r0 = objc_loadWeakRetained((int64_t *)&self->_activityIndicator);
    [r0 stopAnimating];
    [r0 release];
    *(int8_t *)(int64_t *)&self->_enabled = 0x0;
    return;
}

-(void)enable {
    [self->_mainView setAlpha:r2];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_fullBGView);
    asm { fcvt       d0, s0 };
    objc_msgSend(r0, r20);
    [r21 release];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_activityIndicator);
    [r0 startAnimating];
    [r0 release];
    *(int8_t *)(int64_t *)&r19->_enabled = 0x1;
    return;
}

-(void)fade:(bool)arg2 {
    var_50 = d11;
    stack[-88] = d10;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    asm { ucvtf      s9, w20 };
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_mainView));
    [*(r19 + r23) alpha];
    asm { fcvt       d8, s9 };
    if (d0 != d8) {
            asm { ucvtf      s10, w8 };
            r0 = *(r19 + r23);
            asm { fcvt       d0, s10 };
            [r0 setAlpha:r2];
            r0 = objc_loadWeakRetained((int64_t *)&r19->_fullBGView);
            asm { fcvt       d0, s0 };
            objc_msgSend(r0, r20);
            [r22 release];
            r0 = objc_loadWeakRetained((int64_t *)&r19->_activityIndicator);
            [r0 startAnimating];
            [r0 release];
            [*(&@class(MCConfigurationData) + 0xe0) beginAnimations:0x0 context:0x0];
            [*(&@class(MCConfigurationData) + 0xe0) setAnimationDuration:0x0];
            objc_msgSend(*(r19 + r23), r20);
            r0 = objc_loadWeakRetained(r21);
            asm { fcvt       d0, s0 };
            objc_msgSend(r0, r20);
            [r21 release];
            [*(r22 + 0xe0) commitAnimations];
    }
    return;
}

-(void)fadeIn {
    [self fade:0x1];
    return;
}

-(void)fadeOut {
    [self fade:0x0];
    return;
}

-(void *)mainView {
    r0 = self->_mainView;
    return r0;
}

-(void)setMainView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mainView, arg2);
    return;
}

-(void *)loadingBG {
    r0 = objc_loadWeakRetained((int64_t *)&self->_loadingBG);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setLoadingBG:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_loadingBG, arg2);
    return;
}

-(void *)activityIndicator {
    r0 = objc_loadWeakRetained((int64_t *)&self->_activityIndicator);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setActivityIndicator:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_activityIndicator, arg2);
    return;
}

-(void *)loadingLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_loadingLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setLoadingLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_loadingLabel, arg2);
    return;
}

-(void *)containerView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_containerView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setContainerView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_containerView, arg2);
    return;
}

-(void *)fullBGView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_fullBGView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setFullBGView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_fullBGView, arg2);
    return;
}

-(bool)enabled {
    r0 = *(int8_t *)(int64_t *)&self->_enabled & 0x1;
    return r0;
}

-(void)setEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_enabled = arg2;
    return;
}

-(float)bgAlpha {
    r0 = self;
    return r0;
}

-(void)setBgAlpha:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_bgAlpha = s0;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_fullBGView);
    objc_destroyWeak((int64_t *)&self->_containerView);
    objc_destroyWeak((int64_t *)&self->_loadingLabel);
    objc_destroyWeak((int64_t *)&self->_activityIndicator);
    objc_destroyWeak((int64_t *)&self->_loadingBG);
    objc_storeStrong((int64_t *)&self->_mainView, 0x0);
    return;
}

@end