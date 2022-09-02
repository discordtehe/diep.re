@implementation FBNativeBannerAd

-(void *)init {
    r0 = [self initWithPlacementID:@""];
    return r0;
}

-(void *)initWithPlacementID:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self initWithPlacementID:arg2 templateId:0x1f4 placementType:0x4];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setNativeAdBaseDelegate:r19];
    }
    r0 = r19;
    return r0;
}

-(void)registerViewForInteraction:(void *)arg2 iconView:(void *)arg3 viewController:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self registerViewForInteraction:r22 iconView:r20 viewController:arg4 clickableViews:0x0];
    [r20 release];
    [r22 release];
    return;
}

-(void)registerViewForInteraction:(void *)arg2 iconImageView:(void *)arg3 viewController:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self registerViewForInteraction:r22 iconImageView:r20 viewController:arg4 clickableViews:0x0];
    [r20 release];
    [r22 release];
    return;
}

-(void)registerViewForInteraction:(void *)arg2 iconView:(void *)arg3 viewController:(void *)arg4 clickableViews:(void *)arg5 {
    r31 = r31 - 0xd0;
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    [r20 setUseAsIconView:0x1];
    [r20 setNativeAdBase:r23];
    objc_initWeak(r29 - 0x58, r23);
    r24 = &var_80 + 0x20;
    objc_copyWeak(r24, r29 - 0x58);
    [r20 setMediaIsLoadedAndVisibleBlock:&var_80];
    [r20 setMediaErrorBlock:&var_A8];
    [r23 setIconView:r20];
    if (r20 == 0x0 && ([r23 shouldBypassValidation] & 0x1) == 0x0) {
            [r23 tellDelegateIconViewIsNotSet];
    }
    else {
            [[&var_B8 super] registerViewForInteraction:r19 viewController:r21 clickableViews:r22 viewToCheckForViewability:r20];
    }
    objc_destroyWeak(r24);
    objc_destroyWeak(r29 - 0x58);
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)registerViewForInteraction:(void *)arg2 iconImageView:(void *)arg3 viewController:(void *)arg4 clickableViews:(void *)arg5 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [arg5 retain];
    r24 = [[r22 icon] retain];
    [r22 setIconImageView:r20];
    if (r20 != 0x0 && r24 != 0x0) {
            [r22 setupViewabilityValidator];
            objc_initWeak(&stack[-88], r22);
            [r20 setContentMode:0x2];
            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
            [r20 fbad_setIcon:r24 completion:&var_70];
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(&stack[-88]);
    }
    [[&var_80 super] registerViewForInteraction:r19 viewController:r21 clickableViews:r23 viewToCheckForViewability:r20];
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)tellDelegateIconViewIsNotSet {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeBannerAd:didFailWithError:), r3] != 0x0) {
            r22 = [[FBAdError getNSError:0x1772] retain];
            [r20 nativeBannerAd:r19 didFailWithError:r22];
            [r22 release];
    }
    [r20 release];
    return;
}

-(void)downloadMedia {
    [[&var_10 super] downloadMedia];
    return;
}

-(void)nativeAdBaseDidLoad:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:@selector(nativeBannerAdDidLoad:)] != 0x0) {
            [r19 nativeBannerAdDidLoad:r20];
    }
    r0 = [r20 dataModel];
    r0 = [r0 retain];
    r22 = [[r0 requestId] retain];
    [FBAdDebugLogging logAdLoadedForAdFormat:@"native_banner" requestId:r22];
    [r22 release];
    [r0 release];
    [r19 release];
    return;
}

-(void *)generateLoggingData {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [[&var_30 super] generateLoggingData];
    r0 = [r0 retain];
    r19 = [r0 mutableCopy];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"nmv"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r2 = @"nmv";
            r0 = [r20 iconView];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    r2 = @"nmv";
                    if (CPU_FLAGS & NE) {
                            r2 = 0x1;
                    }
            }
            r21 = [[FBAdUtility stringValueForBool:r2] retain];
            [r19 setObject:r21 forKeyedSubscript:@"nmv"];
            [r21 release];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)nativeAdBaseDidDownloadMedia:(void *)arg2 {
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
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeBannerAdDidDownloadMedia:)] != 0x0) {
            [r20 nativeBannerAdDidDownloadMedia:r19];
    }
    [r20 release];
    return;
}

-(void)nativeAdBaseWillLogImpression:(void *)arg2 {
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
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeBannerAdWillLogImpression:)] != 0x0) {
            [r20 nativeBannerAdWillLogImpression:r19];
    }
    [r20 release];
    return;
}

