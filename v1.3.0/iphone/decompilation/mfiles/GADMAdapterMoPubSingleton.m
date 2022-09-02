@implementation GADMAdapterMoPubSingleton

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dc9a0 != -0x1) {
            dispatch_once(0x1011dc9a0, &var_28);
    }
    r0 = *0x1011dc998;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [[NSMapTable mapTableWithKeyOptions:0x0 valueOptions:0x5] retain];
            [r19 setAdapterDelegates:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)initializeMoPubSDKWithAdUnitID:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [MoPub sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isSdkInitialized];
    [r0 release];
    if (r23 != 0x0) {
            (*(r20 + 0x10))(r20);
    }
    else {
            r22 = [[MPMoPubConfiguration alloc] initWithAdUnitIdForAppInitialization:r19];
            r21 = [[MoPub sharedInstance] retain];
            var_38 = [r20 retain];
            [r21 initializeSdkWithConfiguration:r22 completion:&var_58];
            [r21 release];
            [var_38 release];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)addDelegate:(void *)arg2 forAdUnitID:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self adapterDelegates];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = [self adapterDelegates];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r22 release];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)removeDelegateForAdUnitID:(void *)arg2 {
    [arg2 retain];
    r0 = [self adapterDelegates];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = [self adapterDelegates];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void *)getDelegateForAdUnitID:(void *)arg2 {
    [arg2 retain];
    r0 = [self adapterDelegates];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = [self adapterDelegates];
    r0 = [r0 retain];
    [[r0 objectForKey:r2] retain];
    [r0 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)getKeywords:(bool)arg2 forAdConfig:(void *)arg3 {
    r31 = r31 - 0x50;
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
    r0 = [NSString stringWithFormat:@"%@"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (arg2 == 0x0) goto loc_1009f036c;

loc_1009f0308:
    r0 = [MoPub sharedInstance];
    r0 = [r0 retain];
    r23 = [r0 canCollectPersonalInfo];
    [r0 release];
    if (r23 == 0x0) goto loc_1009f039c;

loc_1009f0344:
    r0 = [r21 keywordsContainUserData:r19];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = @"";
            }
            else {
                    r0 = r20;
            }
    }
    goto loc_1009f0390;

loc_1009f0390:
    r21 = [r0 retain];
    goto loc_1009f03ac;

loc_1009f03ac:
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_1009f039c:
    r21 = @"";
    [r21 retain];
    goto loc_1009f03ac;

loc_1009f036c:
    r0 = [r21 keywordsContainUserData:r19];
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = r20;
            }
            else {
                    r0 = @"";
            }
    }
    goto loc_1009f0390;
}

-(void *)requestRewardedAdForAdUnitID:(void *)arg2 adConfig:(void *)arg3 delegate:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    [MPRewardedVideo setDelegate:r22 forAdUnitId:r19];
    r0 = [r22 getDelegateForAdUnitID:r19];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r23 = [[NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_78 count:0x2] retain];
            r22 = [[NSError errorWithDomain:@"com.mopub.mobileads.mopubadapter" code:0x0 userInfo:r23] retain];
            [r23 release];
    }
    else {
            [r22 addDelegate:r21 forAdUnitID:r19];
            r23 = [CLLocation alloc];
            [r20 userLatitude];
            [r20 userLongitude];
            r23 = [r23 initWithLatitude:r21 longitude:r19];
            r24 = @class(MPRewardedVideo);
            r26 = [[r22 getKeywords:0x0 forAdConfig:r20] retain];
            r22 = [[r22 getKeywords:0x1 forAdConfig:r20] retain];
            r0 = [NSArray arrayWithObjects:&stack[-144] count:0x0];
            r25 = [r0 retain];
            [r24 loadRewardedVideoAdWithAdUnitID:r19 keywords:r26 userDataKeywords:r22 location:r23 mediationSettings:r25];
            [r25 release];
            [r22 release];
            [r26 release];
            [r23 release];
            r22 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)keywordsContainUserData:(void *)arg2 {
    r0 = [arg2 hasUserLocation];
    return r0;
}

-(void)rewardedVideoAdDidLoadForAdUnitID:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[self getDelegateForAdUnitID:r19] retain];
    if (r20 != 0x0) {
            [r20 rewardedVideoAdDidLoadForAdUnitID:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoAdDidFailToLoadForAdUnitID:(void *)arg2 error:(void *)arg3 {
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
    r22 = [[r21 getDelegateForAdUnitID:r19] retain];
    if (r22 != 0x0) {
            [r21 removeDelegateForAdUnitID:r19];
            [r22 rewardedVideoAdDidFailToLoadForAdUnitID:r19 error:r20];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoAdWillAppearForAdUnitID:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[self getDelegateForAdUnitID:r19] retain];
    if (r20 != 0x0) {
            [r20 rewardedVideoAdWillAppearForAdUnitID:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoAdDidAppearForAdUnitID:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[self getDelegateForAdUnitID:r19] retain];
    if (r20 != 0x0) {
            [r20 rewardedVideoAdDidAppearForAdUnitID:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoAdWillDisappearForAdUnitID:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[self getDelegateForAdUnitID:r19] retain];
    if (r20 != 0x0) {
            [r20 rewardedVideoAdWillDisappearForAdUnitID:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoAdDidDisappearForAdUnitID:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [[r20 getDelegateForAdUnitID:r19] retain];
    if (r21 != 0x0) {
            [r20 removeDelegateForAdUnitID:r19];
            [r21 rewardedVideoAdDidDisappearForAdUnitID:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoAdDidExpireForAdUnitID:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [[r20 getDelegateForAdUnitID:r19] retain];
    if (r21 != 0x0) {
            [r20 removeDelegateForAdUnitID:r19];
            [r21 rewardedVideoAdDidExpireForAdUnitID:r19];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)rewardedVideoAdDidReceiveTapEventForAdUnitID:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[self getDelegateForAdUnitID:r19] retain];
    if (r20 != 0x0) {
            [r20 rewardedVideoAdDidReceiveTapEventForAdUnitID:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoWillLeaveApplicationForAdUnitID:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[self getDelegateForAdUnitID:r19] retain];
    if (r20 != 0x0) {
            [r20 rewardedVideoAdWillLeaveApplicationForAdUnitID:r19];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)rewardedVideoAdShouldRewardForAdUnitID:(void *)arg2 reward:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[self getDelegateForAdUnitID:r19] retain];
    if (r21 != 0x0) {
            [r21 rewardedVideoAdShouldRewardForAdUnitID:r19 reward:r20];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)adapterDelegates {
    r0 = self->_adapterDelegates;
    return r0;
}

-(void)setAdapterDelegates:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adapterDelegates, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adapterDelegates, 0x0);
    return;
}

@end