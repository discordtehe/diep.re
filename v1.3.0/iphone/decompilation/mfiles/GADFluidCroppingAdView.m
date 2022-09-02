@implementation GADFluidCroppingAdView

-(void *)initWithView:(void *)arg2 messageSource:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r22 = arg2;
    r19 = [r22 retain];
    r20 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r23 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r23);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r25);
            *(r21 + r25) = r0;
            [r8 release];
            r21->_contentHeight = **_UIViewNoIntrinsicMetric;
            objc_storeWeak((int64_t *)&r21->_messageSource, r20);
            objc_storeStrong((int64_t *)&r21->_view, r22);
            [r21 addSubview:r21->_view];
            [r21->_view setTranslatesAutoresizingMaskIntoConstraints:0x1];
            [r21->_view setAutoresizingMask:0x0];
            [r21->_view setContentCompressionResistancePriority:0x0 forAxis:r3];
            [r21->_view setContentHuggingPriority:0x0 forAxis:r3];
            [r21->_view setContentCompressionResistancePriority:0x1 forAxis:r3];
            [r21->_view setContentHuggingPriority:0x1 forAxis:r3];
            objc_initWeak(&stack[-104], r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            [r23 addObserverForName:*0x100e9c208 object:r20 queue:r24 usingBlock:&var_80];
            [r24 release];
            [r21 setNeedsLayout];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(struct CGSize)intrinsicContentSize {
    r0 = self;
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r0->_contentHeight == **_UIViewNoIntrinsicMetric) {
            r0 = r0->_view;
            if (r0 != 0x0) {
                    r0 = [r0 intrinsicContentSize];
            }
    }
    return r0;
}

-(void)setContentHeight:(double)arg2 {
    r31 = r31 - 0x60;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_contentHeight));
    if (*(r19 + r22) != d8) {
            r21 = [sub_10081ce6c() retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
            r20 = [r0 retain];
            [r21 release];
            *(r19 + r22) = d8;
            [r19 invalidateIntrinsicContentSize];
            [r19 setNeedsLayout];
            r19 = objc_loadWeakRetained((int64_t *)&r19->_messageSource);
            if (r19 != 0x0) {
                    sub_1008833e8(*0x100e9c210, r19, r20);
            }
            [r19 release];
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)updateContentHeightValueFromNotification:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 userInfo];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:@"height"] retain];
    [r0 release];
    if (([r21 respondsToSelector:r2] & 0x1) != 0x0) {
            [r21 doubleValue];
            [r20 setContentHeight:@selector(doubleValue)];
    }
    else {
            r0 = objc_loadWeakRetained((int64_t *)&r20->_messageSource);
            sub_1007ce06c(r0, @"Content size notification is missing a valid height. %@");
            [r20 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_40 super] layoutSubviews];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_view));
    if (*(r19 + r21) != 0x0) {
            [r19 intrinsicContentSize];
            v8 = v1;
            if (d8 == **_UIViewNoIntrinsicMetric) {
                    CGRectGetHeight([r19 bounds]);
                    v8 = v0;
            }
            CGRectGetWidth([r19 bounds]);
            CGRectGetHeight([r19 bounds]);
            [*(r19 + r21) setFrame:r2];
    }
    return;
}

-(double)contentHeight {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_messageSource);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_view, 0x0);
    return;
}

@end