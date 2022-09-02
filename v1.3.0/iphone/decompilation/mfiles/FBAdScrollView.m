@implementation FBAdScrollView

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithCoder:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 commonInitialization];
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
            [r19 commonInitialization];
    }
    r0 = r19;
    return r0;
}

-(void)loadCells {
    r0 = [self cellViews];
    r0 = [r0 retain];
    r22 = [[r0 allObjects] retain];
    [FBAdUtility animateWithFadeOut:r22 completion:&var_48];
    [r22 release];
    [r0 release];
    return;
}

-(void *)cellViews {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_cellViews));
    [*(self + r20) compact];
    r0 = *(self + r20);
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)didMoveToSuperview {
    [[&var_20 super] didMoveToSuperview];
    [self setupContentSize];
    [self loadPages];
    return;
}

-(void)setFrame:(struct CGRect)arg2 {
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
    r29 = &saved_fp;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    if (sub_100aab508() != 0x0) {
            [[&var_50 super] setFrame:r2];
            [r19 bounds];
            r0 = [r19 hitTestView];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r0 release];
            [r19 updateView:0x1];
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
    r29 = &saved_fp;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    if (sub_100aab508() != 0x0) {
            [[&var_40 super] setBounds:r2];
            [r19 bounds];
            r0 = [r19 hitTestView];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r0 release];
            [r19 updateView:0x1];
    }
    return;
}

-(void)setDebugMode:(bool)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_debugMode));
    r9 = *(int8_t *)(r0 + r8);
    *(int8_t *)(r0 + r8) = arg2;
    if (r9 != arg2) {
            if (CPU_FLAGS & NE) {
                    r2 = 0x1;
            }
    }
    [r0 updateView:r2];
    return;
}

-(void)updateView:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            var_20 = r20;
            stack[-24] = r19;
            r31 = r31 + 0xffffffffffffffe0;
            var_10 = r29;
            stack[-8] = r30;
            r19 = r0;
            [r0 removeAllCells];
            [r19 addAllCells];
            [r19 setupScrollViewSize];
            [r19 setupContentSize];
            [r19 loadPages];
            [r19 repositionScrollView];
            [r19 positionGradient];
            r0 = [r19 scrollView];
            r29 = &var_10;
            r20 = [r0 retain];
            if ([r19 debugMode] != 0x0) {
                    r0 = [UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5];
            }
            else {
                    r0 = [UIColor clearColor];
            }
            r19 = [r0 retain];
            [r20 setBackgroundColor:r19];
            [r19 release];
            [r20 release];
    }
    return;
}

-(void)setHidden:(bool)arg2 {
    r31 = r31 - 0x140;
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
    r19 = arg2;
    r20 = self;
    var_110 = q0;
    r0 = [self cellViews];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r26 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r26) {
                                    objc_enumerationMutation(r21);
                            }
                            [*(var_118 + r27 * 0x8) setHidden:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [[&var_130 super] setHidden:r2];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)dealloc {
    [self removeAllCells];
    [[&var_20 super] dealloc];
    return;
}

-(struct CGRect)scrollFrame {
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self bounds];
    v8 = v2;
    [r19 yPadding];
    d0 = d9 - d0 + d0;
    if (d8 >= d0) {
            [r19 yPadding];
            d0 = d0 + d0;
            d8 = d9 - d0;
    }
    [r19 yPadding];
    [r19 xPadding];
    r0 = [r19 xInset];
    return r0;
}

-(void)setupScrollViewSize {
    r20 = [[self scrollView] retain];
    [self scrollFrame];
    [r20 setFrame:r2];
    [self repositionScrollView];
    [r20 release];
    return;
}

