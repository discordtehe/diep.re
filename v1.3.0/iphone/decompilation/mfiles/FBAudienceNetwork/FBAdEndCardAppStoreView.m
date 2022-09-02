@implementation FBAdEndCardAppStoreView

-(void *)initWithDataModel:(void *)arg2 toolbarView:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg2;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] initWithFrame:r2];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_adDataModel, r22);
            r22 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
            [r21 setBackgroundColor:r22];
            [r22 release];
            r22 = [[FBAdFunnelLogging sharedFunnelLogger] retain];
            r23 = [[r19 inlineClientToken] retain];
            r24 = [[r22 funnelLoggerForToken:r23] retain];
            [r21 setFunnelLoggerDelegate:r24];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 addToolbarView:r20];
            [r21 preloadAppStoreController];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)layoutSubviews {
    [[&var_60 super] layoutSubviews];
    sub_100aabe74();
    [self bounds];
    [self layoutToolbarViewWithInsets:r2 withBounds:r3];
    [self layoutAppStoreSheetWithInsets:r2 withBounds:r3];
    return;
}

-(void)layoutToolbarViewWithInsets:(struct UIEdgeInsets)arg2 withBounds:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r0 = [self toolbarView];
    r0 = [r0 retain];
    CGRectGetWidth(r0);
    [r19 toolbarHeight];
    [r19 setFrame:r2];
    [r19 release];
    return;
}

-(void)layoutAppStoreSheetWithInsets:(struct UIEdgeInsets)arg2 withBounds:(struct CGRect)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x80;
    var_60 = d15;
    stack[-104] = d14;
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
    r29 = &saved_fp;
    v10 = v7;
    v11 = v6;
    v13 = v5;
    v14 = v4;
    v15 = v3;
    var_68 = d2;
    v8 = v1;
    r20 = self;
    if (([self hasAppearedBefore] & 0x1) == 0x0) {
            if (*qword_1011dcd88 != -0x1) {
                    dispatch_once_f(0x1011dcd88, 0x1011c5d28, 0x100a3d91c);
            }
            qword_1011dcd90();
            d0 = d0 * *0x100b9b058;
            [r20 setAppStoreSheetOpenTimeMs:r2];
            [r20 setHasAppearedBefore:0x1];
    }
    r19 = [[r20 toolbarView] retain];
    [[r20 productVC] retain];
    CGRectGetHeight(CGRectGetWidth([r19 toolbarHeight]));
    [r19 toolbarHeight];
    r0 = [r20 view];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)addAppStoreViewToSubview {
    r0 = [self productVC];
    r0 = [r0 retain];
    [[r0 view] retain];
    [self addSubview:r2];
    [r21 release];
    [r20 release];
    return;
}

-(void)addToolbarView:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r29 = &saved_fp;
    r23 = self;
    r0 = [arg2 retain];
    r19 = r0;
    [r0 setDelegate:r23];
    [r23 setToolbarView:r19];
    [r23 addSubview:r19];
    if (([r19 translatesAutoresizingMaskIntoConstraints] & 0x1) == 0x0) {
            r0 = [r19 leadingAnchor];
            r0 = [r0 retain];
            var_78 = r0;
            r21 = [[r23 an_leadingSafeAnchor] retain];
            r24 = [[r0 constraintEqualToAnchor:r21] retain];
            r25 = [[r19 trailingAnchor] retain];
            r26 = [[r23 an_trailingSafeAnchor] retain];
            r27 = [[r25 constraintEqualToAnchor:r26] retain];
            r22 = [[r19 topAnchor] retain];
            r23 = [[r23 an_topSafeAnchor] retain];
            r28 = [[r22 constraintEqualToAnchor:r23] retain];
            r0 = [NSArray arrayWithObjects:&var_70 count:0x3];
            r20 = [r0 retain];
            [NSLayoutConstraint activateConstraints:r20];
            [r20 release];
            [r28 release];
            [r23 release];
            [r22 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r21 release];
            [var_78 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)preloadAppStoreController {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if (*qword_1011dd0c8 != -0x1) {
            dispatch_once_f(0x1011dd0c8, 0x1011c6190, 0x100a3d91c);
    }
    r19 = [*0x1011dd0d0 new];
    [r20 setProductVC:r19];
    [r19 release];
    r0 = [r20 productVC];
    r0 = [r0 retain];
    [r0 setDelegate:r20];
    [r0 release];
    r0 = [r20 adDataModel];
    r0 = [r0 retain];
    r0 = [r0 commandURL];
    r0 = [r0 retain];
    [[r0 query] retain];
    [r0 release];
    objc_initWeak(&stack[-72], r20);
    [[r20 productVC] retain];
    [[FBAdUtility storeSheetParameters:r21] retain];
    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
    [r20 loadProductWithParameters:r23 completionBlock:&var_60];
    [r23 release];
    [r20 release];
    objc_destroyWeak(&var_60 + 0x20);
    objc_destroyWeak(&stack[-72]);
    [r21 release];
    [r19 release];
    return;
}

-(void)closeEndCard {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self productVC];
    r0 = [r0 retain];
    [r0 willMoveToParentViewController:0x0];
    [r0 release];
    r0 = [r19 productVC];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 view];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [r21 release];
    r0 = [r19 productVC];
    r0 = [r0 retain];
    [r0 removeFromParentViewController];
    [r0 release];
    r0 = [r19 adDataModel];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 inlineClientToken];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r19 appStoreSheetOpenTimeMs];
    asm { fcvtzu     x23, d0 };
    if (*qword_1011dcd88 != -0x1) {
            dispatch_once_f(0x1011dcd88, 0x1011c5d28, 0x100a3d91c);
    }
    qword_1011dcd90();
    asm { fcvtzu     x4, d0 };
    [r20 logLocalUserReturnEventWithToken:r22 openInterval:r23 closeInterval:r4];
    [r22 release];
    [r21 release];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    [r0 endCardAppStoreViewWillClose:r19];
    [r0 release];
    return;
}

