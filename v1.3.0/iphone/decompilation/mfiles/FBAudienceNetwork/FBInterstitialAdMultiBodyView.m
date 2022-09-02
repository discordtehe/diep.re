@implementation FBInterstitialAdMultiBodyView

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_childViews));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_loadedCallbacksSeen));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r19->_orientation = [FBAdScreen orientation];
            r19->_numberOfViewsToPreloadLeft = 0x2;
            r19->_numberOfViewsToPreloadRight = 0x2;
            *(int8_t *)(int64_t *)&r19->_nonCondencedCarouselLayoutFits = 0x0;
            *(int8_t *)(int64_t *)&r19->_initialScrollViewOffsetAdjusted = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)showAd {
    [self setupViewabilityValidationIfNeeded];
    return;
}

-(union ?)currentTime {
    r31 = r31 - 0xd0;
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
    r20 = r8;
    if (*qword_1011dd128 != -0x1) {
            dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    r8 = *qword_1011dd130;
    q0 = *(int128_t *)r8;
    *(r20 + 0x10) = *(r8 + 0x10);
    *(int128_t *)r20 = q0;
    r28 = @selector(childViews);
    r0 = objc_msgSend(r19, r28);
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 count];
    r0 = [r0 release];
    if (r22 != 0x0) {
            r21 = 0x0;
            do {
                    r22 = [objc_msgSend(r19, r28) retain];
                    r23 = [[NSNumber numberWithUnsignedInteger:r21] retain];
                    r24 = [[r22 objectForKeyedSubscript:r23] retain];
                    r0 = [FBAdWeakProxy unwrapProxy:r24];
                    r29 = r29;
                    r28 = [r0 retain];
                    [r24 release];
                    [r23 release];
                    [r22 release];
                    if (r28 != 0x0) {
                            [r28 currentTime];
                    }
                    sub_100a3e6cc(&var_80, &var_A0, &var_68);
                    *(r20 + 0x10) = var_70;
                    *(int128_t *)r20 = var_80;
                    [r28 release];
                    r21 = r21 + 0x1;
                    r0 = objc_msgSend(r19, r25);
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = objc_msgSend(r0, r26);
                    r0 = [r0 release];
                    r28 = r25;
            } while (r21 < r23);
    }
    return r0;
}

-(void)destroyAd {
    return;
}

-(void)loadAdFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    objc_storeWeak((int64_t *)&r20->_dataModel, r22);
    objc_storeStrong((int64_t *)&r20->_placementDefinition, arg3);
    r0 = [r22 retain];
    r21 = r0;
    r0 = [r0 multiProductAdContent];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if ([r21 type] == 0x3) {
            r0 = [UIColor colorWithRed:r2 green:r3 blue:r4 alpha:r5];
            r29 = r29;
            r23 = [r0 retain];
            [r20 setBackgroundColor:r23];
            [r23 release];
    }
    r0 = [r20 scrollView];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) {
            r24 = [UIScrollView new];
            [r23 release];
            [r24 setDelegate:r20];
            [r24 setScrollEnabled:0x1];
            [r24 setShowsHorizontalScrollIndicator:0x0];
            [r24 setShowsVerticalScrollIndicator:0x0];
            [r24 setDecelerationRate:0x0];
            [r24 setPagingEnabled:0x0];
            [r24 setBounces:0x1];
            [r24 setClipsToBounds:0x0];
            [r20 addSubview:r24];
            objc_storeWeak((int64_t *)&r20->_scrollView, r24);
            r23 = r24;
    }
    [r20 adjustScrollView];
    r0 = [r20 pageControl];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (r0 == 0x0) {
            r24 = [UIPageControl new];
            [r25 release];
            [r24 addTarget:r20 action:@selector(pageControlTouched:) forControlEvents:0x1000];
            r25 = [[UIColor lightGrayColor] retain];
            [r24 setPageIndicatorTintColor:r25];
            [r25 release];
            r25 = [[UIColor darkGrayColor] retain];
            [r24 setCurrentPageIndicatorTintColor:r25];
            [r25 release];
            [r20 addSubview:r24];
            objc_storeWeak((int64_t *)&r20->_pageControl, r24);
            r25 = r24;
    }
    [r25 setCurrentPage:0x0];
    r2 = [r22 count];
    [r25 setNumberOfPages:r2];
    [r21 audioMuted] ^ 0x1;
    asm { ucvtf      d0, w8 };
    [r20 setVolume:r2];
    [r20 loadCurrentPages:[r25 currentPage]];
    [r25 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    [r21 release];
    return;
}

