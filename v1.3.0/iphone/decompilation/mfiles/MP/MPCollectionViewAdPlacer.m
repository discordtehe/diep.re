@implementation MPCollectionViewAdPlacer

+(void *)placerWithCollectionView:(void *)arg2 viewController:(void *)arg3 adPositioning:(void *)arg4 rendererConfigurations:(void *)arg5 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r23 = [objc_alloc() initWithCollectionView:r22 viewController:r21 adPositioning:r20 rendererConfigurations:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    [r22 release];
    r0 = [r23 autorelease];
    return r0;
}

+(void *)placerWithCollectionView:(void *)arg2 viewController:(void *)arg3 rendererConfigurations:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r21 = [self class];
    r23 = [[MPServerAdPositioning positioning] retain];
    r21 = [[r21 placerWithCollectionView:r22 viewController:r20 adPositioning:r23 rendererConfigurations:r19] retain];
    [r19 release];
    [r20 release];
    [r22 release];
    [r23 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)dealloc {
    [*(self + 0x30) invalidate];
    [[&var_20 super] dealloc];
    return;
}

-(void)loadAdsForAdUnitID:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self streamAdPlacer];
    r0 = [r0 retain];
    [r0 loadAdsForAdUnitID:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)loadAdsForAdUnitID:(void *)arg2 targeting:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [self streamAdPlacer];
    r0 = [r0 retain];
    [r0 loadAdsForAdUnitID:r21 targeting:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void *)initWithCollectionView:(void *)arg2 viewController:(void *)arg3 adPositioning:(void *)arg4 rendererConfigurations:(void *)arg5 {
    r31 = r31 - 0x140;
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
    r24 = arg2;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [arg5 retain];
    r22 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r26 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r22);
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r26);
                    r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r26 = r0;
            } while (r0 != 0x0);
    }
    r0 = [[&var_130 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r23 + 0x18, r24);
            r0 = [MPStreamAdPlacer placerWithViewController:r20 adPositioning:r21 rendererConfigurations:r22];
            r0 = [r0 retain];
            r8 = *(r23 + 0x10);
            *(r23 + 0x10) = r0;
            [r8 release];
            [*(r23 + 0x10) setDelegate:r23];
            r0 = [MPTimer timerWithTimeInterval:r23 target:@selector(updateVisibleCells) selector:0x1 repeats:**_NSRunLoopCommonModes runLoopMode:r6];
            r0 = [r0 retain];
            r8 = *(r23 + 0x30);
            *(r23 + 0x30) = r0;
            [r8 release];
            [*(r23 + 0x30) scheduleNow];
            objc_storeWeak(r23 + 0x20, [[r19 dataSource] retain]);
            [r25 release];
            objc_storeWeak(r23 + 0x28, [[r19 delegate] retain]);
            [r25 release];
            [r19 setDataSource:r23];
            [r19 setDelegate:r23];
            [*(r23 + 0x18) registerClass:[MPCollectionViewAdPlacerCell class] forCellWithReuseIdentifier:@"MPCollectionViewAdPlacerReuseIdentifier"];
            [r19 mp_setAdPlacer:r23];
    }
    var_60 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)updateVisibleCells {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self collectionView];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 mp_indexPathsForVisibleItems];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if ([r20 count] != 0x0) {
            r0 = [r19 streamAdPlacer];
            r0 = [r0 retain];
            [r0 setVisibleIndexPaths:r20];
            [r0 release];
    }
    [r20 release];
    return;
}

-(void)adPlacer:(void *)arg2 didRemoveAdsAtIndexPaths:(void *)arg3 {
    r20 = [arg3 retain];
    [UIView areAnimationsEnabled];
    [UIView setAnimationsEnabled:0x0];
    r22 = [[self collectionView] retain];
    var_28 = r20;
    r20 = [r20 retain];
    [r22 performBatchUpdates:&var_50 completion:&var_78];
    [r22 release];
    [var_28 release];
    [r20 release];
    return;
}

