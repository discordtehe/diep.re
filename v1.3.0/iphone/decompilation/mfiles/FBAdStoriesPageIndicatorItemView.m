@implementation FBAdStoriesPageIndicatorItemView

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r19 setBackgroundColor:r21];
            [r21 release];
            r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r19 setTintColor:r20];
            [r20 release];
            [r19 setProgress:r20];
    }
    r0 = r19;
    return r0;
}

-(void)setProgress:(double)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_progress));
    if (*(r0 + r8) != d0) {
            asm { fmaxnm     d0, d0, d1 };
            asm { fmin       d0, d0, d1 };
            *(r0 + r8) = d0;
            [r0 setNeedsDisplay];
    }
    return;
}

-(double)progress {
    r0 = self;
    return r0;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_50 super] drawRect:r2];
    r20 = UIGraphicsGetCurrentContext();
    r0 = [self tintColor];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    CGContextSetFillColorWithColor(r20, [r0 CGColor]);
    [r21 release];
    CGContextFillRect(r20, r1);
    return;
}

@end