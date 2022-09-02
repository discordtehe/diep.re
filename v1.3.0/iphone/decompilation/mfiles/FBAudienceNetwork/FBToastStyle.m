@implementation FBToastStyle

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [UIColor blackColor];
            r0 = [r0 retain];
            r21 = [[r0 colorWithAlphaComponent:r2] retain];
            [r19 setBackgroundColor:r21];
            [r21 release];
            [r0 release];
            r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r19 setMessageColor:r20];
            [r20 release];
            [r19 setMaxWidthPercentage:r20];
            [r19 setMaxHeightPercentage:r20];
            r20 = [[UIFont systemFontOfSize:r20] retain];
            [r19 setMessageFont:r20];
            [r20 release];
            [r19 setMessageAlignment:0x0];
            [r19 setMessageNumberOfLines:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)setMaxWidthPercentage:(double)arg2 {
    r0 = self;
    asm { fminnm     d0, d0, d1 };
    asm { fmax       d0, d0, d1 };
    r0->_maxWidthPercentage = d0;
    return;
}

-(void)setMaxHeightPercentage:(double)arg2 {
    r0 = self;
    asm { fminnm     d0, d0, d1 };
    asm { fmax       d0, d0, d1 };
    r0->_maxHeightPercentage = d0;
    return;
}

-(void *)backgroundColor {
    r0 = self->_backgroundColor;
    return r0;
}

-(void)setBackgroundColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backgroundColor, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_messageFont, 0x0);
    objc_storeStrong((int64_t *)&self->_messageColor, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundColor, 0x0);
    return;
}

-(void *)messageColor {
    r0 = self->_messageColor;
    return r0;
}

-(void)setMessageColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_messageColor, arg2);
    return;
}

-(double)maxHeightPercentage {
    r0 = self;
    return r0;
}

-(double)maxWidthPercentage {
    r0 = self;
    return r0;
}

-(void *)messageFont {
    r0 = self->_messageFont;
    return r0;
}

-(void)setMessageAlignment:(long long)arg2 {
    self->_messageAlignment = arg2;
    return;
}

-(long long)messageAlignment {
    r0 = self->_messageAlignment;
    return r0;
}

-(void)setMessageFont:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_messageFont, arg2);
    return;
}

-(long long)messageNumberOfLines {
    r0 = self->_messageNumberOfLines;
    return r0;
}

-(void)setMessageNumberOfLines:(long long)arg2 {
    self->_messageNumberOfLines = arg2;
    return;
}

@end