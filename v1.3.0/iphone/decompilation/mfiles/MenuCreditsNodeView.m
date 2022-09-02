@implementation MenuCreditsNodeView

-(void)setupWithText:(void *)arg2 isTitle:(bool)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_isTitle));
    *(int8_t *)(self + r22) = arg3;
    [self->_nameLabel setString:r2];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_titleLabel));
    [*(r20 + r23) setString:arg2];
    if (*(int8_t *)(r20 + r22) == 0x0) {
    }
    [r20->_background setVisible:r2];
    objc_msgSend(*(r20 + r23), r19);
    return;
}

-(void)renderSkin {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_isTitle));
    if (*(int8_t *)(r0 + r21) == 0x0) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r0->_nameLabel setVisible:r2];
    if (*(int8_t *)(r19 + r21) == 0x0) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r19->_background setVisible:r2];
    [r19->_titleLabel setVisible:*(int8_t *)(r19 + r21)];
    return;
}

@end