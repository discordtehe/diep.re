@implementation GADMRAIDResizePresenter

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)context {
    r0 = self->_context;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithContentView:(void *)arg2 resizeProperties:(void *)arg3 referenceView:(void *)arg4 context:(void *)arg5 {
    r31 = r31 - 0xb0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r29 = &var_10;
    r20 = arg5;
    r27 = arg4;
    r25 = arg3;
    r28 = arg2;
    r19 = [r28 retain];
    r21 = [r25 retain];
    r22 = [r27 retain];
    r24 = [r20 retain];
    r0 = [[&var_A0 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_contentView, r28);
            objc_storeStrong((int64_t *)&r23->_referenceView, r27);
            objc_storeStrong((int64_t *)&r23->_resizeProperties, r25);
            r0 = [NSMutableArray alloc];
            r0 = objc_msgSend(r0, r26);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_monitors));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r26);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r0 = [GADCloseButton alloc];
            r0 = [r0 initWithContext:r24];
            var_A8 = r19;
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_closeButton));
            r8 = *(r23 + r19);
            *(r23 + r19) = r0;
            [r8 release];
            [*(r23 + r19) setEnabledOnCustomClose:0x1];
            [*(r23 + r19) addTarget:r23 action:@selector(closeButtonPressed:) forControlEvents:0x40];
            r0 = sub_100803324();
            v8 = v0;
            CGRectGetWidth(CGRectGetHeight(r0));
            if (d12 < d0) {
                    asm { fcsel      d8, d0, d12, mi };
            }
            var_B0 = r20;
            r20 = r22;
            r22 = r21;
            r0 = @class(GADUnclickableView);
            r0 = [r0 alloc];
            r0 = [r0 initWithFrame:r24 context:@selector(closeButtonPressed:)];
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_pivotView));
            r8 = *(r23 + r19);
            *(r23 + r19) = r0;
            [r8 release];
            [*(r23 + r19) setOpaque:0x0];
            r27 = *(r23 + r19);
            r28 = [[UIColor clearColor] retain];
            [r27 setBackgroundColor:r28];
            [r28 release];
            r0 = @class(GADUnclickableView);
            r0 = [r0 alloc];
            r0 = [r0 initWithFrame:r24 context:@selector(closeButtonPressed:)];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_cropView));
            r8 = *(r23 + r21);
            *(r23 + r21) = r0;
            [r8 release];
            r0 = *(r23 + r19);
            r19 = var_A8;
            r2 = *(r23 + r21);
            r21 = r22;
            r22 = r20;
            [r0 addSubview:r2];
            objc_storeStrong((int64_t *)&r23->_context, var_B0);
    }
    [r24 release];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)closeButtonPressed:(void *)arg2 {
    sub_1008b4218();
    return;
}

-(void)addMonitor:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            sub_100822370(r0->_monitors, r2);
    }
    return;
}

-(bool)shouldDismissOnApplicationEnteringForeground {
    return 0x1;
}

