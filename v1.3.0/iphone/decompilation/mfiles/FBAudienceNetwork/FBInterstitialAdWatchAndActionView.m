@implementation FBInterstitialAdWatchAndActionView

-(void)logError:(void *)arg2 {
    [FBAdDebugLogging logDebugEventWithType:@"internal_error" code:0x3 description:arg2];
    return;
}

-(void)showAd {
    [self setupViewabilityValidationIfNeeded];
    return;
}

-(void *)initWithDataModel:(void *)arg2 andPlacementDefinition:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = arg2;
    r19 = [arg2 retain];
    r21 = [r20 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_dataModel, r22);
            objc_storeStrong((int64_t *)&r23->_placementDefinition, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)loadAdFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    [[&var_30 super] loadAdFromDataModel:r21 placementDefinition:r20];
    [r19 setDataModel:r21];
    [r21 release];
    [r19 setPlacementDefinition:r20];
    [r20 release];
    if (([r19 isLoaded] & 0x1) == 0x0) {
            [r19 loadSubviews];
            [r19 setIsLoaded:0x1];
    }
    return;
}

-(bool)isScrolled {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([FBAdScreen isPortrait] != 0x0) {
            r0 = [r19 scrollView];
            r0 = [r0 retain];
            r20 = r0;
            [r0 contentOffset];
            if (d1 > 0x0) {
                    if (CPU_FLAGS & G) {
                            r19 = 0x1;
                    }
            }
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(bool)isDataModelValid:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isWatchAndInstallEligible] & 0x1) == 0x0 && ([r19 isWatchAndBrowseEligible] & 0x1) == 0x0) {
            [r20 logError:@"Validation filed. Watch and action only supports app install or watch and browse formats."];
            r20 = 0x0;
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)showMediaAdFullSizeAnimated:(bool)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self toolbarView];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 loadActionCoverView];
    if (arg2 != 0x0) {
            [r19 scrollMediaViewToVisibleAnimated:0x1];
    }
    r0 = [r19 scrollView];
    r0 = [r0 retain];
    [r0 setScrollEnabled:0x1];
    [r0 release];
    r0 = [r19 mediaView];
    r0 = [r0 retain];
    [r0 setOnTap:0x0];
    [r0 release];
    [r19 loadProgressBarView];
    r21 = [[r19 tapToRevealAddGesture] retain];
    [r20 removeGestureRecognizer:r21];
    [r21 release];
    [FBAdUtility animateWithStandardAnimations:&var_48 duration:0x0 completion:r4];
    [r19 setNeedsLayout];
    [r20 release];
    return;
}

-(void)showActionViewFullSizeAnimated:(bool)arg2 {
    r31 = r31 - 0xb0;
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
    r20 = self;
    [self actionViewWillBePresented];
    r0 = [r20 toolbarView];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (arg2 != 0x0) {
            [r20 scrollActionViewToVisibleAnimated:0x1];
    }
    r0 = [r20 actionCoverView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r0 = [r20 scrollView];
    r0 = [r0 retain];
    [r0 setScrollEnabled:0x0];
    [r0 release];
    r0 = [r20 progressBarView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    r21 = [[r20 tapToRevealAddGesture] retain];
    [r19 addGestureRecognizer:r21];
    [r21 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_actionCoverView));
    r0 = *(r20 + r8);
    *(r20 + r8) = 0x0;
    [r0 release];
    objc_initWeak(r29 - 0x48, r20);
    objc_copyWeak(&var_70 + 0x20, r29 - 0x48);
    r0 = [r20 mediaView];
    r0 = [r0 retain];
    [r0 setOnTap:&var_70];
    [r0 release];
    [FBAdUtility animateWithStandardAnimations:&var_98 duration:0x0 completion:r4];
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(r29 - 0x48);
    [r19 release];
    return;
}

-(void)coverViewRemoveAnimated {
    [FBAdUtility animateWithStandardAnimations:&stack[-56] completion:&var_50];
    return;
}

-(void)coverViewTap:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [[r0 commandURL] retain];
    r0 = [self actionVC];
    r0 = [r0 retain];
    [r0 prepareForPresentation];
    [r0 release];
    [self setActionContentLoaded:0x1];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDisplayableViewDidClick:self withEvent:r19 withCommand:r22 skipAppStore:0x1 withPageNumber:0x0 withPageTotal:0x0 completionHandler:&var_58];
    [r19 release];
    [r0 release];
    [r22 release];
    [r20 release];
    return;
}

-(void)loadScrollView {
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
    r20 = self;
    r19 = (int64_t *)&self->_scrollView;
    r0 = *r19;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r21 = r22;
    }
    else {
            r21 = [UIScrollView new];
            [r22 release];
            [r21 setDelegate:r20];
            [r21 setClipsToBounds:0x0];
            [r21 setBounces:0x0];
            [r21 setShowsVerticalScrollIndicator:0x0];
            [r21 setShowsHorizontalScrollIndicator:0x0];
            [r21 setScrollEnabled:0x1];
            r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
            [r21 setBackgroundColor:r22];
            [r22 release];
            [r21 setScrollsToTop:0x0];
            [r21 setContentInset:0x0];
            [r21 setScrollIndicatorInsets:0x0];
            if (sub_1009f77b0(0xb, 0x0, 0x0) != 0x0) {
                    [r21 setContentInsetAdjustmentBehavior:0x2];
            }
            [r20 addSubview:r2];
            objc_storeStrong(r19, r21);
    }
    [r21 release];
    return;
}

