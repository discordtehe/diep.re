@implementation FBAdStoriesView

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r19->_currentPage = 0xffffffffffffffff;
            r0 = [NSMutableArray array];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedPageViews));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int8_t *)(int64_t *)&r19->_firstPageIsReady = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)layoutSubviews {
    r31 = r31 - 0x90;
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
    r29 = &saved_fp;
    r19 = self;
    [[&var_80 super] layoutSubviews];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_cachedPageViews));
    if ([*(r19 + r26) count] != 0x0) {
            r20 = 0x0;
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_scrollView));
            do {
                    r0 = *(r19 + r26);
                    r0 = [r0 objectAtIndexedSubscript:r20];
                    r29 = r29;
                    [r0 retain];
                    [*(r19 + r27) bounds];
                    asm { ucvtf      d11, x20 };
                    objc_msgSend(*(r19 + r27), r22);
                    v1 = v8;
                    v2 = v9;
                    v3 = v10;
                    objc_msgSend(r25, r23);
                    [r25 release];
                    r20 = r20 + 0x1;
            } while (r20 < objc_msgSend(*(r19 + r26), r24));
    }
    return;
}

-(void)handlePreviousPageIsRequested {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (self->_currentPage > 0x0) {
            [r19 setCurrentPage:[r19 currentPage] - 0x1];
    }
    else {
            r0 = r19->_currentPageView;
            [r0 setCurrentTime:&var_30];
    }
    return;
}

-(void)handleNextPageIsRequested {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (self->_currentPage + 0x1 < [self numberOfPages]) {
            [r19 setCurrentPage:[r19 currentPage] + 0x1];
    }
    else {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 adDisplayableViewDidEnd:r19];
            [r0 release];
    }
    return;
}

-(void)setCurrentPage:(long long)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0xf0;
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_currentPage));
    if (*(r0 + r8) != r2) {
            r20 = r2;
            r19 = r0;
            *(r0 + r8) = r2;
            asm { scvtf      d8, x2 };
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_scrollView));
            [*(r0 + r21) bounds];
            [*(r19 + r21) setContentOffset:r2];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_cachedPageViews));
            r8 = [*(r19 + r23) count] - 0x1;
            asm { sxtw       x8, w8 };
            if (r8 <= r20) {
                    r24 = r20 + 0x1;
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(_numberOfPages));
                    do {
                            if (r24 >= *(r19 + r25)) {
                                break;
                            }
                            [r19 prefetchNextPageIfNeeded];
                            r8 = objc_msgSend(*(r19 + r23), r22) - 0x1;
                            asm { sxtw       x8, w8 };
                    } while (r8 <= r20);
            }
            r22 = [[*(r19 + r23) objectAtIndexedSubscript:r20] retain];
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_currentPageView));
            r21 = [*(r19 + r28) retain];
            [r19 setPlaying:0x0 forced:0x1];
            r8 = *_kCMTimeZero;
            [r21 setCurrentTime:&var_80];
            r26 = *(r19 + r28);
            *(r19 + r28) = r22;
            r22 = [r22 retain];
            [r26 release];
            [r22 setCurrentTime:&var_A0];
            r3 = 0x1;
            [r19 setPlaying:0x1 forced:r3];
            [r19 volume];
            [r22 setVolume:0x1];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            r24 = [[r0 multiProductAdContent] retain];
            [r0 release];
            r0 = [r19 backgroundView];
            r0 = [r0 retain];
            r26 = [[r0 backgroundImageView] retain];
            [r0 release];
            r0 = [r24 objectAtIndexedSubscript:r20];
            r0 = [r0 retain];
            r23 = [[r0 image] retain];
            var_A8 = r26;
            r26 = [r26 retain];
            r2 = &var_C8;
            [r23 loadImageAsyncWithBlock:r2];
            [r23 release];
            [r0 release];
            r0 = [r19 pageIndicator];
            r0 = [r0 retain];
            r20 = r0;
            asm { scvtf      d1, d0 };
            [r0 configureWithProgress:r2 totalProgress:r3];
            [r20 release];
            [var_A8 release];
            [r26 release];
            [r21 release];
            [r24 release];
            [r22 release];
    }
    return;
}

