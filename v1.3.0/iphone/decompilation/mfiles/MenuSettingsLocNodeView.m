@implementation MenuSettingsLocNodeView

-(void)disableInput {
    [[&var_20 super] disableInput];
    [self->_nodeButton setIsEnabled:0x0];
    [self setSelected:*(int8_t *)(int64_t *)&self->_isSelected];
    [self->_flagSprite setColor:r2];
    return;
}

-(void)setupLayout {
    self->_flagSprite = 0x0;
    [self->_menu setTouchSwallow:0x0];
    *(int8_t *)(int64_t *)&self->_isSelected = 0x0;
    *(int8_t *)(int64_t *)&self->_isHovering = 0x0;
    return;
}

-(void)enableInput {
    [[&var_20 super] enableInput];
    [self->_nodeButton setIsEnabled:0x1];
    [self setSelected:r2];
    return;
}

-(void)setCountry:(void *)arg2 flag:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r3 != 0x0) {
            var_40 = r24;
            stack[-56] = r23;
            r31 = r31 + 0xffffffffffffffc0;
            var_30 = r22;
            stack[-40] = r21;
            var_20 = r20;
            stack[-24] = r19;
            var_10 = r29;
            stack[-8] = r30;
            r21 = r3;
            r19 = r2;
            r20 = r0;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_flagSprite));
            if (*(r0 + r22) != 0x0) {
                    [r20->_outerFrame removeChild:r2];
            }
            *(r20 + r22) = sub_1005d7410(@"flags.png", @"flags.plist", r21, 0x0);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_flagPosition));
            [*(r20 + r21) contentSize];
            [*(r20 + r22) setContentSize:r2];
            [*(r20 + r21) position];
            [*(r20 + r22) setPosition:r2];
            [*(r20 + r21) anchorPoint];
            [*(r20 + r22) setAnchorPoint:r2];
            [*(r20 + r21) scale];
            [*(r20 + r22) setScale:r2];
            [*(r20 + r22) setZOrder:[*(r20 + r21) zOrder] + 0x1];
            [*(r20 + r22) setVisible:0x1];
            [r20->_outerFrame addChild:*(r20 + r22)];
            [r20->_nodeLanguage setString:r2];
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
    r19 = arg2;
    r20 = self;
    *(int8_t *)(int64_t *)&self->_isHovering = 0x0;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_nodeButton));
    [*(self + r21) unselected];
    *(int8_t *)(int64_t *)&r20->_isSelected = r19;
    r0 = *(r20 + r21);
    r2 = r19 ^ 0x1;
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r19 = 0x66666666;
            }
            else {
                    r19 = 0xffffffffffffffff;
            }
    }
    [r0 setIsEnabled:r2];
    [r20->_nodeLanguage setColor:r2];
    return;
}

-(void)setHovering {
    *(int8_t *)(int64_t *)&self->_isHovering = 0x1;
    [self->_nodeButton selected];
    return;
}

-(bool)isHovering {
    r0 = *(int8_t *)(int64_t *)&self->_isHovering;
    return r0;
}

@end