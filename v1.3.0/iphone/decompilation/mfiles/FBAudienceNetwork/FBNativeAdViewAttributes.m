@implementation FBNativeAdViewAttributes

+(void *)defaultAttributesForType:(long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [FBNativeAdView classFromType:r2];
    r0 = [r0 defaultAttributes];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r20 <= 0x6 && (0x1 << r20 & 0x58) != 0x0) {
            r20 = [@(YES) retain];
            [r19 setShouldClip:r20];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

+(void *)internalAttributesForType:(long long)arg2 {
    r20 = [[FBNativeAdViewAttributes defaultAttributesForType:arg2] retain];
    r19 = [[self internalAttributesForAttributes:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)init {
    r0 = [self initWithDictionary:**___NSDictionary0__];
    return r0;
}

-(void *)backgroundColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_socialContextEnabled, 0x0);
    objc_storeStrong((int64_t *)&self->_ratingEnabled, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesBackgroundColor, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesTitleColor, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesBackgroundShown, 0x0);
    objc_storeStrong((int64_t *)&self->_iconBorderRadius, 0x0);
    objc_storeStrong((int64_t *)&self->_buttonBorderRadius, 0x0);
    objc_storeStrong((int64_t *)&self->_borderRadius, 0x0);
    objc_storeStrong((int64_t *)&self->_shouldClip, 0x0);
    objc_storeStrong((int64_t *)&self->_skipRegistration, 0x0);
    objc_storeStrong((int64_t *)&self->_bypassAdLoad, 0x0);
    objc_storeStrong((int64_t *)&self->_buttonBorderColor, 0x0);
    objc_storeStrong((int64_t *)&self->_buttonTitleFont, 0x0);
    objc_storeStrong((int64_t *)&self->_buttonTitleColor, 0x0);
    objc_storeStrong((int64_t *)&self->_buttonColor, 0x0);
    objc_storeStrong((int64_t *)&self->_descriptionFont, 0x0);
    objc_storeStrong((int64_t *)&self->_descriptionColor, 0x0);
    objc_storeStrong((int64_t *)&self->_titleFont, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesForegroundColor, 0x0);
    objc_storeStrong((int64_t *)&self->_advertiserNameColor, 0x0);
    objc_storeStrong((int64_t *)&self->_titleColor, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundColor, 0x0);
    return;
}

-(void *)initWithDictionary:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            if (([r19 boolForKey:r2 orDefault:r3] & 0x1) != 0x0) {
                    r0 = [UIColor colorWithUInt:0xffffff withAlpha:0x0];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r20 setBackgroundColor:r22];
                    [r22 release];
            }
            else {
                    r0 = [r19 stringForKeyOrNil:r2];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = sub_100b8cf60(r0);
                    r29 = r29;
                    r24 = [r0 retain];
                    [r20 setBackgroundColor:r24];
                    [r24 release];
                    [r23 release];
            }
            r0 = [r19 stringForKeyOrNil:r2];
            r0 = [r0 retain];
            r24 = [sub_100b8cf60(r0) retain];
            [r20 setTitleColor:r24];
            [r24 release];
            [r0 release];
            r0 = [r19 stringForKeyOrNil:r2];
            r0 = [r0 retain];
            r23 = r0;
            r0 = sub_100b8cf60(r0);
            r29 = r29;
            r24 = [r0 retain];
            [r20 setDescriptionColor:r24];
            [r24 release];
            [r23 release];
            if (([r19 boolForKey:r2 orDefault:r3] & 0x1) != 0x0) {
                    r2 = @"button_transparent";
                    r0 = [UIColor colorWithUInt:0xffffff withAlpha:0x0];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r20 setButtonColor:r23];
            }
            else {
                    r2 = @"button_color";
                    r0 = [r19 stringForKeyOrNil:r2];
                    r0 = [r0 retain];
                    r23 = r0;
                    r0 = sub_100b8cf60(r0);
                    r29 = r29;
                    r24 = [r0 retain];
                    [r20 setButtonColor:r24];
                    [r24 release];
            }
            [r23 release];
            r24 = [[FBAdFont sfuiDisplaySemiboldWithSize:r2] retain];
            [r20 setTitleFont:r24];
            [r24 release];
            r24 = [[FBAdFont sfuiTextRegularWithSize:r24] retain];
            [r20 setDescriptionFont:r24];
            [r24 release];
            r0 = [r19 stringForKeyOrNil:r2];
            r0 = [r0 retain];
            r24 = r0;
            r0 = sub_100b8cf60(r0);
            r29 = r29;
            r25 = [r0 retain];
            [r20 setButtonTitleColor:r25];
            [r25 release];
            [r24 release];
            if (([r19 boolForKey:r2 orDefault:r3] & 0x1) != 0x0) {
                    r2 = @"button_border_transparent";
                    r0 = [UIColor colorWithUInt:0xffffff withAlpha:0x0];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r20 setButtonBorderColor:r24];
            }
            else {
                    r2 = @"button_border_color";
                    r0 = [r19 stringForKeyOrNil:r2];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = sub_100b8cf60(r0);
                    r29 = r29;
                    r25 = [r0 retain];
                    [r20 setButtonBorderColor:r25];
                    [r25 release];
            }
            [r24 release];
            r23 = [[FBAdFont sfuiDisplaySemiboldWithSize:r2] retain];
            [r20 setButtonTitleFont:r23];
            [r23 release];
            r0 = [r19 stringForKeyOrNil:r2];
            r0 = [r0 retain];
            r24 = [sub_100b8cf60(r0) retain];
            [r20 setAdChoicesBackgroundColor:r24];
            [r24 release];
            [r0 release];
            r0 = [r19 stringForKeyOrNil:r2];
            r0 = [r0 retain];
            r23 = [sub_100b8cf60(r0) retain];
            [r20 setAdChoicesTitleColor:r23];
            [r23 release];
            [r0 release];
            [r20 setAdChoicesIsHidden:[r19 boolForKey:r2 orDefault:r3]];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setBackgroundColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_30 super] copy];
    r21 = [[self bypassAdLoad] retain];
    [r0 setBypassAdLoad:r21];
    [r21 release];
    r21 = [[self skipRegistration] retain];
    [r0 setSkipRegistration:r21];
    [r21 release];
    r21 = [[self shouldClip] retain];
    [r0 setShouldClip:r21];
    [r21 release];
    r21 = [[self borderRadius] retain];
    [r0 setBorderRadius:r21];
    [r21 release];
    r21 = [[self buttonBorderRadius] retain];
    [r0 setButtonBorderRadius:r21];
    [r21 release];
    r21 = [[self iconBorderRadius] retain];
    [r0 setIconBorderRadius:r21];
    [r21 release];
    r21 = [[self adChoicesBackgroundShown] retain];
    [r0 setAdChoicesBackgroundShown:r21];
    [r21 release];
    r21 = [[self adChoicesTitleColor] retain];
    [r0 setAdChoicesTitleColor:r21];
    [r21 release];
    r21 = [[self adChoicesBackgroundColor] retain];
    [r0 setAdChoicesBackgroundColor:r21];
    [r21 release];
    [r0 setAdChoicesIsHidden:[self adChoicesIsHidden]];
    r21 = [[self ratingEnabled] retain];
    [r0 setRatingEnabled:r21];
    [r21 release];
    r21 = [[self socialContextEnabled] retain];
    [r0 setSocialContextEnabled:r21];
    [r21 release];
    r21 = [[self backgroundColor] retain];
    [r0 setBackgroundColor:r21];
    [r21 release];
    r21 = [[self titleColor] retain];
    [r0 setTitleColor:r21];
    [r21 release];
    r21 = [[self titleFont] retain];
    [r0 setTitleFont:r21];
    [r21 release];
    r21 = [[self descriptionColor] retain];
    [r0 setDescriptionColor:r21];
    [r21 release];
    r21 = [[self descriptionFont] retain];
    [r0 setDescriptionFont:r21];
    [r21 release];
    r21 = [[self buttonColor] retain];
    [r0 setButtonColor:r21];
    [r21 release];
    r21 = [[self buttonTitleColor] retain];
    [r0 setButtonTitleColor:r21];
    [r21 release];
    r21 = [[self buttonTitleFont] retain];
    [r0 setButtonTitleFont:r21];
    [r21 release];
    r21 = [[self buttonBorderColor] retain];
    [r0 setButtonBorderColor:r21];
    [r21 release];
    r21 = [[self advertiserNameColor] retain];
    [r0 setAdvertiserNameColor:r21];
    [r21 release];
    r20 = [[self adChoicesForegroundColor] retain];
    [r0 setAdChoicesForegroundColor:r20];
    [r20 release];
    r0 = r0;
    return r0;
}