-(long long)indexOfPageWithLongestText {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 multiProductAdContent];
    r0 = [r0 retain];
    [r0 enumerateObjectsUsingBlock:&var_80];
    [r0 release];
    [r19 release];
    _Block_object_dispose(&var_50, 0x8);
    _Block_object_dispose(&saved_fp - 0x30, 0x8);
    r0 = r20;
    return r0;
}

-(struct CGRect)pageFrameForPage:(long long)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    r0 = [self count];
    if ((r19 & 0xffffffff80000000) == 0x0 && r0 > r19) {
            r0 = [r20 scrollView];
            r0 = [r0 retain];
            [r0 bounds];
            [r20 pageSizeInRect:r19 index:r3];
            v8 = v0;
            v9 = v1;
            r0 = [r0 release];
            asm { scvtf      d0, x19 };
    }
    return r0;
}

-(struct CGSize)pageSizeInRect:(struct CGRect)arg2 index:(long long)arg3 {
    memcpy(&r2, &arg2, 0x8);
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
    r29 = &saved_fp;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    r0 = [FBAdScreen orientation];
    if (r0 <= 0x2) {
            v1 = v10;
            v2 = v9;
            v3 = v8;
            r0 = CGRectInset(r0, @selector(orientation), r2);
            v10 = v11;
            v9 = v1;
            v8 = v2;
            v12 = v3;
            CGRectGetHeight(r0);
            r20 = [[r19 dataModel] retain];
            r21 = [FBInterstitialAdBodyView new];
            r23 = [r19 indexOfPageWithLongestText];
            r22 = [[r19 placementDefinition] retain];
            r23 = [[NSNumber numberWithInteger:r23] retain];
            r24 = @class(NSNumber);
            r0 = [r20 multiProductAdContent];
            r0 = [r0 retain];
            r24 = [[r24 numberWithUnsignedInteger:[r0 count]] retain];
            [r21 loadAdFromDataModel:r20 placementDefinition:r22 carouselPageNumber:r23 totalPages:r24];
            [r24 release];
            [r0 release];
            [r23 release];
            [r22 release];
            r0 = [r21 setPreventCarouselTextTruncationInPortrait:0x0];
            v0 = v10;
            CGRectGetWidth(r0);
            r0 = [r21 intrinsicCarouselCardHeightForWidth:r2];
            if (d0 >= d11) {
                    CGRectGetWidth(r0);
                    v8 = v10;
            }
            else {
                    v13 = v0;
                    r0 = [r21 setPreventCarouselTextTruncationInPortrait:0x1];
                    v0 = v10;
                    CGRectGetWidth(r0);
                    [r21 intrinsicCarouselCardHeightForWidth:r2];
                    if (d0 <= d11) {
                            [r19 setNonCondencedCarouselLayoutFits:0x1];
                            v13 = v0;
                    }
            }
            [r21 release];
            r0 = [r20 release];
    }
    else {
            r0 = CGRectGetHeight(r0);
    }
    return r0;
}

-(void)layoutSubviews {
    var_80 = d15;
    stack[-136] = d14;
    r31 = r31 + 0xffffffffffffff70;
    var_70 = d13;
    stack[-120] = d12;
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
    r20 = [[self scrollView] retain];
    r0 = [r19 pageControl];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r19 bounds];
    v9 = v0;
    v10 = v1;
    v11 = v2;
    v12 = v3;
    r0 = [FBAdScreen orientation];
    if (r0 <= 0x2) {
            [r19 dimNonActivePages];
            [FBAdScreen boundsInOrientation];
            v9 = v0;
            v8 = v2;
            [r20 setFrame:r2];
            [FBAdScreen boundsInOrientation];
            [r19 contentInset];
            [r19 pageSizeInRect:0x0 index:r3];
            v10 = v1;
            CGRectGetHeight(CGRectGetHeight([r19 bounds]));
            r25 = 0x0;
            d0 = d12 - d0 + 0x4049000000000000;
    }
    else {
            r0 = CGRectGetWidth(r0);
            v8 = v9;
            CGRectGetHeight(r0);
            r25 = 0x1;
    }
    [r20 setFrame:r2];
    [r21 setHidden:r25];
    CGRectGetHeight([r19 bounds]);
    CGRectGetMaxY([r20 frame]);
    CGRectGetMaxY([r20 frame]);
    CGRectGetWidth([r19 bounds]);
    [r21 setFrame:r25];
    r0 = [r19 preferredOverlayTextColorTypeChanged];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = [r19 preferredOverlayTextColorTypeChanged];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r24 release];
    }
    [r23 release];
    [r19 bringSubviewToFront:r20];
    [r19 loadCurrentPages:[r21 currentPage]];
    if ([r19 orientation] == [FBAdScreen orientation]) {
            if ([r21 currentPage] == 0x0 && ([r19 initialScrollViewOffsetAdjusted] & 0x1) == 0x0) {
                    [r19 contentOffsetForPage:0x0];
                    [r20 setContentOffset:0x0 animated:r3];
                    [r19 setInitialScrollViewOffsetAdjusted:0x1];
            }
    }
    else {
            [r19 setOrientation:[FBAdScreen orientation]];
            if ([FBAdScreen isLandscape] != 0x0) {
                    [r19 undimAllPages];
            }
            [r19 gotoPage:[r21 currentPage] animated:0x0];
    }
    [r19 adjustScrollView];
    [r21 release];
    [r20 release];
    return;
}

