@implementation CCMenuItemLabel

+(void *)itemWithLabel:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithLabel:arg2 block:0x0];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithLabel:(void *)arg2 target:(void *)arg3 selector:(void *)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithLabel:arg2 target:arg3 selector:arg4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithLabel:(void *)arg2 block:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithLabel:arg2 block:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithLabel:(void *)arg2 target:(void *)arg3 selector:(void *)arg4 {
    r21 = sub_100330078(arg3);
    r19 = [self initWithLabel:arg2 block:r21];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void *)initWithLabel:(void *)arg2 block:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [self initWithBlock:arg3];
    r19 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r19->_originalScale = 0x3f800000;
            *(int32_t *)(int64_t *)&r19->_colorBackup = 0xffffff;
            [r19 setDisabledColor:0x7e7e7e7e];
            [r19 setLabel:r20];
            [r19 setCascadeColorEnabled:0x1];
            [r19 setCascadeOpacityEnabled:0x1];
            [r19 setCascadeEmissionEnabled:0x1];
    }
    r0 = r19;
    return r0;
}

-(void *)label {
    r0 = self->_label;
    return r0;
}

-(void)setLabel:(void *)arg2 {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_label));
    if (*(r0 + r21) != r20) {
            [r0 removeChild:r2 cleanup:0x1];
            [r0 addChild:r20];
            *(r0 + r21) = r20;
            [r20 setAnchorPoint:r20];
            [*(r0 + r21) contentSize];
            [r0 setContentSize:r2];
    }
    return;
}

-(void)setString:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_label));
    [*(self + r20) setString:arg2];
    [*(self + r20) contentSize];
    [self setContentSize:r2];
    return;
}

-(void)activate {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != 0x0) {
            [r0 stopAllActions];
            [r0 setScale:r2];
            [[&var_20 super] activate];
    }
    return;
}

-(void)selected {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != 0x0) {
            r19 = r0;
            [[&var_20 super] selected];
            r0 = [r19 getActionByTag:0xc0c05002];
            if (r0 != 0x0) {
                    [r19 stopAction:r0];
                    s0 = *(int32_t *)(int64_t *)&r19->_originalScale;
            }
            else {
                    [r19 scale];
                    *(int32_t *)(int64_t *)&r19->_originalScale = s0;
            }
            r0 = [CCScaleTo actionWithDuration:0xc0c05002 scale:r3];
            [r0 setTag:0xc0c05002];
            [r19 runAction:r2];
    }
    return;
}

-(void)unselected {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_isEnabled != 0x0) {
            r19 = r0;
            [[&var_20 super] unselected];
            [r19 stopActionByTag:0xc0c05002];
            r0 = [CCScaleTo actionWithDuration:0xc0c05002 scale:r3];
            [r0 setTag:0xc0c05002];
            [r19 runAction:r2];
    }
    return;
}

-(void)setIsEnabled:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (*(int8_t *)(int64_t *)&self->_isEnabled != arg2) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_label));
            r0 = *(r20 + r21);
            if ((r19 & 0x1) != 0x0) {
                    r8 = 0x10116bb94;
            }
            else {
                    *(int32_t *)(int64_t *)&r20->_colorBackup = [r0 color];
                    r0 = *(r20 + r21);
                    r8 = 0x10116bb9c;
            }
            [r0 setColor:r2];
    }
    [[&var_30 super] setIsEnabled:r2];
    return;
}

-(struct _ccColorThreeB)disabledColor {
    r0 = *(int32_t *)(int64_t *)&self->_disabledColor;
    return r0;
}

-(void)setDisabledColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    *(int32_t *)(int64_t *)&self->_disabledColor = r2;
    return;
}

@end