-(void)loadMediaView {
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
    r20 = self;
    r19 = [[self placementDefinition] retain];
    r0 = [r20 dataModel];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_mediaView));
    r0 = *(r20 + r25);
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            [r23 removeFromSuperview];
            r0 = *(r20 + r25);
            *(r20 + r25) = 0x0;
            [r0 release];
    }
    r22 = [FBInterstitialAdMediaView alloc];
    [r22 initWithDelegate:r20 audioMuted:[r21 audioMuted]];
    [r23 release];
    objc_initWeak(&stack[-88], r20);
    objc_copyWeak(&var_70 + 0x20, &stack[-88]);
    [r22 setOnTap:&var_70];
    r0 = [r20 scrollView];
    r0 = [r0 retain];
    [r0 addSubview:r22];
    [r0 release];
    [r22 loadAdFromDataModel:r21 placementDefinition:r19];
    r0 = *(r20 + r25);
    *(r20 + r25) = r22;
    [r0 release];
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&stack[-88]);
    [r21 release];
    [r19 release];
    return;
}

-(void)loadActionView {
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
    r29 = &saved_fp;
    r19 = self;
    r21 = (int64_t *)&self->_actionVC;
    r0 = *r21;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r20 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r22 release];
            r0 = *r21;
            *r21 = 0x0;
            [r0 release];
    }
    r0 = [r19 dataModel];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 isWatchAndInstallEligible];
    [r0 release];
    if (r24 == 0x0) goto loc_100af07f8;

loc_100af07cc:
    r23 = [FBWatchAndInstallActionController alloc];
    r0 = [r19 dataModel];
    r29 = r29;
    goto loc_100af0854;

loc_100af0854:
    r22 = [r0 retain];
    r23 = [r23 initWithDataModel:r22];
    [r20 release];
    [r22 release];
    r20 = r23;
    goto loc_100af0888;

loc_100af0888:
    if (r20 != 0x0) {
            [r20 preloadContent];
            r22 = [[r19 scrollView] retain];
            r23 = [[r20 view] retain];
            [r22 addSubview:r23];
            [r23 release];
            [r22 release];
            [r20 setDelegate:r19];
            objc_storeStrong(r21, r20);
    }
    else {
            [r19 logError:@"Faild to init action view controller. Ad should be either watchAndInstall or watch and browse"];
    }
    [r20 release];
    return;

loc_100af07f8:
    r0 = [r19 dataModel];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 isWatchAndBrowseEligible];
    [r0 release];
    if (r24 == 0x0) goto loc_100af0888;

loc_100af082c:
    r23 = [FBWatchAndBrowseActionController alloc];
    r0 = [r19 dataModel];
    r29 = r29;
    goto loc_100af0854;
}

-(void)loadCoverView {
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
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_coverView));
    r0 = *(self + r24);
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 removeFromSuperview];
            r0 = *(r19 + r24);
            *(r19 + r24) = 0x0;
            [r0 release];
    }
    r20 = [FBAdWatchAndActionCoverView new];
    [r21 release];
    objc_initWeak(&stack[-72], r19);
    r21 = &var_60 + 0x20;
    objc_copyWeak(r21, &stack[-72]);
    [r20 setOnTap:&var_60];
    r23 = [[r19 dataModel] retain];
    [r20 setDataModel:r23];
    [r23 release];
    r0 = [r19 dataModel];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 isWatchAndInstallEligible];
    [r0 release];
    if (r23 != 0x0) {
            [r20 setStyle:r2];
    }
    else {
            [r20 setStyle:r2];
    }
    r0 = [r19 scrollView];
    r0 = [r0 retain];
    [r0 addSubview:r2];
    [r22 release];
    r0 = *(r19 + r24);
    *(r19 + r24) = r20;
    [r0 release];
    objc_destroyWeak(r21);
    objc_destroyWeak(&stack[-72]);
    return;
}

-(void)loadTopGradientView {
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
    r19 = self;
    r25 = (int64_t *)&self->_topGradientView;
    r0 = *r25;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 removeFromSuperview];
            r0 = *r25;
            *r25 = 0x0;
            [r0 release];
    }
    var_48 = **___stack_chk_guard;
    r20 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
    r22 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
    r24 = [[NSArray arrayWithObjects:&var_58 count:0x2] retain];
    r23 = [FBGradientView newWithColors:r24 locations:0x0 startPoint:r4 endPoint:r5 opacity:r6];
    [r21 release];
    [r24 release];
    r0 = [r19 scrollView];
    r0 = [r0 retain];
    [r0 addSubview:r23];
    [r0 release];
    r0 = *r25;
    *r25 = r23;
    [r0 release];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadAudioMuteButton {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = (int64_t *)&self->_audioMuteButton;
    r0 = *r22;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 removeFromSuperview];
            r0 = *r22;
            *r22 = 0x0;
            [r0 release];
    }
    r20 = [[FBAdAudioMuteButton audioMuteButton] retain];
    [r21 release];
    [r20 addTarget:r19 action:@selector(handleAudioMuteButtonTouch:) forControlEvents:0x40];
    [r20 setContentEdgeInsets:r19];
    r0 = [r19 mediaView];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 volume];
    if (s0 <= 0x0) {
            if (CPU_FLAGS & LE) {
                    r2 = 0x1;
            }
    }
    [r20 setSelected:r2];
    [r21 release];
    r0 = [r19 scrollView];
    r0 = [r0 retain];
    [r0 addSubview:r2];
    [r19 release];
    r0 = *r22;
    *r22 = r20;
    [r0 release];
    return;
}

-(void)loadActionCoverView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = (int64_t *)&self->_actionCoverView;
    r0 = *r22;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) {
            [r20 removeFromSuperview];
            r0 = *r22;
            *r22 = 0x0;
            [r0 release];
    }
    [UIView new];
    [r20 release];
    r0 = [r19 scrollView];
    r0 = [r0 retain];
    [r0 addSubview:r2];
    [r19 release];
    r0 = *r22;
    *r22 = r21;
    [r0 release];
    return;
}