-(void)didTap:(void *)arg2 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [arg2 locationInView:r19];
    [r19 bounds];
    r8 = &@selector(handleNextPageIsRequested);
    if (d8 < d2 * 0x3fd0000000000000) {
            if (!CPU_FLAGS & S) {
                    r8 = &@selector(handleNextPageIsRequested);
            }
            else {
                    r8 = &@selector(handlePreviousPageIsRequested);
            }
    }
    objc_msgSend(r19, *r8);
    return;
}

-(void *)pageIndicator {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_pageIndicator));
    r0 = *(self + r21);
    if (r0 == 0x0) {
            r0 = [FBAdStoriesPageIndicator new];
            r20 = r0;
            asm { scvtf      d1, d0 };
            [r0 configureWithProgress:r2 totalProgress:r3];
            r0 = *(r19 + r21);
            *(r19 + r21) = r20;
            [r0 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)backgroundView {
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
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundView));
    r0 = *(self + r24);
    if (r0 == 0x0) {
            r20 = [FBAdBlurredOverlayView alloc];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            r22 = [[r0 image] retain];
            r23 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
            r20 = [r20 initWithBackgroundImage:r22 andOverlayColor:r23];
            [r23 release];
            [r22 release];
            [r0 release];
            [r20 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r0 = *(r19 + r24);
            *(r19 + r24) = r20;
            [r0 release];
            r0 = *(r19 + r24);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)longPress:(void *)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 state];
    if (r0 > 0x2) goto loc_100a97084;

loc_100a9706c:
    if (r0 == 0x0) goto loc_100a97134;

loc_100a97070:
    if (r0 == 0x1) goto loc_100a97108;

loc_100a97078:
    if (r0 == 0x2) goto loc_100a97134;

loc_100a9714c:
    [r19 release];
    return;

loc_100a97134:
    r0 = r20;
    goto loc_100a97144;

loc_100a97144:
    [r0 setPlaying:r2 forced:r3];
    goto loc_100a9714c;

loc_100a97108:
    r0 = [NSDate new];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_gestureStartTime));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    goto loc_100a97134;

loc_100a97084:
    if (r0 >= 0x6) goto loc_100a9714c;

loc_100a97090:
    r0 = [NSDate new];
    [r0 timeIntervalSinceDate:r20->_gestureStartTime];
    [r0 release];
    if (d8 >= *0x100b9b588) goto loc_100a970f4;

loc_100a970dc:
    [r20 didTap:r19];
    goto loc_100a9714c;

loc_100a970f4:
    r0 = r20;
    goto loc_100a97144;
}

