@implementation FBAdIconButton

-(void)setFillColor:(void *)arg2 forState:(unsigned long long)arg3 {
    [self setTitleColor:arg2 forState:arg3];
    return;
}

-(void *)initWithIconStyle:(unsigned long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r20->_iconStyle = r19;
            [r20 setDefaultColorStyle];
    }
    r0 = r20;
    return r0;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r20 = [[self currentTitleColor] retain];
    [FBAdIconDrawer drawIcon:[self iconStyle] inRect:r20 withColor:r4];
    [r20 release];
    return;
}

-(void)setDefaultColorStyle {
    r20 = [[UIColor blackColor] retain];
    [self setFillColor:r20 forState:0x0];
    [r20 release];
    r22 = [[UIColor grayColor] retain];
    [self setFillColor:r22 forState:0x2];
    [r22 release];
    r20 = [[UIColor grayColor] retain];
    [self setFillColor:r20 forState:0x1];
    [r20 release];
    return;
}

-(unsigned long long)iconStyle {
    r0 = self->_iconStyle;
    return r0;
}

@end