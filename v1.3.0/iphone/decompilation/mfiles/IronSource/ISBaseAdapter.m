@implementation ISBaseAdapter

-(void)setRewardedVideoActiveDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_rewardedVideoActiveDelegate, arg2);
    return;
}

-(void *)initAdapter:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r22 = arg2;
    r19 = [r22 retain];
    r0 = [[&var_50 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = NSClassFromString(@"ISAdapterLoggerProxy");
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_logger));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = NSClassFromString(@"ISAdapterDispatcherProxy");
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_dispatcher));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r20->_adapterName, r22);
            r0 = @class(NSOperationQueue);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rvDelegateQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSHashTable);
            r0 = [r0 hashTableWithOptions:0x5];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedVideoDelegates));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSMapTable);
            r0 = [r0 mapTableWithKeyOptions:0x0 valueOptions:0x5];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedVideoDelegateMapHolders));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSOperationQueue);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_isDelegateQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSHashTable);
            r0 = [r0 hashTableWithOptions:0x5];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialDelegates));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSMapTable);
            r0 = [r0 mapTableWithKeyOptions:0x0 valueOptions:0x5];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialDelegateMapHolders));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSOperationQueue);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_bnDelegateQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSHashTable);
            r0 = [r0 hashTableWithOptions:0x5];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_bannerDelegates));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSMapTable);
            r0 = [r0 mapTableWithKeyOptions:0x0 valueOptions:0x5];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_bannerDelegateMapHolders));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)addRewardedVideoDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedVideoDelegates));
    r0 = *(r21 + r22);
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    if (([*(r21 + r22) containsObject:r2] & 0x1) == 0x0) {
            [*(r21 + r22) addObject:r2];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)removeRewardedVideoDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedVideoDelegates));
    r0 = *(r21 + r22);
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    if ([*(r21 + r22) containsObject:r2] != 0x0) {
            [*(r21 + r22) removeObject:r19];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)addRewardedVideoDelegate:(void *)arg2 forPlacement:(void *)arg3 {
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
    r20 = [arg3 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_rewardedVideoDelegateMapHolders));
    r0 = *(r22 + r23);
    r0 = [r0 retain];
    r21 = r0;
    objc_sync_enter(r0);
    if (r19 != 0x0 && [r20 length] != 0x0) {
            [*(r22 + r23) setObject:r2 forKey:r3];
    }
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)dynamicUserId {
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r20 = [[r0 dynamicUserId] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)getDelegateForPlacement:(void *)arg2 {
    [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_rewardedVideoDelegateMapHolders)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [[*(self + r22) objectForKey:r2] retain];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)notifyRewardedVideoAvialbilty:(bool)arg2 {
    r31 = r31 - 0x130;
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
    r20 = arg2;
    r21 = self;
    r0 = r21->_rewardedVideoDelegates;
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r21 rewardedVideoDelegates];
    r0 = [r0 retain];
    r22 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            [r21 notifyRewardedVideoAvialbilty:r2 forDelegate:r3];
                            r28 = r28 + 0x1;
                    } while (r28 < r24);
                    r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyRewardedVideoAvialbilty:(bool)arg2 forDelegate:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:@selector(adapterRewardedVideoHasChangedAvailability:)] != 0x0) {
            var_30 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_50];
            r21 = [r0 retain];
            [r20->_rvDelegateQueue addOperation:r21];
            [r21 release];
            [var_30 release];
    }
    [r19 release];
    return;
}

-(void)notifyRewardedVideoDidFailToShowWithError:(void *)arg2 forDelegate:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0 && [r20 respondsToSelector:@selector(adapterRewardedVideoDidFailToShowWithError:)] != 0x0) {
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_50];
            r22 = [r0 retain];
            [r21->_rvDelegateQueue addOperation:r22];
            [r22 release];
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)notifyRewardedVideoReceiveRewardForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_rvDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyRewardedVideoDidOpenForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_rvDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyRewardedVideoDidCloseForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_rvDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyRewardedVideoDidStartForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_rvDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyRewardedVideoDidEndForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_rvDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyRewardedVideoDidClickForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_rvDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyRewardedVideoDidBecomeVisibleForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_rvDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)setInterstititalActiveDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_interstitialActiveDelegate, arg2);
    return;
}