-(void *)scrollViewPagesContainer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_scrollViewPagesContainer));
    r0 = *(self + r21);
    if (r0 == 0x0) {
            r0 = [UIStackView new];
            r20 = r0;
            [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [r20 setDistribution:0x1];
            [r20 setAxis:0x0];
            r0 = *(r19 + r21);
            *(r19 + r21) = r20;
            [r0 release];
            r0 = *(r19 + r21);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)scrollView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_scrollView));
    r0 = *(self + r22);
    if (r0 == 0x0) {
            r0 = [UIScrollView new];
            r20 = r0;
            [r0 setBackgroundColor:0x0];
            [r20 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            [r20 setScrollEnabled:0x0];
            [r20 setShowsVerticalScrollIndicator:0x0];
            [r20 setShowsHorizontalScrollIndicator:0x0];
            r0 = [UILongPressGestureRecognizer alloc];
            r0 = [r0 initWithTarget:r19 action:@selector(longPress:)];
            r21 = r0;
            [r0 setMinimumPressDuration:r19];
            [r20 addGestureRecognizer:r21];
            r0 = *(r19 + r22);
            *(r19 + r22) = r20;
            [r0 release];
            [r21 release];
            r0 = *(r19 + r22);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)headerView {
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
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_headerView));
    r0 = *(self + r23);
    if (r0 == 0x0) {
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 adCreativeType];
            r0 = [r0 retain];
            r25 = [r0 isEqualToString:@"contextual_app"] ^ 0x1;
            [r0 release];
            [r20 release];
            var_60 = [FBAdDetailsView alloc];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            var_58 = r0;
            r22 = [[r0 title] retain];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            var_68 = r0;
            r26 = [[r0 subtitle] retain];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            var_70 = r0;
            r27 = [[r0 iconURL] retain];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            r28 = r0;
            r24 = [[r0 starRatingValue] retain];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            r20 = [[r0 starRatingCount] retain];
            var_80 = r25;
            r25 = r22;
            r22 = [var_60 initWithTitle:r22 subtitle:r26 iconURL:r27 ratingValue:r24 ratingCount:r20 style:0x1 iconStyle:var_80];
            [r20 release];
            [r0 release];
            [r24 release];
            [r28 release];
            [r27 release];
            [var_70 release];
            [r26 release];
            [var_68 release];
            [r25 release];
            [var_58 release];
            [r22 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r0 = *(r19 + r23);
            *(r19 + r23) = r22;
            [r0 release];
            r0 = *(r19 + r23);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)showAd {
    [self setCurrentPage:0x0];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_overallTime));
    r9 = *_kCMTimeZero;
    r10 = *(r9 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r9;
    *(0x10 + self + r8) = r10;
    objc_initWeak(&stack[-56], self);
    [*__dispatch_main_q retain];
    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
    r0 = [FBAdTimer scheduledTimerWithTimeInterval:0x1 repeats:r22 queue:&var_50 block:r5];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_forceViewTimer));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [*__dispatch_main_q release];
    r0 = [self viewabilityValidator];
    r0 = [r0 retain];
    [r0 scheduleViewabilityCheck];
    [r0 release];
    objc_destroyWeak(&var_50 + 0x20);
    objc_destroyWeak(&stack[-56]);
    return;
}

-(void)didTouchCTA:(void *)arg2 withEvent:(void *)arg3 {
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
    r21 = self;
    r19 = [arg3 retain];
    r20 = [[r21 delegate] retain];
    r0 = [r21 dataModel];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 multiProductAdContent];
    r0 = [r0 retain];
    r24 = r0;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_currentPage));
    r0 = [r0 objectAtIndexedSubscript:*(r21 + r25)];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    if (r20 != 0x0) {
            r23 = [[r22 commandURL] retain];
            r25 = [[NSNumber numberWithInteger:*(r21 + r25)] retain];
            r24 = [[NSNumber numberWithInteger:r21->_numberOfPages] retain];
            [r20 adDisplayableViewDidClick:r21 withEvent:r19 withCommand:r23 skipAppStore:0x0 withPageNumber:r25 withPageTotal:r24];
            [r24 release];
            [r25 release];
            [r23 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)destroyAd {
    return;
}

-(void *)adDetailsAndCTAButtonContainerView {
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
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adDetailsAndCTAButtonContainerView));
    r0 = *(self + r8);
    if (r0 == 0x0) {
            var_60 = r8;
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            var_58 = [[r0 callToAction] retain];
            [r0 release];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 adCreativeType];
            r0 = [r0 retain];
            var_70 = [r0 isEqualToString:@"contextual_app"] ^ 0x1;
            [r0 release];
            [r20 release];
            r20 = [FBAdDetailsAndCTAButtonContainerView alloc];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            var_68 = r0;
            r25 = [[r0 title] retain];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            var_78 = r0;
            r21 = [[r0 subtitle] retain];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            var_80 = r0;
            r23 = [[r0 iconURL] retain];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            var_88 = r0;
            var_98 = [[r0 body] retain];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            var_90 = r0;
            r24 = [[r0 socialContext] retain];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            var_A0 = r0;
            r26 = [[r0 starRatingValue] retain];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 starRatingCount];
            r29 = r29;
            r28 = [r0 retain];
            r8 = 0x5;
            if ([FBAdScreen isPortrait] != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = 0x5;
                    }
                    else {
                            r8 = 0x2;
                    }
            }
            r22 = [r20 initWithTitle:r25 subtitle:r21 iconURL:r23 bodyText:var_98 socialContext:r24 callToActionText:var_58 ratingValue:r26 ratingCount:r28 style:r8 iconStyle:var_70];
            [r28 release];
            [r27 release];
            [r26 release];
            [var_A0 release];
            [r24 release];
            [var_90 release];
            [var_98 release];
            [var_88 release];
            [r23 release];
            [var_80 release];
            [r21 release];
            [var_78 release];
            [r25 release];
            [var_68 release];
            r0 = [r22 callToActionButton];
            r0 = [r0 retain];
            [r0 addTarget:r19 action:@selector(didTouchCTA:withEvent:) forControlEvents:0x40];
            [r0 release];
            r0 = [r22 adDetailsView];
            r0 = [r0 retain];
            [r0 setHidden:0x1];
            [r0 release];
            [r22 setTranslatesAutoresizingMaskIntoConstraints:0x0];
            r0 = *(r19 + var_60);
            *(r19 + var_60) = r22;
            [r0 release];
            [var_58 release];
            r0 = *(r19 + var_60);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)configureVolume:(double)arg2 {
    [self setVolume:arg2];
    [self->_currentPageView setVolume:arg2];
    return;
}