-(void)adPlacer:(void *)arg2 didLoadAdAtIndexPath:(void *)arg3 {
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
    r21 = self;
    r19 = [arg3 retain];
    r20 = [UIView areAnimationsEnabled];
    r0 = [r21 collectionView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 indexPathsForVisibleItems];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 lastObject];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = r0;
    r8 = &@selector(alloc);
    if (objc_msgSend(r0, *(r8 + 0x568)) != -0x1) {
            r8 = &@selector(alloc);
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    var_58 = **___stack_chk_guard;
    [r25 release];
    [r24 release];
    [r23 release];
    [UIView setAnimationsEnabled:r20 & r8];
    r21 = [[r21 collectionView] retain];
    r0 = [NSArray arrayWithObjects:&var_60 count:0x1];
    r22 = [r0 retain];
    [r21 insertItemsAtIndexPaths:r22];
    [r22 release];
    [r21 release];
    [UIView setAnimationsEnabled:r20];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)nativeAdDidDismissModalForStreamAdPlacer:(void *)arg2 {
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
    r23 = [r0 respondsToSelector:@selector(nativeAdDidDismissModalForCollectionViewAdPlacer:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 nativeAdDidDismissModalForCollectionViewAdPlacer:r19];
            [r0 release];
    }
    return;
}

-(void)nativeAdWillPresentModalForStreamAdPlacer:(void *)arg2 {
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
    r23 = [r0 respondsToSelector:@selector(nativeAdWillPresentModalForCollectionViewAdPlacer:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 nativeAdWillPresentModalForCollectionViewAdPlacer:r19];
            [r0 release];
    }
    return;
}

-(void)nativeAdWillLeaveApplicationFromStreamAdPlacer:(void *)arg2 {
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
    r23 = [r0 respondsToSelector:@selector(nativeAdWillLeaveApplicationFromCollectionViewAdPlacer:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 nativeAdWillLeaveApplicationFromCollectionViewAdPlacer:r19];
            [r0 release];
    }
    return;
}

