@implementation GADFluidContainerAdView

-(void *)initWithFrame:(struct CGRect)arg2 context:(void *)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2 context:r3];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setContentHuggingPriority:0x1 forAxis:r3];
            [r19 setContentHuggingPriority:0x0 forAxis:r3];
            [r19 setContentCompressionResistancePriority:0x1 forAxis:r3];
            [r19 setContentCompressionResistancePriority:0x0 forAxis:r3];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(struct CGSize)intrinsicContentSize {
    r0 = self->_view;
    r0 = [r0 intrinsicContentSize];
    return r0;
}

-(void)setView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg2;
    r20 = self;
    r19 = [r22 retain];
    r21 = (int64_t *)&r20->_view;
    r0 = *r21;
    if (r0 != r19) {
            [r0 removeFromSuperview];
            objc_storeStrong(r21, r22);
            if (*r21 != 0x0) {
                    [r20 addSubview:r2];
                    sub_100889560();
                    r2 = *r21;
                    r0 = [NSLayoutConstraint constraintWithItem:r2 attribute:0x7 relatedBy:0x0 toItem:r20 attribute:0x7 multiplier:r7 constant:var_20];
                    r0 = [r0 retain];
                    [r0 setPriority:r2];
                    [r20 addConstraint:r0];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void *)view {
    r0 = self->_view;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_view, 0x0);
    return;
}

@end