-(bool)isPlaying {
    r0 = self->_currentPageView;
    r0 = [r0 isPlaying];
    return r0;
}

-(void)setPlaying:(bool)arg2 forced:(bool)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (([self isPlaying] ^ r19) == 0x1) {
            r0 = r20->_currentPageView;
            r8 = &@selector(pauseContent);
            if (r19 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = &@selector(pauseContent);
                    }
                    else {
                            r8 = &@selector(playContent);
                    }
            }
            objc_msgSend(r0, *r8);
    }
    return;
}

-(void)loadAdFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_storeStrong((int64_t *)&self->_dataModel, arg2);
    objc_storeStrong((int64_t *)&r21->_placementDefinition, arg3);
    [r19 audioMuted] ^ 0x1;
    asm { ucvtf      d0, w8 };
    r21->_volume = d0;
    r0 = [r19 multiProductAdContent];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 count];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_numberOfPages));
    *(r21 + r24) = r0;
    [r23 release];
    r0 = [NSMutableArray arrayWithCapacity:*(r21 + r24)];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_cachedPageViews));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    [r21 setup];
    r0 = [r19 multiProductAdContent];
    r0 = [r0 retain];
    [[r0 firstObject] retain];
    [r0 release];
    objc_initWeak(&stack[-72], r21);
    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
    [r21 loadPage:r22 withCompletion:&var_60];
    objc_destroyWeak(&var_60 + 0x20);
    objc_destroyWeak(&stack[-72]);
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)loadAdFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 carouselPageNumber:(void *)arg4 totalPages:(void *)arg5 {
    return;
}

-(void)loadPage:(void *)arg2 withCompletion:(void *)arg3 {
    r31 = r31 - 0xd0;
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
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [[r21 videoURL] retain];
    r22 = [[r21 image] retain];
    [r21 release];
    r21 = [[r22 url] retain];
    [r22 release];
    r22 = dispatch_group_create();
    if (r21 != 0x0) {
            dispatch_group_enter(r22);
            r23 = @class(FBAdUtility);
            var_48 = [r22 retain];
            [r23 loadRemoteImageWithURL:r21 withBlock:&var_68];
            [var_48 release];
    }
    if (r19 != 0x0) {
            dispatch_group_enter(r22);
            r24 = @class(FBAdUtility);
            r0 = [r22 retain];
            r23 = r0;
            [r24 loadRemoteVideoWithURL:r19 withBlock:&var_90];
            [r0 release];
    }
    else {
            r23 = r22;
    }
    var_98 = r20;
    [r20 retain];
    dispatch_group_notify(r22, *__dispatch_main_q, &var_B8);
    [var_98 release];
    [r20 release];
    [r23 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)pageViewDidPrepareContent:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (*(int8_t *)(int64_t *)&r20->_firstPageIsReady == 0x0) {
            [r20 setFirstPageIsReady:0x1];
    }
    if (r20->_currentPageView != r19) {
            [r19 pauseContent];
    }
    else {
            [r20 setPlaying:0x1 forced:0x0];
    }
    [r19 release];
    return;
}