-(void)removeInterstititalDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialDelegates));
    r0 = *(r21 + r22);
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    if ([*(r21 + r22) containsObject:r2] != 0x0) {
            [*(r21 + r22) removeObject:r19];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)addInterstititalDelegate:(void *)arg2 forPlacement:(void *)arg3 {
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
    r20 = [arg3 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialDelegateMapHolders));
    r0 = *(r22 + r23);
    r0 = [r0 retain];
    r21 = r0;
    objc_sync_enter(r0);
    if (r19 != 0x0 && [r20 length] != 0x0) {
            [*(r22 + r23) setObject:r2 forKey:r3];
    }
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)addInterstititalDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_interstitialDelegates));
    r0 = *(r21 + r22);
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    if (([*(r21 + r22) containsObject:r2] & 0x1) == 0x0) {
            [*(r21 + r22) addObject:r2];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)notifyInterstitialInitSuccess {
    r31 = r31 - 0x130;
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
    r20 = self;
    r0 = *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_interstitialDelegates)));
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = *(r20 + r21);
    r0 = [r0 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            [r20 notifyInterstitialInitSuccessForDelegate:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyInterstitialInitFailedWithError:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r20 = [arg2 retain];
    r0 = *(r21 + sign_extend_64(*(int32_t *)ivar_offset(_interstitialDelegates)));
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = *(r21 + r22);
    r0 = [r0 retain];
    r22 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            [r21 notifyInterstitialInitFailedWithError:r2 forDelegate:r3];
                            r28 = r28 + 0x1;
                    } while (r28 < r24);
                    r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyInterstitialDidLoad {
    r31 = r31 - 0x130;
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
    r20 = self;
    r0 = *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_interstitialDelegates)));
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = *(r20 + r21);
    r0 = [r0 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            [r20 notifyInterstitialDidLoadForDelegate:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyInterstitialDidLoadFailedWithError:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r20 = [arg2 retain];
    r0 = *(r21 + sign_extend_64(*(int32_t *)ivar_offset(_interstitialDelegates)));
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = *(r21 + r22);
    r0 = [r0 retain];
    r22 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            [r21 notifyInterstitialDidLoadFailedWithError:r2 forDelegate:r3];
                            r28 = r28 + 0x1;
                    } while (r28 < r24);
                    r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyInterstitialInitFailedWithError:(void *)arg2 forDelegate:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0 && [r20 respondsToSelector:@selector(adapterInterstitialInitFailedWithError:)] != 0x0) {
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_50];
            r22 = [r0 retain];
            [r21->_isDelegateQueue addOperation:r22];
            [r22 release];
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)notifyInterstitialInitSuccessForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_isDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyInterstitialDidLoadForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_isDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyInterstitialDidLoadFailedWithError:(void *)arg2 forDelegate:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0 && [r20 respondsToSelector:@selector(adapterInterstitialDidFailToLoadWithError:)] != 0x0) {
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_50];
            r22 = [r0 retain];
            [r21->_isDelegateQueue addOperation:r22];
            [r22 release];
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)notifyInterstitialDidOpenForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_isDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyInterstitialDidCloseForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_isDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyInterstitialDidShowForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_isDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyInterstitialDidFailToShowWithError:(void *)arg2 forDelegate:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0 && [r20 respondsToSelector:@selector(adapterInterstitialDidFailToShowWithError:)] != 0x0) {
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_50];
            r22 = [r0 retain];
            [r21->_isDelegateQueue addOperation:r22];
            [r22 release];
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)notifyInterstitialDidClickForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_isDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyInterstitialDidReceiveRewardForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_isDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyInterstitialDidBecomeVisibleForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_isDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)setBannerActiveDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_bannerActiveDelegate, arg2);
    return;
}

