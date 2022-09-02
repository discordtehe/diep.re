@implementation SSAWebView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 bounds];
            [r19 setFrameForCloseButton:r2];
    }
    r0 = r19;
    return r0;
}

-(void)setFrameForCloseButtonWithParameters:(void *)arg2 {
    [self frameForButtonFromDictionary:arg2];
    [self setFrameForCloseButton:arg2];
    return;
}

-(bool)pointInside:(struct CGPoint)arg2 withEvent:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x140;
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
    v8 = v1;
    v9 = v0;
    r19 = self;
    r0 = [self controlsFramesForSecondaryWebview];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 == 0x0) goto loc_1007109f8;

loc_100710914:
    var_118 = q0;
    r0 = [r19 controlsFramesForSecondaryWebview];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_1007109e0;

loc_100710964:
    r24 = *var_118;
    goto loc_100710970;

loc_100710970:
    r26 = 0x0;
    goto loc_100710978;

loc_100710978:
    if (*var_118 != r24) {
            objc_enumerationMutation(r20);
    }
    if ((CGRectContainsPoint([r19 frameForButtonFromDictionary:r2], @selector(frameForButtonFromDictionary:)) & 0x1) != 0x0) goto loc_1007109f0;

loc_1007109b4:
    r26 = r26 + 0x1;
    if (r26 < r22) goto loc_100710978;

loc_1007109c0:
    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) goto loc_100710970;

loc_1007109e0:
    [r20 release];
    r0 = 0x0;
    goto loc_1007109fc;

loc_1007109fc:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1007109f0:
    [r20 release];
    goto loc_1007109f8;

loc_1007109f8:
    r0 = 0x1;
    goto loc_1007109fc;
}

-(void *)controlsFramesForSecondaryWebview {
    r0 = self->_controlsFramesForSecondaryWebview;
    return r0;
}

-(void)setControlsFramesForSecondaryWebview:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_controlsFramesForSecondaryWebview, arg2);
    return;
}

-(struct CGRect)frameForButtonFromDictionary:(void *)arg2 {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
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
    r21 = self;
    [arg2 retain];
    [[[arg2 objectForKeyedSubscript:r2] retain] intValue];
    [r0 release];
    r19 = [objc_msgSend(r24, r20) retain];
    r0 = objc_msgSend(r24, r20);
    r0 = [r0 retain];
    objc_msgSend(r0, r25);
    asm { scvtf      d8, w0 };
    [r26 release];
    r0 = objc_msgSend(r24, r20);
    r29 = r29;
    r24 = [r0 retain];
    [r23 release];
    objc_msgSend(r24, r25);
    asm { scvtf      d9, w0 };
    [r24 release];
    [NSString class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            if ([r19 isEqualToString:r2] != 0x0) {
                    asm { scvtf      d10, w22 };
                    v11 = v10;
            }
            else {
                    if ([r19 isEqualToString:r2] != 0x0) {
                            [r21 frame];
                            asm { scvtf      d10, w22 };
                    }
                    else {
                            if ([r19 isEqualToString:r2] != 0x0) {
                                    asm { scvtf      d11, w22 };
                                    [r21 frame];
                                    d0 = d3 - d11;
                            }
                            else {
                                    if ([r19 isEqualToString:r2] != 0x0) {
                                            [r21 frame];
                                            asm { scvtf      d10, w22 };
                                            objc_msgSend(r21, r20);
                                            d0 = d3 - d10;
                                    }
                            }
                    }
            }
    }
    else {
            r24 = @selector(isKindOfClass:);
            [NSDictionary class];
            if (objc_msgSend(r19, r24) != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:@"x"];
                    r29 = r29;
                    r21 = [r0 retain];
                    if (r21 != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:@"y"];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            [r21 release];
                            if (r0 != 0x0) {
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    [r0 integerValue];
                                    asm { scvtf      d11, x0 };
                                    [r21 release];
                                    r0 = objc_msgSend(r19, r20);
                                    r0 = [r0 retain];
                                    objc_msgSend(r0, r22);
                                    asm { scvtf      d10, x0 };
                                    [r20 release];
                            }
                    }
            }
    }
    r0 = [r19 release];
    return r0;
}

-(struct CGRect)frameForCloseButton {
    r0 = self;
    return r0;
}

-(void)setFrameForCloseButton:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_frameForCloseButton));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_controlsFramesForSecondaryWebview, 0x0);
    return;
}

@end