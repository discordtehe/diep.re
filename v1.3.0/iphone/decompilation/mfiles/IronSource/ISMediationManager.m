@implementation ISMediationManager

+(void *)sharedManager {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dc958 != -0x1) {
            dispatch_once(0x1011dc958, &var_28);
    }
    r0 = *0x1011dc950;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r22 = [[NSMapTable mapTableWithKeyOptions:0x0 valueOptions:0x5] retain];
            [r19 setRewardedAdapterDelegates:r22];
            [r22 release];
            r21 = [[NSMapTable mapTableWithKeyOptions:0x0 valueOptions:0x5] retain];
            [r19 setInterstitialAdapterDelegates:r21];
            [r21 release];
            r20 = objc_msgSend([NSMutableDictionary alloc], r20);
            [r19 setInitializedAppKeys:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)addRewardedDelegate:(void *)arg2 forInstanceID:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self rewardedAdapterDelegates];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = [self rewardedAdapterDelegates];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r22 release];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)initIronSourceSDKWithAppKey:(void *)arg2 forAdUnits:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 initializedAppKeys];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:r19];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r24 release];
    if (r23 == 0x0) {
            r23 = [[NSSet alloc] init];
    }
    if (([r20 isSubsetOfSet:r23] & 0x1) == 0x0) {
            r24 = [[r23 setByAddingObjectsFromSet:r20] retain];
            [IronSource setMediationType:@"AdMob"];
            r25 = @class(IronSource);
            r26 = [[r24 allObjects] retain];
            [r25 initISDemandOnly:r19 adUnits:r26];
            [r26 release];
            r0 = [r21 initializedAppKeys];
            r0 = [r0 retain];
            [r0 setObject:r20 forKeyedSubscript:r19];
            [r0 release];
            [r24 release];
    }
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)removeRewardedDelegateForInstanceID:(void *)arg2 {
    [arg2 retain];
    r0 = [self rewardedAdapterDelegates];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = [self rewardedAdapterDelegates];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void *)getRewardedDelegateForInstanceID:(void *)arg2 {
    [arg2 retain];
    r0 = [self rewardedAdapterDelegates];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = [self rewardedAdapterDelegates];
    r0 = [r0 retain];
    [[r0 objectForKey:r2] retain];
    [r0 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)removeInterstitialDelegateForInstanceID:(void *)arg2 {
    [arg2 retain];
    r0 = [self interstitialAdapterDelegates];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = [self interstitialAdapterDelegates];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)addInterstitialDelegate:(void *)arg2 forInstanceID:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self interstitialAdapterDelegates];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = [self interstitialAdapterDelegates];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r22 release];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)getInterstitialDelegateForInstanceID:(void *)arg2 {
    [arg2 retain];
    r0 = [self interstitialAdapterDelegates];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = [self interstitialAdapterDelegates];
    r0 = [r0 retain];
    [[r0 objectForKey:r2] retain];
    [r0 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)presentRewardedAdFromViewController:(void *)arg2 delegate:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 getInstanceID];
    r23 = r0;
    r29 = &saved_fp;
    r21 = [r0 retain];
    [IronSource setISDemandOnlyRewardedVideoDelegate:r22];
    if ([IronSource hasISDemandOnlyRewardedVideo:r21] != 0x0) {
            [IronSource showISDemandOnlyRewardedVideo:r19 instanceId:r21];
            objc_storeStrong((int64_t *)&r22->_currentShowingRewardedInstanceID, r23);
    }
    else {
            r23 = [[GADMAdapterIronSourceUtils createErrorWith:@"No Ad to show for this instance ID" andReason:0x0 andSuggestion:0x0] retain];
            [r22 removeRewardedDelegateForInstanceID:r21];
            [r20 rewardedVideoDidFailToShowWithError:r23 instanceId:r21];
            [r23 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)requestRewardedAdWithDelegate:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [[r0 getInstanceID] retain];
    [IronSource setISDemandOnlyRewardedVideoDelegate:r22];
    r0 = [r22 getRewardedDelegateForInstanceID:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r22 = [[GADMAdapterIronSourceUtils createErrorWith:@"A request is already in processing for same instance ID" andReason:@"Can't make a new request for the same instance ID" andSuggestion:0x0] retain];
            [r19 didFailToLoadAdWithError:r22];
            [r22 release];
    }
    else {
            [r22 addRewardedDelegate:r19 forInstanceID:r20];
            if ([IronSource hasISDemandOnlyRewardedVideo:r20] != 0x0) {
                    [r19 rewardedVideoHasChangedAvailability:0x1 instanceId:r20];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)requestInterstitialAdWithDelegate:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [[r0 getInstanceID] retain];
    [IronSource setISDemandOnlyInterstitialDelegate:r22];
    r0 = [r22 getInterstitialDelegateForInstanceID:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r22 = [[GADMAdapterIronSourceUtils createErrorWith:@"A request is already in processing for same instance ID" andReason:@"Can't make a new request for the same instance ID" andSuggestion:0x0] retain];
            [r19 didFailToLoadAdWithError:r22];
            [r22 release];
    }
    else {
            [r22 addInterstitialDelegate:r19 forInstanceID:r20];
            if ([IronSource hasISDemandOnlyInterstitial:r20] != 0x0) {
                    r1 = @selector(interstitialDidLoad:);
                    r0 = r19;
            }
            else {
                    r0 = @class(IronSource);
                    r1 = @selector(loadISDemandOnlyInterstitial:);
            }
            objc_msgSend(r0, r1);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)presentInterstitialAdFromViewController:(void *)arg2 delegate:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 getInstanceID];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [IronSource setISDemandOnlyInterstitialDelegate:r22];
    if ([IronSource hasISDemandOnlyInterstitial:r21] != 0x0) {
            [IronSource showISDemandOnlyInterstitial:r19 instanceId:r21];
    }
    else {
            r23 = [[GADMAdapterIronSourceUtils createErrorWith:@"No Ad to show for this instance ID" andReason:0x0 andSuggestion:0x0] retain];
            [r22 removeInterstitialDelegateForInstanceID:r21];
            [r20 interstitialDidFailToShowWithError:r23 instanceId:r21];
            [r23 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)didReceiveRewardForPlacement:(void *)arg2 instanceId:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[self getRewardedDelegateForInstanceID:r20] retain];
    if (r21 != 0x0) {
            [r21 didReceiveRewardForPlacement:r19 instanceId:r20];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoHasChangedAvailability:(bool)arg2 instanceId:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    if (([r21->_currentShowingRewardedInstanceID isEqualToString:r2] & 0x1) == 0x0) {
            r22 = [[r21 getRewardedDelegateForInstanceID:r19] retain];
            if ((r20 & 0x1) == 0x0) {
                    [r21 removeRewardedDelegateForInstanceID:r19];
            }
            if (r22 != 0x0) {
                    [r22 rewardedVideoHasChangedAvailability:r20 instanceId:r19];
            }
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)rewardedVideoDidFailToShowWithError:(void *)arg2 instanceId:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [[r21 getRewardedDelegateForInstanceID:r20] retain];
    if (r22 != 0x0) {
            [r22 rewardedVideoDidFailToShowWithError:r19 instanceId:r20];
            [r21 removeRewardedDelegateForInstanceID:r20];
            objc_storeStrong((int64_t *)&r21->_currentShowingRewardedInstanceID, @"");
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoDidClose:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [[r20 getRewardedDelegateForInstanceID:r19] retain];
    if (r21 != 0x0) {
            [r20 removeRewardedDelegateForInstanceID:r19];
            [r21 rewardedVideoDidClose:r19];
            objc_storeStrong((int64_t *)&r20->_currentShowingRewardedInstanceID, @"");
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoDidOpen:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[self getRewardedDelegateForInstanceID:r19] retain];
    if (r20 != 0x0) {
            [r20 rewardedVideoDidOpen:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialDidFailToLoadWithError:(void *)arg2 instanceId:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [[r21 getInterstitialDelegateForInstanceID:r20] retain];
    if (r22 != 0x0) {
            [r21 removeInterstitialDelegateForInstanceID:r20];
            [r22 interstitialDidFailToLoadWithError:r19 instanceId:r20];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)didClickRewardedVideo:(void *)arg2 instanceId:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[self getRewardedDelegateForInstanceID:r20] retain];
    if (r21 != 0x0) {
            [r21 didClickRewardedVideo:r19 instanceId:r20];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialDidLoad:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[self getInterstitialDelegateForInstanceID:r19] retain];
    if (r20 != 0x0) {
            [r20 interstitialDidLoad:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialDidOpen:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[self getInterstitialDelegateForInstanceID:r19] retain];
    if (r20 != 0x0) {
            [r20 interstitialDidOpen:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialDidClose:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [[r20 getInterstitialDelegateForInstanceID:r19] retain];
    if (r21 != 0x0) {
            [r20 removeInterstitialDelegateForInstanceID:r19];
            [r21 interstitialDidClose:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)interstitialDidShow:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[self getInterstitialDelegateForInstanceID:r19] retain];
    if (r20 != 0x0) {
            [r20 interstitialDidShow:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)interstitialDidFailToShowWithError:(void *)arg2 instanceId:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [[r21 getInterstitialDelegateForInstanceID:r20] retain];
    if (r22 != 0x0) {
            [r21 removeInterstitialDelegateForInstanceID:r20];
            [r22 interstitialDidFailToShowWithError:r19 instanceId:r20];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)rewardedAdapterDelegates {
    r0 = self->_rewardedAdapterDelegates;
    return r0;
}

-(void)didClickInterstitial:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[self getInterstitialDelegateForInstanceID:r19] retain];
    if (r20 != 0x0) {
            [r20 didClickInterstitial:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setInterstitialAdapterDelegates:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitialAdapterDelegates, arg2);
    return;
}

-(void)setRewardedAdapterDelegates:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rewardedAdapterDelegates, arg2);
    return;
}

-(void *)interstitialAdapterDelegates {
    r0 = self->_interstitialAdapterDelegates;
    return r0;
}

-(void *)initializedAppKeys {
    r0 = self->_initializedAppKeys;
    return r0;
}

-(void)setInitializedAppKeys:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_initializedAppKeys, arg2);
    return;
}

-(void *)currentShowingRewardedInstanceID {
    r0 = self->_currentShowingRewardedInstanceID;
    return r0;
}

-(void)setCurrentShowingRewardedInstanceID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currentShowingRewardedInstanceID, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_currentShowingRewardedInstanceID, 0x0);
    objc_storeStrong((int64_t *)&self->_initializedAppKeys, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialAdapterDelegates, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedAdapterDelegates, 0x0);
    return;
}

@end