-(void *)titleColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_titleColor)), 0x0);
    return r0;
}

-(void)setTitleColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)advertiserNameColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_advertiserNameColor)), 0x0);
    return r0;
}

-(void)setAdvertiserNameColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adChoicesForegroundColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adChoicesForegroundColor)), 0x0);
    return r0;
}

-(void)setAdChoicesForegroundColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)titleFont {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_titleFont)), 0x0);
    return r0;
}

-(void)setTitleFont:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setDescriptionColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)descriptionColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_descriptionColor)), 0x0);
    return r0;
}

-(void *)descriptionFont {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_descriptionFont)), 0x0);
    return r0;
}

-(void)setDescriptionFont:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)buttonColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_buttonColor)), 0x0);
    return r0;
}

-(void)setButtonColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)buttonTitleColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_buttonTitleColor)), 0x0);
    return r0;
}

-(void)setButtonTitleColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setButtonTitleFont:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)buttonBorderColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_buttonBorderColor)), 0x0);
    return r0;
}

-(void *)buttonTitleFont {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_buttonTitleFont)), 0x0);
    return r0;
}

-(void)setButtonBorderColor:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isAutoplayEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_autoplayEnabled;
    return r0;
}

-(void)setAutoplayEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_autoplayEnabled = arg2;
    return;
}

