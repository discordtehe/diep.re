@implementation GADContainerAdView

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

-(void)setResizeMessageSource:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = (int64_t *)&r20->_resizeMessageSource;
    r0 = objc_loadWeakRetained(r21);
    [r0 release];
    if (r0 != r19) {
            objc_storeWeak(r21, r19);
            if (r19 != 0x0) {
                    r0 = [GADObserverCollection alloc];
                    r0 = [r0 init];
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_observer));
                    r8 = *(r20 + r22);
                    *(r20 + r22) = r0;
                    [r8 release];
                    objc_initWeak(&stack[-56], r20);
                    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
                    [r20 addObserverForName:*0x100e9c218 object:r19 queue:0x0 usingBlock:&var_50];
                    objc_destroyWeak(&var_50 + 0x20);
                    objc_destroyWeak(&stack[-56]);
            }
            else {
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_observer));
                    r0 = *(r20 + r8);
                    *(r20 + r8) = 0x0;
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

-(void)setView:(void *)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r20 = self;
    r19 = [r22 retain];
    r21 = (int64_t *)&r20->_view;
    r0 = *r21;
    if (r0 != r19) {
            [r0 removeFromSuperview];
            objc_storeStrong(r21, r22);
            if (*r21 != 0x0) {
                    [r19 frame];
                    [r20 addSubview:*r21];
                    sub_100889560();
                    [r20 constrainSubviewToSize:r2];
            }
    }
    [r19 release];
    return;
}

-(void *)resizeMessageSource {
    r0 = objc_loadWeakRetained((int64_t *)&self->_resizeMessageSource);
    r0 = [r0 autorelease];
    return r0;
}

-(void)constrainSubviewToSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x80;
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
    r29 = &saved_fp;
    v8 = v1;
    v9 = v0;
    r19 = self;
    r24 = (int64_t *)&r19->_view;
    if (*r24 != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_fixedSizeConstraints));
            r8 = *(r19 + r22);
            if (r8 != 0x0) {
                    [NSLayoutConstraint deactivateConstraints:r8];
                    r2 = *r24;
            }
            r20 = [[NSLayoutConstraint constraintWithItem:r2 attribute:0x7 relatedBy:0x0 toItem:0x0 attribute:0x7 multiplier:r7 constant:stack[-128]] retain];
            r21 = [[NSLayoutConstraint constraintWithItem:*r24 attribute:0x8 relatedBy:0x0 toItem:0x0 attribute:0x8 multiplier:r7 constant:stack[-128]] retain];
            r0 = [NSArray arrayWithObjects:&var_68 count:0x2];
            r0 = [r0 retain];
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            [NSLayoutConstraint activateConstraints:*(r19 + r22)];
            [r21 release];
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_resizeMessageSource);
    objc_storeStrong((int64_t *)&self->_view, 0x0);
    objc_storeStrong((int64_t *)&self->_observer, 0x0);
    objc_storeStrong((int64_t *)&self->_fixedSizeConstraints, 0x0);
    return;
}

@end