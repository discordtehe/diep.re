@implementation FBInstreamAdDataModel

-(void *)init {
    r0 = [self initWithMetadata:**___NSDictionary0__];
    return r0;
}

-(bool)isValid {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [[&var_20 super] isValid];
    if (r0 != 0x0) {
            if (r19->_nativeImpressionLoggingURL != 0x0 && r19->_videoURL != 0x0 && r19->_impressionLoggingURL != 0x0) {
                    if (r19->_videoLoggingURL != 0x0) {
                            if (CPU_FLAGS & NE) {
                                    r0 = 0x1;
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(void *)accentColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_accentColor)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoLoggingURL, 0x0);
    objc_storeStrong((int64_t *)&self->_videoURL, 0x0);
    objc_storeStrong((int64_t *)&self->_videoHDURL, 0x0);
    objc_storeStrong((int64_t *)&self->_title, 0x0);
    objc_storeStrong((int64_t *)&self->_textColor, 0x0);
    objc_storeStrong((int64_t *)&self->_subtitle, 0x0);
    objc_storeStrong((int64_t *)&self->_skippableSeconds, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeImpressionLoggingURL, 0x0);
    objc_storeStrong((int64_t *)&self->_impressionLoggingURL, 0x0);
    objc_storeStrong((int64_t *)&self->_image, 0x0);
    objc_storeStrong((int64_t *)&self->_icon, 0x0);
    objc_storeStrong((int64_t *)&self->_countdownFormat, 0x0);
    objc_storeStrong((int64_t *)&self->_callToActionURL, 0x0);
    objc_storeStrong((int64_t *)&self->_callToActionText, 0x0);
    objc_storeStrong((int64_t *)&self->_clientEventReportURL, 0x0);
    objc_storeStrong((int64_t *)&self->_clickLoggingURL, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundColor, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesText, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesLinkURL, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_accentColor, 0x0);
    return;
}

-(bool)adChoicesDisabled {
    r0 = *(int8_t *)(int64_t *)&self->_adChoicesDisabled;
    return r0;
}

-(void *)adChoicesIcon {
    r0 = self->_adChoicesIcon;
    return r0;
}

-(void *)adChoicesLinkURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adChoicesLinkURL)), 0x0);
    return r0;
}

-(void *)adChoicesText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adChoicesText)), 0x0);
    return r0;
}

-(bool)autoplay {
    r0 = *(int8_t *)(int64_t *)&self->_autoplay;
    return r0;
}

-(void *)backgroundColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor)), 0x0);
    return r0;
}

-(void *)clickLoggingURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_clickLoggingURL)), 0x0);
    return r0;
}

-(void *)clientEventReportURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_clientEventReportURL)), 0x0);
    return r0;
}

-(void *)callToActionText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_callToActionText)), 0x0);
    return r0;
}

-(void *)callToActionURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_callToActionURL)), 0x0);
    return r0;
}

-(bool)countdownEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_countdownEnabled;
    return r0;
}

-(void *)countdownFormat {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_countdownFormat)), 0x0);
    return r0;
}

-(void *)icon {
    r0 = self->_icon;
    return r0;
}

-(void *)image {
    r0 = self->_image;
    return r0;
}

-(void *)impressionLoggingURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_impressionLoggingURL)), 0x0);
    return r0;
}

-(void *)nativeImpressionLoggingURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_nativeImpressionLoggingURL)), 0x0);
    return r0;
}

-(long long)orientation {
    r0 = self->_orientation;
    return r0;
}

-(bool)persistentAdDetails {
    r0 = *(int8_t *)(int64_t *)&self->_persistentAdDetails;
    return r0;
}

-(void *)skippableSeconds {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_skippableSeconds)), 0x0);
    return r0;
}

-(void *)subtitle {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_subtitle)), 0x0);
    return r0;
}

-(void *)textColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_textColor)), 0x0);
    return r0;
}

-(void *)title {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_title)), 0x0);
    return r0;
}

-(void *)videoURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoURL)), 0x0);
    return r0;
}

-(void *)videoHDURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoHDURL)), 0x0);
    return r0;
}

-(void *)videoLoggingURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoLoggingURL)), 0x0);
    return r0;
}

-(void *)initWithMetadata:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100ad7968;

loc_100ad6be0:
    r0 = [[&var_60 super] initWithMetadata:r19];
    r20 = r0;
    if (r0 == 0x0) goto loc_100ad7954;