-(void *)bypassAdLoad {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_bypassAdLoad)), 0x0);
    return r0;
}

-(void)setBypassAdLoad:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setSkipRegistration:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)shouldClip {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_shouldClip)), 0x0);
    return r0;
}

-(void *)skipRegistration {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_skipRegistration)), 0x0);
    return r0;
}

-(void)setShouldClip:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)borderRadius {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_borderRadius)), 0x0);
    return r0;
}

-(void *)buttonBorderRadius {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_buttonBorderRadius)), 0x0);
    return r0;
}

-(void)setBorderRadius:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setButtonBorderRadius:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setIconBorderRadius:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)iconBorderRadius {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_iconBorderRadius)), 0x0);
    return r0;
}

-(void *)adChoicesBackgroundShown {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adChoicesBackgroundShown)), 0x0);
    return r0;
}

-(void)setAdChoicesBackgroundShown:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setAdChoicesTitleColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adChoicesTitleColor, arg2);
    return;
}

-(void *)adChoicesTitleColor {
    r0 = self->_adChoicesTitleColor;
    return r0;
}

-(void *)adChoicesBackgroundColor {
    r0 = self->_adChoicesBackgroundColor;
    return r0;
}

-(void)setAdChoicesBackgroundColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adChoicesBackgroundColor, arg2);
    return;
}

-(void)setAdChoicesIsHidden:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adChoicesIsHidden = arg2;
    return;
}

-(bool)adChoicesIsHidden {
    r0 = *(int8_t *)(int64_t *)&self->_adChoicesIsHidden;
    return r0;
}

-(void *)ratingEnabled {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_ratingEnabled)), 0x0);
    return r0;
}

-(void)setRatingEnabled:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setSocialContextEnabled:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)socialContextEnabled {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_socialContextEnabled)), 0x0);
    return r0;
}

+(void *)internalAttributesForAttributes:(void *)arg2 {
    r19 = [arg2 retain];
    r21 = [@(YES) retain];
    [r19 setBypassAdLoad:r21];
    [r21 release];
    r20 = [@(YES) retain];
    [r19 setSkipRegistration:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)internalAttributesForBannerType:(long long)arg2 {
    r20 = [[FBNativeAdViewAttributes defaultAttributesForBannerType:arg2] retain];
    r19 = [[self internalAttributesForAttributes:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)defaultAttributesForBannerType:(long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [FBNativeBannerAdView classFromType:r2];
    r0 = [r0 defaultAttributes];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r20 <= 0x5 && (0x1 << r20 & 0x26) != 0x0) {
            r20 = [@(YES) retain];
            [r19 setShouldClip:r20];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

@end