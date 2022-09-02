@implementation FBNativeAdView

-(void *)mediaView {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_mediaView));
    r0 = *(self + r20);
    if (r0 == 0x0) {
            r0 = [FBMediaView new];
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            r0 = *(r19 + r20);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithNativeAd:(void *)arg2 withType:(long long)arg3 {
    r23 = [arg2 retain];
    r21 = [[FBNativeAdViewAttributes defaultAttributesForType:arg3] retain];
    r19 = [self initWithNativeAd:r23 withType:arg3 withAttributes:r21];
    [r23 release];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void)setType:(long long)arg2 {
    self->_type = arg2;
    return;
}

-(void)nativeAdDidLoad:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [self populate:r19];
    r0 = [self nativeAdDelegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeAdDidLoad:)] != 0x0) {
            [r20 nativeAdDidLoad:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)nativeAdDidDownloadMedia:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self nativeAdDelegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeAdDidDownloadMedia:)] != 0x0) {
            [r20 nativeAdDidDownloadMedia:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)initWithNativeAd:(void *)arg2 withType:(long long)arg3 withAttributes:(void *)arg4 {
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
    r22 = arg3;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r0 = [[&var_50 super] initWithFrame:r2];
    r21 = r0;
    if (r0 == 0x0) goto loc_100b19f98;

loc_100b19cf0:
    if ([r21 class] == [FBNativeAdView class]) {
            r25 = **_NSInternalInconsistencyException;
            r0 = [r21 class];
            r0 = NSStringFromClass(r0);
            r29 = r29;
            r23 = [r0 retain];
            [NSException raise:r25 format:@"%@ is being instantiated directly, not by a subclass."];
            [r23 release];
    }
    [r21 setType:r22];
    r0 = [r19 adViewAttributes];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r19 adViewAttributes];
            r29 = r29;
            r23 = [r0 retain];
            [r21 setAttributes:r23];
            [r23 release];
    }
    else {
            [r21 setAttributes:r20];
    }
    [r22 release];
    [r21 setNativeAd:r19];
    r22 = [[r19 delegate] retain];
    [r21 setNativeAdDelegate:r22];
    [r22 release];
    r0 = [r21 nativeAd];
    r0 = [r0 retain];
    [r0 setDelegate:r21];
    [r0 release];
    r0 = [r21 nativeAd];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100b19f98;

loc_100b19ea8:
    r0 = [r21 nativeAd];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 isAdValid];
    [r0 release];
    if ((r24 & 0x1) == 0x0) goto loc_100b19f0c;

loc_100b19edc:
    r22 = [[r21 nativeAd] retain];
    [r21 populate:r22];
    goto loc_100b19f90;

loc_100b19f90:
    [r22 release];
    goto loc_100b19f98;

loc_100b19f98:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_100b19f0c:
    r0 = [r20 bypassAdLoad];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 boolValue];
    [r0 release];
    if ((r24 & 0x1) != 0x0) goto loc_100b19f98;

loc_100b19f44:
    r24 = **_NSInternalInconsistencyException;
    r22 = [[r21 nativeAd] retain];
    [NSException raise:r24 format:@"Native ad %@ passed to %@, but the native ad is not valid."];
    goto loc_100b19f90;
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
    r0 = [self nativeAdDelegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeAdWillLogImpression:)] != 0x0) {
            [r20 nativeAdWillLogImpression:r19];
    }
    [r20 release];
    [r19 release];
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
    r0 = [self nativeAdDelegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeAdDidClick:)] != 0x0) {
            [r20 nativeAdDidClick:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)nativeAd:(void *)arg2 didFailWithError:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [self nativeAdDelegate];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:@selector(nativeAd:didFailWithError:), r3] != 0x0) {
            [r21 nativeAd:r19 didFailWithError:r20];
    }
    [r21 release];
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
    r0 = [self nativeAdDelegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(nativeAdDidFinishHandlingClick:)] != 0x0) {
            [r20 nativeAdDidFinishHandlingClick:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)constructMediaView {
    r0 = [FBMediaView new];
    r20 = r0;
    [r0 setClipsToBounds:0x1];
    r0 = [self containerView];
    r0 = [r0 retain];
    [r0 addSubview:r20];
    [r0 release];
    [self setMediaView:r20];
    [r20 release];
    return;
}

-(void *)nativeAdBase {
    r0 = [self nativeAd];
    return r0;
}

-(void)constructView {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([self isLoaded] & 0x1) == 0x0) {
            [r19 constructMediaView];
    }
    [[&var_20 super] constructView];
    return;
}