-(bool)canPresent {
    var_A0 = d15;
    stack[-152] = d14;
    r31 = r31 + 0xffffffffffffff60;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r19 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_resizeProperties));
    [*(r19 + r26) offset];
    v8 = v0;
    [*(r19 + r26) offset];
    v9 = v1;
    [*(r19 + r26) size];
    v10 = v0;
    [*(r19 + r26) size];
    v11 = v1;
    r0 = [GADDeviceOrientationSignals alloc];
    r0 = [r0 init];
    r20 = r0;
    r21 = r19->_referenceView;
    [r0 standardizedOrientedApplicationFrame];
    [r21 convertRect:0x0 fromView:r3];
    v12 = v0;
    v13 = v1;
    v14 = v2;
    v15 = v3;
    [*(r19 + r26) allowOffscreen];
    [*(r19 + r26) customClosePosition];
    if (([GADMRAIDResizeProperties isContentFrameValid:r2 forBounds:r3 allowOffscreen:r4 closeButtonPosition:r5] & 0x1) != 0x0) {
            r19 = 0x1;
    }
    else {
            if (([*(r19 + r26) allowOffscreen] & 0x1) != 0x0) {
                    r19 = 0x0;
            }
            else {
                    sub_100843868();
                    [*(r19 + r26) allowOffscreen];
                    [*(r19 + r26) customClosePosition];
                    r19 = [GADMRAIDResizeProperties isContentFrameValid:r2 forBounds:r3 allowOffscreen:r4 closeButtonPosition:r5];
            }
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)presentFromViewController:(void *)arg2 completion:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 view];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 window];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 != 0x0) {
            r0 = [r22 retain];
    }
    else {
            r0 = sub_10089a8cc();
            r0 = [r0 retain];
    }
    [r22 release];
    [r0 autorelease];
    r0 = [r0 retain];
    [r0 addSubview:*(r21 + sign_extend_64(*(int32_t *)ivar_offset(_pivotView)))];
    objc_initWeak(&stack[-88], r21);
    objc_copyWeak(&var_70 + 0x20, &stack[-88]);
    [r24 addObserverForName:*0x100e9c0e0 object:r26 queue:0x0 usingBlock:&var_70];
    [r21 composeTransparentInterstitialViewsForPresentation];
    [r21 animateTransparentInterstitialPresentationWithCompletionHandler:r20];
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&stack[-88]);
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)relinquishScreenWithCompletion:(void *)arg2 {
    r20 = [arg2 retain];
    *(int8_t *)(int64_t *)&self->_relinquishCalled = 0x1;
    r0 = [self retain];
    var_68 = [r0 retain];
    var_60 = r20;
    r20 = [r20 retain];
    [UIView animateWithDuration:&var_58 animations:&var_88 completion:r4];
    [var_60 release];
    [var_68 release];
    [r0 release];
    [r20 release];
    return;
}

-(struct CGRect)cropViewFrameForOrientation:(long long)arg2 {
    r0 = [GADDeviceOrientationSignals alloc];
    r0 = [r0 init];
    CGRectGetHeight(CGRectGetWidth([r0 standardizedOrientedApplicationFrame]));
    [self->_pivotView bounds];
    sub_100843f08();
    r0 = [r20 release];
    return r0;
}

-(void)composeTransparentInterstitialViewsForPresentation {
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 applicationFrame];
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_pivotView));
    [*(self + r8) bounds];
    sub_100843f08();
    [r20 setFrame:r2];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r22 = [r0 statusBarOrientation];
    [r0 release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_cropView));
    r23 = *(self + r20);
    [self cropViewFrameForOrientation:r22];
    [r23 setFrame:r22];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_contentView));
    r23 = *(self + r28);
    [self contentFrame];
    [r23 setFrame:r22];
    [*(self + r28) setAutoresizingMask:0x0];
    [*(self + r20) addSubview:*(self + r28)];
    r27 = [*(self + sign_extend_64(*(int32_t *)ivar_offset(_resizeProperties))) customClosePosition];
    [*(self + r28) bounds];
    sub_10080b3ec(r27);
    [r25 setFrame:r2];
    r21 = *(self + r20);
    [*(self + r22) customClosePosition];
    [r21 setAutoresizingMask:sub_10080b57c()];
    [*(self + r28) addSubview:*(self + r20)];
    r0 = *(self + r8);
    [r0 setTransform:&var_A0];
    [self didChangeToOrientation:r22];
    objc_initWeak(&stack[-184], self);
    r0 = [NSOperationQueue mainQueue];
    [r0 retain];
    objc_copyWeak(&var_D0 + 0x20, &stack[-184]);
    [r19 addObserverForName:r22 object:0x0 queue:r21 usingBlock:&var_D0];
    [r21 release];
    objc_destroyWeak(&var_D0 + 0x20);
    objc_destroyWeak(&stack[-184]);
    return;
}