-(void)loadProgressBarView {
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
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_progressBarView));
    r0 = *(self + r23);
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 removeFromSuperview];
            r0 = *(r19 + r23);
            *(r19 + r23) = 0x0;
            [r0 release];
    }
    r20 = [FBAdVideoProgressBar new];
    [r21 release];
    r0 = [r19 mediaView];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r22 = &var_48;
            [r21 duration];
    }
    else {
            r22 = &var_48;
    }
    [r20 setDuration:&var_60];
    [r21 release];
    r0 = @class(UIColor);
    r0 = [r0 colorWithUInt:0x3c7cff withAlpha:r3];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    [r20 setProgressColor:[r0 CGColor]];
    [r0 release];
    r21 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r20 setBackgroundColor:r21];
    [r21 release];
    r0 = [r19 scrollView];
    r0 = [r0 retain];
    [r0 addSubview:r2];
    [r21 release];
    r0 = *(r19 + r23);
    *(r19 + r23) = r20;
    [r0 release];
    return;
}

-(void)headPanelTapped:(void *)arg2 {
    [self showMediaAdFullSizeAnimated:0x1];
    return;
}

-(void)loadSubviews {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self loadScrollView];
    [r19 loadMediaView];
    [r19 loadActionView];
    [r19 loadCoverView];
    [r19 loadTopGradientView];
    [r19 loadMinimizeButton];
    [r19 loadAudioMuteButton];
    [r19 loadProgressBarView];
    [r19 loadActionCoverView];
    [r19 loadToolbarView];
    r20 = [[UITapGestureRecognizer alloc] initWithTarget:r19 action:@selector(headPanelTapped:)];
    [r19 setTapToRevealAddGesture:r20];
    [r20 release];
    if (([FBAdScreen isPortrait] & 0x1) == 0x0) {
            [r19 moveToLandscape];
    }
    return;
}

-(void)loadMinimizeButton {
    var_50 = d9;
    stack[-88] = d8;
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
    r19 = self;
    r0 = [self minimizeButton];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            [r0 removeFromSuperview];
            [r20 release];
    }
    r20 = [[FBAdIconButton alloc] initWithIconStyle:0x3];
    r23 = [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    [r20 setFillColor:r23 forState:0x0];
    [r23 release];
    r23 = [[UIColor colorWithUInt:0xffffff withAlpha:0x0] retain];
    [r20 setFillColor:r23 forState:0x1];
    [r23 release];
    r22 = [[UIColor colorWithUInt:0xffffff withAlpha:0x1] retain];
    [r20 setFillColor:r22 forState:0x2];
    [r22 release];
    [r20 setAlpha:r22];
    r21 = [[UITapGestureRecognizer alloc] initWithTarget:r19 action:@selector(headPanelTapped:)];
    [r20 addGestureRecognizer:r21];
    [r19 addSubview:r20];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_minimizeButton));
    r0 = *(r19 + r8);
    *(r19 + r8) = r20;
    [r0 release];
    [r21 release];
    return;
}

-(void)dealloc {
    [self setDelegate:0x0];
    [FBAdNotificationCenter removeAllObserversForObject:self];
    [[&var_20 super] dealloc];
    return;
}

-(void)setDataModel:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r22 = (int64_t *)&r20->_dataModel;
    if (*r22 != r0 && [r20 isDataModelValid:r19] != 0x0) {
            objc_storeStrong(r22, r21);
            [r20 setIsLoaded:0x0];
    }
    [r19 release];
    return;
}

-(void)setPlacementDefinition:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_placementDefinition));
    r21 = *(r20 + r22);
    if (r21 != r0) {
            *(r20 + r22) = [r19 retain];
            [r21 release];
            [r20 setIsLoaded:0x0];
    }
    [r19 release];
    return;
}

-(void)actionViewWillBePresented {
    r31 = r31 - 0x80;
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
    if (([self actionContentLoaded] & 0x1) == 0x0) {
            r0 = [r19 scrollView];
            r0 = [r0 retain];
            r20 = [[r0 panGestureRecognizer] retain];
            [r0 release];
            r22 = [@(0x0) retain];
            r21 = [[FBAdUtility touchDictionaryForGesture:r20 delayTime:r22] retain];
            [r22 release];
            r0 = [r19 dataModel];
            r0 = [r0 retain];
            r22 = r0;
            r23 = [[r0 commandURL] retain];
            r0 = [r19 actionVC];
            r0 = [r0 retain];
            [r0 prepareForPresentation];
            [r0 release];
            [r19 setActionContentLoaded:0x1];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 adDisplayableViewDidInteract:r19 withTouchData:r21 touchType:@"swipe_click" withCommand:r23 skipAppStore:0x1 withPageNumber:0x0 withPageTotal:0x0 completionHandler:&var_58];
            [r0 release];
            [r23 release];
            [r22 release];
            [r21 release];
            [r20 release];
    }
    return;
}