-(void)addBannerDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_bannerDelegates));
    r0 = *(r21 + r22);
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    if (([*(r21 + r22) containsObject:r2] & 0x1) == 0x0) {
            [*(r21 + r22) addObject:r2];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)removeBannerDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_bannerDelegates));
    r0 = *(r21 + r22);
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    if ([*(r21 + r22) containsObject:r2] != 0x0) {
            [*(r21 + r22) removeObject:r19];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)addBannerDelegate:(void *)arg2 forPlacement:(void *)arg3 {
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
    r20 = [arg3 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_bannerDelegateMapHolders));
    r0 = *(r22 + r23);
    r0 = [r0 retain];
    r21 = r0;
    objc_sync_enter(r0);
    if (r19 != 0x0 && [r20 length] != 0x0) {
            [*(r22 + r23) setObject:r2 forKey:r3];
    }
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)notifyBannerInitSuccess {
    r31 = r31 - 0x130;
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
    r20 = self;
    r0 = *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_bannerDelegates)));
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = *(r20 + r21);
    r0 = [r0 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            [r20 notifyBannerInitSuccessForDelegate:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyBannerInitSuccessForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_bnDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyBannerInitFailedWithError:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r20 = [arg2 retain];
    r0 = *(r21 + sign_extend_64(*(int32_t *)ivar_offset(_bannerDelegates)));
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = *(r21 + r22);
    r0 = [r0 retain];
    r22 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            [r21 notifyBannerInitFailedWithError:r2 forDelegate:r3];
                            r28 = r28 + 0x1;
                    } while (r28 < r24);
                    r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)notifyBannerInitFailedWithError:(void *)arg2 forDelegate:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0 && [r20 respondsToSelector:@selector(adapterBannerInitFailedWithError:)] != 0x0) {
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_50];
            r22 = [r0 retain];
            [r21->_bnDelegateQueue addOperation:r22];
            [r22 release];
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)notifyBannerDidLoad:(void *)arg2 forDelegate:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0 && [r20 respondsToSelector:@selector(adapterBannerDidLoad:)] != 0x0) {
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_50];
            r22 = [r0 retain];
            [r21->_bnDelegateQueue addOperation:r22];
            [r22 release];
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)notifyBannerDidFailToLoadWithError:(void *)arg2 forDelegate:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 != 0x0 && [r20 respondsToSelector:@selector(adapterBannerDidFailToLoadWithError:)] != 0x0) {
            var_30 = [r20 retain];
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_50];
            r22 = [r0 retain];
            [r21->_bnDelegateQueue addOperation:r22];
            [r22 release];
            [var_28 release];
            [var_30 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)notifyBannerDidClickForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_bnDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyBannerWillPresentScreenForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_bnDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyBannerDidDismissScreenForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_bnDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)notifyBannerWillLeaveApplicationForDelegate:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = [NSBlockOperation blockOperationWithBlock:&var_48];
            r21 = [r0 retain];
            [r20->_bnDelegateQueue addOperation:r21];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void *)errorForMissingCredentialFieldWithName:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r22 = [arg2 retain];
    r21 = [[self adapterName] retain];
    r19 = [[NSString stringWithFormat:@"Mediation - %@ is empty or not set for %@"] retain];
    [r22 release];
    [r21 release];
    r20 = self->_adapterName;
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r20 = [[NSError errorWithDomain:r20 code:0x1fa userInfo:r22] retain];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isConfigValueValid:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)topMostController {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 windows];
    r0 = [r0 retain];
    r19 = [[r0 firstObject] retain];
    [r0 release];
    [r20 release];
    r0 = [r19 rootViewController];
    r0 = [r0 retain];
    r20 = r0;
    r22 = @selector(presentedViewController);
    r0 = objc_msgSend(r0, r22);
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            do {
                    r23 = r20;
                    r20 = [objc_msgSend(r23, r22) retain];
                    [r23 release];
                    r0 = [r20 presentedViewController];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    r22 = @selector(presentedViewController);
            } while (r0 != 0x0);
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setMediationState:(long long)arg2 forAdUnit:(void *)arg3 {
    return;
}

-(void *)version {
    return 0x0;
}

-(void)setConsent:(bool)arg2 {
    return;
}

-(void *)sdkVersion {
    return 0x0;
}

-(void *)systemFrameworks {
    return 0x0;
}

-(bool)didFinishLoadingBanner {
    r0 = *(int8_t *)(int64_t *)&self->_didFinishLoadingBanner;
    return r0;
}

-(void *)sdkName {
    return 0x0;
}

-(void)setDidFinishLoadingBanner:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didFinishLoadingBanner = arg2;
    return;
}

