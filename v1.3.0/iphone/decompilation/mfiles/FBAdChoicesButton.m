@implementation FBAdChoicesButton

-(void)configureWithText:(void *)arg2 cancelText:(void *)arg3 url:(void *)arg4 inlineClientToken:(void *)arg5 rootViewController:(void *)arg6 {
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r24 = [arg4 retain];
    r23 = [arg5 retain];
    r22 = [arg6 retain];
    [self setAdChoicesLinkURL:r24];
    [r24 release];
    [self setAdChoicesText:r20];
    [self setInlineClientToken:r23];
    [r23 release];
    [self setRootViewController:r22];
    [r22 release];
    [self setCancelText:r21];
    [r21 release];
    [self setAccessibilityValue:r20];
    [r20 release];
    [self setAccessibilityTraits:**_UIAccessibilityTraitStaticText];
    return;
}

-(void)presentAdChoicesViewController {
    r20 = @class(FBAdSafariViewController);
    r21 = [[self adChoicesLinkURL] retain];
    r22 = [[self rootViewController] retain];
    r23 = [[self inlineClientToken] retain];
    [r20 presentSafariViewControllerWithURL:r21 withRootViewController:r22 withInlineClientToken:r23 withHandlerTime:[FBAdSafariViewController currentTimeMs] withDelegate:self];
    [r23 release];
    [r22 release];
    [r21 release];
    return;
}

-(void)didTap {
    r31 = r31 - 0xc0;
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
    r21 = self;
    r0 = [self willPresentActionSheet];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 willPresentActionSheet];
            r29 = r29;
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r19 release];
    }
    r19 = [[UIAlertController alloc] init];
    r20 = @class(UIAlertAction);
    r22 = [[r21 adChoicesText] retain];
    r20 = [[r20 actionWithTitle:r22 style:0x0 handler:&var_88] retain];
    [r22 release];
    r22 = @class(UIAlertAction);
    r24 = [[r21 cancelText] retain];
    r22 = [[r22 actionWithTitle:r24 style:0x1 handler:&var_B0] retain];
    [r24 release];
    [r19 addAction:r20];
    [r19 addAction:r22];
    r23 = [[r21 rootViewController] retain];
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if ([r0 respondsToSelector:r2] == 0x0) goto loc_100a16018;

loc_100a15edc:
    r0 = [UIDevice currentDevice];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 userInterfaceIdiom];
    [r0 release];
    [r24 release];
    if (r26 == 0x0) goto loc_100a16020;

loc_100a15f14:
    CGRectGetMidX([r21 frame]);
    CGRectGetMaxY([r21 frame]);
    [r19 setModalPresentationStyle:0x7];
    r21 = [[r23 view] retain];
    r0 = [r19 popoverPresentationController];
    r0 = [r0 retain];
    [r0 setSourceView:r21];
    [r0 release];
    [r21 release];
    r0 = [r19 popoverPresentationController];
    r0 = [r0 retain];
    [r0 setPermittedArrowDirections:0x1];
    [r0 release];
    r0 = [r19 popoverPresentationController];
    r0 = [r0 retain];
    r24 = r0;
    [r0 setSourceRect:0x1];
    goto loc_100a16018;

loc_100a16018:
    [r24 release];
    goto loc_100a16020;

loc_100a16020:
    [r23 presentViewController:r19 animated:0x1 completion:0x0];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)rootViewController {
    r20 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r19 = [[FBAdViewControllerProxy proxyWithViewController:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setIconColor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_iconColor, arg2);
    r19 = [arg2 retain];
    [self setNeedsDisplay];
    [r19 release];
    return;
}

-(void)willPresentViewController:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 willPresentViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 willPresentViewController];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)viewControllerCompleted:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 viewControllerCompleted];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 viewControllerCompleted];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)viewControllerDismissed:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 viewControllerDismissed];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 viewControllerDismissed];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)iconColor {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_iconColor)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_storeStrong((int64_t *)&self->_inlineClientToken, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesLinkURL, 0x0);
    objc_storeStrong((int64_t *)&self->_cancelText, 0x0);
    objc_storeStrong((int64_t *)&self->_adChoicesText, 0x0);
    objc_storeStrong((int64_t *)&self->_viewControllerDismissed, 0x0);
    objc_storeStrong((int64_t *)&self->_viewControllerCompleted, 0x0);
    objc_storeStrong((int64_t *)&self->_willPresentViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_willDismissActionSheet, 0x0);
    objc_storeStrong((int64_t *)&self->_willPresentActionSheet, 0x0);
    objc_storeStrong((int64_t *)&self->_iconColor, 0x0);
    return;
}

