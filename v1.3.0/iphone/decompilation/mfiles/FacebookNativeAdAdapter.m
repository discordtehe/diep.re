@implementation FacebookNativeAdAdapter

-(void *)defaultActionURL {
    return 0x0;
}

-(bool)enableThirdPartyClickTracking {
    return 0x1;
}

-(void)willAttachToView:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = [[self fbNativeAd] retain];
    r21 = [[self mediaView] retain];
    r23 = [[self iconView] retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r24 = [[r0 viewControllerForPresentingModalView] retain];
    [r19 registerViewForInteraction:r20 mediaView:r21 iconView:r23 viewController:r24];
    [r20 release];
    [r24 release];
    [r0 release];
    [r23 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)willAttachToView:(void *)arg2 withAdContentViews:(void *)arg3 {
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
    r22 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            r21 = [[r22 fbNativeAd] retain];
            r23 = [[r22 mediaView] retain];
            r24 = [[r22 iconView] retain];
            r0 = [r22 delegate];
            r0 = [r0 retain];
            r25 = [[r0 viewControllerForPresentingModalView] retain];
            [r21 registerViewForInteraction:r19 mediaView:r23 iconView:r24 viewController:r25 clickableViews:r20];
            [r25 release];
            [r0 release];
            [r24 release];
            [r23 release];
            [r21 release];
    }
    else {
            [r22 willAttachToView:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)initWithFBNativeAd:(void *)arg2 adProperties:(void *)arg3 {
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
    r29 = &saved_fp;
    r23 = arg2;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_60 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r21 + 0x18, r23);
            [*(r21 + 0x18) setDelegate:r21];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r22);
            r8 = *(r21 + 0x28);
            *(r21 + 0x28) = r0;
            [r8 release];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r22);
            r8 = *(r21 + 0x30);
            *(r21 + 0x30) = r0;
            [r8 release];
            if (r20 != 0x0) {
                    r0 = [NSMutableDictionary dictionaryWithDictionary:r20];
            }
            else {
                    r0 = [NSMutableDictionary dictionary];
            }
            r23 = [r0 retain];
            r0 = [r19 headline];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 headline];
                    r29 = r29;
                    [r0 retain];
                    [r23 setObject:r2 forKey:r3];
                    [r24 release];
            }
            r0 = [r19 bodyText];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 bodyText];
                    r29 = r29;
                    [r0 retain];
                    [r23 setObject:r2 forKey:r3];
                    [r24 release];
            }
            r0 = [r19 callToAction];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 callToAction];
                    r29 = r29;
                    [r0 retain];
                    [r23 setObject:r2 forKey:r3];
                    [r24 release];
            }
            r0 = [r19 advertiserName];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 advertiserName];
                    r29 = r29;
                    [r0 retain];
                    [r23 setObject:r2 forKey:r3];
                    [r25 release];
            }
            [r23 setObject:r2 forKey:r3];
            objc_msgSend(r23, r24);
            r0 = [r19 placementID];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r24 = @selector(setObject:forKey:);
                    r0 = [r19 placementID];
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r23, r24);
                    [r25 release];
            }
            r0 = [r19 socialContext];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r24 = @selector(setObject:forKey:);
                    r0 = [r19 socialContext];
                    r29 = r29;
                    [r0 retain];
                    objc_msgSend(r23, r24);
                    [r25 release];
            }
            r22 = @selector(init);
            r24 = *(r21 + 0x8);
            *(r21 + 0x8) = r23;
            r23 = [r23 retain];
            [r24 release];
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r22);
            r8 = *(r21 + 0x20);
            *(r21 + 0x20) = r0;
            [r8 release];
            [*(r21 + 0x20) setNativeAd:r19];
            r22 = [[UIColor clearColor] retain];
            [*(r21 + 0x20) setBackgroundColor:r22];
            [r23 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)privacyInformationIconView {
    r0 = [self adOptionsView];
    return r0;
}

-(void *)mainMediaView {
    r0 = [self mediaView];
    return r0;
}