-(void)scrollViewWillEndDragging:(void *)arg2 withVelocity:(struct CGPoint)arg3 targetContentOffset:(struct CGPoint *)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x80;
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
    r21 = r3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r22 = [[r0 panGestureRecognizer] retain];
    r23 = [[r19 superview] retain];
    [r22 translationInView:r23];
    [r23 release];
    [r22 release];
    d0 = Abs(d8);
    if (d0 > 0x3ff0000000000000) {
            if (d8 > 0x0) {
                    [r19 contentSize];
                    CGRectGetHeight([r19 bounds]);
                    *(r21 + 0x8) = d8 - d0;
                    r1 = @selector(showActionViewFullSizeAnimated:);
            }
            else {
                    *(r21 + 0x8) = 0x0;
                    r1 = @selector(showMediaAdFullSizeAnimated:);
            }
            objc_msgSend(r20, r1);
    }
    else {
            [r19 contentOffset];
            r8 = 0x4059000000000000;
            if (0x3ff0000000000000 >= r8) {
                    r8 = 0x4059000000000000;
                    if (CPU_FLAGS & NS) {
                            r8 = 0x1;
                    }
            }
            r9 = 0x100af4ac0;
            if (d9 < 0x0) {
                    r9 = 0x100af4ac0;
                    if (CPU_FLAGS & S) {
                            r9 = 0x1;
                    }
            }
            dispatch_async(*__dispatch_main_q, &var_70);
    }
    [r19 release];
    return;
}

-(void)loadToolbarView {
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
    r19 = self;
    r0 = [self toolbarView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 removeFromSuperview];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_toolbarView));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
    }
    r20 = [[FBInterstitialAdToolbarView oldDesign] retain];
    [r21 release];
    [r20 configureToolbarColorsForType:0x0];
    r21 = [[r19 dataModel] retain];
    [r20 setAdIconType:[FBInterstitialAdToolbarView toolbarIconTypeForDataModel:r21]];
    r24 = [[r20 adChoicesButton] retain];
    r25 = [[r21 adChoicesText] retain];
    r26 = [[r21 localizedCancelText] retain];
    r27 = [[r21 adChoicesLinkURL] retain];
    r28 = [[r21 inlineClientToken] retain];
    r22 = [[FBAdViewControllerProxy proxyWithViewController:0x0] retain];
    [r24 configureWithText:r25 cancelText:r26 url:r27 inlineClientToken:r28 rootViewController:r22];
    [r22 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    r22 = [[UIColor colorWithUInt:0xffffff withAlpha:r26] retain];
    r0 = [r20 adChoicesButton];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setIconColor:r22];
    [r0 release];
    [r22 release];
    if (r21 != 0x0) {
            r22 = &var_88;
            [r21 forcedViewTime];
    }
    else {
            r22 = &var_88;
    }
    [r20 setForcedViewTime:&var_A0];
    [r20 setCloseButtonStyle:0x0];
    [r20 disableForcedView];
    [r20 setDelegate:r19];
    r22 = @selector(dataModel);
    r0 = objc_msgSend(r19, r22);
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 isWatchAndBrowseEligible] == 0x0) goto loc_100af1380;

loc_100af11ec:
    r0 = objc_msgSend(r19, r22);
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 isWatchAndInstallEligible];
    [r0 release];
    [r23 release];
    if ((r24 & 0x1) != 0x0) goto loc_100af1388;

loc_100af1228:
    r0 = [r21 image];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 icon];
            r29 = r29;
            r22 = [r0 retain];
            [r20 setIcon:r22];
            [r22 release];
    }
    r0 = [r21 title];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r21 title];
            r29 = r29;
            r22 = [r0 retain];
            [r20 setTitle:r22];
            [r22 release];
    }
    r22 = [[r21 localizedSponsoredText] retain];
    [r20 setSubtitle:r22];
    [r22 release];
    r22 = [[r21 localizedSkipText] retain];
    [r20 setSkipText:r22];
    [r22 release];
    r0 = [r21 localizedRewardInText];
    r29 = r29;
    r23 = [r0 retain];
    [r20 setRewardInFormat:r23];
    goto loc_100af1380;

loc_100af1380:
    [r23 release];
    goto loc_100af1388;

loc_100af1388:
    [r20 setHeaderInfoHidden:0x1];
    [r19 addSubview:r20];
    if (([r20 translatesAutoresizingMaskIntoConstraints] & 0x1) == 0x0) {
            r0 = [r20 leadingAnchor];
            r0 = [r0 retain];
            r22 = r0;
            var_A8 = r0;
            r0 = [r19 an_leadingSafeAnchor];
            r0 = [r0 retain];
            var_B0 = r0;
            var_C0 = [[r22 constraintEqualToAnchor:r0] retain];
            r26 = [[r20 trailingAnchor] retain];
            r27 = [[r19 an_trailingSafeAnchor] retain];
            r28 = [[r26 constraintEqualToAnchor:r27] retain];
            r22 = [[r20 topAnchor] retain];
            r23 = [[r19 an_topSafeAnchor] retain];
            r24 = [[r22 constraintEqualToAnchor:r23] retain];
            r0 = [NSArray arrayWithObjects:&var_70 count:0x3];
            r25 = [r0 retain];
            [NSLayoutConstraint activateConstraints:r25];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r28 release];
            [r27 release];
            [r26 release];
            [var_C0 release];
            [var_B0 release];
            [var_A8 release];
    }
    var_58 = **___stack_chk_guard;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_toolbarView));
    r0 = *(r19 + r8);
    *(r19 + r8) = r20;
    [r0 release];
    [r21 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)actionCoverViewScrolled {
    [self showActionViewFullSizeAnimated:0x1];
    return;
}