-(void)commonInitialization {
    r31 = r31 - 0xc0;
    var_70 = d11;
    stack[-120] = d10;
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
    var_78 = **___stack_chk_guard;
    [self setUserInteractionEnabled:0x1];
    *(int8_t *)(int64_t *)&self->_animationEnabled = 0x1;
    self->_xPadding = 0x4020000000000000;
    self->_yPadding = 0x0;
    self->_xInset = 0x0;
    r0 = [NSPointerArray weakObjectsPointerArray];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_cellViews));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [NSMapTable weakToStrongObjectsMapTable];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_cellMapping));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r20 = [FBAdTouchPassthroughView new];
    [self bounds];
    [r20 setFrame:0x1];
    [self addSubview:r20];
    objc_storeWeak((int64_t *)&self->_hitTestView, r20);
    r0 = [UIScrollView new];
    r21 = r0;
    [r0 setDelegate:self];
    [r21 setClipsToBounds:0x0];
    [r21 setShowsHorizontalScrollIndicator:0x0];
    [r21 setPagingEnabled:0x1];
    [self scrollFrame];
    [r21 setFrame:0x1];
    [r21 setScrollsToTop:0x0];
    [self setupScrollViewSize];
    r0 = [UITapGestureRecognizer new];
    r22 = r0;
    [r0 setDelaysTouchesBegan:0x1];
    [r22 setDelaysTouchesEnded:0x1];
    [r22 setCancelsTouchesInView:0x0];
    var_B0 = r22;
    [r22 setNumberOfTapsRequired:0x0];
    r0 = [r21 panGestureRecognizer];
    r0 = [r0 retain];
    [r0 requireGestureRecognizerToFail:r22];
    [r0 release];
    [r21 addGestureRecognizer:r22];
    [r21 setCanCancelContentTouches:0x1];
    [r21 setDelaysContentTouches:0x0];
    [r20 addSubview:r21];
    objc_storeWeak((int64_t *)&self->_scrollView, r21);
    [r20 setPassthroughView:r21];
    [[UIColor clearColor] retain];
    [[UIColor blackColor] retain];
    r22 = [[NSArray arrayWithObjects:&var_88 count:0x2] retain];
    r27 = [FBGradientView newWithColors:r22 locations:0x0 startPoint:r4 endPoint:r5 opacity:r6];
    [r22 release];
    [r27 setFrame:r22];
    [self addSubview:r27];
    objc_storeWeak((int64_t *)&self->_leftGradientView, r27);
    r0 = [NSArray arrayWithObjects:&var_98 count:0x2];
    r28 = [r0 retain];
    r22 = [FBGradientView newWithColors:r28 locations:0x0 startPoint:r25 endPoint:r5 backgroundColor:r6 opacity:r7];
    [r28 release];
    [r22 setFrame:r28];
    [self addSubview:r22];
    objc_storeWeak((int64_t *)&self->_rightGradientView, r22);
    [self positionGradient];
    [r22 release];
    [r27 release];
    [r24 release];
    [r25 release];
    [var_B0 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

-(double)ratio {
    r0 = [self scrollView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 bounds];
    [r20 contentOffset];
    [r20 contentSize];
    [self paddingTotal];
    asm { fdiv       d8, d9, d0 };
    r0 = [r20 release];
    return r0;
}

-(void)setupContentSize {
    r19 = self;
    r0 = [self scrollView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 frame];
    [r19 paddingTotal];
    [r19 count];
    asm { ucvtf      d0, x0 };
    [r20 setContentSize:r2];
    [r19 repositionScrollView];
    [r20 release];
    return;
}

-(void)repositionScrollView {
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
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
    r0 = [self scrollView];
    r0 = [r0 retain];
    r19 = r0;
    [r0 frame];
    v8 = v1;
    v9 = v2;
    v10 = v3;
    [self ratio];
    [self bounds];
    [r19 bounds];
    d0 = d12 - d2;
    if (!OVERFLOW(d11 - d11)) {
            asm { fccmp      d1, d2, #0x4, vc };
    }
    if (CPU_FLAGS & NE) {
            asm { fccmp      d0, d0, #0x1, ne };
    }
    if (CPU_FLAGS & NO) {
            asm { fccmp      d1, d2, #0x4, vc };
    }
    if (!CPU_FLAGS & E) {
            [r19 setFrame:r2];
    }
    [r19 release];
    return;
}

-(void)positionGradient {
    r31 = r31 - 0x110;
    var_70 = d13;
    stack[-120] = d12;
    var_60 = d11;
    stack[-104] = d10;
    var_50 = d9;
    stack[-88] = d8;
    var_40 = r28;
    stack[-72] = r27;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self bounds];
    [r19 ratio];
    r20 = [[r19 leftGradientView] retain];
    r21 = [[r19 rightGradientView] retain];
    if (d12 >= *0x100b9b5c0) {
            var_98 = [r20 retain];
            [r19 animateWithFade:r2 view:r3 animations:r4 completion:r5];
            [var_98 release];
    }
    else {
            [r19 animateWithFade:r2 view:r3 animations:r4 completion:r5];
    }
    if (d12 < *0x100b9e2d0) {
            var_E0 = [r21 retain];
            [r19 animateWithFade:r2 view:r3 animations:r4 completion:r5];
            [var_E0 release];
    }
    else {
            [r19 animateWithFade:r2 view:r3 animations:r4 completion:r5];
    }
    [r21 release];
    [r20 release];
    return;
}

-(void)animateWithFade:(bool)arg2 view:(void *)arg3 animations:(void *)arg4 completion:(void *)arg5 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    [r19 alpha];
    if (r22 != 0x0) {
            if (d0 != 0x0) {
                    if (r22 != 0x0) {
                            asm { fcsel      d0, d0, d1, ne };
                    }
                    [r19 setAlpha:r2];
                    var_48 = [r19 retain];
                    var_40 = [r20 retain];
                    [FBAdUtility animateWithStandardAnimations:&var_68 duration:r21 completion:r4];
                    [var_40 release];
                    [var_48 release];
            }
            else {
                    if (r20 != 0x0) {
                            (*(r20 + 0x10))(r20);
                    }
            }
    }
    else {
            if (d0 == *0x100bf4950) {
                    if (r20 != 0x0) {
                            (*(r20 + 0x10))(r20);
                    }
            }
            else {
                    if (r22 != 0x0) {
                            asm { fcsel      d0, d0, d1, ne };
                    }
                    [r19 setAlpha:r2];
                    var_48 = [r19 retain];
                    var_40 = [r20 retain];
                    [FBAdUtility animateWithStandardAnimations:&var_68 duration:r21 completion:r4];
                    [var_40 release];
                    [var_48 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(double)paddingforPage:(unsigned long long)arg2 {
    r0 = [self xPadding];
    asm { ucvtf      d1, x19 };
    return r0;
}

-(double)paddingTotal {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self count];
    if (r0 >= 0x2) {
            [r19 paddingforPage:[r19 count] - 0x2];
            r0 = [r19 paddingforPage:0x0];
    }
    return r0;
}

-(void)loadPages {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self count] != 0x0) {
            r20 = 0x0;
            do {
                    [r19 loadPage:r2];
                    r20 = r20 + 0x1;
            } while (r20 < objc_msgSend(r19, r22));
    }
    return;
}

-(void)loadPage:(unsigned long long)arg2 {
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r21 = self;
    if ([self count] >= r20) {
            r0 = [r21 scrollView];
            r0 = [r0 retain];
            r19 = r0;
            [r0 bounds];
            asm { ucvtf      d0, x20 };
            [r21 xPadding];
            r0 = [r21 cellViews];
            r0 = [r0 retain];
            r20 = [[r0 pointerAtIndex:r20] retain];
            [r0 release];
            [r20 setContentMode:0x1];
            [r20 setFrame:0x1];
            [r19 addSubview:r2];
            [r20 release];
            [r19 release];
    }
    return;
}

-(void *)childViewForData:(void *)arg2 withPosition:(unsigned long long)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 childViewProvider];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 childViewProvider];
            r0 = [r0 retain];
            r20 = [(*(r0 + 0x10))() retain];
            [r0 release];
    }
    else {
            [NSException raise:**_NSInternalInconsistencyException format:@"No child view provider was created for this view."];
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)populate:(void *)arg2 forIndex:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self cellViews];
    r0 = [r0 retain];
    r20 = [[r0 pointerAtIndex:arg3] retain];
    [r0 release];
    if ([r20 respondsToSelector:@selector(updateCellWithData:)] != 0x0) {
            [r20 updateCellWithData:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)addAllCells {
    r31 = r31 - 0x140;
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
    r0 = [self data];
    r0 = [r0 retain];
    [r0 count];
    [r0 release];
    [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/views/nativead/utility/FBAdScrollView.mm" lineNumber:0x1a4 format:@"Adding %ld cells"];
    var_110 = q0;
    r0 = [r19 data];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r24 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r20);
                            }
                            [r19 addCellForData:r2 withPosition:r3];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(unsigned long long)indexForData:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = [self cellViews];
    r0 = [r0 retain];
    r22 = [[r0 allObjects] retain];
    var_28 = r20;
    r20 = [r20 retain];
    r19 = [r22 indexOfObjectPassingTest:&var_50];
    [r22 release];
    [r0 release];
    [var_28 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(unsigned long long)addCellForData:(void *)arg2 withPosition:(unsigned long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [[self childViewForData:r21 withPosition:arg3] retain];
    [self mapData:r21 toView:r19];
    r0 = [self cellViews];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 addPointer:r19];
    [r0 release];
    [self setupContentSize];
    r22 = [self count] - 0x1;
    [self loadPage:r22];
    [self populate:r21 forIndex:r22];
    [r21 release];
    if ([self isAnimationEnabled] != 0x0) {
            r0 = [NSArray arrayWithObjects:&var_30 count:0x1];
            r21 = [r0 retain];
            [FBAdUtility animateWithFadeIn:r21 completion:0x0];
            [r21 release];
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(unsigned long long)count {
    r0 = [self cellViews];
    r0 = [r0 retain];
    r20 = [r0 count];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)rootViewController {
    r20 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r19 = [[FBAdViewControllerProxy proxyWithViewController:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)removeAllCells {
    r0 = [self cellViews];
    r0 = [r0 retain];
    r21 = [r0 copy];
    [self removeAllCells:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)removeAllCells:(void *)arg2 {
    [self detachAllNativeAds:arg2];
    r20 = [[NSMapTable weakToStrongObjectsMapTable] retain];
    [self setCellMapping:r20];
    [r20 release];
    r20 = [[NSPointerArray weakObjectsPointerArray] retain];
    [self setCellViews:r20];
    [r20 release];
    [self setupContentSize];
    return;
}

-(void *)viewForData:(void *)arg2 {
    r31 = r31 - 0x150;
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
    r20 = self;
    var_128 = [arg2 retain];
    var_110 = q0;
    r0 = [r20 cellMapping];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 keyEnumerator];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r23 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    var_130 = r19;
    r0 = objc_msgSend(r19, r1);
    if (r0 == 0x0) goto loc_100a89fe8;

loc_100a89f24:
    r24 = r0;
    r22 = *var_110;
    goto loc_100a89f38;

loc_100a89f38:
    r19 = 0x0;
    goto loc_100a89f44;

loc_100a89f44:
    if (*var_110 != r22) {
            objc_enumerationMutation(var_130);
    }
    r26 = @selector(isEqual:);
    r25 = @selector(objectForKey:);
    r27 = *(var_118 + r19 * 0x8);
    r0 = [r20 cellMapping];
    r0 = [r0 retain];
    r23 = r0;
    r0 = objc_msgSend(r0, r25);
    r29 = r29;
    r28 = [r0 retain];
    [r23 release];
    if ((objc_msgSend(r28, r26) & 0x1) != 0x0) goto loc_100a89ff8;

loc_100a89fb0:
    [r28 release];
    r19 = r19 + 0x1;
    if (r19 < r24) goto loc_100a89f44;

loc_100a89fc4:
    r0 = objc_msgSend(var_130, var_138);
    r24 = r0;
    if (r0 != 0x0) goto loc_100a89f38;

loc_100a89fe8:
    [var_130 release];
    r20 = 0x0;
    goto loc_100a8a014;

loc_100a8a014:
    var_60 = **___stack_chk_guard;
    [var_128 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100a89ff8:
    r20 = [r27 retain];
    [r28 release];
    [var_130 release];
    goto loc_100a8a014;
}

-(void)mapData:(void *)arg2 toView:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self cellMapping];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void *)nativeAdForView:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self cellMapping];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)scrollViewDidScroll:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [self positionGradient];
    [self repositionScrollView];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewDidScroll:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)detachAllNativeAds:(void *)arg2 {
    r31 = r31 - 0x120;
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
    r0 = [arg2 retain];
    r19 = r0;
    var_100 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r23 = *var_100;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_100 != r23) {
                                    objc_enumerationMutation(r19);
                            }
                            [*(var_108 + r25 * 0x8) removeFromSuperview];
                            r25 = r25 + 0x1;
                    } while (r25 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)scrollViewDidZoom:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewDidZoom:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)scrollViewWillBeginDragging:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewWillBeginDragging:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)scrollViewWillEndDragging:(void *)arg2 withVelocity:(struct CGPoint)arg3 targetContentOffset:(struct CGPoint *)arg4 {
    r4 = arg4;
    memcpy(&r3, &arg3, 0x8);
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r3;
    v8 = v1;
    v9 = v0;
    r20 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r21 scrollViewWillEndDragging:r20 withVelocity:r19 targetContentOffset:r4];
    }
    [r21 release];
    [r20 release];
    return;
}

