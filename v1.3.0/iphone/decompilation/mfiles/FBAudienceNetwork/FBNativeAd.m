@implementation FBNativeAd

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
    r0 = [self initWithPlacementID:arg2 templateId:0xc8 placementType:0x3];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setNativeAdBaseDelegate:r19];
    }
    r0 = r19;
    return r0;
}

-(void)registerViewForInteraction:(void *)arg2 mediaView:(void *)arg3 iconView:(void *)arg4 viewController:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [self registerViewForInteraction:r23 mediaView:r21 iconView:r20 viewController:arg5 clickableViews:0x0];
    [r20 release];
    [r21 release];
    [r23 release];
    return;
}

-(void)registerViewForInteraction:(void *)arg2 mediaView:(void *)arg3 iconImageView:(void *)arg4 viewController:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [self registerViewForInteraction:r23 mediaView:r21 iconImageView:r20 viewController:arg5 clickableViews:0x0];
    [r20 release];
    [r21 release];
    [r23 release];
    return;
}

-(void)registerViewForInteraction:(void *)arg2 mediaView:(void *)arg3 iconView:(void *)arg4 viewController:(void *)arg5 clickableViews:(void *)arg6 {
    r24 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r19 = [arg6 retain];
    [r21 setNativeAdBase:self];
    [r21 release];
    [self registerViewForInteraction:r24 viewController:r20 clickableViews:r19 mediaView:r22];
    [r19 release];
    [r20 release];
    [r22 release];
    [r24 release];
    return;
}

-(void)registerViewForInteraction:(void *)arg2 mediaView:(void *)arg3 iconImageView:(void *)arg4 viewController:(void *)arg5 clickableViews:(void *)arg6 {
    r31 = r31 - 0xb0;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [arg5 retain];
    r24 = [arg6 retain];
    r0 = [r22 icon];
    r0 = [r0 retain];
    r25 = r0;
    if (r0 != 0x0) {
            objc_initWeak(&stack[-120], r22);
            [[NSArray arrayWithObjects:&var_60 count:0x1] retain];
            objc_copyWeak(&var_98 + 0x28, &stack[-120]);
            var_78 = [r21 retain];
            [FBAdImage loadImagesAsync:r28 withBlock:&var_98];
            [r28 release];
            [var_78 release];
            objc_destroyWeak(&var_98 + 0x28);
            objc_destroyWeak(&stack[-120]);
    }
    var_58 = **___stack_chk_guard;
    [r22 registerViewForInteraction:r19 viewController:r23 clickableViews:r24 mediaView:r20];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)registerViewForInteraction:(void *)arg2 viewController:(void *)arg3 clickableViews:(void *)arg4 mediaView:(void *)arg5 {
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
    r0 = [arg5 retain];
    r22 = r0;
    [r0 setNativeAd:r23];
    objc_initWeak(r29 - 0x58, r23);
    r24 = &var_80 + 0x20;
    objc_copyWeak(r24, r29 - 0x58);
    [r22 setMediaIsLoadedAndVisibleBlock:&var_80];
    [r22 setMediaErrorBlock:&var_A8];
    if (r22 == 0x0 && ([r23 shouldBypassValidation] & 0x1) == 0x0) {
            [r23 tellDelegateMediaViewIsNotSet];
    }
    else {
            [[&var_B8 super] registerViewForInteraction:r19 viewController:r20 clickableViews:r21 viewToCheckForViewability:r22];
    }
    objc_destroyWeak(r24);
    objc_destroyWeak(r29 - 0x58);
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)coverImage {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 image] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)downloadMedia {
    [[&var_10 super] downloadMedia];
    return;
}

-(void)tellDelegateMediaViewIsNotSet {
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
    if ([r0 respondsToSelector:@selector(nativeAd:didFailWithError:), r3] != 0x0) {
            r22 = [[FBAdError getNSError:0x1771] retain];
            [r20 nativeAd:r19 didFailWithError:r22];
            [r22 release];
    }
    [r20 release];
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
    if ([r0 respondsToSelector:@selector(nativeAdDidLoad:)] != 0x0) {
            [r19 nativeAdDidLoad:r20];
    }
    r0 = [r20 dataModel];
    r0 = [r0 retain];
    r22 = [[r0 requestId] retain];
    [FBAdDebugLogging logAdLoadedForAdFormat:@"native" requestId:r22];
    [r22 release];
    [r0 release];
    [r19 release];
    return;
}

-(void *)generateLoggingDataWithExtraData:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r19 != 0x0) {
            [r21 addEntriesFromDictionary:r19];
    }
    r0 = [[&var_30 super] generateLoggingDataWithExtraData:r21];
    r20 = [r0 retain];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
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
    if ([r0 respondsToSelector:@selector(nativeAdDidDownloadMedia:)] != 0x0) {
            [r20 nativeAdDidDownloadMedia:r19];
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
    if ([r0 respondsToSelector:@selector(nativeAdWillLogImpression:)] != 0x0) {
            [r20 nativeAdWillLogImpression:r19];
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
    if ([r0 respondsToSelector:@selector(nativeAdDidClick:)] != 0x0) {
            [r20 nativeAdDidClick:r19];
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
    if ([r0 respondsToSelector:@selector(nativeAd:didFailWithError:), r3] != 0x0) {
            [r21 nativeAd:r20 didFailWithError:r19];
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
    if ([r0 respondsToSelector:@selector(nativeAdDidFinishHandlingClick:)] != 0x0) {
            [r20 nativeAdDidFinishHandlingClick:r19];
    }
    [r20 release];
    return;
}

-(void).cxx_destruct {
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

-(void *)initWithPlacementID:(void *)arg2 adProvider:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [self initWithPlacementID:r21 templateId:0xc8 placementType:0x3 adProvider:arg3];
    [r21 release];
    if (r19 != 0x0) {
            [r19 setNativeAdBaseDelegate:r19];
    }
    r0 = r19;
    return r0;
}

+(void *)fakeNativeAd {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100eae218);
    if (*qword_1011ddc98 != -0x1) {
            dispatch_once(0x1011ddc98, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddca0);
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [FBNativeAd new];
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

@end