-(void)scrollViewDidScroll:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 scrollView];
    r0 = [r0 retain];
    [r0 bounds];
    v8 = v0;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    [r0 release];
    r21 = [[r20 mediaView] retain];
    r0 = [r20 scrollView];
    r29 = &var_10;
    r0 = [r0 retain];
    r24 = r0;
    [r0 contentOffset];
    CGRectGetHeight([r21 frame]);
    if (d12 < d0 * 0x3fe0000000000000) {
            if (CPU_FLAGS & S) {
                    r25 = 0x1;
            }
    }
    [r24 release];
    r2 = r25;
    [r20 setPlaying:r2 forced:0x0];
    [r20 getGradientViewFrameWithBounds:r2];
    r0 = [r20 topGradientView];
    r0 = [r0 retain];
    v0 = v8;
    [r0 setFrame:r2];
    [r0 release];
    r25 = [[r20 actionVC] retain];
    r0 = [r20 actionCoverView];
    r29 = r29;
    r26 = [r0 retain];
    if (r25 != 0x0) {
            CGRectGetWidth(CGRectGetHeight([r21 frame]));
            [r19 contentSize];
            [r19 contentOffset];
            r0 = [r25 view];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r0 release];
            r0 = [r25 view];
            r0 = [r0 retain];
            objc_msgSend(r0, r23);
            [r26 setFrame:r2];
            [r27 release];
            CGRectGetWidth(CGRectGetHeight(objc_msgSend(r21, r23)));
            CGRectGetHeight(objc_msgSend(r19, r23));
            [r19 contentOffset];
            CGRectGetHeight(objc_msgSend(r21, r23));
            r0 = [r20 coverView];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r0 release];
    }
    else {
            [r20 logError:@"No action view present!"];
    }
    [r26 release];
    [r25 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)interstitialAdMediaViewDidLoad:(void *)arg2 {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDisplayableViewDidLoad:self];
    [r0 release];
    [self setNeedsLayout];
    return;
}

-(void)handleAudioMuteButtonTouch:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self mediaView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 volume];
    if (s0 > 0x0) {
            asm { fcsel      s0, s1, s0, gt };
    }
    [r20 setVolume:r2];
    [r19 setNeedsLayout];
    [r20 release];
    return;
}

-(void)interstitialAdMediaViewDidProgress:(void *)arg2 {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 progressBarView];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r19 != 0x0) {
            r22 = r29 - 0x38;
            [r19 duration];
    }
    else {
            r22 = r29 - 0x38;
    }
    [r21 setDuration:&var_50];
    if (r19 != 0x0) {
            r22 = &var_68;
            [r19 currentTime];
    }
    else {
            r22 = &var_68;
    }
    [r21 setCurrentTime:&var_80];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    [r0 adDisplayableViewDidProgress:r20];
    [r0 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)interstitialAdMediaViewDidEnd:(void *)arg2 {
    [self setVideoPlaybackInterrupted:0x0];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDisplayableViewDidEnd:self];
    [r0 release];
    return;
}

-(void)interstitialAdMediaView:(void *)arg2 didFailWithError:(void *)arg3 {
    r21 = [arg3 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adDisplayableView:self didFailWithError:r21];
    [r21 release];
    [r0 release];
    return;
}

-(bool)viewabilityValidator:(void *)arg2 checkedWithStatus:(long long)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 mediaView];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (arg3 == 0x1) {
            if (([r21 impressionSent] & 0x1) == 0x0) {
                    r0 = [r21 delegate];
                    r0 = [r0 retain];
                    [r0 adDisplayableViewDidLogImpression:r21 withViewabilityValidator:r19 withPageNumber:0x0 withPageTotal:0x0];
                    [r0 release];
                    [r21 setImpressionSent:0x1];
                    r0 = [r21 dataModel];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 videoAutoplayEnabled];
                    r0 = [r0 retain];
                    r23 = [r0 boolValue];
                    [r0 release];
                    [r21 release];
                    if (r23 != 0x0) {
                            [r20 playVideo];
                    }
            }
    }
    else {
            [r21 setPlaying:0x0 forced:0x0];
    }
    [r20 release];
    [r19 release];
    return 0x0;
}

-(void)actionViewDidFinishLoadWithError:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 != 0x0) {
            r20 = [[r2 description] retain];
            [r19 logError:r20];
    }
    else {
            r0 = [r19 coverView];
            r0 = [r0 retain];
            r20 = r0;
            [r0 hideImageOverlay];
    }
    [r20 release];
    return;
}

-(void)setupNotifications {
    [FBAdNotificationCenter removeAllObserversForObject:self];
    objc_initWeak(&saved_fp - 0x58, self);
    [[NSOperationQueue mainQueue] retain];
    [[FBAdNotificationCenter notificationCenterForObject:self] retain];
    objc_copyWeak(&var_80 + 0x20, &saved_fp - 0x58);
    [r21 addNotificationWithName:r22 object:0x0 queue:r19 block:&var_80];
    objc_copyWeak(&var_A8 + 0x20, &saved_fp - 0x58);
    [r21 addNotificationWithName:r24 object:0x0 queue:r19 block:&var_A8];
    objc_copyWeak(&var_D0 + 0x20, &saved_fp - 0x58);
    [r21 addNotificationWithName:r25 object:0x0 queue:r19 block:&var_D0];
    objc_destroyWeak(&var_D0 + 0x20);
    objc_destroyWeak(&var_A8 + 0x20);
    objc_destroyWeak(&var_80 + 0x20);
    [r21 release];
    [r19 release];
    objc_destroyWeak(&saved_fp - 0x58);
    return;
}

-(void)setupViewabilityValidationIfNeeded {
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
    r19 = self;
    r0 = [self viewabilityValidator];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 stopViewabilityCheck];
    }
    r0 = [r19 placementDefinition];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r22 = [FBAdViewabilityValidator alloc];
            [r21 viewabilityCheckInterval];
            [r21 viewabilityCheckInitialDelay];
            r22 = [r22 initWithView:r19 withInterval:[r21 minViewabilityPercentage] withInitialDelay:[r21 minViewabilityTicks] withMinViewability:0x1 withTickDuration:r6 shouldObserveNotifications:r7];
            [r20 release];
            [r22 setDelegate:r19];
            [r22 scheduleViewabilityCheck];
            [r19 setViewabilityValidator:r22];
            r20 = r22;
    }
    [r21 release];
    [r20 release];
    return;
}

