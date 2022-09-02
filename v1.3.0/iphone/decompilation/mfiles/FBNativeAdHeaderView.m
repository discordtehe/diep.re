@implementation FBNativeAdHeaderView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [[&var_10 super] initWithFrame:r2];
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r0 = [[&var_10 super] initWithCoder:arg2];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 nativeAdBase:(void *)arg3 attributes:(void *)arg4 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [r3 retain];
    r0 = [[&var_50 super] initWithFrame:r2];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 setClipsToBounds:0x1];
            objc_storeWeak((int64_t *)&r21->_nativeAdBase, r19);
            objc_storeWeak((int64_t *)&r21->_attributes, r20);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)reinitializeView {
    [self resetView];
    [self createView];
    [self updateView:0x1];
    return;
}

-(void)setNativeAdBase:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_nativeAdBase, arg2);
    [self reinitializeView];
    return;
}

-(void)resetView {
    r0 = [self headerTitleLabel];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [self setHeaderTitleLabel:0x0];
    r0 = [self headerBodyLabel];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [self setHeaderBodyLabel:0x0];
    return;
}

-(void)updateView:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            var_70 = d13;
            stack[-104] = d12;
            r31 = r31 + 0xffffffffffffff90;
            var_60 = d11;
            stack[-88] = d10;
            var_50 = d9;
            stack[-72] = d8;
            var_40 = r24;
            stack[-56] = r23;
            var_30 = r22;
            stack[-40] = r21;
            var_20 = r20;
            stack[-24] = r19;
            var_10 = r29;
            stack[-8] = r30;
            r29 = &var_10;
            r19 = r0;
            if (([r0 isLoaded] & 0x1) == 0x0) {
                    [r19 createView];
            }
            r20 = [[r19 headerTitleLabel] retain];
            r21 = [[r19 headerBodyLabel] retain];
            r0 = [r19 nativeAdBase];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [[r0 advertiserName] retain];
            [r20 setText:r23];
            [r23 release];
            r23 = [[r22 bodyText] retain];
            [r21 setText:r23];
            [r23 release];
            [r19 bounds];
            asm { fdiv       d9, d2, d8 };
            objc_msgSend(r19, r23);
            asm { fdiv       d0, d3, d8 };
            if (d9 < d0) {
                    asm { fcsel      d8, d9, d0, mi };
            }
            [r19 bounds];
            objc_msgSend(r19, r23);
            d0 = 0x4014000000000000;
            asm { fdiv       d0, d3, d0 };
            objc_msgSend(r19, r23);
            objc_msgSend(r19, r23);
            [r20 setFrame:r2];
            objc_msgSend(r21, r19);
            [r22 release];
            [r21 release];
            [r20 release];
    }
    return;
}

-(void)createView {
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80;
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
    r19 = self;
    r0 = [self headerTitleLabel];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [UILabel alloc];
    r20 = [r0 initWithFrame:r2];
    r0 = [r19 attributes];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 titleFont];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 != 0x0) {
            [r20 setFont:r2];
    }
    else {
            [UIFont systemFontSize];
            r0 = [UIFont boldSystemFontOfSize:r2];
            r29 = r29;
            [r0 retain];
            [r20 setFont:r2];
            [r27 release];
    }
    [r26 release];
    r0 = [r21 titleColor];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    if (r0 != 0x0) {
            r2 = r27;
            [r20 setTextColor:r2];
    }
    else {
            r0 = [UIColor blackColor];
            r29 = r29;
            r2 = [r0 retain];
            [r20 setTextColor:r2];
            [r28 release];
    }
    [r27 release];
    [r19 addSubview:r20];
    [r19 setHeaderTitleLabel:r20];
    r0 = [r19 headerBodyLabel];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r22 = [[UILabel alloc] initWithFrame:r20];
    r0 = [r21 descriptionFont];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            [r22 setFont:r2];
    }
    else {
            [UIFont systemFontSize];
            r0 = [UIFont systemFontOfSize:r2];
            r29 = r29;
            [r0 retain];
            [r22 setFont:r2];
            [r24 release];
    }
    [r23 release];
    r0 = [r21 descriptionColor];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            [r22 setTextColor:r2];
    }
    else {
            r26 = @selector(setTextColor:);
            [[UIColor blackColor] retain];
            objc_msgSend(r22, r26);
            [r24 release];
    }
    [r23 release];
    [r19 addSubview:r22];
    [r19 setHeaderBodyLabel:r22];
    [r19 setLoaded:0x1];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)setAttributes:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_attributes, arg2);
    [self updateView:0x1];
    return;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    r1 = @selector(frame);
    r0 = objc_msgSend(self, r1);
    r0 = CGRectEqualToRect(r0, r1);
    if ((r0 & 0x1) != 0x0) {
            [[&var_40 super] setFrame:r2];
    }
    else {
            CGRectIsEmpty(r0);
            [[&var_40 super] setFrame:r2];
            if ((r20 & 0x1) == 0x0) {
                    [r19 reinitializeView];
            }
    }
    return;
}

-(void)setBounds:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    r0 = [self bounds];
    r0 = CGRectEqualToRect(r0, @selector(bounds));
    if ((r0 & 0x1) != 0x0) {
            [[&var_40 super] setBounds:r2];
    }
    else {
            r20 = CGRectIsEmpty(r0);
            [[&var_40 super] setBounds:r2];
            if ((r20 & 0x1) == 0x0) {
                    [r19 reinitializeView];
            }
    }
    return;
}

-(bool)pointInside:(struct CGPoint)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    var_60 = d13;
    stack[-104] = d12;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
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
    r21 = self;
    r0 = [self superview];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [FBNativeAdView class];
    if ([r22 isKindOfClass:r2] != 0x0) {
            r0 = [r21 superview];
            r29 = r29;
            r20 = [r0 retain];
    }
    else {
            r20 = 0x0;
    }
    [r22 release];
    r0 = [r21 window];
    r0 = [r0 retain];
    v1 = v8;
    [r0 convertPoint:r21 fromView:r3];
    [r0 release];
    r22 = [[r20 mediaView] retain];
    r21 = [[r21 window] retain];
    [r22 frame];
    r19 = [[r22 superview] retain];
    [r21 convertRect:r19 fromView:r3];
    [r19 release];
    r19 = CGRectContainsPoint([r21 release], @selector(convertRect:fromView:)) ^ 0x1;
    [r22 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_headerBodyLabel);
    objc_destroyWeak((int64_t *)&self->_headerTitleLabel);
    objc_destroyWeak((int64_t *)&self->_attributes);
    objc_destroyWeak((int64_t *)&self->_nativeAdBase);
    return;
}

-(void *)nativeAdBase {
    r0 = objc_loadWeakRetained((int64_t *)&self->_nativeAdBase);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)attributes {
    r0 = objc_loadWeakRetained((int64_t *)&self->_attributes);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)headerTitleLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_headerTitleLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setHeaderTitleLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_headerTitleLabel, arg2);
    return;
}

-(void *)headerBodyLabel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_headerBodyLabel);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setHeaderBodyLabel:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_headerBodyLabel, arg2);
    return;
}

-(bool)isLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_loaded;
    return r0;
}

-(void)setLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loaded = arg2;
    return;
}

@end