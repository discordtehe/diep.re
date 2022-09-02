@implementation VungleProgressBar

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r20 = [[UIColor clearColor] retain];
            [r19 setBackgroundColor:r20];
            [r20 release];
            *(int32_t *)(int64_t *)&r19->_currentProgress = 0x0;
    }
    r0 = r19;
    return r0;
}

+(bool)requiresConstraintBasedLayout {
    return 0x1;
}

-(void)setProgress:(float)arg2 {
    r0 = self;
    if (!OVERFLOW(s0 - s0)) {
            asm { fcsel      s0, s0, s1, vc };
    }
    asm { fminnm     s0, s0, s2 };
    asm { fmaxnm     s0, s0, s1 };
    *(int32_t *)(int64_t *)&r0->_currentProgress = s0;
    [r0 setNeedsDisplay];
    return;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [self frame];
    asm { fcvt       d0, s0 };
    r19 = UIGraphicsGetCurrentContext();
    r0 = [VungleUIFactory vungleBlue];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    CGContextSetFillColorWithColor(r19, [r0 CGColor]);
    [r20 release];
    CGContextFillRect(r19, r1);
    return;
}

-(float)currentProgress {
    r0 = self;
    return r0;
}

-(void)setCurrentProgress:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_currentProgress = s0;
    return;
}

@end