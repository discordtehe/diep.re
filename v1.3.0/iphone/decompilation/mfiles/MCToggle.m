@implementation MCToggle

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            r0->_onItem = 0x0;
            r0->_offItem = 0x0;
    }
    return r0;
}

-(void)dealloc {
    [self->_onItem release];
    [self->_offItem release];
    [[&var_20 super] dealloc];
    return;
}

-(void)updateToggle {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [NSMutableArray array];
    if (r19->_onItem != 0x0) {
            [r20 addObject:r2];
    }
    if (r19->_offItem != 0x0) {
            [r20 addObject:r2];
    }
    [r19 setSubItems:r20];
    r19->_selectedIndex = 0xffffffffffffffff;
    [r19 toggleOn];
    return;
}

-(void)setOffSpriteFrame:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_offItem));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r0 = [CCMenuItemImage alloc];
    r0 = [r0 init];
    *(r19 + r21) = r0;
    [r0 setNormalSpriteFrame:r20];
    [*(r19 + r21) setCascadeColorEnabled:[r19 isCascadeColorEnabled]];
    [*(r19 + r21) setCascadeOpacityEnabled:[r19 isCascadeOpacityEnabled]];
    [r19 updateToggle];
    return;
}

-(void)setCascadeOpacityEnabled:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r21 = self;
    [[&var_30 super] setCascadeOpacityEnabled:r2];
    r0 = r21->_onItem;
    if (r0 != 0x0) {
            [r0 setCascadeOpacityEnabled:r19];
    }
    r0 = r21->_offItem;
    if (r0 != 0x0) {
            [r0 setCascadeOpacityEnabled:r19];
    }
    return;
}

-(void)setOnSpriteFrame:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_onItem));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r0 = [CCMenuItemImage alloc];
    r0 = [r0 init];
    *(r19 + r21) = r0;
    [r0 setNormalSpriteFrame:r20];
    [*(r19 + r21) setCascadeColorEnabled:[r19 isCascadeColorEnabled]];
    [*(r19 + r21) setCascadeOpacityEnabled:[r19 isCascadeOpacityEnabled]];
    [r19 updateToggle];
    return;
}

-(void)setCascadeColorEnabled:(bool)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r21 = self;
    [[&var_30 super] setCascadeColorEnabled:r2];
    r0 = r21->_onItem;
    if (r0 != 0x0) {
            [r0 setCascadeColorEnabled:r19];
    }
    r0 = r21->_offItem;
    if (r0 != 0x0) {
            [r0 setCascadeColorEnabled:r19];
    }
    return;
}

-(void)didLoadFromCCB {
    return;
}

-(void)toggleOff {
    [self setSelectedIndex:0x1];
    return;
}

-(void)toggleOn {
    [self setSelectedIndex:0x0];
    return;
}

@end