@implementation FBAdChooseYourOwnAdConfig

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_secondsKey, 0x0);
    objc_storeStrong((int64_t *)&self->_titleTranslation, 0x0);
    objc_storeStrong((int64_t *)&self->_timerTextTranslation, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundColor, 0x0);
    objc_storeStrong((int64_t *)&self->_titleTextColor, 0x0);
    objc_storeStrong((int64_t *)&self->_timerTextColor, 0x0);
    return;
}

-(long long)countdownTimeMs {
    r0 = self->_countdownTimeMs;
    return r0;
}

-(void *)initWithMetadata:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r0 = [[&var_50 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r22 = **___NSDictionary0__;
            r0 = [r19 dictionaryForKey:@"ad_config" orDefault:r22];
            r0 = [r0 retain];
            r20->_countdownTimeMs = [r0 integerForKey:@"countdown_time_ms" orDefault:0x0];
            r20->_defaultAdIndex = [r0 integerForKey:@"default_ad_index" orDefault:0x0];
            *(int8_t *)(int64_t *)&r20->_shouldShowRating = [r0 boolForKey:@"should_show_rating" orDefault:0x1];
            r20->_pulseAnimationDuration = [r0 integerForKey:@"pulse_animation_duration_ms" orDefault:0x258];
            r0 = [r19 dictionaryForKey:@"layout" orDefault:r22];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 stringForKey:@"timer_text_color" orDefault:@""];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timerTextColor));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r24 stringForKey:@"title_text_color" orDefault:@""];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_titleTextColor));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r24 stringForKeyOrNil:@"background_color"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 dictionaryForKey:@"translations" orDefault:r22];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 stringForKey:@"timer_text" orDefault:@""];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timerTextTranslation));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r22 stringForKey:@"title_text" orDefault:@""];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_titleTranslation));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r20->_secondsKey, @"[fb_sec]");
            [r22 release];
            [r24 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)defaultAdIndex {
    r0 = self->_defaultAdIndex;
    return r0;
}

-(unsigned long long)pulseAnimationDuration {
    r0 = self->_pulseAnimationDuration;
    return r0;
}

-(void *)timerTextColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_timerTextColor)), 0x0);
    return r0;
}

-(bool)shouldShowRating {
    r0 = *(int8_t *)(int64_t *)&self->_shouldShowRating;
    return r0;
}

-(void *)titleTextColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_titleTextColor)), 0x0);
    return r0;
}

-(void *)backgroundColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor)), 0x0);
    return r0;
}

-(void *)timerTextTranslation {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_timerTextTranslation)), 0x0);
    return r0;
}

-(void *)titleTranslation {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_titleTranslation)), 0x0);
    return r0;
}

-(void *)secondsKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_secondsKey)), 0x0);
    return r0;
}

@end