-(void)prefetchNextPageIfNeeded {
    var_60 = d11;
    stack[-104] = d10;
    r31 = r31 + 0xffffffffffffff90;
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
    r19 = self;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_cachedPageViews));
    r0 = *(self + r25);
    r0 = [r0 count];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_numberOfPages));
    if (r0 < *(r19 + r26)) {
            r20 = r0;
            r0 = [r19 scrollView];
            r0 = [r0 retain];
            [r0 bounds];
            [r21 release];
            asm { scvtf      d11, x20 };
            objc_msgSend(*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_scrollView))), r22);
            r21 = [[FBAdStoriesPageView alloc] initWithFrame:r2];
            [*(r19 + r23) addSubview:r21];
            [r21 setDelegate:r19];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 multiProductAdContent];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectAtIndexedSubscript:r20];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
            [r23 release];
            if (r22 != 0x0) {
                    r23 = [[r19 placementDefinition] retain];
                    [r21 configureWithDataModel:r22 placementDefinition:r23 pageIndex:r20 pageCount:*(r19 + r26)];
                    [r23 release];
            }
            [*(r19 + r25) setObject:r21 atIndexedSubscript:r20];
            [r22 release];
            [r21 release];
    }
    return;
}

-(void)pageViewDidEndDisplayingPage:(void *)arg2 {
    [self handleNextPageIsRequested];
    return;
}

-(void)pageView:(void *)arg2 didFailToPrepareContentWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDisplayableView:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)pageView:(void *)arg2 didChangeCurrentTime:(union ?)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r0 = self;
    r31 = r31 - 0x80;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_currentPageView));
    if (*(r0 + r21) == arg2) {
            r20 = r3;
            r19 = r0;
            [r0 currentPage];
            asm { scvtf      d9, x0 };
            CMTimeGetSeconds(&var_50);
            v8 = v0;
            r0 = *(r19 + r21);
            if (r0 != 0x0) {
                    [r0 duration];
            }
            CMTimeGetSeconds(&var_68);
            asm { fdiv       d0, d8, d0 };
            r20 = [[r19 pageIndicator] retain];
            [r19 numberOfPages];
            asm { scvtf      d1, x0 };
            [r20 configureWithProgress:r2 totalProgress:r3];
            [r20 release];
    }
    return;
}

-(union ?)currentTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_overallTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)timerTicked:(void *)arg2 {
    r31 = r31 - 0xc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isPlaying] != 0x0) {
            [r19 overallTime];
            if (*qword_1011dd1d8 != -0x1) {
                    dispatch_once_f(0x1011dd1d8, 0x1011c62c8, 0x100a3d91c);
            }
            (*0x1011dd1e0)(0x64, 0x3e8);
            sub_100a3e6cc(r29 - 0x38, r29 - 0x50, &stack[-120]);
            [r19 setOverallTime:&var_80];
    }
    [r19 overallTime];
    r0 = [r19 dataModel];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 forcedViewTime];
    }
    r0 = sub_100a3e318(&stack[-168], &var_B0);
    [r20 release];
    if (r0 >= 0x1) {
            r0 = [r19 forceViewTimer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 invalidate];
            [r0 release];
    }
    r0 = [r19 delegate];
    r0 = [r0 retain];
    [r0 adDisplayableViewDidProgress:r19];
    [r0 release];
    return;
}

