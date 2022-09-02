@implementation FBInterstitialAdToolbarView

+(void *)newDesign {
    r0 = [FBInterstitialAdToolbarViewNewDesign new];
    return r0;
}

+(void *)oldDesign {
    r0 = [FBInterstitialAdToolbarViewOldDesign new];
    r0 = [r0 autorelease];
    return r0;
}

+(long long)toolbarIconTypeForDataModel:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [FBAdReportingConfig sharedConfig];
    r0 = [r0 retain];
    r21 = [r0 isReadyForFullscreen];
    [r0 release];
    if (r21 != 0x0) {
            r20 = [r19 iconType];
    }
    else {
            r20 = 0xffffffffffffffff;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(double)toolbarHeight {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self isKindOfClass:[FBInterstitialAdToolbarViewNewDesign class]];
    if (r0 != 0x0) {
            asm { fcsel      d0, d1, d0, ne };
    }
    return r0;
}

-(void)disableForcedView {
    return;
}

-(void)configureToolbarColorsForType:(long long)arg2 {
    return;
}

-(void)setHeaderInfoHidden:(bool)arg2 {
    return;
}

-(void)setCloseButtonHidden:(bool)arg2 {
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rewardInFormat, 0x0);
    objc_storeStrong((int64_t *)&self->_skipText, 0x0);
    objc_storeStrong((int64_t *)&self->_progressHintPrefix, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_adChoicesButton, 0x0);
    objc_storeStrong((int64_t *)&self->_subtitle, 0x0);
    objc_storeStrong((int64_t *)&self->_title, 0x0);
    objc_storeStrong((int64_t *)&self->_icon, 0x0);
    objc_storeStrong((int64_t *)&self->_inactiveColor, 0x0);
    objc_storeStrong((int64_t *)&self->_activeColor, 0x0);
    objc_storeStrong((int64_t *)&self->_subtitleTextColor, 0x0);
    objc_storeStrong((int64_t *)&self->_textColor, 0x0);
    return;
}

-(void *)textColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_textColor)), 0x0);
    return r0;
}

-(void *)subtitleTextColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_subtitleTextColor)), 0x0);
    return r0;
}

-(void)setTextColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setSubtitleTextColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)activeColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_activeColor)), 0x0);
    return r0;
}

-(void)setActiveColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)inactiveColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_inactiveColor)), 0x0);
    return r0;
}

-(void)setInactiveColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setCurrentTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(union ?)currentTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_currentTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setIcon:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_icon, arg2);
    return;
}

-(void *)icon {
    r0 = self->_icon;
    return r0;
}

-(void *)title {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_title)), 0x0);
    return r0;
}

-(void)setTitle:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setSubtitle:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)subtitle {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_subtitle)), 0x0);
    return r0;
}

-(void)setForcedViewTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_forcedViewTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(union ?)forcedViewTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_forcedViewTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setAdChoicesButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adChoicesButton, arg2);
    return;
}

-(void *)adChoicesButton {
    r0 = self->_adChoicesButton;
    return r0;
}

-(void)setAdIconType:(long long)arg2 {
    self->_adIconType = arg2;
    return;
}

-(long long)adIconType {
    r0 = self->_adIconType;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setCloseButtonStyle:(long long)arg2 {
    self->_closeButtonStyle = arg2;
    return;
}

-(long long)closeButtonStyle {
    r0 = self->_closeButtonStyle;
    return r0;
}

-(void *)closeButton {
    r0 = self->_closeButton;
    return r0;
}

-(void)setCloseButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_closeButton, arg2);
    return;
}

-(bool)isRewardedAd {
    r0 = *(int8_t *)(int64_t *)&self->_isRewardedAd;
    return r0;
}

-(void)setIsRewardedAd:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isRewardedAd = arg2;
    return;
}

-(void *)progressHintPrefix {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_progressHintPrefix)), 0x0);
    return r0;
}

-(void)setProgressHintPrefix:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setSkipText:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)skipText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_skipText)), 0x0);
    return r0;
}

-(void *)rewardInFormat {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_rewardInFormat)), 0x0);
    return r0;
}

-(void)setRewardInFormat:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end