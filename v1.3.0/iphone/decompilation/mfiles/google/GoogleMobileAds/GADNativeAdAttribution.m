@implementation GADNativeAdAttribution

-(void *)icons {
    r0 = self->_icons;
    return r0;
}

-(double)iconPresentationDuration {
    r0 = self;
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 icons:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r25 = arg3;
    r19 = [arg2 retain];
    r20 = [r25 retain];
    r0 = [[&var_70 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"text"];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_text));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r22 release];
            r0 = [r19 objectForKeyedSubscript:@"animation_ms"];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            [r0 doubleValue];
            asm { fdiv       d0, d0, d8 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_iconAnimationDuration));
            if (d0 < *0x100ba2aa8) {
                    asm { fcsel      d0, d1, d0, mi };
            }
            d9 = *0x100ba2aa8;
            *(r21 + r8) = d0;
            r0 = [r19 objectForKeyedSubscript:@"presentation_ms"];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            [r0 doubleValue];
            asm { fdiv       d0, d0, d8 };
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_iconPresentationDuration));
            if (d0 < d9) {
                    asm { fcsel      d0, d1, d0, mi };
            }
            *(r21 + r8) = d0;
            objc_storeStrong((int64_t *)&r21->_icons, r25);
            r0 = [r19 objectForKeyedSubscript:@"text_size"];
            r29 = r29;
            r25 = [r0 retain];
            if (r25 != 0x0) {
                    [r25 doubleValue];
            }
            r0 = [UIFont systemFontOfSize:@"text_size"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_font));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r26 = [[r19 objectForKeyedSubscript:@"text_color"] retain];
            r0 = sub_100820e7c();
            r29 = r29;
            r0 = [r0 retain];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_textColor));
            r8 = *(r21 + r27);
            *(r21 + r27) = r0;
            [r8 release];
            if (*(r21 + r27) == 0x0) {
                    r0 = [UIColor colorWithRed:@"text_color" green:r3 blue:r4 alpha:r5];
                    r29 = r29;
                    r0 = [r0 retain];
                    r8 = *(r21 + r27);
                    *(r21 + r27) = r0;
                    [r8 release];
            }
            r23 = [[r19 objectForKeyedSubscript:@"bg_color"] retain];
            r0 = sub_100820e7c();
            r29 = r29;
            r0 = [r0 retain];
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor));
            r8 = *(r21 + r27);
            *(r21 + r27) = r0;
            [r8 release];
            if (*(r21 + r27) == 0x0) {
                    r0 = [UIColor colorWithRed:@"bg_color" green:r3 blue:r4 alpha:r5];
                    r0 = [r0 retain];
                    r8 = *(r21 + r27);
                    *(r21 + r27) = r0;
                    [r8 release];
            }
            [r23 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(double)iconAnimationDuration {
    r0 = self;
    return r0;
}

-(void *)text {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_text)), 0x0);
    return r0;
}

-(void *)textColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_textColor)), 0x0);
    return r0;
}

-(void *)font {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_font)), 0x0);
    return r0;
}

-(void *)backgroundColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_backgroundColor)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_backgroundColor, 0x0);
    objc_storeStrong((int64_t *)&self->_textColor, 0x0);
    objc_storeStrong((int64_t *)&self->_font, 0x0);
    objc_storeStrong((int64_t *)&self->_text, 0x0);
    objc_storeStrong((int64_t *)&self->_icons, 0x0);
    return;
}

@end