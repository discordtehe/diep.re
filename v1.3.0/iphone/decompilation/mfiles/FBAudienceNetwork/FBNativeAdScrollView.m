@implementation FBNativeAdScrollView

-(void *)initWithCoder:(void *)arg2 {
    r0 = [self init];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self init];
    return r0;
}

-(void *)initWithNativeAdsManager:(void *)arg2 withType:(long long)arg3 {
    r23 = [arg2 retain];
    r21 = [[FBNativeAdViewAttributes defaultAttributesForType:arg3] retain];
    r19 = [self initWithNativeAdsManager:r23 withType:arg3 withAttributes:r21];
    [r23 release];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void *)initWithNativeAdsManager:(void *)arg2 withType:(long long)arg3 withAttributes:(void *)arg4 {
    r22 = [arg2 retain];
    r19 = [self initWithNativeAdsManager:r22 withType:arg3 withAttributes:arg4 withMaximum:0xa];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void *)initWithNativeAdsManager:(void *)arg2 withType:(long long)arg3 withAttributes:(void *)arg4 withMaximum:(unsigned long long)arg5 {
    r22 = [arg2 retain];
    r0 = [arg4 retain];
    r20 = [r0 retain];
    r19 = [self initWithNativeAdsManager:r22 withViewProvider:&var_50];
    [r22 release];
    [r0 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithNativeAdsManager:(void *)arg2 withViewProvider:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [self initWithNativeAdsManager:r21 withViewProvider:arg3 withMaximum:0xa];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void *)initWithNativeAdsManager:(void *)arg2 withViewProvider:(void *)arg3 withMaximum:(unsigned long long)arg4 {
    r31 = r31 - 0x70;
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
    r22 = arg2;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_50 super] initWithFrame:r2];
    r21 = r0;
    if (r0 != 0x0) {
            if (([r19 isValid] & 0x1) == 0x0) {
                    r24 = **_NSInvalidArgumentException;
                    r25 = [NSStringFromClass([r21 class]) retain];
                    [NSException raise:r24 format:@"%@ is not valid. %@ must be loaded before usage."];
                    [r25 release];
            }
            objc_storeStrong((int64_t *)&r21->_manager, r22);
            r0 = objc_retainBlock(r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_childViewProvider));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r21 commonInitialization];
            [r21 loadAds];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)nativeAdViews {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAdViews));
    [*(self + r20) compact];
    r0 = *(self + r20);
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)loadAds {
    r0 = [self nativeAdViews];
    r0 = [r0 retain];
    r22 = [[r0 allObjects] retain];
    [FBAdUtility animateWithFadeOut:r22 completion:&var_48];
    [r22 release];
    [r0 release];
    return;
}

-(void)commonInitialization {
    [self setUserInteractionEnabled:0x1];
    self->_maximumNativeAdCount = 0xa;
    *(int8_t *)(int64_t *)&self->_animationEnabled = 0x1;
    self->_xInset = 0x4020000000000000;
    r0 = [NSPointerArray weakObjectsPointerArray];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAdViews));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r0 = [NSMapTable weakToStrongObjectsMapTable];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_nativeAdMapping));
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
    [r0 setClipsToBounds:0x0];
    [r21 setShowsHorizontalScrollIndicator:0x0];
    [r21 setPagingEnabled:0x1];
    [self setupScrollViewSize];
    r0 = [UITapGestureRecognizer new];
    r23 = r0;
    [r0 setDelaysTouchesBegan:0x1];
    [r23 setDelaysTouchesEnded:0x1];
    [r23 setCancelsTouchesInView:0x0];
    [r23 setNumberOfTapsRequired:0x0];
    r0 = [r21 panGestureRecognizer];
    r0 = [r0 retain];
    [r0 requireGestureRecognizerToFail:r23];
    [r0 release];
    [r21 addGestureRecognizer:r23];
    [r21 setCanCancelContentTouches:0x1];
    [r21 setDelaysContentTouches:0x0];
    [r20 addSubview:r21];
    objc_storeWeak((int64_t *)&self->_scrollView, r21);
    [r20 setPassthroughView:r21];
    [r23 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)didMoveToSuperview {
    [[&var_20 super] didMoveToSuperview];
    [self setupContentSize];
    [self loadPages];
    return;
}