-(void)mopubAdPlacer:(void *)arg2 didTrackImpressionForAd:(void *)arg3 withImpressionData:(void *)arg4 {
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
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(mopubAdPlacer:didTrackImpressionForAd:withImpressionData:), r3, r4];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r21 delegate];
            r0 = [r0 retain];
            [r0 mopubAdPlacer:r21 didTrackImpressionForAd:r19 withImpressionData:r20];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(long long)numberOfSectionsInCollectionView:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [r20 originalDataSource];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(numberOfSectionsInCollectionView:)];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r20 originalDataSource];
            r0 = [r0 retain];
            r20 = [r0 numberOfSectionsInCollectionView:r19];
            [r0 release];
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(long long)collectionView:(void *)arg2 numberOfItemsInSection:(long long)arg3 {
    r22 = [arg2 retain];
    r0 = [self originalDataSource];
    r0 = [r0 retain];
    r23 = [r0 collectionView:r22 numberOfItemsInSection:arg3];
    [r22 release];
    [r0 release];
    r0 = [self streamAdPlacer];
    r0 = [r0 retain];
    [r0 setItemCount:r23 forSection:arg3];
    [r0 release];
    r0 = [self streamAdPlacer];
    r0 = [r0 retain];
    r19 = [r0 adjustedNumberOfItems:r23 inSection:arg3];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)collectionView:(void *)arg2 cellForItemAtIndexPath:(void *)arg3 {
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
    r20 = [arg3 retain];
    r0 = [r21 streamAdPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 isAdAtIndexPath:r20];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r19 dequeueReusableCellWithReuseIdentifier:@"MPCollectionViewAdPlacerReuseIdentifier" forIndexPath:r20];
            r0 = [r0 retain];
            r23 = r0;
            [r0 setClipsToBounds:0x1];
            r22 = [[r21 streamAdPlacer] retain];
            r21 = [[r23 contentView] retain];
            [r22 renderAdAtIndexPath:r20 inView:r21];
    }
    else {
            r0 = [r21 streamAdPlacer];
            r0 = [r0 retain];
            r22 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
            [r0 release];
            r0 = [r21 originalDataSource];
            r0 = [r0 retain];
            r21 = r0;
            r23 = [[r0 collectionView:r19 cellForItemAtIndexPath:r22] retain];
    }
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(bool)collectionView:(void *)arg2 canPerformAction:(void *)arg3 forItemAtIndexPath:(void *)arg4 withSender:(void *)arg5 {
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
    r22 = arg3;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r0 = [r23 streamAdPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = [r0 isAdAtIndexPath:r20];
    [r0 release];
    if ((r26 & 0x1) != 0x0) {
            r22 = 0x0;
    }
    else {
            r0 = [r23 originalDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if ([r0 respondsToSelector:@selector(collectionView:canPerformAction:forItemAtIndexPath:withSender:), r3, r4, r5] != 0x0) {
                    r0 = [r23 streamAdPlacer];
                    r0 = [r0 retain];
                    r25 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
                    [r0 release];
                    r22 = [r24 collectionView:r19 canPerformAction:r22 forItemAtIndexPath:r25 withSender:r21];
                    [r25 release];
            }
            else {
                    r22 = 0x0;
            }
            [r24 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)collectionView:(void *)arg2 didDeselectItemAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[MPAdPlacerInvocation invokeForTarget:r23 with2ArgSelector:@selector(collectionView:didDeselectItemAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r22 release];
    [r20 release];
    [r23 release];
    return;
}

-(void)collectionView:(void *)arg2 didEndDisplayingCell:(void *)arg3 forItemAtIndexPath:(void *)arg4 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r24 = [[self originalDelegate] retain];
    r22 = [[self streamAdPlacer] retain];
    r23 = [[MPAdPlacerInvocation invokeForTarget:r24 with3ArgSelector:@selector(collectionView:didEndDisplayingCell:forItemAtIndexPath:) firstArg:r19 secondArg:r21 thirdArg:r20 streamAdPlacer:r22] retain];
    [r20 release];
    [r21 release];
    [r19 release];
    [r23 release];
    [r22 release];
    [r24 release];
    return;
}

-(void)collectionView:(void *)arg2 didHighlightItemAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[MPAdPlacerInvocation invokeForTarget:r23 with2ArgSelector:@selector(collectionView:didHighlightItemAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r22 release];
    [r20 release];
    [r23 release];
    return;
}

-(void)collectionView:(void *)arg2 didSelectItemAtIndexPath:(void *)arg3 {
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
    r0 = [r22 streamAdPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 isAdAtIndexPath:r20];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r22 collectionView];
            r0 = [r0 retain];
            r21 = r0;
            [r0 deselectItemAtIndexPath:r20 animated:0x0];
    }
    else {
            r0 = [r22 originalDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 respondsToSelector:@selector(collectionView:didSelectItemAtIndexPath:), r3] != 0x0) {
                    r0 = [r22 streamAdPlacer];
                    r0 = [r0 retain];
                    r23 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
                    [r0 release];
                    [r21 collectionView:r19 didSelectItemAtIndexPath:r23];
                    [r23 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)collectionView:(void *)arg2 didUnhighlightItemAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[MPAdPlacerInvocation invokeForTarget:r23 with2ArgSelector:@selector(collectionView:didUnhighlightItemAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r22 release];
    [r20 release];
    [r23 release];
    return;
}

-(void)collectionView:(void *)arg2 performAction:(void *)arg3 forItemAtIndexPath:(void *)arg4 withSender:(void *)arg5 {
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
    r21 = arg3;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [r23 streamAdPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = [r0 isAdAtIndexPath:r20];
    [r0 release];
    if ((r26 & 0x1) == 0x0) {
            r0 = [r23 originalDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if ([r0 respondsToSelector:@selector(collectionView:performAction:forItemAtIndexPath:withSender:), r3, r4, r5] != 0x0) {
                    r0 = [r23 streamAdPlacer];
                    r0 = [r0 retain];
                    r25 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
                    [r0 release];
                    [r24 collectionView:r19 performAction:r21 forItemAtIndexPath:r25 withSender:r22];
                    [r25 release];
            }
            [r24 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)collectionView:(void *)arg2 shouldDeselectItemAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = @class(MPAdPlacerInvocation);
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[r22 invokeForTarget:r23 with2ArgSelector:@selector(collectionView:shouldDeselectItemAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r20 release];
    [r23 release];
    r19 = [MPAdPlacerInvocation boolResultForInvocation:r22 defaultValue:0x1];
    [r22 release];
    r0 = r19;
    return r0;
}

-(bool)collectionView:(void *)arg2 shouldHighlightItemAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = @class(MPAdPlacerInvocation);
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[r22 invokeForTarget:r23 with2ArgSelector:@selector(collectionView:shouldHighlightItemAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r20 release];
    [r23 release];
    r19 = [MPAdPlacerInvocation boolResultForInvocation:r22 defaultValue:0x1];
    [r22 release];
    r0 = r19;
    return r0;
}

-(bool)collectionView:(void *)arg2 shouldSelectItemAtIndexPath:(void *)arg3 {
    r19 = [arg2 retain];
    r22 = @class(MPAdPlacerInvocation);
    r20 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r21 = [[self streamAdPlacer] retain];
    r22 = [[r22 invokeForTarget:r23 with2ArgSelector:@selector(collectionView:shouldSelectItemAtIndexPath:) firstArg:r19 secondArg:r20 streamAdPlacer:r21] retain];
    [r20 release];
    [r21 release];
    [r23 release];
    r20 = @class(MPAdPlacerInvocation);
    r21 = [r19 allowsSelection];
    [r19 release];
    r19 = [r20 boolResultForInvocation:r22 defaultValue:r21];
    [r22 release];
    r0 = r19;
    return r0;
}

-(bool)collectionView:(void *)arg2 shouldShowMenuForItemAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = @class(MPAdPlacerInvocation);
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[r22 invokeForTarget:r23 with2ArgSelector:@selector(collectionView:shouldShowMenuForItemAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r20 release];
    [r23 release];
    r19 = [MPAdPlacerInvocation boolResultForInvocation:r22 defaultValue:0x0];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void)collectionView:(void *)arg2 willDisplayCell:(void *)arg3 forItemAtIndexPath:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r22 originalDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r26 = [r0 respondsToSelector:@selector(collectionView:willDisplayCell:forItemAtIndexPath:), r3, r4];
    [r0 release];
    if (r26 != 0x0) {
            r24 = [[r22 originalDelegate] retain];
            r22 = [[r22 streamAdPlacer] retain];
            [[[MPAdPlacerInvocation invokeForTarget:r24 with3ArgSelector:@selector(collectionView:willDisplayCell:forItemAtIndexPath:) firstArg:r19 secondArg:r20 thirdArg:r21 streamAdPlacer:r22] retain] release];
            [r22 release];
            [r24 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(struct CGSize)collectionView:(void *)arg2 layout:(void *)arg3 sizeForItemAtIndexPath:(void *)arg4 {
    var_60 = d9;
    stack[-104] = d8;
    r31 = r31 + 0xffffffffffffff90;
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
    r0 = [r22 streamAdPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 isAdAtIndexPath:r21];
    [r0 release];
    if (r25 == 0x0) goto loc_10050d0a0;

loc_10050d030:
    [[r22 streamAdPlacer] retain];
    r0 = [r22 collectionView];
    r0 = [r0 retain];
    CGRectGetWidth([r0 bounds]);
    [r23 sizeForAdAtIndexPath:r21 withMaximumWidth:r3];
    v8 = v0;
    v9 = v1;
    [r22 release];
    r0 = r23;
    goto loc_10050d164;

loc_10050d164:
    [r0 release];
    goto loc_10050d184;

loc_10050d184:
    [r21 release];
    [r20 release];
    r0 = [r19 release];
    return r0;

loc_10050d0a0:
    r0 = [r22 originalDelegate];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(collectionView:layout:sizeForItemAtIndexPath:), r3, r4];
    [r0 release];
    if (r27 == 0x0) goto loc_10050d16c;

loc_10050d0e8:
    r0 = [r22 streamAdPlacer];
    r0 = [r0 retain];
    r26 = [[r0 originalIndexPathForAdjustedIndexPath:r21] retain];
    [r0 release];
    r0 = [r22 originalDelegate];
    r0 = [r0 retain];
    [r0 collectionView:r19 layout:r20 sizeForItemAtIndexPath:r26];
    v8 = v0;
    v9 = v1;
    [r0 release];
    r0 = r26;
    goto loc_10050d164;

loc_10050d16c:
    [r20 itemSize];
    v8 = v0;
    v9 = v1;
    goto loc_10050d184;
}

-(bool)isKindOfClass:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r22 = self;
    r0 = [[&var_30 super] isKindOfClass:r2];
    if ((r0 & 0x1) != 0x0) {
            r19 = 0x1;
    }
    else {
            r20 = @selector(isKindOfClass:);
            r0 = [r22 originalDataSource];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if ((objc_msgSend(r0, r20) & 0x1) != 0x0) {
                    r19 = 0x1;
            }
            else {
                    r20 = @selector(isKindOfClass:);
                    r0 = [r22 originalDelegate];
                    r0 = [r0 retain];
                    r19 = objc_msgSend(r0, r20);
                    [r0 release];
            }
            [r21 release];
    }
    r0 = r19;
    return r0;
}

-(bool)conformsToProtocol:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] conformsToProtocol:r2];
    if ((r0 & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            r0 = [r21 originalDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if (([r0 conformsToProtocol:r2] & 0x1) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    r0 = [r21 originalDataSource];
                    r0 = [r0 retain];
                    r20 = [r0 conformsToProtocol:r2];
                    [r0 release];
            }
            [r22 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)respondsToSelector:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r22 = self;
    r0 = [[&var_30 super] respondsToSelector:r2];
    if ((r0 & 0x1) != 0x0) {
            r19 = 0x1;
    }
    else {
            r20 = @selector(respondsToSelector:);
            r0 = [r22 originalDataSource];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if ((objc_msgSend(r0, r20) & 0x1) != 0x0) {
                    r19 = 0x1;
            }
            else {
                    r20 = @selector(respondsToSelector:);
                    r0 = [r22 originalDelegate];
                    r0 = [r0 retain];
                    r19 = objc_msgSend(r0, r20);
                    [r0 release];
            }
            [r21 release];
    }
    r0 = r19;
    return r0;
}

-(void *)forwardingTargetForSelector:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r21 = @selector(originalDataSource);
    r0 = objc_msgSend(self, r21);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r24 == 0x0) {
            r22 = @selector(respondsToSelector:);
            r21 = @selector(originalDelegate);
            r0 = objc_msgSend(r20, r21);
            r29 = r29;
            r0 = [r0 retain];
            r22 = objc_msgSend(r0, r22);
            [r0 release];
            if (r22 != 0x0) {
                    r0 = objc_msgSend(r20, r21);
            }
            else {
                    r0 = [[&var_40 super] forwardingTargetForSelector:r19];
            }
    }
    else {
            r0 = objc_msgSend(r20, r21);
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void)setStreamAdPlacer:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)streamAdPlacer {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void *)collectionView {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setCollectionView:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)originalDataSource {
    r0 = objc_loadWeakRetained(self + 0x20);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setOriginalDataSource:(void *)arg2 {
    objc_storeWeak(self + 0x20, arg2);
    return;
}

-(void *)insertionTimer {
    r0 = *(self + 0x30);
    return r0;
}

-(void *)originalDelegate {
    r0 = objc_loadWeakRetained(self + 0x28);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setOriginalDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x28, arg2);
    return;
}

-(void)setInsertionTimer:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x30, 0x0);
    objc_destroyWeak(self + 0x28);
    objc_destroyWeak(self + 0x20);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_destroyWeak(self + 0x8);
    return;
}

@end