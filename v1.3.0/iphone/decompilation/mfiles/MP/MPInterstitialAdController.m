@implementation MPInterstitialAdController

-(void)dealloc {
    r0 = [self manager];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithAdUnitId:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [objc_alloc() initWithDelegate:r20];
            [r20 setManager:r21];
            [r21 release];
            [r20 setAdUnitId:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)interstitialAdControllerForAdUnitId:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[[self class] sharedInterstitials] retain];
    r0 = [self retain];
    r21 = r0;
    objc_sync_enter(r0);
    r0 = [r20 objectForKeyedSubscript:r19];
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) {
            [r21 class];
            r23 = [objc_alloc() initWithAdUnitId:r19];
            [r20 setObject:r23 forKeyedSubscript:r19];
    }
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(bool)ready {
    r0 = [self manager];
    r0 = [r0 retain];
    r20 = [r0 ready];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)loadAd {
    sub_1004aed94(0x1);
    r19 = [[MPAdTargeting targetingWithCreativeSafeSize:r2] retain];
    r21 = [[self keywords] retain];
    [r19 setKeywords:r21];
    [r21 release];
    r21 = [[self localExtras] retain];
    [r19 setLocalExtras:r21];
    [r21 release];
    r21 = [[self location] retain];
    [r19 setLocation:r21];
    [r21 release];
    r21 = [[self userDataKeywords] retain];
    [r19 setUserDataKeywords:r21];
    [r21 release];
    r21 = [[self manager] retain];
    r20 = [[self adUnitId] retain];
    [r21 loadInterstitialWithAdUnitID:r20 targeting:r19];
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)showFromViewController:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r19 view];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 window];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isKeyWindow];
            [r0 release];
            [r21 release];
            if (r23 == 0x0) {
                    r23 = [[NSString stringWithFormat:@"Attempted to present an interstitial ad in non-key window. The ad may not render properly"] retain];
                    r0 = [MPLogEvent eventWithMessage:r23 level:0x1e];
                    r29 = r29;
                    r22 = [r0 retain];
                    [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
                    [r22 release];
                    [r23 release];
            }
            r0 = [r20 manager];
            r0 = [r0 retain];
            r21 = r0;
            [r0 presentInterstitialFromViewController:r19];
    }
    else {
            r21 = [[NSString stringWithFormat:@"The interstitial could not be shown: a nil view controller was passed to -showFromViewController:."] retain];
            r23 = [[MPLogEvent eventWithMessage:r21 level:0x1e] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
            [r23 release];
    }
    [r21 release];
    [r19 release];
    return;
}

+(void *)sharedInterstitials {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (*0x1011d8318 == 0x0) {
            r0 = [NSMutableDictionary dictionary];
            r0 = [r0 retain];
            r8 = *0x1011d8318;
            *0x1011d8318 = r0;
            [r8 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    r0 = *0x1011d8318;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)interstitialAdController {
    r0 = self;
    return r0;
}

-(void *)interstitialDelegate {
    r0 = [self delegate];
    return r0;
}

-(void)managerDidLoadInterstitial:(void *)arg2 {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(interstitialDidLoadAd:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialDidLoadAd:r19];
            [r0 release];
    }
    return;
}

-(void)manager:(void *)arg2 didFailToLoadInterstitialWithError:(void *)arg3 {
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
    r19 = [arg3 retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(interstitialDidFailToLoadAd:withError:), r3];
    [r0 release];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r25 == 0x0) goto loc_100494784;

loc_10049476c:
    [r22 interstitialDidFailToLoadAd:r20 withError:r19];
    goto loc_1004947d0;

loc_1004947d0:
    [r22 release];
    goto loc_1004947d8;

loc_1004947d8:
    [r19 release];
    return;

loc_100494784:
    r24 = @selector(respondsToSelector:);
    r24 = objc_msgSend(r22, r24, @selector(interstitialDidFailToLoadAd:));
    [r22 release];
    if (r24 == 0x0) goto loc_1004947d8;

loc_1004947ac:
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r22 = r0;
    [r0 interstitialDidFailToLoadAd:r2];
    goto loc_1004947d0;
}

-(void)managerWillPresentInterstitial:(void *)arg2 {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(interstitialWillAppear:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialWillAppear:r19];
            [r0 release];
    }
    return;
}

-(void)managerDidPresentInterstitial:(void *)arg2 {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(interstitialDidAppear:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialDidAppear:r19];
            [r0 release];
    }
    return;
}

-(void)managerWillDismissInterstitial:(void *)arg2 {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(interstitialWillDisappear:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialWillDisappear:r19];
            [r0 release];
    }
    return;
}

-(void)managerDidDismissInterstitial:(void *)arg2 {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(interstitialDidDisappear:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialDidDisappear:r19];
            [r0 release];
    }
    return;
}

-(void)managerDidExpireInterstitial:(void *)arg2 {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(interstitialDidExpire:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialDidExpire:r19];
            [r0 release];
    }
    return;
}

-(void)managerDidReceiveTapEventFromInterstitial:(void *)arg2 {
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
    r0 = [self delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(interstitialDidReceiveTapEvent:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 interstitialDidReceiveTapEvent:r19];
            [r0 release];
    }
    return;
}

-(void)interstitialAdManager:(void *)arg2 didReceiveImpressionEventWithImpressionData:(void *)arg3 {
    r22 = [arg3 retain];
    r21 = [[self adUnitId] retain];
    [MoPub sendImpressionDelegateAndNotificationFromAd:self adUnitID:r21 impressionData:r22];
    [r22 release];
    [r21 release];
    return;
}

+(void *)sharedInterstitialAdControllers {
    r0 = [self class];
    r0 = [r0 sharedInterstitials];
    r0 = [r0 retain];
    r21 = [[r0 allValues] retain];
    r19 = [[NSMutableArray arrayWithArray:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void)removeSharedInterstitialAdController:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r21 = [[[r20 class] sharedInterstitials] retain];
    [[r19 adUnitId] retain];
    [r21 removeObjectForKey:r2];
    [r22 release];
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adUnitId {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setAdUnitId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)keywords {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setKeywords:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)userDataKeywords {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void)setUserDataKeywords:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)location {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(void)setLocation:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)localExtras {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x0);
    return r0;
}

-(void)setLocalExtras:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setManager:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)manager {
    r0 = *(self + 0x38);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_destroyWeak(self + 0x8);
    return;
}

@end