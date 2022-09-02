@implementation FBAdChoicesView

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setupInternals];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setupInternals];
    }
    r0 = r19;
    return r0;
}

-(void)setupInternals {
    r20 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [self setBackgroundColor:r20];
    [r20 release];
    [self setCorner:0x2];
    [self setInsets:0x2];
    r20 = [FBAdChoicesInternalView alloc];
    r21 = [[FBNativeAd fakeNativeAd] retain];
    r20 = [r20 initWithNativeAd:r21];
    [self setInternalView:r20];
    [r20 release];
    [r21 release];
    r0 = [self internalView];
    r0 = [r0 retain];
    [r0 setOwnerView:self];
    [r0 release];
    [[self internalView] retain];
    [self addSubview:r2];
    [r20 release];
    return;
}

-(void *)initWithNativeAd:(void *)arg2 {
    r0 = [self initWithNativeAd:arg2 expandable:0x1];
    return r0;
}

-(void *)initWithNativeAd:(void *)arg2 expandable:(bool)arg3 {
    r0 = [arg2 retain];
    r21 = [[r0 adViewAttributes] retain];
    r19 = [self initWithNativeAd:r0 expandable:arg3 attributes:r21];
    [r0 release];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void)setNativeAd:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_nativeAd, [arg2 retain]);
    r0 = [self internalView];
    r0 = [r0 retain];
    [r0 setNativeAd:r21];
    [r21 release];
    [r0 release];
    [self updateInternalUI];
    return;
}

-(void *)initWithNativeAd:(void *)arg2 expandable:(bool)arg3 attributes:(void *)arg4 {
    r31 = r31 - 0x70;
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
    r19 = [arg2 retain];
    r23 = [arg4 retain];
    r20 = [[FBAdViewControllerProxy proxyWithViewController:0x0] retain];
    r0 = [r19 dataModel];
    r0 = [r0 retain];
    r25 = [[r0 inlineClientToken] retain];
    r26 = [[r19 adChoicesIcon] retain];
    r27 = [[r19 adChoicesLinkURL] retain];
    r28 = [[r19 adChoicesText] retain];
    r21 = [self initWithViewController:r20 inlineClientToken:r25 adChoicesIcon:r26 adChoicesLinkURL:r27 adChoicesText:r28 attributes:r23 expandable:arg3];
    [r23 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r0 release];
    [r20 release];
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_nativeAd, r19);
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setRootViewController:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self internalView];
    r0 = [r0 retain];
    [r0 setRootViewController:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void *)initWithViewController:(void *)arg2 inlineClientToken:(void *)arg3 adChoicesIcon:(void *)arg4 adChoicesLinkURL:(void *)arg5 adChoicesText:(void *)arg6 attributes:(void *)arg7 expandable:(bool)arg8 {
    var_0 = arg8;
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r25 = [arg7 retain];
    r0 = [[&var_60 super] initWithFrame:r2];
    r24 = r0;
    if (r0 != 0x0) {
            r28 = var_0;
            [r24 setupInternals];
            r0 = [r24 internalView];
            r29 = r29;
            r26 = [r0 retain];
            if (r19 != 0x0) {
                    [r26 updateViewsWithViewController:r19 inlineClientToken:r20 adChoicesIcon:r21 adChoicesLinkURL:r22 adChoicesText:r23 attributes:r25 expandable:r28 initialized:stack[-120]];
            }
            else {
                    r27 = [[FBAdViewControllerProxy proxyWithViewController:0x0] retain];
                    [r26 updateViewsWithViewController:r27 inlineClientToken:r20 adChoicesIcon:r21 adChoicesLinkURL:r22 adChoicesText:r23 attributes:r25 expandable:r28 initialized:stack[-120]];
                    [r27 release];
            }
            [r26 release];
    }
    [r25 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void)setBackgroundShown:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    *(int8_t *)(int64_t *)&self->_backgroundShown = arg2;
    if (arg2 != 0x0) {
            r20 = [[UIColor colorWithUInt:r2 withAlpha:r3] retain];
            r0 = [r19 internalView];
    }
    else {
            r20 = [[UIColor colorWithUInt:r2 withAlpha:r3] retain];
            r0 = [r19 internalView];
    }
    r0 = [r0 retain];
    [r0 setBackgroundColor:r20];
    [r0 release];
    [r20 release];
    return;
}

