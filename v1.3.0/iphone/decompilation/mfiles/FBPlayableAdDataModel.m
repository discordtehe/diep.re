@implementation FBPlayableAdDataModel

-(void *)initWithData:(void *)arg2 {
    r31 = r31 - 0x70;
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
            r0 = [r19 dictionaryForKeyOrNil:@"playable_data"];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 stringForKeyOrNil:@"uri"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_playableURI));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r21 stringForKeyOrNil:@"intro_card_icon_url"];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    r0 = [NSURL URLWithString:r22];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_introCardIconURL));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            *(int8_t *)(int64_t *)&r20->_isIntroCardEnabled = [r21 boolForKey:@"enable_intro_card" orDefault:0x1];
            r0 = [r21 dictionaryForKeyOrNil:@"generic_text"];
            r0 = [r0 retain];
            r24 = r0;
            r1 = @selector(stringForKeyOrNil:);
            r0 = objc_msgSend(r0, r1);
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r1 = r0;
                    }
                    else {
                            r1 = @"Rewarded Play";
                    }
            }
            objc_storeStrong((int64_t *)&r20->_localizedIntroCardPlayText, r1);
            [r25 release];
            r0 = [r24 stringForKeyOrNil:@"delay_click_text"];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if (r0 != 0x0) {
                    r26 = 0x0;
                    r25 = r23;
            }
            else {
                    r25 = [[NSString stringWithFormat:@"App Store will automatically open in %@s"] retain];
                    r26 = 0x1;
            }
            objc_storeStrong((int64_t *)&r20->_localizedDelayClickText, r25);
            if (r26 != 0x0) {
                    [r25 release];
            }
            [r23 release];
            [r24 release];
            [r22 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_localizedDelayClickText, 0x0);
    objc_storeStrong((int64_t *)&self->_localizedIntroCardPlayText, 0x0);
    objc_storeStrong((int64_t *)&self->_introCardIconURL, 0x0);
    objc_storeStrong((int64_t *)&self->_playableURI, 0x0);
    return;
}

-(bool)isValid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self playableURI];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 release];
    if (r19 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)playableURI {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_playableURI)), 0x0);
    return r0;
}

-(void *)introCardIconURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_introCardIconURL)), 0x0);
    return r0;
}

-(bool)isIntroCardEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_isIntroCardEnabled;
    return r0;
}

-(void *)localizedIntroCardPlayText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_localizedIntroCardPlayText)), 0x0);
    return r0;
}

-(void *)localizedDelayClickText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_localizedDelayClickText)), 0x0);
    return r0;
}

@end