-(void *)iconMediaView {
    r0 = [self iconView];
    return r0;
}

-(void)nativeAdWillLogImpression:(void *)arg2 {
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
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(nativeAdWillLogImpression:)];
    [r0 release];
    if (r25 != 0x0) {
            r27 = [NSStringFromClass([r19 class]) retain];
            r28 = [[MPLogEvent adShowSuccessForAdapter:r27] retain];
            r0 = [r19 fbNativeAd];
            r0 = [r0 retain];
            r21 = [[r0 placementID] retain];
            [MPLogging logEvent:r28 source:r21 fromClass:[r19 class]];
            [r21 release];
            [r0 release];
            [r28 release];
            [r27 release];
            r23 = [NSStringFromClass([r19 class]) retain];
            r20 = [[MPLogEvent adWillAppearForAdapter:r23] retain];
            r0 = [r19 fbNativeAd];
            r0 = [r0 retain];
            r24 = [[r0 placementID] retain];
            [MPLogging logEvent:r20 source:r24 fromClass:[r19 class]];
            [r24 release];
            [r0 release];
            [r20 release];
            [r23 release];
            r0 = [r19 delegate];
            r0 = [r0 retain];
            r20 = r0;
            [r0 nativeAdWillLogImpression:r19];
    }
    else {
            r20 = [[NSString stringWithFormat:@"Delegate does not implement impression tracking callback. Impressions likely not being tracked."] retain];
            r21 = [[MPLogEvent eventWithMessage:r20 level:0x1e] retain];
            [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
            [r21 release];
    }
    [r20 release];
    return;
}

-(void *)properties {
    r0 = *(self + 0x8);
    return r0;
}

-(void)nativeAdDidFinishHandlingClick:(void *)arg2 {
    r21 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adDidDismissModalForAdapter:r21] retain];
    r0 = [self fbNativeAd];
    r0 = [r0 retain];
    r25 = [[r0 placementID] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[self class]];
    [r25 release];
    [r0 release];
    [r22 release];
    [r21 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 nativeAdDidDismissModalForAdapter:self];
    [r0 release];
    return;
}

-(void)nativeAdDidClick:(void *)arg2 {
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
    r19 = self;
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(nativeAdDidClick:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 class];
            r0 = NSStringFromClass(r0);
            r0 = [r0 retain];
            var_60 = r0;
            [[MPLogEvent adTappedForAdapter:r0] retain];
            r0 = [r19 fbNativeAd];
            r0 = [r0 retain];
            [[r0 placementID] retain];
            [r19 class];
            [MPLogging logEvent:r2 source:r3 fromClass:r4];
            [r25 release];
            [r20 release];
            [r28 release];
            [var_60 release];
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 nativeAdDidClick:r19];
            [r0 release];
    }
    else {
            r0 = [MPLogEvent eventWithMessage:[[NSString stringWithFormat:@"Delegate does not implement click tracking callback. Clicks likely not being tracked."] retain] level:0x1e];
            r29 = r29;
            [r0 retain];
            [r19 class];
            [MPLogging logEvent:r2 source:r3 fromClass:r4];
            [r23 release];
            [r20 release];
    }
    [[MPLogEvent adWillPresentModalForAdapter:[NSStringFromClass([r19 class]) retain]] retain];
    r0 = [r19 fbNativeAd];
    r0 = [r0 retain];
    [[r0 placementID] retain];
    [r19 class];
    [MPLogging logEvent:r2 source:r3 fromClass:r4];
    [r26 release];
    [r23 release];
    [r20 release];
    [r24 release];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    [r0 nativeAdWillPresentModalForAdapter:r19];
    [r0 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x10);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x10, arg2);
    return;
}

-(void *)fbNativeAd {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)adOptionsView {
    r0 = *(self + 0x20);
    return r0;
}

-(void *)mediaView {
    r0 = *(self + 0x28);
    return r0;
}

-(void *)iconView {
    r0 = *(self + 0x30);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_destroyWeak(self + 0x10);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end