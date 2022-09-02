@implementation FBAdPaddedLabel

-(void)drawTextInRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self textInsets];
    [[&var_40 super] drawTextInRect:r2];
    return;
}

-(struct CGSize)sizeThatFits:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_30 super] sizeThatFits:r2];
    [self textInsets];
    [self textInsets];
    [self textInsets];
    r0 = [self textInsets];
    return r0;
}

-(void)setTextInsets:(struct UIEdgeInsets)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_textInsets));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    *(0x10 + self + r8) = d2;
    *(0x18 + self + r8) = d3;
    [self setNeedsLayout];
    return;
}

-(struct UIEdgeInsets)textInsets {
    r0 = self;
    return r0;
}

@end