-(void)actionViewDidFinishPresentation {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self onClose];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 onClose];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 release];
    return;
}

-(struct CGRect)getMediaViewFrameWithBounds:(struct CGRect)arg2 {
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r0 = [self mediaView];
    r0 = [r0 retain];
    CGRectGetWidth(r0);
    [r19 getNaturalHeightForWidth:r2];
    v12 = v11;
    r0 = [r19 release];
    r0 = CGRectGetHeight(r0);
    d0 = d0 + *double_value_minus_300;
    if (d12 < d0) {
            asm { fcsel      d12, d12, d0, mi };
    }
    r0 = CGRectGetHeight(r0);
    if (d12 < d0 * 0x3fe0000000000000) {
            asm { fcsel      d12, d0, d12, mi };
    }
    r0 = CGRectGetWidth(r0);
    return r0;
}

-(struct CGRect)getGradientViewFrameWithBounds:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_50 = d15;
    stack[-88] = d14;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d13;
    stack[-72] = d12;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = [[self scrollView] retain];
    sub_100aabe74();
    v12 = v0;
    r0 = [self isScrolled];
    if (r0 != 0x0) {
            r0 = [r19 contentOffset];
            d0 = *0x100b9b1b8 - d1;
            if (d0 < d12 + 0x404c000000000000) {
                    asm { fcsel      d12, d2, d0, mi };
            }
            d13 = 0x404c000000000000 - d12;
    }
    else {
            d13 = *0x100bfcc20;
    }
    CGRectGetWidth(CGRectGetMinX(CGRectGetMinY(r0)));
    r0 = [r19 release];
    return r0;
}

-(void)orientationDidChange {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = &@selector(moveToLandscape);
    if ([FBAdScreen isPortrait] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = &@selector(moveToLandscape);
            }
            else {
                    r8 = &@selector(moveToPortrait);
            }
    }
    objc_msgSend(r19, *r8);
    return;
}

-(void)toolbarShowWithActionviewVisible {
    r20 = [[self toolbarView] retain];
    r0 = [self minimizeButton];
    r0 = [r0 retain];
    [r0 setAlpha:r2];
    [r0 release];
    [r20 setHeaderInfoHidden:0x0];
    [r20 setCloseButtonHidden:0x1];
    [r20 release];
    return;
}

-(void)moveToPortrait {
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
    r0 = [self scrollView];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 superview];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [r19 addSubview:r2];
    }
    r22 = [[r19 mediaView] retain];
    [r19 moveView:r22 toSuperview:r20];
    [r22 release];
    r22 = [[r19 audioMuteButton] retain];
    [r19 moveView:r22 toSuperview:r20];
    [r22 release];
    r22 = [[r19 progressBarView] retain];
    [r19 moveView:r22 toSuperview:r20];
    [r22 release];
    r22 = [[r19 topGradientView] retain];
    [r19 moveView:r22 toSuperview:r20];
    [r22 release];
    r0 = [r19 actionVC];
    r0 = [r0 retain];
    r23 = [[r0 view] retain];
    [r19 moveView:r23 toSuperview:r20];
    [r23 release];
    [r0 release];
    r22 = [[r19 actionCoverView] retain];
    [r19 moveView:r22 toSuperview:r20];
    [r22 release];
    r22 = [[r19 coverView] retain];
    [r19 moveView:r22 toSuperview:r20];
    [r22 release];
    if ([r19 isScrolled] != 0x0) {
            [r19 toolbarShowWithActionviewVisible];
    }
    [r20 release];
    return;
}

-(void)moveToLandscape {
    r0 = [self scrollView];
    r0 = [r0 retain];
    r20 = r0;
    [r0 removeFromSuperview];
    r22 = [[self mediaView] retain];
    [self moveView:r22 toSuperview:self];
    [r22 release];
    r22 = [[self audioMuteButton] retain];
    [self moveView:r22 toSuperview:self];
    [r22 release];
    r22 = [[self topGradientView] retain];
    [self moveView:r22 toSuperview:self];
    [r22 release];
    r22 = [[self progressBarView] retain];
    [self moveView:r22 toSuperview:self];
    [r22 release];
    r0 = [self actionVC];
    r0 = [r0 retain];
    r23 = [[r0 view] retain];
    [self moveView:r23 toSuperview:self];
    [r23 release];
    [r0 release];
    r22 = [[self actionCoverView] retain];
    [self moveView:r22 toSuperview:r20];
    [r22 release];
    r22 = [[self coverView] retain];
    [self moveView:r22 toSuperview:self];
    [r22 release];
    [self toolbarShowWithMediaviewVisible];
    [r20 release];
    return;
}

-(void)toolbarShowWithMediaviewVisible {
    r20 = [[self toolbarView] retain];
    r0 = [self minimizeButton];
    r0 = [r0 retain];
    [r0 setAlpha:r2];
    [r0 release];
    [r20 setHeaderInfoHidden:0x1];
    [r20 setCloseButtonHidden:0x0];
    [r20 release];
    return;
}

-(void)interstitialAdToolbarDidTapAdChoices:(void *)arg2 {
    [self setPlaying:0x0 forced:0x0];
    return;
}