-(void *)viewabilityValidator {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_viewabilityValidator));
    r0 = *(self + r23);
    if (r0 == 0x0) {
            r0 = [r19 placementDefinition];
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    r21 = [FBAdViewabilityValidator alloc];
                    [r20 viewabilityCheckInterval];
                    [r20 viewabilityCheckInitialDelay];
                    r0 = [r21 initWithView:r19 withInterval:[r20 minViewabilityPercentage] withInitialDelay:[r20 minViewabilityTicks] withMinViewability:0x1 withTickDuration:r6 shouldObserveNotifications:r7];
                    r21 = r0;
                    [r0 setDelegate:r19];
                    [r19 setViewabilityValidator:r21];
                    r0 = *(r19 + r23);
                    *(r19 + r23) = r21;
                    [r0 release];
            }
            [r20 release];
            r0 = *(r19 + r23);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adDetailsAndCTAButtonContainerView, 0x0);
    objc_storeStrong((int64_t *)&self->_cachedPageViews, 0x0);
    objc_storeStrong((int64_t *)&self->_scrollViewPagesContainer, 0x0);
    objc_storeStrong((int64_t *)&self->_scrollView, 0x0);
    objc_storeStrong((int64_t *)&self->_headerView, 0x0);
    objc_storeStrong((int64_t *)&self->_pageIndicator, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundView, 0x0);
    objc_storeStrong((int64_t *)&self->_forceViewTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_gestureStartTime, 0x0);
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, 0x0);
    objc_storeStrong((int64_t *)&self->_placementDefinition, 0x0);
    objc_storeStrong((int64_t *)&self->_dataModel, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_currentPageView, 0x0);
    return;
}

-(bool)viewabilityValidator:(void *)arg2 checkedWithStatus:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 firstPageIsReady] != 0x0) {
            if (r21 == 0x1) {
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_impressionSent));
                    if (*(int8_t *)(r20 + r21) == 0x0 && [r20 isPlaying] != 0x0) {
                            *(int8_t *)(r20 + r21) = 0x1;
                            r0 = [r20 delegate];
                            r0 = [r0 retain];
                            [r0 adDisplayableViewDidLogImpression:r20 withViewabilityValidator:r19 withPageNumber:0x0 withPageTotal:0x0];
                            [r0 release];
                    }
            }
            else {
                    [r20 setPlaying:0x0 forced:0x0];
            }
    }
    [r19 release];
    return 0x0;
}

-(bool)canPlayVideo {
    r0 = *(int8_t *)(int64_t *)&self->_canPlayVideo;
    return r0;
}

-(void)setCanPlayVideo:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_canPlayVideo = arg2;
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

-(void *)dataModel {
    r0 = self->_dataModel;
    return r0;
}

-(void)setDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dataModel, arg2);
    return;
}

-(void *)placementDefinition {
    r0 = self->_placementDefinition;
    return r0;
}

-(void)setViewabilityValidator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, arg2);
    return;
}

-(void)setPlacementDefinition:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementDefinition, arg2);
    return;
}

-(long long)currentPage {
    r0 = self->_currentPage;
    return r0;
}

-(void)setNumberOfPages:(long long)arg2 {
    self->_numberOfPages = arg2;
    return;
}

-(long long)numberOfPages {
    r0 = self->_numberOfPages;
    return r0;
}