-(void)adjustScrollView {
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
    r19 = self;
    d9 = *(int128_t *)(*_CGRectZero + 0x10);
    if ([self count] >= 0x1) {
            r20 = 0x0;
            do {
                    r0 = [r19 pageFrameForPage:r2];
                    v0 = v10;
                    v1 = v11;
                    v2 = v9;
                    v3 = v8;
                    CGRectUnion(r0, @selector(pageFrameForPage:));
                    v10 = v0;
                    v11 = v1;
                    v9 = v2;
                    v8 = v3;
                    r20 = r20 + 0x1;
            } while (r20 < objc_msgSend(r19, r22));
    }
    r0 = [r19 scrollView];
    r0 = [r0 retain];
    [r0 setContentSize:r2];
    [r19 release];
    return;
}

-(struct CGPoint)contentOffsetForPage:(long long)arg2 {
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [self pageFrameForPage:arg2];
    v9 = v0;
    v8 = v1;
    sub_100aabe74();
    d0 = d9 + 0xc034000000000000;
    d9 = d0 - d1;
    r0 = [FBAdScreen isLandscape];
    if (r0 != 0x0) {
            r0 = [r19 scrollView];
            r0 = [r0 retain];
            r19 = r0;
            [r0 contentSize];
            CGRectGetWidth([r19 frame]);
            if (d9 < d10 + (d11 - d0)) {
                    asm { fcsel      d9, d9, d0, mi };
            }
            r0 = [r19 release];
    }
    return r0;
}

-(void)interstitialAdMediaViewDidLoad:(void *)arg2 {
    return;
}

-(void)updateCurrentPageForContentOffset:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80;
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
    v8 = v1;
    v9 = v0;
    r19 = self;
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 multiProductAdContent];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 count];
    [r0 release];
    r23 = 0x0;
    if (r24 != 0x0) {
            r23 = 0x0;
            r24 = 0x0;
            do {
                    [r19 pageFrameForPage:r2];
                    objc_msgSend(r19, r26);
                    if (d0 < 0x0) {
                            asm { fcsel      d10, d10, d0, lt };
                    }
                    if (CPU_FLAGS & L) {
                            if (!CPU_FLAGS & L) {
                                    r23 = r24;
                            }
                            else {
                                    r23 = r23;
                            }
                    }
                    r22 = @selector(count);
                    r24 = r24 + 0x1;
                    r0 = [r20 multiProductAdContent];
                    r29 = r29;
                    r0 = [r0 retain];
                    r28 = objc_msgSend(r0, r22);
                    [r0 release];
            } while (r24 < r28);
    }
    r22 = @selector(count);
    r0 = [r19 pageControl];
    r0 = [r0 retain];
    r24 = r0;
    [r0 setCurrentPage:r23];
    r0 = [r20 multiProductAdContent];
    r0 = [r0 retain];
    [r24 setNumberOfPages:objc_msgSend(r0, r22)];
    [r0 release];
    [r19 loadCurrentPages:[r24 currentPage]];
    [r24 release];
    [r20 release];
    return;
}

-(void)setPlaying:(bool)arg2 forced:(bool)arg3 {
    r21 = [[self childViews] retain];
    r0 = [self pageControl];
    r0 = [r0 retain];
    r24 = [[NSNumber numberWithLong:[r0 currentPage]] retain];
    r25 = [[r21 objectForKeyedSubscript:r24] retain];
    r22 = [[FBAdWeakProxy unwrapProxy:r25] retain];
    [r25 release];
    [r24 release];
    [r0 release];
    [r21 release];
    [r22 setPreventCarouselVideoAutoplay:0x1];
    [r22 setPlaying:arg2 forced:arg2 ^ 0x1 | arg3];
    [r22 release];
    return;
}