-(void)interstitialAdToolbarDidClose:(void *)arg2 withTouchData:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self onClose];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 onClose];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)interstitialAdToolbarDidCloseAdChoices:(void *)arg2 {
    [self setPlaying:0x1 forced:0x0];
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
    r20 = self;
    r0 = [self onInfo];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 onInfo];
            r0 = [r0 retain];
            (*(r0 + 0x10))();
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0xe0;
    var_A0 = d15;
    stack[-152] = d14;
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
    r20 = self;
    [FBAdScreen boundsInOrientation];
    v12 = v0;
    v11 = v1;
    v10 = v2;
    v9 = v3;
    sub_100aabe74();
    v14 = v0;
    v13 = v1;
    v15 = v3;
    r19 = [[r20 scrollView] retain];
    [r20 contentInset];
    v8 = v0;
    r21 = [[r20 mediaView] retain];
    var_C0 = [[r20 minimizeButton] retain];
    var_A8 = [[r20 topGradientView] retain];
    var_C8 = [[r20 audioMuteButton] retain];
    var_D0 = [[r20 progressBarView] retain];
    r26 = [[r20 actionVC] retain];
    var_B8 = [[r20 actionCoverView] retain];
    var_D8 = [[r20 toolbarView] retain];
    var_B0 = [[r20 coverView] retain];
    r23 = [[UIColor blackColor] retain];
    [r20 setBackgroundColor:r23];
    [r23 release];
    r0 = @class(UIColor);
    r0 = [r0 blackColor];
    r29 = &var_10;
    r22 = [r0 retain];
    [r21 setBackgroundColor:r22];
    [r22 release];
    r0 = @class(FBAdScreen);
    r0 = [r0 isPortrait];
    var_E0 = r19;
    v0 = v12;
    if (r0 != 0x0) {
            r0 = CGRectGetWidth(r0);
            CGRectGetHeight(r0);
            [r19 setFrame:r2];
            [r20 getMediaViewFrameWithBounds:r2];
            CGRectGetHeight(CGRectGetWidth(objc_msgSend(r21, r22)));
            CGRectGetWidth(objc_msgSend(r19, r22));
            CGRectGetHeight([r19 frame]);
            CGRectGetHeight([r21 frame]);
            v0 = v12;
            [r19 setContentSize:r2];
            CGRectGetMaxY([r21 frame]);
            CGRectGetWidth([r19 frame]);
            [r19 contentSize];
            [r19 contentOffset];
            r0 = [r26 view];
            r0 = [r0 retain];
            objc_msgSend(r0, r22);
            [r27 release];
            r0 = [r26 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 frame];
            objc_msgSend(var_B8, r22);
            [r27 release];
            CGRectGetMaxY([r21 frame]);
            CGRectGetWidth([r19 frame]);
            CGRectGetHeight([r19 frame]);
            [r19 contentOffset];
            CGRectGetHeight([r21 frame]);
            objc_msgSend(var_B0, r22);
            [r19 bounds];
            r0 = r20;
    }
    else {
            CGRectGetHeight(CGRectGetWidth(r0));
            [r21 setFrame:r2];
            CGRectGetMaxX([r21 frame]);
            CGRectGetWidth([r20 frame]);
            CGRectGetHeight(CGRectGetMaxX([r21 frame]));
            r0 = [r26 view];
            r0 = [r0 retain];
            objc_msgSend(r0, r22);
            [r25 release];
            r0 = [r26 view];
            r0 = [r0 retain];
            [r0 frame];
            objc_msgSend(var_B8, r22);
            [r25 release];
            r0 = [r26 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 frame];
            objc_msgSend(var_B0, r22);
            [r25 release];
            r0 = r20;
            v0 = v12;
    }
    [r0 getGradientViewFrameWithBounds:r2];
    objc_msgSend(var_A8, r22);
    r0 = [r26 view];
    r0 = [r0 retain];
    [r0 frame];
    r28 = var_B8;
    [r28 setFrame:r2];
    [r24 release];
    CGRectGetMinX([r21 frame]);
    v9 = v0;
    CGRectGetWidth([r21 frame]);
    r25 = var_D8;
    objc_msgSend(r25, r22);
    r24 = var_C0;
    objc_msgSend(r24, r22);
    CGRectGetMaxX([r21 frame]);
    CGRectGetHeight([r25 frame]);
    r27 = var_C8;
    v0 = v8;
    objc_msgSend(r27, r22);
    [r21 volume];
    if (s0 == 0x3ff0000000000000) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    [r27 setSelected:r2];
    [var_D0 setCornerRadius:r2];
    CGRectGetMinX([r21 frame]);
    CGRectGetMaxY([r21 frame]);
    CGRectGetWidth([r21 frame]);
    objc_msgSend(var_D0, r22);
    [r20 bringControlsToFront];
    [var_B0 release];
    [r25 release];
    [r28 release];
    [r26 release];
    [var_D0 release];
    [r27 release];
    [var_A8 release];
    [r24 release];
    [r21 release];
    [var_E0 release];
    return;
}

-(void)moveView:(void *)arg2 toSuperview:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && r20 != 0x0) {
            r0 = [r19 superview];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != r20) {
                    [r19 removeFromSuperview];
                    [r20 addSubview:r2];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)scrollMediaViewToVisibleAnimated:(bool)arg2 {
    r0 = [self scrollView];
    r0 = [r0 retain];
    [r0 setContentOffset:arg2 animated:r3];
    [r0 release];
    return;
}