-(void)registerView {
    r19 = [[self rootViewController] retain];
    r21 = [[self nativeAd] retain];
    r22 = [[self mediaView] retain];
    r23 = [[self allInteractableTargets] retain];
    [r21 registerViewForInteraction:self mediaView:r22 iconView:0x0 viewController:r19 clickableViews:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)populate:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r19 = [arg2 retain];
    if ([r19 isMemberOfClass:[FBNativeAd class]] != 0x0) {
            objc_storeStrong((int64_t *)&r20->_nativeAd, r21);
    }
    [[&var_30 super] populate:r19];
    [r19 release];
    return;
}

-(void)reset {
    [[&var_20 super] reset];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mediaView));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(void)updateView:(bool)arg2 {
    r0 = self;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (arg2 != 0x0) {
            r19 = r0;
            [[&var_30 super] updateView:0x1];
            r0 = [r19 nativeAd];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 coverImage];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r21 release];
            if (r0 != 0x0) {
                    r20 = [[r19 nativeAd] retain];
                    r0 = [r19 mediaView];
                    r0 = [r0 retain];
                    [r0 setNativeAd:r20];
                    [r0 release];
                    [r20 release];
            }
    }
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_nativeAdDelegate);
    objc_storeStrong((int64_t *)&self->_mediaView, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeAd, 0x0);
    return;
}

-(void)updateAttributes:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) {
            r21 = [[FBNativeAdViewAttributes defaultAttributesForType:[r20 type]] retain];
            [r19 release];
            r19 = r21;
    }
    [[&var_30 super] updateAttributes:r19];
    [r19 release];
    return;
}

-(long long)type {
    r0 = self->_type;
    return r0;
}

-(void *)nativeAd {
    r0 = self->_nativeAd;
    return r0;
}

-(void)setMediaView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mediaView, arg2);
    return;
}

-(void)setNativeAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeAd, arg2);
    return;
}

-(void *)nativeAdDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_nativeAdDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setNativeAdDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_nativeAdDelegate, arg2);
    return;
}

+(void *)nativeAdViewWithNativeAd:(void *)arg2 {
    r0 = [self nativeAdViewWithNativeAd:arg2 withType:0x6];
    return r0;
}

+(void *)nativeAdViewWithNativeAd:(void *)arg2 withAttributes:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self nativeAdViewWithNativeAd:r21 withType:0x6 withAttributes:arg3] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)nativeAdViewWithType:(long long)arg2 withAttributes:(void *)arg3 {
    r23 = [arg3 retain];
    r21 = [[FBNativeAd fakeNativeAd] retain];
    r19 = [[self nativeAdViewWithNativeAd:r21 withType:arg2 withAttributes:r23] retain];
    [r23 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)nativeAdViewWithNativeAd:(void *)arg2 withType:(long long)arg3 {
    r23 = [arg2 retain];
    r21 = [[FBNativeAdViewAttributes defaultAttributesForType:arg3] retain];
    r19 = [[self nativeAdViewWithNativeAd:r23 withType:arg3 withAttributes:r21] retain];
    [r23 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)nativeAdViewWithNativeAd:(void *)arg2 withType:(long long)arg3 withAttributes:(void *)arg4 {
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r20 = [[[self classFromType:arg3] alloc] initWithNativeAd:r22 withType:arg3 withAttributes:r19];
    [r19 release];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)classFromType:(long long)arg2 {
    r2 = arg2;
    if (r2 == 0x6) goto loc_100b1ab34;

loc_100b1ab18:
    if (r2 == 0x4) goto loc_100b1ab40;

loc_100b1ab20:
    if (r2 != 0x3) goto loc_100b1ab68;

loc_100b1ab28:
    r8 = &@class(FBAdGenericHeight300View);
    goto loc_100b1ab48;

loc_100b1ab48:
    r0 = *r8;
    r0 = [r0 class];
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;

loc_100b1ab68:
    r0 = objc_retainAutoreleaseReturnValue(0x0);
    return r0;

loc_100b1ab40:
    r8 = &@class(FBAdGenericHeight400View);
    goto loc_100b1ab48;

loc_100b1ab34:
    r8 = &@class(FBNativeAdTemplateView);
    goto loc_100b1ab48;
}

@end