-(bool)isExpandable {
    r0 = [self internalView];
    r0 = [r0 retain];
    r20 = [r0 isExpandable];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)label {
    r0 = [self internalView];
    r0 = [r0 retain];
    r20 = [[r0 label] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)rootViewController {
    r0 = [self internalView];
    r0 = [r0 retain];
    r20 = [[r0 rootViewController] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setCorner:(unsigned long long)arg2 {
    self->_corner = arg2;
    [self updateInternalUI];
    return;
}

-(void)updateFrameFromSuperview {
    [self updateInternalUI];
    return;
}

-(void)setInsets:(struct UIEdgeInsets)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_insets));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    *(0x10 + self + r8) = d2;
    *(0x18 + self + r8) = d3;
    [self updateInternalUI];
    return;
}

-(void)updateFrameFromSuperview:(unsigned long long)arg2 {
    [self setCorner:arg2];
    return;
}

-(void)updateFrameFromSuperview:(unsigned long long)arg2 insets:(struct UIEdgeInsets)arg3 {
    memcpy(&r3, &arg3, 0x8);
    self->_corner = arg2;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_insets));
    *(self + r8) = d0;
    *(0x8 + self + r8) = d1;
    *(0x10 + self + r8) = d2;
    *(0x18 + self + r8) = d3;
    [self updateInternalUI];
    return;
}

-(void)checkInvalidCorner:(unsigned long long)arg2 {
    r0 = self;
    if (arg2 == -0x1) {
            r20 = **_NSInvalidArgumentException;
            r21 = [NSStringFromClass([r0 class]) retain];
            [NSException raise:r20 format:@"%@ corner must not be UIRectCornerAllCorners."];
            [r21 release];
    }
    return;
}

-(void)updateInternalFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self internalView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
}

-(void)setNativeAdViewTag:(unsigned long long)arg2 {
    return;
}

-(unsigned long long)nativeAdViewTag {
    return 0xc;
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
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(adChoicesView:willPresentViewController:), r3] != 0x0) {
            [r21 adChoicesView:r20 willPresentViewController:r19];
    }
    [r21 release];
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
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(adChoicesView:viewControllerCompleted:), r3] != 0x0) {
            [r21 adChoicesView:r20 viewControllerCompleted:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)updateInternalUI {
    var_70 = d13;
    stack[-120] = d12;
    r31 = r31 + 0xffffffffffffff80;
    var_60 = d11;
    stack[-104] = d10;
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
    r19 = self;
    [r19 checkInvalidCorner:[self corner]];
    r0 = [r19 superview];
    r0 = [r0 retain];
    [r0 bounds];
    v10 = v2;
    v8 = v3;
    [r0 release];
    r23 = [[r19 internalView] retain];
    [r23 relativeWidthForAdSize:[r19 corner] forCorner:r3];
    v11 = v10;
    [r23 release];
    r23 = [[r19 internalView] retain];
    [r23 relativeHeightForAdSize:[r19 corner] forCorner:r3];
    v9 = v10;
    [r23 release];
    d11 = d10 - d11;
    r0 = [r19 internalView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 isExpandable] != 0x0) {
            [r23 release];
    }
    else {
            r0 = [r19 internalView];
            r29 = r29;
            r24 = [r0 retain];
            r25 = [r24 isRightCorner:[r19 corner]];
            [r24 release];
            [r23 release];
            d0 = 0x0;
            if (r25 != 0x0) {
                    asm { fcsel      d12, d11, d0, ne };
            }
    }
    d8 = d8 - d9;
    r0 = [r19 internalView];
    r0 = [r0 retain];
    [r0 extensionAmount];
    [r0 release];
    r0 = [r19 internalView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 adChoicesIcon];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r0 == 0x0) {
            asm { fcsel      d9, d0, d9, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d10, d0, d10, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d11, d11, d12, eq };
    }
    r0 = [r19 corner];
    if (r0 > 0x3) goto loc_100a1d908;

loc_100a1d8dc:
    if (r0 == 0x1) goto loc_100a1d934;