-(void)scrollActionViewToVisibleAnimated:(bool)arg2 {
    r0 = [self scrollView];
    r0 = [r0 retain];
    [r0 contentSize];
    CGRectGetHeight([r0 bounds]);
    [r20 setContentOffset:arg2 animated:r3];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_tapToRevealAddGesture, 0x0);
    objc_storeStrong((int64_t *)&self->_toolbarView, 0x0);
    objc_storeStrong((int64_t *)&self->_minimizeButton, 0x0);
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, 0x0);
    objc_storeStrong((int64_t *)&self->_actionVC, 0x0);
    objc_storeStrong((int64_t *)&self->_actionCoverView, 0x0);
    objc_storeStrong((int64_t *)&self->_progressBarView, 0x0);
    objc_storeStrong((int64_t *)&self->_audioMuteButton, 0x0);
    objc_storeStrong((int64_t *)&self->_topGradientView, 0x0);
    objc_storeStrong((int64_t *)&self->_coverView, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaView, 0x0);
    objc_storeStrong((int64_t *)&self->_scrollView, 0x0);
    objc_storeStrong((int64_t *)&self->_placementDefinition, 0x0);
    objc_storeStrong((int64_t *)&self->_dataModel, 0x0);
    objc_storeStrong((int64_t *)&self->_onInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_onClose, 0x0);
    return;
}

-(void *)onClose {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onClose)), 0x0);
    return r0;
}

-(void)setOnClose:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)onInfo {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_onInfo)), 0x0);
    return r0;
}

-(void)setOnInfo:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)bringControlsToFront {
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
    r21 = self;
    r19 = [[self scrollView] retain];
    r20 = [[r21 audioMuteButton] retain];
    r23 = [[r21 topGradientView] retain];
    var_58 = [[r21 actionVC] retain];
    var_68 = [[r21 toolbarView] retain];
    r24 = [[r21 minimizeButton] retain];
    r26 = [[r21 actionCoverView] retain];
    r0 = [r21 coverView];
    r29 = &saved_fp;
    r27 = [r0 retain];
    r0 = [FBAdScreen isPortrait];
    var_60 = r19;
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = r21;
            }
            else {
                    r0 = r19;
            }
    }
    r28 = [r0 retain];
    if (r23 != 0x0) {
            [r28 bringSubviewToFront:r23];
    }
    var_70 = r23;
    if (r20 != 0x0) {
            [r28 bringSubviewToFront:r20];
    }
    r23 = r20;
    r25 = var_58;
    r0 = [r25 view];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [[r25 view] retain];
            [r28 bringSubviewToFront:r2];
            [r19 release];
    }
    if (r26 != 0x0) {
            [r28 bringSubviewToFront:r26];
    }
    r19 = r23;
    r25 = r24;
    if (r27 != 0x0) {
            [r28 bringSubviewToFront:r27];
    }
    r20 = var_70;
    r24 = var_68;
    r23 = var_58;
    if (r24 != 0x0) {
            [r21 bringSubviewToFront:r24];
    }
    if (r25 != 0x0) {
            [r21 bringSubviewToFront:r25];
    }
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r20 release];
    [r19 release];
    [var_60 release];
    return;
}

-(void *)dataModel {
    r0 = self->_dataModel;
    return r0;
}

-(void *)placementDefinition {
    r0 = self->_placementDefinition;
    return r0;
}

-(bool)isLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_isLoaded;
    return r0;
}

-(void *)scrollView {
    r0 = self->_scrollView;
    return r0;
}

-(void)setIsLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isLoaded = arg2;
    return;
}

-(void)setScrollView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_scrollView, arg2);
    return;
}

-(void *)mediaView {
    r0 = self->_mediaView;
    return r0;
}

-(void)setMediaView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mediaView, arg2);
    return;
}

-(void *)coverView {
    r0 = self->_coverView;
    return r0;
}

-(void)setCoverView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_coverView, arg2);
    return;
}

-(void *)topGradientView {
    r0 = self->_topGradientView;
    return r0;
}

-(void)setTopGradientView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_topGradientView, arg2);
    return;
}

-(void *)audioMuteButton {
    r0 = self->_audioMuteButton;
    return r0;
}

-(void *)progressBarView {
    r0 = self->_progressBarView;
    return r0;
}

-(void)setAudioMuteButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_audioMuteButton, arg2);
    return;
}

-(void)setProgressBarView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_progressBarView, arg2);
    return;
}

-(void *)actionCoverView {
    r0 = self->_actionCoverView;
    return r0;
}

-(void)setActionCoverView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_actionCoverView, arg2);
    return;
}

-(void *)actionVC {
    r0 = self->_actionVC;
    return r0;
}

-(void)setActionVC:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_actionVC, arg2);
    return;
}

-(void *)minimizeButton {
    r0 = self->_minimizeButton;
    return r0;
}

-(void *)viewabilityValidator {
    r0 = self->_viewabilityValidator;
    return r0;
}

-(void)setViewabilityValidator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, arg2);
    return;
}

-(void)setMinimizeButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_minimizeButton, arg2);
    return;
}

-(void *)toolbarView {
    r0 = self->_toolbarView;
    return r0;
}

-(void)setToolbarView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_toolbarView, arg2);
    return;
}

-(void *)tapToRevealAddGesture {
    r0 = self->_tapToRevealAddGesture;
    return r0;
}

-(void)setTapToRevealAddGesture:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_tapToRevealAddGesture, arg2);
    return;
}

-(bool)videoPlaybackInterrupted {
    r0 = *(int8_t *)(int64_t *)&self->_videoPlaybackInterrupted;
    return r0;
}

-(void)setVideoPlaybackInterrupted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_videoPlaybackInterrupted = arg2;
    return;
}

-(bool)impressionSent {
    r0 = *(int8_t *)(int64_t *)&self->_impressionSent;
    return r0;
}

-(void)setImpressionSent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_impressionSent = arg2;
    return;
}

-(bool)actionContentLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_actionContentLoaded;
    return r0;
}

-(void)setActionContentLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_actionContentLoaded = arg2;
    return;
}

@end