-(void)setBounds:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_40 super] setBounds:r2];
    [self bounds];
    r0 = [self hitTestView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    [self setupScrollViewSize];
    [self setupContentSize];
    [self loadPages];
    return;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_50 super] setFrame:r2];
    [self bounds];
    r0 = [self hitTestView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r0 release];
    [self setupScrollViewSize];
    [self setupContentSize];
    [self loadPages];
    return;
}

-(void)dealloc {
    [self removeAllNativeAds];
    [[&var_20 super] dealloc];
    return;
}

-(void)setupScrollViewSize {
    [self bounds];
    CGRectInset([self xInset], @selector(xInset), r2);
    r0 = [self scrollView];
    r0 = [r0 retain];
    [r0 setFrame:r2];
    [r19 release];
    return;
}

-(void)setupContentSize {
    r0 = [self scrollView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 frame];
    [self nativeAdCount];
    asm { ucvtf      d0, x0 };
    [r20 setContentSize:r2];
    [r20 release];
    return;
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
    if ([self nativeAdCount] != 0x0) {
            r20 = 0x0;
            do {
                    [r19 loadPage:r2];
                    r20 = r20 + 0x1;
            } while (r20 < objc_msgSend(r19, r22));
    }
    return;
}

-(void)loadPage:(unsigned long long)arg2 {
    r2 = arg2;
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
    r20 = r2;
    r21 = self;
    if ([self nativeAdCount] >= r20) {
            r0 = [r21 scrollView];
            r0 = [r0 retain];
            [r0 bounds];
            asm { ucvtf      d0, x20 };
            CGRectInset([r21 xInset], @selector(xInset), r2);
            r0 = [r21 nativeAdViews];
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

-(void *)childViewForNativeAd:(void *)arg2 withPosition:(unsigned long long)arg3 {
    r3 = arg3;
    r2 = arg2;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r29 = &saved_fp;
    r0 = self->_childViewProvider;
    if (r0 != 0x0) {
            r0 = (*(r0 + 0x10))();
            r0 = [r0 retain];
    }
    else {
            [NSException raise:@"InvalidOperationException" format:@"No child view provider was created for this hscroll view."];
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
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
    r0 = [self nativeAdViews];
    r0 = [r0 retain];
    r20 = [[r0 pointerAtIndex:arg3] retain];
    [r0 release];
    if ([r20 respondsToSelector:@selector(populate:)] != 0x0) {
            [r20 populate:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(unsigned long long)indexForNativeAd:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = [self nativeAdViews];
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

-(unsigned long long)nativeAdCount {
    r0 = [self nativeAdViews];
    r0 = [r0 retain];
    r20 = [r0 count];
    [r0 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)addNativeAd:(void *)arg2 withPosition:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) {
            [NSException raise:**_NSInternalInconsistencyException format:@"A nil FBNativeAd was passed to FBNativeAdHScrollView %@."];
    }
    if (([r19 isAdValid] & 0x1) == 0x0) {
            [NSException raise:**_NSInternalInconsistencyException format:@"An invalid FBNativeAd %@ was passed to FBNativeAdHScrollView %@"];
    }
    [r19 setIsHScroll:0x1];
    [r19 setDelegate:r20];
    r21 = [[r20 childViewForNativeAd:r19 withPosition:r21] retain];
    [r20 mapNativeAd:r19 toView:r21];
    r0 = [r20 nativeAdViews];
    r29 = r29;
    r0 = [r0 retain];
    [r0 addPointer:r21];
    [r0 release];
    [r20 setupContentSize];
    r22 = [r20 nativeAdCount] - 0x1;
    [r20 loadPage:r22];
    [r20 populate:r19 forIndex:r22];
    if ([r20 isAnimationEnabled] != 0x0) {
            r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
            r23 = [r0 retain];
            [FBAdUtility animateWithFadeIn:r23 completion:0x0];
            [r23 release];
    }
    var_38 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)addAllNativeAds {
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
    r19 = self;
    r0 = [self manager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r22 = [r0 uniqueNativeAdCount];
    [r21 release];
    r0 = [r19 maximumNativeAdCount];
    if (r22 < r0) {
            if (!CPU_FLAGS & B) {
                    r21 = r0;
            }
            else {
                    r21 = r22;
            }
    }
    [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/FBNativeAdScrollView.m" lineNumber:0x123 format:@"Adding %ld native ads"];
    if ([r19 isAdPersistenceEnabled] == 0x0) goto loc_100b1544c;

loc_100b152d8:
    r23 = [[FBAdCache sharedCache] retain];
    r24 = [[r19 manager] retain];
    r0 = [r23 nativeAdsForScrollView:r19 forManager:r24];
    r29 = r29;
    r27 = [r0 retain];
    [r24 release];
    [r23 release];
    if (r27 == 0x0) goto loc_100b15460;

loc_100b15348:
    r20 = r21;
    if ([r27 count] == 0x0) goto loc_100b15454;

loc_100b15364:
    r0 = [r27 firstObject];
    r29 = r29;
    r24 = [r0 retain];
    [FBNativeAd class];
    r25 = [r24 isKindOfClass:r2];
    [r24 release];
    if (r25 == 0x0) goto loc_100b15454;

loc_100b153b8:
    if ([r27 count] != 0x0) {
            r20 = 0x0;
            do {
                    r0 = [r27 objectAtIndexedSubscript:r20];
                    r29 = r29;
                    [r0 retain];
                    [r19 addNativeAd:r2 withPosition:r3];
                    objc_msgSend(r19, r24);
                    [r26 release];
                    r20 = r20 + 0x1;
            } while (r20 < objc_msgSend(r27, r25));
    }
    goto loc_100b155bc;

loc_100b155bc:
    [r27 release];
    return;

loc_100b15454:
    var_70 = @selector(isAdPersistenceEnabled);
    var_68 = r27;
    r21 = r20;
    goto loc_100b15464;

loc_100b15464:
    r0 = [NSMutableArray arrayWithCapacity:r2];
    r29 = r29;
    r22 = [r0 retain];
    r26 = @selector(manager);
    if (r21 != 0x0) {
            r25 = 0x0;
            do {
                    r23 = @selector(addObject:);
                    r0 = objc_msgSend(r19, r26);
                    r0 = [r0 retain];
                    r24 = r21;
                    r21 = r0;
                    r0 = [r0 nextNativeAd];
                    r29 = r29;
                    r20 = [r0 retain];
                    r0 = r21;
                    r21 = r24;
                    [r0 release];
                    [r19 addNativeAd:r20 withPosition:r25];
                    [r19 registerNativeAd:r20];
                    objc_msgSend(r22, r23);
                    [r20 release];
                    r25 = r25 + 0x1;
            } while (r25 < r24);
    }
    if ((objc_msgSend(r19, var_70) & 0x1) != 0x0) {
            r20 = [[FBAdCache sharedCache] retain];
            r21 = [[r19 manager] retain];
            [r20 setNativeAds:r22 forScrollView:r19 forManager:r21];
            [r21 release];
            [r20 release];
    }
    [r22 release];
    r27 = var_68;
    goto loc_100b155bc;

loc_100b15460:
    var_70 = @selector(isAdPersistenceEnabled);
    var_68 = r27;
    goto loc_100b15464;

loc_100b1544c:
    var_70 = @selector(isAdPersistenceEnabled);
    var_68 = 0x0;
    goto loc_100b15464;
}

-(void *)rootViewController {
    r20 = objc_loadWeakRetained((int64_t *)&self->_rootViewController);
    r19 = [[FBAdViewControllerProxy proxyWithViewController:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)registerNativeAds:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r26 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r26) {
                                    objc_enumerationMutation(r20);
                            }
                            r0 = [r19 nativeAdForView:r2];
                            r29 = r29;
                            [r0 retain];
                            [r19 registerNativeAd:r2];
                            [r25 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void *)viewForNativeAd:(void *)arg2 {
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
    r0 = [r20 nativeAdMapping];
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
    if (r0 == 0x0) goto loc_100b15acc;

loc_100b15a08:
    r24 = r0;
    r22 = *var_110;
    goto loc_100b15a1c;

loc_100b15a1c:
    r19 = 0x0;
    goto loc_100b15a28;

loc_100b15a28:
    if (*var_110 != r22) {
            objc_enumerationMutation(var_130);
    }
    r26 = @selector(isEqual:);
    r25 = @selector(objectForKey:);
    r27 = *(var_118 + r19 * 0x8);
    r0 = [r20 nativeAdMapping];
    r0 = [r0 retain];
    r23 = r0;
    r0 = objc_msgSend(r0, r25);
    r29 = r29;
    r28 = [r0 retain];
    [r23 release];
    if ((objc_msgSend(r28, r26) & 0x1) != 0x0) goto loc_100b15adc;

loc_100b15a94:
    [r28 release];
    r19 = r19 + 0x1;
    if (r19 < r24) goto loc_100b15a28;

loc_100b15aa8:
    r0 = objc_msgSend(var_130, var_138);
    r24 = r0;
    if (r0 != 0x0) goto loc_100b15a1c;

loc_100b15acc:
    [var_130 release];
    r20 = 0x0;
    goto loc_100b15af8;

loc_100b15af8:
    var_60 = **___stack_chk_guard;
    [var_128 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100b15adc:
    r20 = [r27 retain];
    [r28 release];
    [var_130 release];
    goto loc_100b15af8;
}

-(void)removeAllNativeAds {
    r0 = [self nativeAdViews];
    r0 = [r0 retain];
    r21 = [r0 copy];
    [self removeAllNativeAds:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)registerNativeAd:(void *)arg2 {
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
    r29 = &saved_fp;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isRegistered] & 0x1) == 0x0) {
            r0 = [r22 viewForNativeAd:r19];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 respondsToSelector:r2] != 0x0) {
                    r0 = [r20 allInteractableTargets];
                    r29 = r29;
                    r21 = [r0 retain];
            }
            else {
                    r21 = 0x0;
            }
            if ([r21 count] != 0x0) {
                    var_130 = r22;
                    r0 = [NSHashTable weakObjectsHashTable];
                    r29 = r29;
                    r23 = [r0 retain];
                    var_110 = q0;
                    var_128 = r21;
                    r0 = [r21 retain];
                    r24 = r0;
                    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r0 != 0x0) {
                            r26 = r0;
                            r28 = *var_110;
                            do {
                                    r22 = 0x0;
                                    do {
                                            if (*var_110 != r28) {
                                                    objc_enumerationMutation(r24);
                                            }
                                            [r23 addObject:r2];
                                            r22 = r22 + 0x1;
                                    } while (r22 < r26);
                                    r0 = [r24 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    r26 = r0;
                            } while (r0 != 0x0);
                    }
                    [r24 release];
                    r22 = var_130;
                    r21 = var_128;
            }
            else {
                    r0 = [FBAdUtility allInteractableTargets:r20];
                    r29 = r29;
                    r23 = [r0 retain];
            }
            r0 = [r22 rootViewController];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (r0 == 0x0) {
                    [NSException raise:**_NSInternalInconsistencyException format:@"No view controller could be located. This is likely caused by an issue with detached view controllers in your app. Please check your view controller hierarchy and try again."];
            }
            r24 = [[r20 mediaView] retain];
            r25 = [[r23 allObjects] retain];
            [r19 registerViewForInteraction:r20 mediaView:r24 iconView:0x0 viewController:r22 clickableViews:r25];
            [r25 release];
            [r24 release];
            [r22 release];
            [r23 release];
            [r21 release];
            [r20 release];
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)removeAllNativeAds:(void *)arg2 {
    r21 = [arg2 retain];
    [self unregisterAllNativeAds:r21];
    [self detachAllNativeAds:r21];
    [r21 release];
    r20 = [[NSMapTable weakToStrongObjectsMapTable] retain];
    [self setNativeAdMapping:r20];
    [r20 release];
    r20 = [[NSPointerArray weakObjectsPointerArray] retain];
    [self setNativeAdViews:r20];
    [r20 release];
    [self setupContentSize];
    return;
}

-(void)unregisterAllNativeAds {
    r0 = [self nativeAdViews];
    r0 = [r0 retain];
    r21 = [r0 copy];
    [self unregisterAllNativeAds:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)unregisterAllNativeAds:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r26 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r26) {
                                    objc_enumerationMutation(r20);
                            }
                            r0 = [r19 nativeAdForView:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 unregisterView];
                            [r25 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
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

-(void *)nativeAdForView:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self nativeAdMapping];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)mapNativeAd:(void *)arg2 toView:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self nativeAdMapping];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r19 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)nativeAdDidClick:(void *)arg2 {
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
    if ([r0 respondsToSelector:@selector(nativeAdDidClick:)] != 0x0) {
            [r20 nativeAdDidClick:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)nativeAds {
    r0 = [self nativeAdMapping];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectEnumerator];
    r0 = [r0 retain];
    r21 = [[r0 allObjects] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)nativeAdWillLogImpression:(void *)arg2 {
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
    if ([r0 respondsToSelector:@selector(nativeAdWillLogImpression:)] != 0x0) {
            [r20 nativeAdWillLogImpression:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)nativeAdDidFinishHandlingClick:(void *)arg2 {
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
    if ([r0 respondsToSelector:@selector(nativeAdDidFinishHandlingClick:)] != 0x0) {
            [r20 nativeAdDidFinishHandlingClick:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(unsigned long long)maximumNativeAdCount {
    r0 = self->_maximumNativeAdCount;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_nativeAdMapping, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAdViews, 0x0);
    objc_destroyWeak((int64_t *)&self->_hitTestView);
    objc_destroyWeak((int64_t *)&self->_scrollView);
    objc_storeStrong((int64_t *)&self->_childViewProvider, 0x0);
    objc_storeStrong((int64_t *)&self->_manager, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_destroyWeak((int64_t *)&self->_rootViewController);
    return;
}

-(void)setMaximumNativeAdCount:(unsigned long long)arg2 {
    self->_maximumNativeAdCount = arg2;
    return;
}

-(void)setAnimationEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_animationEnabled = arg2;
    return;
}

-(bool)isAnimationEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_animationEnabled;
    return r0;
}

-(double)xInset {
    r0 = self;
    return r0;
}

-(bool)isAdPersistenceEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_adPersistenceEnabled;
    return r0;
}

-(void)setXInset:(double)arg2 {
    self->_xInset = d0;
    return;
}

-(void)setAdPersistenceEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adPersistenceEnabled = arg2;
    return;
}

-(void)setRootViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rootViewController, arg2);
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)manager {
    r0 = self->_manager;
    return r0;
}

-(void)setManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_manager, arg2);
    return;
}

-(void *)childViewProvider {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_childViewProvider)), 0x0);
    return r0;
}

-(void)setChildViewProvider:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
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

-(void)setNativeAdViews:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAdViews, arg2);
    return;
}

-(void)setHitTestView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_hitTestView, arg2);
    return;
}

-(void *)nativeAdMapping {
    r0 = self->_nativeAdMapping;
    return r0;
}

-(void)setNativeAdMapping:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAdMapping, arg2);
    return;
}

-(void)setLoadingAds:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_loadingAds = arg2;
    return;
}

-(bool)isLoadingAds {
    r0 = *(int8_t *)(int64_t *)&self->_loadingAds;
    return r0;
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
    r0 = objc_getClass("FBNativeAdScrollView");
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