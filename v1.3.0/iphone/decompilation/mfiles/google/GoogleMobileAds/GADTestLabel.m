@implementation GADTestLabel

-(void)drawTextInRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_10 super] drawTextInRect:r2];
    return;
}

-(struct CGSize)intrinsicContentSize {
    r0 = [[&var_10 super] intrinsicContentSize];
    return r0;
}

-(struct CGSize)sizeThatFits:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [[&var_10 super] sizeThatFits:r2];
    return r0;
}

@end