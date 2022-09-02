@implementation FBAdCTAButton

-(void *)initWithStyle:(unsigned long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setupWithStyle:r19];
    }
    r0 = r20;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setupWithStyle:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)setupWithStyle:(unsigned long long)arg2 {
    r21 = [[self titleLabel] retain];
    [FBAdFont fontSizeSmall];
    r22 = [[FBAdFont sfuiDisplaySemiboldWithSize:r2] retain];
    [r21 setFont:r22];
    [r22 release];
    [self setContentEdgeInsets:r22];
    [self setCtaButtonStyle:arg2];
    [r21 release];
    return;
}

-(void)setCtaButtonStyle:(unsigned long long)arg2 {
    [self setCtaButtonStyle:arg2 animationDuration:r3];
    return;
}

-(void *)darkColor {
    r0 = [UIColor colorWithUInt:0x3c7cff withAlpha:r3];
    return r0;
}

-(void)layoutSubviews {
    [[&var_40 super] layoutSubviews];
    [self bounds];
    r0 = [self backgroundView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
}

-(void)setCtaButtonStyle:(unsigned long long)arg2 animationDuration:(double)arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0xa0;
    var_50 = d9;
    stack[-88] = d8;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v0;
    r19 = self;
    self->_ctaButtonStyle = r2;
    if (r2 != 0x3) {
            if (r2 != 0x2) {
                    if (r2 == 0x1) {
                            r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
                            r21 = [[r19 darkColor] retain];
                            r22 = [[r19 lightColor] retain];
                            r0 = [r19 lightColor];
                            r23 = 0x0;
                    }
                    else {
                            r20 = [[r19 darkColor] retain];
                            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
                            r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
                            r0 = @class(UIColor);
                            r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
                            r23 = 0x1;
                    }
            }
            else {
                    r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
                    r21 = [[UIColor colorWithUInt:0x1c1e21 withAlpha:r3] retain];
                    r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
                    r0 = @class(UIColor);
                    r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
                    r23 = 0x0;
            }
    }
    else {
            r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            r0 = @class(UIColor);
            r0 = [r0 colorWithUInt:0xffffff withAlpha:r3];
            r23 = 0x1;
    }
    r24 = [r0 retain];
    [r19 setupBackgroundLayerWithColor:r20 cornerRadius:r23 shadowEnabled:r4 animationDuration:r5];
    var_68 = r21;
    r21 = [r21 retain];
    var_60 = r24;
    r24 = [r24 retain];
    var_58 = r22;
    r22 = [r22 retain];
    [UIView transitionWithView:r19 duration:0x530080 options:&var_90 animations:0x0 completion:r6];
    [var_58 release];
    [var_60 release];
    [var_68 release];
    [r22 release];
    [r24 release];
    [r21 release];
    [r20 release];
    return;
}

-(void *)lightColor {
    r0 = [UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5];
    return r0;
}

-(void)setupBackgroundLayerWithColor:(void *)arg2 cornerRadius:(double)arg3 shadowEnabled:(bool)arg4 animationDuration:(double)arg5 {
    r31 = r31 - 0xa0;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:arg3] retain];
    [r20 setBackgroundColor:r21];
    [r21 release];
    r0 = [r20 backgroundView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r21 = r22;
    }
    else {
            r21 = [UIView new];
            [r22 release];
            [r21 setUserInteractionEnabled:0x0];
            r0 = [r21 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:0x0];
            [r0 release];
            [r21 setClipsToBounds:0x1];
            [r21 setBackgroundColor:r19];
            r0 = @class(UIColor);
            r0 = [r0 colorWithUInt:0x0 withAlpha:r3];
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r24 = r0;
            r25 = [r0 CGColor];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setShadowColor:r25];
            [r0 release];
            [r24 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setShadowOffset:r25];
            [r0 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setCornerRadius:r25];
            [r0 release];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 setShadowOpacity:r25];
            [r0 release];
            r0 = [r20 titleLabel];
            r0 = [r0 retain];
            r22 = r0;
            if (r0 != 0x0) {
                    [r20 insertSubview:r21 belowSubview:r22];
            }
            else {
                    [r20 addSubview:r2];
            }
            [r20 setBackgroundView:r21];
            [r22 release];
            r22 = r21;
    }
    r21 = [r21 retain];
    var_68 = r19;
    r19 = [r19 retain];
    [UIView animateWithDuration:&var_90 animations:r3];
    [var_68 release];
    [r22 release];
    [r19 release];
    [r21 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_backgroundView, 0x0);
    return;
}

-(unsigned long long)ctaButtonStyle {
    r0 = self->_ctaButtonStyle;
    return r0;
}

-(void *)backgroundView {
    r0 = self->_backgroundView;
    return r0;
}

-(void)setBackgroundView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backgroundView, arg2);
    return;
}

@end