-(void *)willPresentActionSheet {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_willPresentActionSheet)), 0x0);
    return r0;
}

-(void)setWillPresentActionSheet:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)willDismissActionSheet {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_willDismissActionSheet)), 0x0);
    return r0;
}

-(void)setWillDismissActionSheet:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)willPresentViewController {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_willPresentViewController)), 0x0);
    return r0;
}

-(void)setWillPresentViewController:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)viewControllerCompleted {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_viewControllerCompleted)), 0x0);
    return r0;
}

-(void)setViewControllerCompleted:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)viewControllerDismissed {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_viewControllerDismissed)), 0x0);
    return r0;
}

-(void)setViewControllerDismissed:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adChoicesText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adChoicesText)), 0x0);
    return r0;
}

-(void *)cancelText {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_cancelText)), 0x0);
    return r0;
}

-(void)setAdChoicesText:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setAdChoicesLinkURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setCancelText:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adChoicesLinkURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adChoicesLinkURL)), 0x0);
    return r0;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xd0;
    var_70 = d15;
    stack[-120] = d14;
    var_60 = d13;
    stack[-104] = d12;
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r20 = self;
    r0 = [self iconColor];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r20 iconColor];
            r29 = r29;
    }
    else {
            r0 = [UIColor blackColor];
            r29 = r29;
    }
    [r0 retain];
    [r21 release];
    objc_msgSend(r20, *(&@selector(getTemplateForKey:) + 0xab8));
    r0 = objc_msgSend(r20, r21);
    v0 = v11;
    v1 = v10;
    r0 = CGRectInset(r0, r21, r2);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetWidth(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetHeight(r0);
    CGRectGetHeight(r0);
    r0 = *(&@class(ADCTransitionalContainer) + 0xa60);
    r0 = objc_msgSend(r0, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa00));
    r0 = [r0 retain];
    r0 = CGRectGetMinX(r0);
    var_88 = *double_value_7_97;
    CGRectGetMinY(r0);
    var_80 = d12 * *double_value_0_70438;
    r0 = objc_msgSend(r20, *(&@selector(clearColorsForFlag:context:) + 0xc10));
    r0 = CGRectGetMinX(r0);
    d0 = d0 + *double_value_14_76;
    var_90 = d0;
    r0 = CGRectGetMinY(r0);
    d0 = d12 * *double_value_0_50004 + d0;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_59973;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_0_5412;
    r0 = objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa08));
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_0_50018;
    r0 = objc_msgSend(r20, *(&@selector(clearColorsForFlag:context:) + 0xc18));
    r0 = CGRectGetMinX(r0);
    var_A0 = *double_value_2_13;
    CGRectGetMinY(r0);
    var_90 = d14 * *double_value_0_12017;
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r22)));
    var_98 = d14 * *double_value_0_8799;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    d0 = d0 + *double_value_2_81;
    var_A8 = d0;
    r0 = CGRectGetMinY(r0);
    var_78 = d14;
    d0 = d14 * *double_value_0_85921 + d0;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = var_A8 + *double_value_3_67;
    var_A8 = d0;
    r0 = CGRectGetMinY(r0);
    d0 = var_78 * *double_value_0_83326 + d0;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = var_A8 + *double_value_5_11;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_81775;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_0_82893;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = d0 + *double_value_4_67;
    var_A8 = d0;
    r0 = CGRectGetMinY(r0);
    d0 = d12 * *double_value_0_93941 + d0;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_0_9239;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = var_A8 + *double_value_3_81;
    var_A8 = d0;
    r0 = CGRectGetMinY(r0);
    d0 = d12 * *double_value_0_96516 + d0;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_A8 = *double_value_3_13;
    CGRectGetMinY(r0);
    d1 = *double_value_0_98564;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_99507;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_0_94623;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_1003;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_0_08073;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_00483;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_minus_0_01702;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_90 = *double_value_15_77;
    CGRectGetMinY(r0);
    d1 = *double_value_0_39429;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    d0 = d0 + *double_value_16_64;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_40543;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_0_4224;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_5015;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_0_57433;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = d0 + *double_value_7_41;
    var_90 = d0;
    r0 = CGRectGetMinY(r0);
    d0 = d12 * *double_value_0_85723 + d0;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_0_72244;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d15 = *double_value_5_85;
    d0 = var_90 + d15;
    var_90 = d0;
    r0 = CGRectGetMinY(r0);
    d0 = d12 * *double_value_0_80417 + d0;
    r0 = CGRectGetMinX(r0);
    d0 = d0 + *double_value_6_7;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    d1 = *double_value_0_84943;
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    var_90 = var_78 * *double_value_0_62014;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    d0 = d0 + *double_value_6_91;
    r0 = CGRectGetMinY(r0);
    d1 = *double_value_0_56009;
    var_A8 = var_78 * d1;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_98 = d12 * *double_value_0_58697;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    var_A0 = d0 + var_88;
    r0 = CGRectGetMinY(r0);
    d0 = var_90 + d0 + var_88;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    objc_msgSend(r20, r22);
    r0 = objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa10));
    r0 = CGRectGetMinX(r0);
    var_88 = *double_value_7_95;
    CGRectGetMinY(r0);
    var_80 = var_78 * *double_value_0_45354;
    r0 = objc_msgSend(r20, r23);
    r0 = CGRectGetMinX(r0);
    d1 = *double_value_6_89;
    var_98 = d1;
    r0 = CGRectGetMinY(r0);
    d15 = var_78 * *double_value_0_51359;
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_A8 = var_78 * *double_value_0_4867;
    r0 = CGRectGetMinX(r0);
    var_90 = *double_value_7_47;
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    d0 = *double_value_5_82 + d0 + d1;
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    var_A0 = *double_value_6_3;
    r0 = CGRectGetMinY(r0);
    CGRectGetMinY(CGRectGetMinX(r0));
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    var_A8 = var_78 * *double_value_0_44647;
    r0 = objc_msgSend(r20, r22);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    var_78 = d13 * *double_value_0_41331;
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(r0);
    r0 = objc_msgSend(r20, r21);
    r0 = CGRectGetMinX(r0);
    r0 = CGRectGetMinY(r0);
    r0 = CGRectGetMinX(r0);
    CGRectGetMinY(CGRectGetMinX(CGRectGetMinY(r0)));
    CGRectGetMinY(CGRectGetMinX(objc_msgSend(r20, r21)));
    objc_msgSend(r20, r22);
    objc_msgSend(r20, r24);
    objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa18));
    objc_msgSend(r19, *(&@selector(_initOpenAL) + 0x9f8));
    objc_msgSend(r20, *(&@selector(clearTempLog:WithCompletionBlock:) + 0xa20));
    [r20 release];
    [r19 release];
    return;
}

-(void)setInlineClientToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)inlineClientToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_inlineClientToken)), 0x0);
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, arg2);
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdChoicesButton");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(void *)adChoicesButton {
    r0 = [FBAdChoicesButton buttonWithType:0x0];
    r0 = [r0 retain];
    [r0 addTarget:r0 action:@selector(didTap) forControlEvents:0x40];
    r0 = [r0 autorelease];
    return r0;
}

@end