-(void)interstitialAdToolbarDidClose:(void *)arg2 withTouchData:(void *)arg3 {
    r20 = [arg3 retain];
    r0 = [self funnelLoggerDelegate];
    r0 = [r0 retain];
    [r0 logAdCloseClickedWithData:0x0];
    [r0 release];
    r21 = [[FBAdEventManager sharedManager] retain];
    r0 = [self adDataModel];
    r0 = [r0 retain];
    r23 = [[r0 inlineClientToken] retain];
    [r21 logCloseEventForToken:r23 withExtraData:r20];
    [r20 release];
    [r23 release];
    [r0 release];
    [r21 release];
    [self closeEndCard];
    return;
}

-(void)interstitialAdToolbarDidTapAdChoices:(void *)arg2 {
    r0 = [self funnelLoggerDelegate];
    r0 = [r0 retain];
    [r0 logAdChoicesTappedWithData:0x0];
    [r0 release];
    return;
}

-(void)interstitialAdToolbarDidCloseAdChoices:(void *)arg2 {
    return;
}

-(void)interstitialAdToolbarDidTapAdInfo:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self funnelLoggerDelegate];
    r0 = [r0 retain];
    [r0 logAdReportTappedWithData:0x0];
    [r0 release];
    r0 = [r19 onInfo];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 onInfo];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r19 release];
    }
    [r20 release];
    return;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    r20 = [[FBAdEventManager sharedManager] retain];
    r0 = [self adDataModel];
    r0 = [r0 retain];
    r22 = [[r0 inlineClientToken] retain];
    [r20 logCloseEventForToken:r22 withExtraData:0x0];
    [r22 release];
    [r0 release];
    [r20 release];
    [self closeEndCard];
    return;
}

-(void *)onInfo {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onInfo)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_funnelLoggerDelegate);
    objc_destroyWeak((int64_t *)&self->_toolbarView);
    objc_storeStrong((int64_t *)&self->_adDataModel, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_productVC, 0x0);
    objc_storeStrong((int64_t *)&self->_onInfo, 0x0);
    return;
}

-(void)setOnInfo:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)productVC {
    r0 = self->_productVC;
    return r0;
}

-(void)setProductVC:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_productVC, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)adDataModel {
    r0 = self->_adDataModel;
    return r0;
}

-(void *)toolbarView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_toolbarView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setToolbarView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_toolbarView, arg2);
    return;
}

-(double)appStoreSheetOpenTimeMs {
    r0 = self;
    return r0;
}

-(void)setAppStoreSheetOpenTimeMs:(double)arg2 {
    self->_appStoreSheetOpenTimeMs = d0;
    return;
}

-(bool)hasAppearedBefore {
    r0 = *(int8_t *)(int64_t *)&self->_hasAppearedBefore;
    return r0;
}

-(void)setHasAppearedBefore:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_hasAppearedBefore = arg2;
    return;
}

-(void *)funnelLoggerDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_funnelLoggerDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setFunnelLoggerDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_funnelLoggerDelegate, arg2);
    return;
}

@end