-(void)scrollViewDidEndDragging:(void *)arg2 willDecelerate:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r21 scrollViewDidEndDragging:r19 willDecelerate:r20];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)scrollViewWillBeginDecelerating:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewWillBeginDecelerating:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)scrollViewDidEndDecelerating:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewDidEndDecelerating:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)scrollViewDidEndScrollingAnimation:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewDidEndScrollingAnimation:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)viewForZoomingInScrollView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r21 = [[r20 viewForZoomingInScrollView:r19] retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)scrollViewWillBeginZooming:(void *)arg2 withView:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r21 scrollViewWillBeginZooming:r19 withView:r20];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)scrollViewDidEndZooming:(void *)arg2 withView:(void *)arg3 atScale:(double)arg4 {
    r4 = arg4;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v0;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r21 scrollViewDidEndZooming:r19 withView:r20 atScale:r4];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)scrollViewShouldScrollToTop:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            r21 = [r20 scrollViewShouldScrollToTop:r19];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)scrollViewDidScrollToTop:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 scrollViewDidScrollToTop:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)childViewProvider {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_childViewProvider)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_rightGradientView);
    objc_destroyWeak((int64_t *)&self->_leftGradientView);
    objc_storeStrong((int64_t *)&self->_cellMapping, 0x0);
    objc_storeStrong((int64_t *)&self->_cellViews, 0x0);
    objc_destroyWeak((int64_t *)&self->_hitTestView);
    objc_destroyWeak((int64_t *)&self->_scrollView);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    objc_storeStrong((int64_t *)&self->_childViewProvider, 0x0);
    return;
}