-(void)nativeAdBaseDidClick:(void *)arg2 {
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
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeBannerAdDidClick:)] != 0x0) {
            [r20 nativeBannerAdDidClick:r19];
    }
    [r20 release];
    return;
}

-(void)nativeAdBase:(void *)arg2 didFailWithError:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(nativeBannerAd:didFailWithError:), r3] != 0x0) {
            [r21 nativeBannerAd:r20 didFailWithError:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)nativeAdBaseDidFinishHandling:(void *)arg2 {
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
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeBannerAdDidFinishHandlingClick:)] != 0x0) {
            [r20 nativeBannerAdDidFinishHandlingClick:r19];
    }
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_iconImage, 0x0);
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, 0x0);
    objc_destroyWeak((int64_t *)&self->_iconImageView);
    objc_destroyWeak((int64_t *)&self->_iconView);
    objc_destroyWeak((int64_t *)&self->_delegate);
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

-(void *)iconView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_iconView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setIconView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_iconView, arg2);
    return;
}

-(void *)iconImageView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_iconImageView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setIconImageView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_iconImageView, arg2);
    return;
}

-(void *)viewabilityValidator {
    r0 = self->_viewabilityValidator;
    return r0;
}

-(void)setViewabilityValidator:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_viewabilityValidator, arg2);
    return;
}

-(void *)iconImage {
    r0 = self->_iconImage;
    return r0;
}

-(void)setIconImage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_iconImage, arg2);
    return;
}

-(bool)viewabilityValidator:(void *)arg2 checkedWithStatus:(long long)arg3 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (arg3 == 0x1) {
            r19 = r0;
            if ([r0 iconImageViewContainsValidImage] != 0x0) {
                    r20 = [[r19 generateLoggingData] retain];
                    [r19 logImpressionWithExtraData:r20];
                    r0 = [r19 viewabilityValidator];
                    r0 = [r0 retain];
                    [r0 stopViewabilityCheck];
                    [r0 release];
                    [r20 release];
            }
    }
    return 0x0;
}

-(bool)iconImageViewContainsValidImage {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self iconImage] retain];
    r20 = [[self iconImageView] retain];
    if (r19 != 0x0) {
            asm { ccmp       x0, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            r21 = 0x0;
    }
    else {
            r21 = [r20 fbad_containsImage:r19];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)setupViewabilityValidator {
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
    [self firstImpressionTime];
    if (d0 == 0xbff0000000000000) {
            r0 = [r19 placementDefinition];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    r21 = [FBAdViewabilityValidator alloc];
                    r22 = [[r19 iconImageView] retain];
                    [r20 viewabilityCheckInterval];
                    [r20 viewabilityCheckInitialDelay];
                    r21 = [r21 initWithView:r22 withInterval:[r20 minViewabilityPercentage] withInitialDelay:[r20 minViewabilityTicks] withMinViewability:0x1 withTickDuration:r6 shouldObserveNotifications:r7];
                    [r19 setViewabilityValidator:r21];
                    [r21 release];
                    [r22 release];
                    r0 = [r19 viewabilityValidator];
                    r0 = [r0 retain];
                    [r0 setDelegate:r19];
                    [r0 release];
                    r0 = [r19 viewabilityValidator];
                    r0 = [r0 retain];
                    [r0 scheduleViewabilityCheck];
                    [r0 release];
            }
            [r20 release];
    }
    return;
}

-(void)dealloc {
    r0 = [self viewabilityValidator];
    r0 = [r0 retain];
    [r0 stopViewabilityCheck];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithPlacementID:(void *)arg2 adProvider:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [self initWithPlacementID:r21 templateId:0xc8 placementType:0x4 adProvider:arg3];
    [r21 release];
    if (r19 != 0x0) {
            [r19 setNativeAdBaseDelegate:r19];
    }
    r0 = r19;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [FBNativeBannerAd new];
    r20 = [[self dataModel] retain];
    r22 = [[self placementDefinition] retain];
    r23 = [[self onImpression] retain];
    r24 = [[self onImpressionMiss] retain];
    r21 = [[self onClick] retain];
    [r19 populateFromDataModel:r20 placementDefinition:r22 onImpression:r23 onImpressionMiss:r24 onClick:r21];
    [r21 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 release];
    r0 = r19;
    return r0;
}

+(void *)fakeNativeBannerAd {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100eae6d8);
    if (*qword_1011ddcd8 != -0x1) {
            dispatch_once(0x1011ddcd8, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddce0);
    [r19 release];
    r0 = r20;
    return r0;
}

@end