loc_100a1d8e4:
    if (r0 != 0x2) goto loc_100a1d988;

loc_100a1d8ec:
    [r19 insets];
    goto loc_100a1d94c;

loc_100a1d94c:
    [r19 insets];
    goto loc_100a1d988;

loc_100a1d988:
    r21 = [[r19 superview] retain];
    [r19 convertRect:r21 fromView:r3];
    [r21 release];
    [r19 updateInternalFrame:r21];
    r0 = [r19 internalView];
    r0 = [r0 retain];
    [r0 updateUI];
    [r0 release];
    r20 = [[r19 internalView] retain];
    [r19 bringSubviewToFront:r20];
    [r20 release];
    return;

loc_100a1d934:
    [r19 insets];
    goto loc_100a1d94c;

loc_100a1d908:
    if (r0 == 0x4) goto loc_100a1d960;

loc_100a1d910:
    if (r0 != 0x8) goto loc_100a1d988;

loc_100a1d918:
    [r19 insets];
    goto loc_100a1d978;

loc_100a1d978:
    [r19 insets];
    goto loc_100a1d988;

loc_100a1d960:
    [r19 insets];
    goto loc_100a1d978;
}

-(void *)hitTest:(struct CGPoint)arg2 withEvent:(void *)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x150;
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
    r29 = &saved_fp;
    v8 = v1;
    v9 = v0;
    r20 = self;
    r19 = [r2 retain];
    if (([r20 clipsToBounds] & 0x1) != 0x0 || ([r20 isHidden] & 0x1) != 0x0) goto loc_100a1dc24;

loc_100a1dc0c:
    [r20 alpha];
    if (d0 != 0x0) goto loc_100a1dca0;

loc_100a1dc24:
    r0 = [[&var_100 super] hitTest:r19 withEvent:r3];
    r26 = [r0 retain];
    goto loc_100a1dc58;

loc_100a1dc58:
    var_70 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_70) {
            r0 = [r26 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100a1dca0:
    var_130 = q0;
    r0 = [r20 subviews];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 reverseObjectEnumerator];
    r29 = r29;
    r21 = [r0 retain];
    [r22 release];
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100a1ddc0;

loc_100a1dd0c:
    r23 = r0;
    r27 = *var_130;
    goto loc_100a1dd20;

loc_100a1dd20:
    r28 = 0x0;
    goto loc_100a1dd2c;

loc_100a1dd2c:
    if (*var_130 != r27) {
            objc_enumerationMutation(r21);
    }
    [*(var_138 + r28 * 0x8) convertPoint:r2 fromView:r3];
    r0 = objc_msgSend(r26, r25);
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (r0 != 0x0) goto loc_100a1ddd0;

loc_100a1dd84:
    [r26 release];
    r28 = r28 + 0x1;
    if (r28 < r23) goto loc_100a1dd2c;

loc_100a1dd98:
    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r23 = r0;
    if (r0 != 0x0) goto loc_100a1dd20;

loc_100a1ddc0:
    [r21 release];
    r26 = 0x0;
    goto loc_100a1dc58;

loc_100a1ddd0:
    [r21 release];
    goto loc_100a1dc58;
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
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(adChoicesView:viewControllerDismissed:), r3] != 0x0) {
            [r21 adChoicesView:r20 viewControllerDismissed:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_20 super] setFrame:r2];
    [self updateInternalUI];
    return;
}

-(bool)isBackgroundShown {
    r0 = *(int8_t *)(int64_t *)&self->_backgroundShown;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_internalView, 0x0);
    objc_destroyWeak((int64_t *)&self->_nativeAd);
    return;
}

-(void *)nativeAd {
    r0 = objc_loadWeakRetained((int64_t *)&self->_nativeAd);
    r0 = [r0 autorelease];
    return r0;
}

-(unsigned long long)corner {
    r0 = self->_corner;
    return r0;
}

-(struct UIEdgeInsets)insets {
    r0 = self;
    return r0;
}

-(void *)internalView {
    r0 = self->_internalView;
    return r0;
}

-(void)setInternalView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_internalView, arg2);
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
    r0 = objc_getClass("FBAdChoicesView");
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

@end