-(void)setChildViewProvider:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)data {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_data)), 0x0);
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(unsigned long long)maximumNativeAdCount {
    r0 = self->_maximumNativeAdCount;
    return r0;
}

-(double)xInset {
    r0 = self;
    return r0;
}

-(void)setXInset:(double)arg2 {
    self->_xInset = d0;
    return;
}

-(double)xPadding {
    r0 = self;
    return r0;
}

-(void)setXPadding:(double)arg2 {
    self->_xPadding = d0;
    return;
}

-(double)yPadding {
    r0 = self;
    return r0;
}

-(void)setYPadding:(double)arg2 {
    self->_yPadding = d0;
    return;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, arg2);
    return;
}

-(bool)isAnimationEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_animationEnabled;
    return r0;
}

-(void)setAnimationEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_animationEnabled = arg2;
    return;
}

-(bool)debugMode {
    r0 = *(int8_t *)(int64_t *)&self->_debugMode;
    return r0;
}

-(void *)scrollView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_scrollView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setScrollView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_scrollView, arg2);
    return;
}

-(void *)hitTestView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_hitTestView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setHitTestView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_hitTestView, arg2);
    return;
}

-(void)setCellViews:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cellViews, arg2);
    return;
}

-(void *)cellMapping {
    r0 = self->_cellMapping;
    return r0;
}

-(void)setCellMapping:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cellMapping, arg2);
    return;
}

-(bool)isLoading {
    r0 = *(int8_t *)(int64_t *)&self->_loading;
    return r0;
}

-(void)setLoading:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loading = arg2;
    return;
}

-(void *)leftGradientView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_leftGradientView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setLeftGradientView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_leftGradientView, arg2);
    return;
}

-(void *)rightGradientView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rightGradientView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setRightGradientView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rightGradientView, arg2);
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
    r0 = objc_getClass("FBAdScrollView");
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