-(bool)interstitialReady {
    r0 = *(int8_t *)(int64_t *)&self->_interstitialReady;
    return r0;
}

-(void *)adapterName {
    r0 = self->_adapterName;
    return r0;
}

-(long long)usersAge {
    r0 = self->_usersAge;
    return r0;
}

-(void)setInterstitialReady:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_interstitialReady = arg2;
    return;
}

-(void)setAdapterName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adapterName, arg2);
    return;
}

-(void)setUsersAge:(long long)arg2 {
    self->_usersAge = arg2;
    return;
}

-(void)setUsersGender:(long long)arg2 {
    self->_usersGender = arg2;
    return;
}

-(long long)usersGender {
    r0 = self->_usersGender;
    return r0;
}

-(bool)adaptersDebug {
    r0 = *(int8_t *)(int64_t *)&self->_adaptersDebug;
    return r0;
}

-(void)setAdaptersDebug:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adaptersDebug = arg2;
    return;
}

-(void *)pluginType {
    r0 = self->_pluginType;
    return r0;
}

-(void)setPluginType:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pluginType, arg2);
    return;
}

-(void *)pluginFrameworkVersion {
    r0 = self->_pluginFrameworkVersion;
    return r0;
}

-(void)setPluginFrameworkVersion:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pluginFrameworkVersion, arg2);
    return;
}

-(void *)userId {
    r0 = self->_userId;
    return r0;
}

-(void)setUserId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_userId, arg2);
    return;
}

-(void *)logger {
    r0 = self->_logger;
    return r0;
}

-(void)setLogger:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_logger, arg2);
    return;
}

-(void *)dispatcher {
    r0 = self->_dispatcher;
    return r0;
}

-(void *)bannerActiveDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_bannerActiveDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDispatcher:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dispatcher, arg2);
    return;
}

-(void *)bnDelegateQueue {
    r0 = self->_bnDelegateQueue;
    return r0;
}

-(void *)bannerDelegates {
    r0 = self->_bannerDelegates;
    return r0;
}

-(void *)bannerDelegateMapHolders {
    r0 = self->_bannerDelegateMapHolders;
    return r0;
}

-(void *)interstitialActiveDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_interstitialActiveDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)isDelegateQueue {
    r0 = self->_isDelegateQueue;
    return r0;
}

-(void *)interstitialDelegates {
    r0 = self->_interstitialDelegates;
    return r0;
}

-(void *)rewardedVideoActiveDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_rewardedVideoActiveDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)interstitialDelegateMapHolders {
    r0 = self->_interstitialDelegateMapHolders;
    return r0;
}

-(void *)rvDelegateQueue {
    r0 = self->_rvDelegateQueue;
    return r0;
}

-(void *)rewardedVideoDelegates {
    r0 = self->_rewardedVideoDelegates;
    return r0;
}

-(void *)rewardedVideoDelegateMapHolders {
    r0 = self->_rewardedVideoDelegateMapHolders;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rewardedVideoDelegateMapHolders, 0x0);
    objc_storeStrong((int64_t *)&self->_rvDelegateQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_rewardedVideoDelegates, 0x0);
    objc_destroyWeak((int64_t *)&self->_rewardedVideoActiveDelegate);
    objc_storeStrong((int64_t *)&self->_interstitialDelegateMapHolders, 0x0);
    objc_storeStrong((int64_t *)&self->_isDelegateQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_interstitialDelegates, 0x0);
    objc_destroyWeak((int64_t *)&self->_interstitialActiveDelegate);
    objc_storeStrong((int64_t *)&self->_bannerDelegateMapHolders, 0x0);
    objc_storeStrong((int64_t *)&self->_bnDelegateQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_bannerDelegates, 0x0);
    objc_destroyWeak((int64_t *)&self->_bannerActiveDelegate);
    objc_storeStrong((int64_t *)&self->_dispatcher, 0x0);
    objc_storeStrong((int64_t *)&self->_logger, 0x0);
    objc_storeStrong((int64_t *)&self->_userId, 0x0);
    objc_storeStrong((int64_t *)&self->_pluginFrameworkVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_pluginType, 0x0);
    objc_storeStrong((int64_t *)&self->_adapterName, 0x0);
    return;
}

@end