-(void)animateTransparentInterstitialPresentationWithCompletionHandler:(void *)arg2 {
    [arg2 retain];
    r0 = [GADDeviceOrientationSignals alloc];
    r0 = [r0 init];
    CGRectGetHeight([r0 standardizedOrientedApplicationFrame]);
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    [r0 doubleForKey:r2];
    [r0 release];
    CGRectOffset([self->_pivotView frame], @selector(frame), *0x100e9b5b0);
    [r22 setFrame:r2];
    r21 = [self retain];
    var_98 = r20;
    r20 = [r20 retain];
    var_90 = [r21 retain];
    [UIView animateWithDuration:&var_88 animations:&var_B8 completion:r4];
    [var_90 release];
    [var_98 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(struct CGRect)contentFrame {
    var_60 = d15;
    stack[-104] = d14;
    r31 = r31 + 0xffffffffffffff90;
    var_50 = d13;
    stack[-88] = d12;
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_cropView));
    [*(self + r20) bounds];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    r20 = *(self + r20);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_resizeProperties));
    [*(self + r22) offset];
    [*(self + r22) offset];
    [*(self + r22) size];
    [*(self + r22) size];
    [r20 convertRect:self->_referenceView fromView:r3];
    v12 = v0;
    v13 = v1;
    v14 = v0;
    v15 = v1;
    r0 = *(self + r22);
    r0 = [r0 allowOffscreen];
    if ((r0 & 0x1) == 0x0) {
            r0 = sub_100843868();
            v12 = v12;
            v13 = v13;
            v14 = v14;
            v15 = v15;
    }
    return r0;
}

-(void)repositionContentIfNeeded {
    r31 = r31 - 0xc0;
    var_90 = d15;
    stack[-136] = d14;
    var_80 = d13;
    stack[-120] = d12;
    var_70 = d11;
    stack[-104] = d10;
    var_60 = d9;
    stack[-88] = d8;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_relinquishCalled == 0x0) {
            [r19 contentFrame];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_contentView));
            [*(r19 + r21) setFrame:r2];
            r24 = [*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_resizeProperties))) customClosePosition];
            [*(r19 + r21) bounds];
            sub_10080b3ec(r24);
            [r23 setFrame:r2];
            r22 = *(r19 + r26);
            [*(r19 + r25) customClosePosition];
            [r22 setAutoresizingMask:sub_10080b57c()];
            objc_initWeak(&stack[-152], r19);
            [r19->_cropView bounds];
            if (([GADMRAIDResizeProperties isContentFrameValid:[*(r19 + r25) allowOffscreen] forBounds:[*(r19 + r25) customClosePosition] allowOffscreen:r4 closeButtonPosition:r5] & 0x1) == 0x0) {
                    *(int8_t *)(int64_t *)&r19->_willDismissAfterOrientationChange = 0x1;
                    [[NSOperationQueue mainQueue] retain];
                    objc_copyWeak(&var_C0 + 0x20, &stack[-152]);
                    [r20 addOperationWithBlock:&var_C0];
                    [r20 release];
                    objc_destroyWeak(&var_C0 + 0x20);
            }
            objc_destroyWeak(&stack[-152]);
    }
    return;
}

-(void)didChangeToOrientation:(long long)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    [[NSNumber numberWithInteger:arg2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
    sub_1008833e8(*0x100e9c128, self, [r0 retain]);
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleOrientationChangeEvent {
    r0 = [UIScreen mainScreen];
    r0 = [r0 retain];
    [r0 applicationFrame];
    [r0 release];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r0 = [r0 statusBarOrientation];
    r0 = CGRectGetMidX(r0);
    CGRectGetMidY(r0);
    [self cropViewFrameForOrientation:r21];
    [r19 statusBarOrientationAnimationDuration];
    r0 = [self retain];
    r8 = *_CGAffineTransformIdentity;
    *(int128_t *)(&var_118 + 0x78) = *(int128_t *)(r8 + 0x20);
    q0 = *(int128_t *)r8;
    *(int128_t *)(&var_118 + 0x68) = *(int128_t *)(r8 + 0x10);
    *(int128_t *)(&var_118 + 0x58) = q0;
    var_128 = [r0 retain];
    [UIView animateWithDuration:&var_118 animations:&var_148 completion:r4];
    [var_128 release];
    [r0 release];
    [r19 release];
    return;
}

-(void *)closeButton {
    r0 = self->_closeButton;
    return r0;
}

-(bool)willDismissAfterOrientationChange {
    r0 = *(int8_t *)(int64_t *)&self->_willDismissAfterOrientationChange;
    return r0;
}

-(void *)resizeProperties {
    r0 = self->_resizeProperties;
    return r0;
}

-(void)setResizeProperties:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_resizeProperties, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_resizeProperties, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_monitors, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_referenceView, 0x0);
    objc_storeStrong((int64_t *)&self->_cropView, 0x0);
    objc_storeStrong((int64_t *)&self->_pivotView, 0x0);
    objc_storeStrong((int64_t *)&self->_contentView, 0x0);
    return;
}

@end