-(void)interstitialAdMediaViewDidProgress:(void *)arg2 {
    return;
}

-(void)interstitialAdMediaViewDidEnd:(void *)arg2 {
    return;
}

-(void)interstitialAdMediaView:(void *)arg2 didFailWithError:(void *)arg3 {
    return;
}

-(void)adDisplayableViewDidStartVideo:(void *)arg2 cardIndex:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r22 = [r21 integerValue];
            r0 = [r20 pageControl];
            r0 = [r0 retain];
            [r0 setCurrentPage:r22];
            [r0 release];
    }
    [FBInterstitialAdBodyView class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            [r19 setPreventCarouselVideoAutoplay:0x0];
            [r20 pauseVideoOnAllOtherCards:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)adDisplayableViewDidLogImpression:(void *)arg2 withViewabilityValidator:(void *)arg3 withPageNumber:(void *)arg4 withPageTotal:(void *)arg5 {
    r22 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDisplayableViewDidLogImpression:self withViewabilityValidator:r22 withPageNumber:r20 withPageTotal:r19];
    [r19 release];
    [r20 release];
    [r22 release];
    [r0 release];
    return;
}

-(void)adDisplayableViewDidLoad:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r22 = [[r20 childViews] retain];
    r0 = [r20 viewsForWeakProxies:r22];
    r0 = [r0 retain];
    r21 = [[r0 allKeysForObject:r19] retain];
    [r0 release];
    [r22 release];
    r0 = [r21 lastObject];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r23 = [@(YES) retain];
            r0 = [r20 loadedCallbacksSeen];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setObject:r23 forKeyedSubscript:r22];
            [r0 release];
            [r23 release];
    }
    r0 = [r20 bodyViewAtIndex:0x0];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 adDisplayableViewDidLoad:r20];
            [r0 release];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)adDisplayableViewDidProgress:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDisplayableViewDidProgress:self];
    [r0 release];
    return;
}

-(void)adDisplayableViewDidClick:(void *)arg2 withEvent:(void *)arg3 withCommand:(void *)arg4 skipAppStore:(bool)arg5 withPageNumber:(void *)arg6 withPageTotal:(void *)arg7 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg5;
    r22 = self;
    r24 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r25 = [[r22 childViews] retain];
    r0 = [r22 viewsForWeakProxies:r25];
    r0 = [r0 retain];
    r23 = [[r0 allKeysForObject:r24] retain];
    [r24 release];
    [r0 release];
    [r25 release];
    r0 = [r23 lastObject];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 != 0x0) {
            r25 = [[r22 delegate] retain];
            r26 = [[NSNumber numberWithInteger:[r22 count]] retain];
            [r25 adDisplayableViewDidClick:r22 withEvent:r19 withCommand:r20 skipAppStore:r21 withPageNumber:r24 withPageTotal:r26];
            [r26 release];
            [r25 release];
    }
    [r24 release];
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)adDisplayableView:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDisplayableView:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)adDisplayableViewDidEnd:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDisplayableViewDidEnd:r19];
    [r0 release];
    r0 = [r19 pageControl];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    [r20 setCurrentPage:[r0 currentPage] + 0x1];
    r22 = [r19 isNextPageVideo];
    [r19 gotoPage:[r20 currentPage] animated:0x1];
    if (r22 != 0x0) {
            r0 = [r19 bodyViewAtIndex:[r20 currentPage]];
            r0 = [r0 retain];
            [r0 setPlaying:0x1 forced:0x1];
            [r0 release];
    }
    [r20 release];
    return;
}

-(void)adDisplayableView:(void *)arg2 didChangeVolume:(double)arg3 {
    [self configureVolume:arg2];
    return;
}

