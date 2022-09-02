@implementation FBNativeBannerAdView

-(void *)initWithNativeAd:(void *)arg2 withType:(long long)arg3 {
    r23 = [arg2 retain];
    r21 = [[FBNativeAdViewAttributes defaultAttributesForBannerType:arg3] retain];
    r19 = [self initWithNativeBannerAd:r23 withType:arg3 withAttributes:r21];
    [r23 release];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void)setType:(long long)arg2 {
    self->_type = arg2;
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
    if ([r19 isMemberOfClass:[FBNativeBannerAd class]] != 0x0) {
            objc_storeStrong((int64_t *)&r20->_nativeBannerAd, r21);
    }
    [[&var_30 super] populate:r19];
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
    if (r0 == 0x0) goto loc_100b20dd4;

loc_100b20b64:
    if ([r21 class] == [FBNativeBannerAdView class]) {
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
    [r21 setNativeBannerAd:r19];
    r0 = [r21 nativeBannerAd];
    r0 = [r0 retain];
    [r0 setDelegate:r21];
    [r0 release];
    r0 = [r21 nativeBannerAd];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100b20dd4;

loc_100b20ce4:
    r0 = [r21 nativeBannerAd];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 isAdValid];
    [r0 release];
    if ((r24 & 0x1) == 0x0) goto loc_100b20d48;

loc_100b20d18:
    r22 = [[r21 nativeBannerAd] retain];
    [r21 populate:r22];
    goto loc_100b20dcc;

loc_100b20dcc:
    [r22 release];
    goto loc_100b20dd4;

loc_100b20dd4:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_100b20d48:
    r0 = [r20 bypassAdLoad];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 boolValue];
    [r0 release];
    if ((r24 & 0x1) != 0x0) goto loc_100b20dd4;

loc_100b20d80:
    r24 = **_NSInternalInconsistencyException;
    r22 = [[r21 nativeBannerAd] retain];
    [NSException raise:r24 format:@"Native ad %@ passed to %@, but the native ad is not valid."];
    goto loc_100b20dcc;
}

-(void *)nativeAdBase {
    r0 = [self nativeBannerAd];
    return r0;
}

-(void)registerView {
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
    r19 = [[self rootViewController] retain];
    r0 = [r20 iconView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r22 = [[r20 nativeBannerAd] retain];
            r23 = [[r20 allInteractableTargets] retain];
            [r22 registerViewForInteraction:r20 iconView:r21 viewController:r19 clickableViews:r23];
            [r23 release];
            [r22 release];
    }
    [r21 release];
    [r19 release];
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
            r21 = [[FBNativeAdViewAttributes defaultAttributesForBannerType:[r20 type]] retain];
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

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_nativeBannerAd, 0x0);
    return;
}

-(void *)nativeBannerAd {
    r0 = self->_nativeBannerAd;
    return r0;
}

-(void)setNativeBannerAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeBannerAd, arg2);
    return;
}

+(void *)nativeBannerAdViewWithType:(long long)arg2 withAttributes:(void *)arg3 {
    r23 = [arg3 retain];
    r21 = [[FBNativeBannerAd fakeNativeBannerAd] retain];
    r19 = [[self nativeBannerAdViewWithNativeBannerAd:r21 withType:arg2 withAttributes:r23] retain];
    [r23 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)nativeBannerAdViewWithNativeBannerAd:(void *)arg2 withType:(long long)arg3 {
    r23 = [arg2 retain];
    r21 = [[FBNativeAdViewAttributes defaultAttributesForBannerType:arg3] retain];
    r19 = [[self nativeBannerAdViewWithNativeBannerAd:r23 withType:arg3 withAttributes:r21] retain];
    [r23 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)nativeBannerAdViewWithNativeBannerAd:(void *)arg2 withType:(long long)arg3 withAttributes:(void *)arg4 {
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
    if (r2 == 0x1) goto loc_100b212dc;

loc_100b212c0:
    if (r2 == 0x5) goto loc_100b212e8;

loc_100b212c8:
    if (r2 != 0x2) goto loc_100b21310;

loc_100b212d0:
    r8 = &@class(FBAdGenericHeight120View);
    goto loc_100b212f0;

loc_100b212f0:
    r0 = *r8;
    r0 = [r0 class];
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;

loc_100b21310:
    r0 = objc_retainAutoreleaseReturnValue(0x0);
    return r0;

loc_100b212e8:
    r8 = &@class(FBAdGenericHeight50View);
    goto loc_100b212f0;

loc_100b212dc:
    r8 = &@class(FBAdGenericHeight100View);
    goto loc_100b212f0;
}

@end