-(void)setup {
    r31 = r31 - 0x1a0;
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
    var_70 = **___stack_chk_guard;
    [self setTranslatesAutoresizingMaskIntoConstraints:0x0];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setCornerRadius:0x0];
    [r0 release];
    r0 = [self layer];
    r0 = [r0 retain];
    [r0 setMasksToBounds:0x1];
    [r0 release];
    r20 = [[self backgroundView] retain];
    [self addSubview:r20];
    r0 = [r20 leadingAnchor];
    r0 = [r0 retain];
    r22 = r0;
    var_140 = r0;
    r0 = [self leadingAnchor];
    r0 = [r0 retain];
    var_148 = r0;
    var_150 = [[r22 constraintEqualToAnchor:r0] retain];
    r0 = [r20 topAnchor];
    r0 = [r0 retain];
    r22 = r0;
    var_170 = r0;
    r0 = [self topAnchor];
    r0 = [r0 retain];
    r22 = [[r22 constraintEqualToAnchor:r0] retain];
    var_160 = r20;
    r27 = [[r20 trailingAnchor] retain];
    r24 = [[self trailingAnchor] retain];
    r21 = [[r27 constraintEqualToAnchor:r24] retain];
    r23 = [[r20 bottomAnchor] retain];
    r25 = [[self bottomAnchor] retain];
    r26 = [[r23 constraintEqualToAnchor:r25] retain];
    r20 = [[NSArray arrayWithObjects:&saved_fp - 0x90 count:0x4] retain];
    [NSLayoutConstraint activateConstraints:r20];
    [r20 release];
    [r26 release];
    [r25 release];
    [r23 release];
    [r21 release];
    [r24 release];
    [r27 release];
    [r22 release];
    [r0 release];
    [var_170 release];
    [var_150 release];
    [var_148 release];
    [var_140 release];
    r20 = [[self pageIndicator] retain];
    [self addSubview:r20];
    r0 = [r20 leadingAnchor];
    r0 = [r0 retain];
    r22 = r0;
    var_148 = r0;
    r0 = [self leadingAnchor];
    r0 = [r0 retain];
    var_150 = r0;
    var_168 = [[r22 constraintEqualToAnchor:r0] retain];
    r27 = [[r20 topAnchor] retain];
    r22 = [[self topAnchor] retain];
    r28 = [[r27 constraintEqualToAnchor:r22] retain];
    var_140 = r20;
    r24 = [[r20 trailingAnchor] retain];
    r21 = [[self trailingAnchor] retain];
    r26 = [[r24 constraintEqualToAnchor:r21] retain];
    r0 = [r20 heightAnchor];
    r0 = [r0 retain];
    r25 = [[r0 constraintEqualToConstant:r21] retain];
    r20 = [[NSArray arrayWithObjects:&saved_fp - 0xb0 count:0x4] retain];
    [NSLayoutConstraint activateConstraints:r20];
    [r20 release];
    [r25 release];
    [r0 release];
    [r26 release];
    [r21 release];
    [r24 release];
    [r28 release];
    [r22 release];
    [r27 release];
    [var_168 release];
    [var_150 release];
    [var_148 release];
    r20 = [[self headerView] retain];
    [self addSubview:r20];
    r21 = r20;
    r0 = [r20 leadingAnchor];
    r0 = [r0 retain];
    r22 = r0;
    var_168 = r0;
    r0 = [self leadingAnchor];
    r0 = [r0 retain];
    r26 = [[r22 constraintEqualToAnchor:r0 constant:0x4] retain];
    r20 = r21;
    var_148 = r21;
    r25 = [[r21 trailingAnchor] retain];
    r24 = [[self trailingAnchor] retain];
    r21 = [[r25 constraintEqualToAnchor:r24 constant:0x4] retain];
    r27 = [[r20 topAnchor] retain];
    r28 = [[var_140 bottomAnchor] retain];
    r22 = [[r27 constraintEqualToAnchor:r28] retain];
    r20 = [[NSArray arrayWithObjects:&var_C8 count:0x3] retain];
    [NSLayoutConstraint activateConstraints:r20];
    [r20 release];
    [r22 release];
    [r28 release];
    [r27 release];
    [r21 release];
    [r24 release];
    [r25 release];
    [r26 release];
    [r0 release];
    [var_168 release];
    r21 = [[self scrollView] retain];
    [self addSubview:r21];
    r0 = [r21 leadingAnchor];
    r0 = [r0 retain];
    r22 = r0;
    var_170 = r0;
    r0 = [self leadingAnchor];
    r0 = [r0 retain];
    var_178 = r0;
    var_180 = [[r22 constraintEqualToAnchor:r0] retain];
    r23 = r21;
    r0 = [r21 trailingAnchor];
    r0 = [r0 retain];
    r22 = [[self trailingAnchor] retain];
    r25 = [[r0 constraintEqualToAnchor:r22] retain];
    var_168 = r23;
    r24 = [[r23 topAnchor] retain];
    r21 = [[var_148 bottomAnchor] retain];
    r26 = [[r24 constraintEqualToAnchor:r21 constant:0x3] retain];
    r28 = [[r23 bottomAnchor] retain];
    r20 = [[self bottomAnchor] retain];
    r27 = [[r28 constraintEqualToAnchor:r20] retain];
    r23 = [[NSArray arrayWithObjects:&var_E8 count:0x4] retain];
    [NSLayoutConstraint activateConstraints:r23];
    [r23 release];
    [r27 release];
    [r20 release];
    [r28 release];
    [r26 release];
    [r21 release];
    [r24 release];
    [r25 release];
    [r22 release];
    [r0 release];
    [var_180 release];
    [var_178 release];
    [var_170 release];
    r20 = [[self adDetailsAndCTAButtonContainerView] retain];
    [self addSubview:r20];
    r0 = [r20 leadingAnchor];
    r0 = [r0 retain];
    r22 = r0;
    var_108 = r0;
    r0 = [self leadingAnchor];
    r0 = [r0 retain];
    var_120 = r0;
    r28 = [[r22 constraintEqualToAnchor:r0 constant:0x4] retain];
    r25 = [[r20 trailingAnchor] retain];
    r24 = [[self trailingAnchor] retain];
    r21 = [[r25 constraintEqualToAnchor:r24 constant:0x4] retain];
    r27 = [[r20 bottomAnchor] retain];
    r23 = [[self an_bottomSafeAnchor] retain];
    r26 = [[r27 constraintEqualToAnchor:r23] retain];
    r0 = [NSArray arrayWithObjects:&var_100 count:0x3];
    r22 = [r0 retain];
    [NSLayoutConstraint activateConstraints:r22];
    [r22 release];
    [r26 release];
    [r23 release];
    [r27 release];
    [r21 release];
    [r24 release];
    [r25 release];
    [r28 release];
    [var_120 release];
    [var_108 release];
    [self setNeedsLayout];
    [r20 release];
    [var_168 release];
    [var_148 release];
    [var_140 release];
    [var_160 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(double)volume {
    r0 = self;
    return r0;
}

-(void)setVolume:(double)arg2 {
    self->_volume = d0;
    return;
}

-(void)setGestureStartTime:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_gestureStartTime, arg2);
    return;
}