-(bool)isNextPageVideo {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self dataModel] retain];
    r0 = [self pageControl];
    r0 = [r0 retain];
    r21 = [r0 currentPage];
    [r0 release];
    r20 = r21 + 0x1;
    r0 = [r19 multiProductAdContent];
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    r0 = [r19 videoAutoplayEnabled];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 boolValue];
    [r0 release];
    if (r23 > r20) {
            r0 = [r19 multiProductAdContent];
            r0 = [r0 retain];
            r23 = [[r0 objectAtIndexedSubscript:r20] retain];
            [r0 release];
            r8 = &@selector(addObserver:userInfoKeys:targetObject:);
            if (objc_msgSend(r23, *(r8 + 0x548)) == 0x2) {
                    r8 = &@selector(addObserver:userInfoKeys:targetObject:);
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            r20 = r22 & r8;
            [r23 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)bodyViewAtIndex:(long long)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [self childViews];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r23 > r19) {
            r20 = [[r20 childViews] retain];
            r21 = [[NSNumber numberWithInteger:r19] retain];
            r23 = [[r20 objectForKeyedSubscript:r21] retain];
            r19 = [[FBAdWeakProxy unwrapProxy:r23] retain];
            [r23 release];
            [r21 release];
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)dispatchLoadedCallbackIfNeeded {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r20 = 0x0;
    do {
            r25 = [[r19 loadedCallbacksSeen] retain];
            r26 = [[NSNumber numberWithInteger:r20] retain];
            r0 = [r25 objectForKeyedSubscript:r26];
            r29 = r29;
            r27 = [r0 retain];
            [r26 release];
            [r25 release];
            r25 = [r27 boolValue];
            [r27 release];
            r20 = r20 + 0x1;
    } while (r20 != 0x3);
    if ((r25 & 0x1) != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 adDisplayableViewDidLoad:r19];
            [r0 release];
    }
    return;
}

-(void *)viewsForWeakProxies:(void *)arg2 {
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
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [NSMutableDictionary dictionaryWithCapacity:[r0 count]];
    r29 = &saved_fp;
    var_128 = [r0 retain];
    var_110 = q0;
    r0 = [r20 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r22 = r0;
            r21 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r21) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = *(var_118 + r19 * 0x8);
                            r27 = [[r20 objectForKeyedSubscript:r26] retain];
                            r0 = [FBAdWeakProxy unwrapProxy:r27];
                            r29 = r29;
                            r0 = [r0 retain];
                            r28 = r0;
                            if (r0 != 0x0) {
                                    [var_128 setObject:r2 forKeyedSubscript:r3];
                            }
                            [r28 release];
                            [r27 release];
                            r19 = r19 + 0x1;
                    } while (r19 < r22);
                    r0 = objc_msgSend(r20, var_130);
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_128 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(double)visibleWidthOfPageWithRect:(struct CGRect)arg2 contentOffset:(struct CGPoint)arg3 {
    memcpy(&r3, &arg3, 0x8);
    memcpy(&r2, &arg2, 0x8);
    var_40 = d13;
    stack[-72] = d12;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v4;
    v9 = v0;
    r0 = [self scrollView];
    r0 = [r0 retain];
    CGRectGetWidth([r0 frame]);
    d13 = d8 + d0;
    r0 = [r19 release];
    r0 = CGRectGetWidth(r0);
    d0 = d9 + d0;
    if (d9 <= d8 || d0 >= d13) {
            if (d9 >= d8 || d0 >= d13) {
                    if (d0 > d13) {
                            asm { fccmp      d9, d8, #0x4, gt };
                    }
                    if (CPU_FLAGS & G) {
                            asm { fcsel      d0, d0, d1, gt };
                    }
            }
    }
    return r0;
}

-(void)pageControlTouched:(void *)arg2 {
    [self gotoPage:[arg2 currentPage] animated:0x1];
    return;
}

-(void)gotoPage:(long long)arg2 animated:(bool)arg3 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self loadCurrentPages:r2];
    [r19 contentOffsetForPage:arg2];
    r0 = [r19 scrollView];
    r0 = [r0 retain];
    [r0 setContentOffset:0x1 animated:arg3];
    [r0 release];
    if ([r19 orientation] <= 0x2) {
            [r19 dimNonActivePages];
    }
    return;
}

-(void)pauseVideoOnAllOtherCards:(void *)arg2 {
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
    var_58 = [arg2 retain];
    r26 = @selector(childViews);
    r0 = objc_msgSend(r19, r26);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 != 0x0) {
            r21 = 0x0;
            do {
                    r22 = [objc_msgSend(r19, r26) retain];
                    r23 = [[NSNumber numberWithUnsignedInteger:r21] retain];
                    r24 = [[r22 objectForKeyedSubscript:r23] retain];
                    r0 = [FBAdWeakProxy unwrapProxy:r24];
                    r29 = r29;
                    r26 = [r0 retain];
                    [r24 release];
                    [r23 release];
                    [r22 release];
                    r0 = r26;
                    if (r26 != var_58) {
                            [r0 setPreventCarouselVideoAutoplay:r2];
                            [r26 setPlaying:r2 forced:r3];
                    }
                    else {
                            [r0 setPreventCarouselVideoAutoplay:r2];
                    }
                    r27 = @selector(count);
                    [r26 release];
                    r21 = r21 + 0x1;
                    r0 = [r19 childViews];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = objc_msgSend(r0, r27);
                    [r0 release];
                    r26 = @selector(childViews);
            } while (r21 < r22);
    }
    [var_58 release];
    return;
}