loc_100ad6c08:
    r0 = [r19 dictionaryForKeyOrNil:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r22 stringForKeyOrNil:r2];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoURL));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            [r24 release];
            r0 = [r22 stringForKeyOrNil:r2];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoHDURL));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            [r23 release];
            *(int8_t *)(int64_t *)&r20->_autoplay = [r22 boolForKey:@"autoplay" orDefault:0x0];
    }
    [r22 release];
    r0 = [r19 dictionaryForKeyOrNil:r2];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r22 stringForKeyOrNil:r2];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_nativeImpressionLoggingURL));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            [r24 release];
            r0 = [r22 stringForKeyOrNil:r2];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_impressionLoggingURL));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            [r24 release];
            r0 = [r22 stringForKeyOrNil:r2];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_clickLoggingURL));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            [r24 release];
            r0 = [r22 stringForKeyOrNil:r2];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoLoggingURL));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            [r24 release];
            r0 = [r22 stringForKeyOrNil:r2];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_clientEventReportURL));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            [r23 release];
    }
    r27 = @selector(dictionaryForKeyOrNil:);
    [r22 release];
    r0 = objc_msgSend(r19, r27);
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r22 stringForKeyOrNil:@"url"];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    [[NSURL URLWithString:r2] retain];
                    [FBAdImage alloc];
                    r0 = [r22 numberForKeyOrNil:r2];
                    r0 = [r0 retain];
                    var_68 = @selector(dictionaryForKeyOrNil:);
                    [r0 intValue];
                    asm { sxtw       x21, w0 };
                    r0 = objc_msgSend(r22, r26);
                    r29 = r29;
                    r0 = [r0 retain];
                    objc_msgSend(r0, r28);
                    asm { sxtw       x4, w0 };
                    r0 = [r25 initWithURL:r24 width:r21 height:r4];
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_icon));
                    r8 = *(r20 + r21);
                    *(r20 + r21) = r0;
                    [r8 release];
                    [r26 release];
                    r0 = r27;
                    r27 = var_68;
                    [r0 release];
                    [*(r20 + r21) setType:0x2];
                    [r24 release];
            }
            [r23 release];
    }
    r28 = &@selector(getTemplateForKey:);
    [r22 release];
    r0 = objc_msgSend(r19, r27);
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r28 = &@selector(getTemplateForKey:);
            r0 = objc_msgSend(r22, *(r28 + 0x7c0));
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    var_68 = [[NSURL URLWithString:r2] retain];
                    var_70 = [FBAdImage alloc];
                    r0 = [r22 numberForKeyOrNil:r2];
                    r0 = [r0 retain];
                    [r0 intValue];
                    asm { sxtw       x28, w0 };
                    r0 = objc_msgSend(r22, r25);
                    r29 = r29;
                    r0 = [r0 retain];
                    r1 = r27;
                    r27 = r24;
                    objc_msgSend(r0, r1);
                    asm { sxtw       x4, w0 };
                    r3 = r28;
                    r28 = r21;
                    r0 = [var_70 initWithURL:var_68 width:r3 height:r4];
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_image));
                    r8 = *(r20 + r21);
                    *(r20 + r21) = r0;
                    [r8 release];
                    [r25 release];
                    [r26 release];
                    [*(r20 + r21) setType:0x1];
                    [var_68 release];
            }
            [r23 release];
    }
    [r22 release];
    r0 = objc_msgSend(r19, r27);
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r21 = *(r28 + 0x7c0);
            r0 = objc_msgSend(r22, r21);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_title));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = objc_msgSend(r22, r21);
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_subtitle));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r22 release];
    r0 = objc_msgSend(r19, r27);
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r21 = *(r28 + 0x7c0);
            r0 = objc_msgSend(r22, r21);
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_callToActionText));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = objc_msgSend(r22, r21);
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_callToActionURL));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            [r23 release];
    }
    [r22 release];
    r0 = objc_msgSend(r19, r27);
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r20->_adChoicesDisabled = [r22 boolForKey:@"adChoicesDisabled" orDefault:0x0];
            r0 = objc_msgSend(r22, r27);
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    r26 = *(r28 + 0x7c0);
                    r0 = objc_msgSend(r23, r26);
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    if (r0 != 0x0) {
                            r0 = objc_msgSend(@class(NSURL), *0x101137700);
                            r29 = r29;
                            r0 = [r0 retain];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adChoicesLinkURL));
                            r8 = *(r20 + r9);
                            *(r20 + r9) = r0;
                            [r8 release];
                    }
                    var_70 = r21;
                    r0 = objc_msgSend(r23, r27);
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    if (r0 != 0x0) {
                            var_78 = [objc_msgSend(r25, r26) retain];
                            r0 = *(&@class(MCConfigurationData) + 0x50);
                            r0 = objc_msgSend(r0, *0x101137700);
                            r0 = [r0 retain];
                            var_68 = r27;
                            var_80 = [FBAdImage alloc];
                            r0 = [r25 numberForKeyOrNil:r2];
                            r0 = [r0 retain];
                            [r0 intValue];
                            asm { sxtw       x21, w0 };
                            r0 = objc_msgSend(r25, r28);
                            r29 = r29;
                            r0 = [r0 retain];
                            objc_msgSend(r0, r24);
                            asm { sxtw       x4, w0 };
                            r0 = [var_80 initWithURL:r27 width:r21 height:r4];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adChoicesIcon));
                            r8 = *(r20 + r9);
                            *(r20 + r9) = r0;
                            [r8 release];
                            r0 = r28;
                            r28 = &@selector(getTemplateForKey:);
                            [r0 release];
                            [r26 release];
                            r0 = r27;
                            r27 = var_68;
                            [r0 release];
                            [var_78 release];
                    }
                    r0 = [r23 stringForKey:@"text" orDefault:@"AdChoices"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adChoicesText));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    [r25 release];
                    [var_70 release];
            }
            r0 = objc_msgSend(r22, r27);
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    r0 = objc_msgSend(r24, *(r28 + 0x7c0));
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    if (r0 != 0x0) {
                            r0 = [NSNumberFormatter defaultFormatter];
                            r0 = [r0 retain];
                            r21 = r0;
                            r0 = [r0 safeNumberFromString:r25];
                            r29 = r29;
                            r0 = [r0 retain];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_skippableSeconds));
                            r8 = *(r20 + r9);
                            *(r20 + r9) = r0;
                            [r8 release];
                            [r21 release];
                    }
                    [r25 release];
            }
            r0 = objc_msgSend(r22, r27);
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if (r0 != 0x0) {
                    *(int8_t *)(int64_t *)&r20->_countdownEnabled = 0x1;
                    r0 = objc_msgSend(r25, *(r28 + 0x7c0));
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_countdownFormat));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            [r25 release];
            [r24 release];
            [r23 release];
    }
    [r22 release];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_orientation));
    *(r20 + r21) = 0x0;
    r0 = objc_msgSend(r19, r27);
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            *(r20 + r21) = [FBAdUtility interfaceOrientationFromServerOrientation:[r22 integerForKey:@"orientation" orDefault:0x3]];
    }
    [r22 release];
    r0 = objc_msgSend(r19, r27);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r21 numberForKeyOrNil:r2];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    [r22 unsignedIntegerValue];
                    r0 = [UIColor colorWithInteger:r2];
                    r24 = r0;
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    if (r0 != 0x0) {
                            objc_storeStrong((int64_t *)&r20->_accentColor, r24);
                    }
                    [r25 release];
            }
            r27 = &@selector(expectedBundleID);
            r26 = &@selector(funnelLogAdInfoTapped);
            r0 = [r21 numberForKeyOrNil:r2];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if (r0 != 0x0) {
                    [r24 unsignedIntegerValue];
                    r0 = [UIColor colorWithInteger:r2];
                    r25 = r0;
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = r0;
                    if (r0 != 0x0) {
                            objc_storeStrong((int64_t *)&r20->_backgroundColor, r25);
                    }
                    [r26 release];
                    r26 = &@selector(funnelLogAdInfoTapped);
                    r27 = &@selector(expectedBundleID);
            }
            r0 = [r21 numberForKeyOrNil:r2];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    objc_msgSend(r23, *(r27 + 0x1c8));
                    r0 = objc_msgSend(@class(UIColor), *(r26 + 0xed0));
                    r25 = r0;
                    r0 = [r0 retain];
                    r26 = r0;
                    if (r0 != 0x0) {
                            objc_storeStrong((int64_t *)&r20->_textColor, r25);
                    }
                    [r26 release];
            }
            *(int8_t *)(int64_t *)&r20->_persistentAdDetails = [r21 boolForKey:@"persistentAdDetails" orDefault:0x0];
            [r23 release];
            [r24 release];
            [r22 release];
    }
    [r21 release];
    goto loc_100ad7954;

loc_100ad7954:
    r0 = [r20 retain];
    r20 = r0;
    r21 = r0;
    goto loc_100ad796c;

loc_100ad796c:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_100ad7968:
    r21 = 0x0;
    goto loc_100ad796c;
}

@end