-(void *)gestureStartTime {
    r0 = self->_gestureStartTime;
    return r0;
}

-(bool)firstPageIsReady {
    r0 = *(int8_t *)(int64_t *)&self->_firstPageIsReady;
    return r0;
}

-(void)setFirstPageIsReady:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_firstPageIsReady = arg2;
    return;
}

-(void *)forceViewTimer {
    r0 = self->_forceViewTimer;
    return r0;
}

-(void)setForceViewTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_forceViewTimer, arg2);
    return;
}

-(void)setOverallTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_overallTime));
    r9 = *(r2 + 0x10);
    *(int128_t *)(self + r8) = *(int128_t *)r2;
    *(0x10 + self + r8) = r9;
    return;
}

-(void)setBackgroundView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backgroundView, arg2);
    return;
}

-(union ?)overallTime {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_overallTime));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

-(void)setPageIndicator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pageIndicator, arg2);
    return;
}

-(void)setHeaderView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_headerView, arg2);
    return;
}

-(void *)cachedPageViews {
    r0 = self->_cachedPageViews;
    return r0;
}

-(void)setScrollView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_scrollView, arg2);
    return;
}

-(void)setScrollViewPagesContainer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_scrollViewPagesContainer, arg2);
    return;
}

-(void)setCachedPageViews:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cachedPageViews, arg2);
    return;
}

-(void)setAdDetailsAndCTAButtonContainerView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adDetailsAndCTAButtonContainerView, arg2);
    return;
}

@end