-(void)loadCurrentPages:(long long)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
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
    r0 = [self dataModel];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 multiProductAdContent];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [r0 count];
    r24 = [r20 numberOfViewsToPreloadLeft];
    r0 = [r20 numberOfViewsToPreloadRight];
    if ((r19 & 0xffffffff80000000) == 0x0 && r23 > r19) {
            r25 = r0;
            r8 = r19 - 0x1;
            if (r24 < r8) {
                    if (!CPU_FLAGS & L) {
                            r26 = r24;
                    }
                    else {
                            r26 = r8;
                    }
            }
            [r20 adjustScrollView];
            if (r26 >= 0x1) {
                    r26 = r19 - r26;
                    do {
                            [r20 loadPage:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r19);
            }
            [r20 loadPage:r2];
            r8 = r23 - 0x1;
            if (r8 != r19) {
                    r9 = r25 + r19;
                    if (r9 < r23) {
                            if (!CPU_FLAGS & L) {
                                    r23 = r8;
                            }
                            else {
                                    r23 = r9;
                            }
                    }
                    if (r23 > r19) {
                            do {
                                    r19 = r19 + 0x1;
                                    [r20 loadPage:r2];
                            } while (r23 != r19);
                    }
            }
    }
    [r22 release];
    [r21 release];
    return;
}

-(void)dimNonActivePages {
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
    r19 = self;
    r0 = [self pageControl];
    r0 = [r0 retain];
    var_A0 = [r0 currentPage];
    [r0 release];
    r28 = @selector(childViews);
    r0 = objc_msgSend(r19, r28);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    if (r22 != 0x0) {
            r21 = 0x0;
            do {
                    r28 = [objc_msgSend(r19, r28) retain];
                    r22 = [[NSNumber numberWithUnsignedInteger:r21] retain];
                    r23 = [[r28 objectForKeyedSubscript:r22] retain];
                    r20 = [[FBAdWeakProxy unwrapProxy:r23] retain];
                    [r23 release];
                    [r22 release];
                    [r28 release];
                    var_78 = r20;
                    [r20 retain];
                    [FBAdUtility animateWithStandardAnimations:r2 completion:r3];
                    [var_78 release];
                    [r20 release];
                    r21 = r21 + 0x1;
                    r0 = objc_msgSend(r19, r26);
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = objc_msgSend(r0, r27);
                    [r0 release];
                    r28 = r26;
            } while (r21 < r22);
    }
    return;
}

