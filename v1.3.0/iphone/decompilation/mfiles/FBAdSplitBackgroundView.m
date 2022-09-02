@implementation FBAdSplitBackgroundView

-(void *)initWithLeftColor:(void *)arg2 rightColor:(void *)arg3 leftPercentage:(double)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r21 setBackgroundColor:r22];
            [r22 release];
            r0 = [r21 createAndAddNewViewWithBackgroundColor:r20];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rightView));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r21 createAndAddNewViewWithBackgroundColor:r19];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_leftView));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r21->_leftPercentage = d8;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)createAndAddNewViewWithBackgroundColor:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [UIView new];
    [r0 setBackgroundColor:r22];
    [r22 release];
    [self addSubview:r2];
    r0 = [r20 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rightView, 0x0);
    objc_storeStrong((int64_t *)&self->_leftView, 0x0);
    return;
}

-(void)layoutSubviews {
    [[&var_70 super] layoutSubviews];
    [self bounds];
    r0 = [self leftPercentage];
    CGRectGetWidth(r0);
    CGRectGetHeight(CGRectGetWidth([self leftPercentage]));
    r0 = [self rightView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    CGRectGetHeight(CGRectGetWidth([self leftPercentage]));
    r0 = [self leftView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    return;
}

-(void *)leftView {
    r0 = self->_leftView;
    return r0;
}

-(void)setLeftView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_leftView, arg2);
    return;
}

-(void *)rightView {
    r0 = self->_rightView;
    return r0;
}

-(void)setRightView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rightView, arg2);
    return;
}

-(double)leftPercentage {
    r0 = self;
    return r0;
}

-(void)setLeftPercentage:(double)arg2 {
    self->_leftPercentage = d0;
    return;
}

@end