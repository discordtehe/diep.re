@implementation MenuSettingsLocNode

-(void *)initWithTable:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_view = 0x0;
            *(int8_t *)(int64_t *)&r19->_loaded = 0x0;
            *(int8_t *)(int64_t *)&r19->_nodeIsSelected = 0x0;
            r19->_countryText = 0x0;
            r19->_countryFlag = 0x0;
            r19->_table = r20;
            r19->_target = 0x0;
            r19->_selector = 0x0;
            [r19 loadData];
    }
    r0 = r19;
    return r0;
}

-(void)disableInput {
    [self->_view disableInput];
    return;
}

-(void)dealloc {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_countryText));
    [*(self + r20) release];
    *(self + r20) = 0x0;
    [[&var_20 super] dealloc];
    return;
}

-(void)enableInput {
    [self->_view enableInput];
    return;
}

-(void)loadData {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_loaded));
    if (*(int8_t *)(r0 + r20) == 0x0) {
            r19 = r0;
            r0 = sub_10000afc8();
            r0 = [r0 fetchObject];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_view));
            *(r19 + r21) = r0;
            [r0 setupLayout];
            r2 = *(int8_t *)(int64_t *)&r19->_nodeIsSelected;
            [r19 setSelected:r2];
            [*(r19 + r21) contentSize];
            [r19 setContentSize:r2];
            [r19 addChild:*(r19 + r21)];
            [r19 setCountryVisuals:[r19 countryText] flag:r19->_countryFlag];
            *(int8_t *)(r19 + r20) = 0x1;
    }
    return;
}

-(void)unloadData {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_loaded));
    if (*(int8_t *)(r0 + r20) != 0x0) {
            r19 = r0;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_view));
            [r0 removeChild:r2];
            r0 = sub_10000afc8();
            if (r0 != 0x0) {
                    r1 = r0;
                    r0 = *(r19 + r21);
                    if (r0 != 0x0 && sub_100012c74(r0, r1) != 0x0) {
                            *(r19 + r21) = 0x0;
                    }
            }
            *(r19 + r21) = 0x0;
            *(int8_t *)(r19 + r20) = 0x0;
    }
    return;
}

-(void *)view {
    r0 = self->_view;
    return r0;
}

-(void)setCountryVisuals:(void *)arg2 flag:(void *)arg3 {
    r3 = arg3;
    r0 = self;
    if (arg2 != 0x0 && r3 != 0x0) {
            *(r0 + sign_extend_64(*(int32_t *)ivar_offset(_countryFlag))) = r3;
            [r0 setCountryText:r2];
            r20 = r0->_view;
            [r0 countryText];
            [r20 setCountry:r2 flag:r3];
    }
    return;
}

-(void)setCountryDetails:(void *)arg2 region:(void *)arg3 {
    self->_countryCode = arg2;
    self->_countryRegion = arg3;
    return;
}

-(void)setSelectionCallbackDetails:(void *)arg2 target:(void *)arg3 {
    self->_target = arg3;
    self->_selector = arg2;
    return;
}

-(void)invokeCallback {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_target));
    if (*(r0 + r20) != 0x0) {
            r19 = r0;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_selector));
            if (*(r0 + r21) != 0x0) {
                    if (*(int8_t *)(int64_t *)&r19->_nodeIsSelected == 0x0) {
                            if (CPU_FLAGS & E) {
                                    r2 = 0x1;
                            }
                    }
                    [r19 setSelected:r2];
                    [*(r19 + r20) performSelector:r2 withObject:r3];
            }
    }
    return;
}

-(void)setSelected:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_nodeIsSelected));
    *(int8_t *)(self + r20) = arg2;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_view));
    [*(self + r21) setSelected:r2];
    r8 = *(int8_t *)(r19 + r20);
    r0 = *(r19 + r21);
    if (r8 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = &@selector(disableInput);
            }
            else {
                    r8 = &@selector(enableInput);
            }
    }
    objc_msgSend(r0, *r8);
    objc_msgSend(r19, r20);
    return;
}

-(bool)ccTouchBegan:(void *)arg2 withEvent:(void *)arg3 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != 0x0 && *(int8_t *)(int64_t *)&r0->_nodeIsSelected == 0x0) {
            [r0->_view setHovering];
            r0 = 0x1;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)ccTouchCancelled:(void *)arg2 withEvent:(void *)arg3 {
    [self ccTouchEnded:r2 withEvent:r3];
    return;
}

-(void)ccTouchMoved:(void *)arg2 withEvent:(void *)arg3 {
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_nodeIsSelected == 0x0) {
                    [r19 convertTouchToNodeSpace:r2];
                    if (d0 >= 0x0) {
                            [r19 contentSize];
                            if (d8 >= 0x0) {
                                    asm { fccmp      d9, d0, #0x0, pl };
                            }
                            if (!CPU_FLAGS & LE) {
                                    r0 = r19->_view;
                                    [r0 setSelected:r2];
                            }
                            else {
                                    [r19 contentSize];
                                    r0 = r19->_view;
                                    if (d8 <= d1) {
                                            [r0 setHovering];
                                    }
                                    else {
                                            [r0 setSelected:r2];
                                    }
                            }
                    }
                    else {
                            r0 = r19->_view;
                            [r0 setSelected:r2];
                    }
            }
    }
    return;
}

-(void)ccTouchEnded:(void *)arg2 withEvent:(void *)arg3 {
    r0 = self;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != 0x0) {
            r19 = r0;
            if (*(int8_t *)(int64_t *)&r0->_nodeIsSelected == 0x0) {
                    [r19 convertTouchToNodeSpace:r2];
                    if (d0 >= 0x0) {
                            [r19 contentSize];
                            if (d8 >= 0x0) {
                                    asm { fccmp      d9, d0, #0x0, pl };
                            }
                            if (!CPU_FLAGS & G) {
                                    [r19 contentSize];
                                    if (d8 > d1) {
                                            [r19 setSelected:r2];
                                    }
                                    else {
                                            [r19 invokeCallback];
                                    }
                            }
                            else {
                                    [r19 setSelected:r2];
                            }
                    }
                    else {
                            [r19 setSelected:r2];
                    }
            }
    }
    return;
}

-(void *)getCountryCode {
    r0 = self->_countryCode;
    return r0;
}

-(void *)getCountryRegion {
    r0 = self->_countryRegion;
    return r0;
}

-(void *)getCountryFlag {
    r0 = self->_countryFlag;
    return r0;
}

-(void *)countryText {
    r0 = self->_countryText;
    return r0;
}

-(void)setCountryText:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end