-(void)loadPage:(long long)arg2 {
    r31 = r31 - 0x80;
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
    r22 = arg2;
    r20 = self;
    r0 = [self dataModel];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 multiProductAdContent];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 count];
    if ((r22 & 0xffffffff80000000) == 0x0) {
            r27 = r0;
            if (r0 > r22) {
                    var_68 = r21;
                    r26 = [[r20 childViews] retain];
                    r28 = [[NSNumber numberWithInteger:r22] retain];
                    r21 = [[r26 objectForKeyedSubscript:r28] retain];
                    r0 = [FBAdWeakProxy unwrapProxy:r21];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r21 release];
                    [r28 release];
                    [r26 release];
                    if (r23 == 0x0) {
                            r26 = [FBInterstitialAdBodyView new];
                            [r23 release];
                            r21 = [[r20 placementDefinition] retain];
                            r23 = [[NSNumber numberWithInteger:r22] retain];
                            r27 = [[NSNumber numberWithInteger:r27] retain];
                            [r26 loadAdFromDataModel:r19 placementDefinition:r21 carouselPageNumber:r23 totalPages:r27];
                            [r27 release];
                            [r23 release];
                            [r21 release];
                            r0 = [r20 scrollView];
                            r0 = [r0 retain];
                            [r0 addSubview:r26];
                            [r0 release];
                            r21 = [[FBAdWeakProxy proxyForObject:r26] retain];
                            r23 = [[r20 childViews] retain];
                            r0 = @class(NSNumber);
                            r0 = [r0 numberWithInteger:r22];
                            r29 = r29;
                            r24 = [r0 retain];
                            [r23 setObject:r21 forKeyedSubscript:r24];
                            [r24 release];
                            [r23 release];
                            [r21 release];
                            [r26 setDelegate:r20];
                            [r26 setContentInset:r20];
                            [r26 showAd];
                            r23 = r26;
                    }
                    [r20 pageFrameForPage:r22];
                    [r23 setFrame:r22];
                    [FBAdScreen scale];
                    r0 = [r23 layer];
                    r0 = [r0 retain];
                    [r0 setContentsScale:r22];
                    [r0 release];
                    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
                    r2 = r21;
                    [r23 setBackgroundColor:r2];
                    [r21 release];
                    r0 = [r23 layer];
                    r0 = [r0 retain];
                    [r0 setCornerRadius:r2];
                    [r0 release];
                    r0 = [r23 layer];
                    r0 = [r0 retain];
                    [r0 setMasksToBounds:0x0];
                    [r0 release];
                    r0 = [UIColor colorWithWhite:0x0 alpha:r3];
                    r0 = [r0 retain];
                    r0 = objc_retainAutorelease(r0);
                    r21 = r0;
                    r25 = [r0 CGColor];
                    r0 = [r23 layer];
                    r0 = [r0 retain];
                    [r0 setShadowColor:r25];
                    [r0 release];
                    [r21 release];
                    r0 = [r23 layer];
                    r0 = [r0 retain];
                    [r0 setShadowOffset:r25];
                    [r0 release];
                    r0 = [r23 layer];
                    r0 = [r0 retain];
                    [r0 setShadowOpacity:r25];
                    [r0 release];
                    [r23 setPreventCarouselTextTruncationInPortrait:[r20 nonCondencedCarouselLayoutFits]];
                    r0 = [r20 pageControl];
                    r0 = [r0 retain];
                    r21 = r0;
                    if ([r0 currentPage] != r22) {
                            if (CPU_FLAGS & NE) {
                                    r2 = 0x1;
                            }
                    }
                    [r23 setPreventCarouselVideoAutoplay:r2];
                    [r21 release];
                    [r20 volume];
                    [r23 configureVolume:r2];
                    [r23 release];
                    r21 = var_68;
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(long long)count {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 multiProductAdContent];
    r0 = [r0 retain];
    r21 = [r0 count];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)undimAllPages {
    r31 = r31 - 0xb0;
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
    r19 = self;
    r27 = @selector(childViews);
    r0 = objc_msgSend(self, r27);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 count];
    [r0 release];
    if (r21 != 0x0) {
            r20 = 0x0;
            do {
                    r27 = [objc_msgSend(r19, r27) retain];
                    r21 = [[NSNumber numberWithUnsignedInteger:r20] retain];
                    r22 = [[r27 objectForKeyedSubscript:r21] retain];
                    r28 = [[FBAdWeakProxy unwrapProxy:r22] retain];
                    [r22 release];
                    [r21 release];
                    [r27 release];
                    [r28 retain];
                    [FBAdUtility animateWithStandardAnimations:r2 completion:r3];
                    [r28 release];
                    [r22 release];
                    r20 = r20 + 0x1;
                    r0 = objc_msgSend(r19, r25);
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = objc_msgSend(r0, r26);
                    [r0 release];
                    r27 = r25;
            } while (r20 < r22);
    }
    return;
}

-(void)removeCurrentPages {
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
    var_110 = q0;
    r20 = self;
    r0 = [self childViews];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r1;
    var_130 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r21 = *var_110;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_110 != r21) {
                                    objc_enumerationMutation(var_130);
                            }
                            r26 = @selector(removeFromSuperview);
                            r27 = *(var_118 + r19 * 0x8);
                            r0 = [r20 childViews];
                            r0 = [r0 retain];
                            r22 = r0;
                            r27 = [[r0 objectForKeyedSubscript:r27] retain];
                            r0 = [FBAdWeakProxy unwrapProxy:r27];
                            r29 = r29;
                            r28 = [r0 retain];
                            [r27 release];
                            [r22 release];
                            objc_msgSend(r28, r26);
                            [r28 release];
                            r19 = r19 + 0x1;
                    } while (r19 < r23);
                    r0 = objc_msgSend(var_130, var_138);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_130 release];
    r0 = [r20 childViews];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    r0 = [r20 loadedCallbacksSeen];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)configureVolume:(double)arg2 {
    r31 = r31 - 0x80;
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
    v8 = v0;
    r19 = self;
    [self setVolume:arg2];
    r27 = @selector(childViews);
    r0 = objc_msgSend(r19, r27);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 count];
    [r0 release];
    if (r21 != 0x0) {
            r20 = 0x0;
            do {
                    r27 = [objc_msgSend(r19, r27) retain];
                    r21 = [[NSNumber numberWithUnsignedInteger:r20] retain];
                    r22 = [[r27 objectForKeyedSubscript:r21] retain];
                    r28 = [[FBAdWeakProxy unwrapProxy:r2] retain];
                    [r22 release];
                    [r21 release];
                    [r27 release];
                    [r28 configureVolume:r2];
                    [r28 release];
                    r20 = r20 + 0x1;
                    r0 = objc_msgSend(r19, r25);
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = objc_msgSend(r0, r26);
                    [r0 release];
                    r27 = r25;
            } while (r20 < r22);
    }
    return;
}

-(void)scrollViewWillEndDragging:(void *)arg2 withVelocity:(struct CGPoint)arg3 targetContentOffset:(struct CGPoint *)arg4 {
    memcpy(&r3, &arg3, 0x8);
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = r3;
    r19 = self;
    d0 = *(int128_t *)r3;
    d1 = *(int128_t *)(r3 + 0x8);
    [self updateCurrentPageForContentOffset:arg2];
    if ([FBAdScreen orientation] <= 0x2) {
            r0 = [r19 pageControl];
            r0 = [r0 retain];
            [r19 contentOffsetForPage:[r0 currentPage]];
            *(int128_t *)r20 = d0;
            *(int128_t *)(r20 + 0x8) = d1;
            [r0 release];
            [r19 dimNonActivePages];
    }
    return;
}

-(void)scrollViewWillBeginDragging:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([FBAdScreen orientation] <= 0x2) {
            [r19 undimAllPages];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_loadedCallbacksSeen, 0x0);
    objc_destroyWeak((int64_t *)&self->_pageControl);
    objc_destroyWeak((int64_t *)&self->_scrollView);
    objc_storeStrong((int64_t *)&self->_childViews, 0x0);
    objc_storeStrong((int64_t *)&self->_placementDefinition, 0x0);
    objc_destroyWeak((int64_t *)&self->_dataModel);
    return;
}

-(unsigned long long)numberOfViewsToPreloadLeft {
    r0 = self->_numberOfViewsToPreloadLeft;
    return r0;
}

-(void)setNumberOfViewsToPreloadLeft:(unsigned long long)arg2 {
    self->_numberOfViewsToPreloadLeft = arg2;
    return;
}

-(unsigned long long)numberOfViewsToPreloadRight {
    r0 = self->_numberOfViewsToPreloadRight;
    return r0;
}

-(void)setNumberOfViewsToPreloadRight:(unsigned long long)arg2 {
    self->_numberOfViewsToPreloadRight = arg2;
    return;
}

-(void *)dataModel {
    r0 = objc_loadWeakRetained((int64_t *)&self->_dataModel);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)placementDefinition {
    r0 = self->_placementDefinition;
    return r0;
}

-(double)volume {
    r0 = self;
    return r0;
}

-(void)setVolume:(double)arg2 {
    self->_volume = d0;
    return;
}

-(void *)childViews {
    r0 = self->_childViews;
    return r0;
}

-(void)setChildViews:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_childViews, arg2);
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

-(void *)pageControl {
    r0 = objc_loadWeakRetained((int64_t *)&self->_pageControl);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPageControl:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_pageControl, arg2);
    return;
}

-(long long)orientation {
    r0 = self->_orientation;
    return r0;
}

-(void)setOrientation:(long long)arg2 {
    self->_orientation = arg2;
    return;
}

-(bool)nonCondencedCarouselLayoutFits {
    r0 = *(int8_t *)(int64_t *)&self->_nonCondencedCarouselLayoutFits;
    return r0;
}

-(void)setNonCondencedCarouselLayoutFits:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_nonCondencedCarouselLayoutFits = arg2;
    return;
}

-(bool)initialScrollViewOffsetAdjusted {
    r0 = *(int8_t *)(int64_t *)&self->_initialScrollViewOffsetAdjusted;
    return r0;
}

-(void)setInitialScrollViewOffsetAdjusted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialScrollViewOffsetAdjusted = arg2;
    return;
}

-(void *)loadedCallbacksSeen {
    r0 = self->_loadedCallbacksSeen;
    return r0;
}

-(void)setLoadedCallbacksSeen:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_loadedCallbacksSeen, arg2);
    return;
}

@end