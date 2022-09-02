@implementation MPTableViewAdPlacer

+(void *)placerWithTableView:(void *)arg2 viewController:(void *)arg3 rendererConfigurations:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r21 = [self class];
    r23 = [[MPServerAdPositioning positioning] retain];
    r21 = [[r21 placerWithTableView:r22 viewController:r20 adPositioning:r23 rendererConfigurations:r19] retain];
    [r19 release];
    [r20 release];
    [r22 release];
    [r23 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)placerWithTableView:(void *)arg2 viewController:(void *)arg3 adPositioning:(void *)arg4 rendererConfigurations:(void *)arg5 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r23 = [objc_alloc() initWithTableView:r22 viewController:r21 adPositioning:r20 rendererConfigurations:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    [r22 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void)dealloc {
    [*(self + 0x30) invalidate];
    [[&var_20 super] dealloc];
    return;
}

-(void)loadAdsForAdUnitID:(void *)arg2 {
    [self loadAdsForAdUnitID:arg2 targeting:0x0];
    return;
}

-(void *)initWithTableView:(void *)arg2 viewController:(void *)arg3 adPositioning:(void *)arg4 rendererConfigurations:(void *)arg5 {
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
            objc_storeWeak(r23 + 0x20, [[r19 dataSource] retain]);
            [r25 release];
            objc_storeWeak(r23 + 0x28, [[r19 delegate] retain]);
            [r25 release];
            [r19 setDataSource:r23];
            [r19 setDelegate:r23];
            r24 = [[r23 tableView] retain];
            [r24 registerClass:[MPTableViewAdPlacerCell class] forCellReuseIdentifier:@"MPTableViewAdPlacerReuseIdentifier"];
            [r24 release];
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
    r0 = [self tableView];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 mp_indexPathsForVisibleRows];
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

-(void)loadAdsForAdUnitID:(void *)arg2 targeting:(void *)arg3 {
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
    r0 = [r21 insertionTimer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r23 = [[MPTimer timerWithTimeInterval:r21 target:@selector(updateVisibleCells) selector:0x1 repeats:**_NSRunLoopCommonModes runLoopMode:r6] retain];
            [r21 setInsertionTimer:r23];
            [r23 release];
            r0 = [r21 insertionTimer];
            r29 = r29;
            r0 = [r0 retain];
            [r0 scheduleNow];
            [r0 release];
    }
    r0 = [r21 streamAdPlacer];
    r0 = [r0 retain];
    [r0 loadAdsForAdUnitID:r19 targeting:r20];
    [r20 release];
    [r19 release];
    [r0 release];
    return;
}

-(void)adPlacer:(void *)arg2 didRemoveAdsAtIndexPaths:(void *)arg3 {
    r19 = @class(UIView);
    r22 = [arg3 retain];
    r19 = [r19 areAnimationsEnabled];
    [UIView setAnimationsEnabled:0x0];
    r0 = [self tableView];
    r0 = [r0 retain];
    [r0 mp_beginUpdates];
    [r0 release];
    r0 = [self tableView];
    r0 = [r0 retain];
    [r0 deleteRowsAtIndexPaths:r22 withRowAnimation:0x5];
    [r22 release];
    [r0 release];
    r0 = [self tableView];
    r0 = [r0 retain];
    [r0 mp_endUpdates];
    [r0 release];
    [UIView setAnimationsEnabled:r19];
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
    r23 = [r0 respondsToSelector:@selector(nativeAdWillPresentModalForTableViewAdPlacer:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 nativeAdWillPresentModalForTableViewAdPlacer:r19];
            [r0 release];
    }
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
    r0 = [r21 tableView];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 indexPathsForVisibleRows];
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
    r0 = [r21 tableView];
    r0 = [r0 retain];
    [r0 mp_beginUpdates];
    [r0 release];
    r24 = [[r21 tableView] retain];
    r25 = [[NSArray arrayWithObjects:&var_60 count:0x1] retain];
    [r24 insertRowsAtIndexPaths:r25 withRowAnimation:0x6];
    [r25 release];
    [r24 release];
    r0 = [r21 tableView];
    r0 = [r0 retain];
    [r0 mp_endUpdates];
    [r0 release];
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
    r23 = [r0 respondsToSelector:@selector(nativeAdDidDismissModalForTableViewAdPlacer:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 nativeAdDidDismissModalForTableViewAdPlacer:r19];
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
    r23 = [r0 respondsToSelector:@selector(nativeAdWillLeaveApplicationFromTableViewAdPlacer:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 nativeAdWillLeaveApplicationFromTableViewAdPlacer:r19];
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

-(long long)numberOfSectionsInTableView:(void *)arg2 {
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
    r24 = [r0 respondsToSelector:@selector(numberOfSectionsInTableView:)];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r20 originalDataSource];
            r0 = [r0 retain];
            r20 = [r0 numberOfSectionsInTableView:r19];
            [r0 release];
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(long long)tableView:(void *)arg2 numberOfRowsInSection:(long long)arg3 {
    r22 = [arg2 retain];
    r0 = [self originalDataSource];
    r0 = [r0 retain];
    r23 = [r0 tableView:r22 numberOfRowsInSection:arg3];
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

-(void *)tableView:(void *)arg2 cellForRowAtIndexPath:(void *)arg3 {
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
            r0 = [r19 dequeueReusableCellWithIdentifier:@"MPTableViewAdPlacerReuseIdentifier" forIndexPath:r20];
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
            r23 = [[r0 tableView:r19 cellForRowAtIndexPath:r22] retain];
    }
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(bool)tableView:(void *)arg2 canEditRowAtIndexPath:(void *)arg3 {
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
    if ((r24 & 0x1) != 0x0) {
            r21 = 0x0;
    }
    else {
            r0 = [r21 originalDataSource];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 respondsToSelector:@selector(tableView:canEditRowAtIndexPath:), r3] != 0x0) {
                    r0 = [r21 streamAdPlacer];
                    r0 = [r0 retain];
                    r23 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
                    [r0 release];
                    r21 = [r22 tableView:r19 canEditRowAtIndexPath:r23];
                    [r23 release];
            }
            else {
                    r21 = 0x1;
            }
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)tableView:(void *)arg2 canMoveRowAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = @class(MPAdPlacerInvocation);
    r19 = [arg3 retain];
    r23 = [[self originalDataSource] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[r22 invokeForTarget:r23 with2ArgSelector:@selector(tableView:canMoveRowAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r20 release];
    [r23 release];
    r19 = [MPAdPlacerInvocation boolResultForInvocation:r22 defaultValue:0x0];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void)tableView:(void *)arg2 commitEditingStyle:(long long)arg3 forRowAtIndexPath:(void *)arg4 {
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r24 = [[self originalDataSource] retain];
    r21 = [[self streamAdPlacer] retain];
    r20 = [[MPAdPlacerInvocation invokeForTarget:r24 with3ArgIntSelector:@selector(tableView:commitEditingStyle:forRowAtIndexPath:) firstArg:r22 secondArg:arg3 thirdArg:r19 streamAdPlacer:r21] retain];
    [r19 release];
    [r22 release];
    [r20 release];
    [r21 release];
    [r24 release];
    return;
}

-(void)tableView:(void *)arg2 moveRowAtIndexPath:(void *)arg3 toIndexPath:(void *)arg4 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r25 = [r0 isAdAtIndexPath:r20];
    [r0 release];
    if ((r25 & 0x1) == 0x0) {
            r0 = [r22 originalDataSource];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if ([r0 respondsToSelector:@selector(tableView:moveRowAtIndexPath:toIndexPath:), r3, r4] != 0x0) {
                    r0 = [r22 streamAdPlacer];
                    r0 = [r0 retain];
                    r28 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
                    [r0 release];
                    r0 = [r22 streamAdPlacer];
                    r0 = [r0 retain];
                    r24 = [[r0 originalIndexPathForAdjustedIndexPath:r21] retain];
                    [r0 release];
                    [r23 tableView:r19 moveRowAtIndexPath:r28 toIndexPath:r24];
                    [r24 release];
                    [r28 release];
            }
            [r23 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)tableView:(void *)arg2 didEndDisplayingCell:(void *)arg3 forRowAtIndexPath:(void *)arg4 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r24 = [[self originalDelegate] retain];
    r22 = [[self streamAdPlacer] retain];
    r23 = [[MPAdPlacerInvocation invokeForTarget:r24 with3ArgSelector:@selector(tableView:didEndDisplayingCell:forRowAtIndexPath:) firstArg:r19 secondArg:r21 thirdArg:r20 streamAdPlacer:r22] retain];
    [r20 release];
    [r21 release];
    [r19 release];
    [r23 release];
    [r22 release];
    [r24 release];
    return;
}

-(void)tableView:(void *)arg2 willDisplayCell:(void *)arg3 forRowAtIndexPath:(void *)arg4 {
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r24 = [[self originalDelegate] retain];
    r22 = [[self streamAdPlacer] retain];
    r23 = [[MPAdPlacerInvocation invokeForTarget:r24 with3ArgSelector:@selector(tableView:willDisplayCell:forRowAtIndexPath:) firstArg:r19 secondArg:r21 thirdArg:r20 streamAdPlacer:r22] retain];
    [r20 release];
    [r21 release];
    [r19 release];
    [r23 release];
    [r22 release];
    [r24 release];
    return;
}

-(double)tableView:(void *)arg2 heightForRowAtIndexPath:(void *)arg3 {
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 streamAdPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 isAdAtIndexPath:r20];
    [r0 release];
    if (r24 == 0x0) goto loc_10046fa1c;

loc_10046f9b0:
    [[r21 streamAdPlacer] retain];
    r0 = [r21 tableView];
    r0 = [r0 retain];
    CGRectGetWidth([r0 bounds]);
    [r22 sizeForAdAtIndexPath:r20 withMaximumWidth:r3];
    v8 = v1;
    [r21 release];
    r0 = r22;
    goto loc_10046fad8;

loc_10046fad8:
    [r0 release];
    goto loc_10046faf4;

loc_10046faf4:
    [r20 release];
    r0 = [r19 release];
    return r0;

loc_10046fa1c:
    r0 = [r21 originalDelegate];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 respondsToSelector:@selector(tableView:heightForRowAtIndexPath:), r3];
    [r0 release];
    if (r26 == 0x0) goto loc_10046fae0;

loc_10046fa64:
    r0 = [r21 streamAdPlacer];
    r0 = [r0 retain];
    r25 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
    [r0 release];
    r0 = [r21 originalDelegate];
    r0 = [r0 retain];
    [r0 tableView:r19 heightForRowAtIndexPath:r25];
    v8 = v0;
    [r0 release];
    r0 = r25;
    goto loc_10046fad8;

loc_10046fae0:
    [r19 rowHeight];
    v8 = v0;
    goto loc_10046faf4;
}

-(void)tableView:(void *)arg2 accessoryButtonTappedForRowWithIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[MPAdPlacerInvocation invokeForTarget:r23 with2ArgSelector:@selector(tableView:accessoryButtonTappedForRowWithIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r22 release];
    [r20 release];
    [r23 release];
    return;
}

-(void)tableView:(void *)arg2 didHighlightRowAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[MPAdPlacerInvocation invokeForTarget:r23 with2ArgSelector:@selector(tableView:didHighlightRowAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r22 release];
    [r20 release];
    [r23 release];
    return;
}

-(void)tableView:(void *)arg2 didUnhighlightRowAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[MPAdPlacerInvocation invokeForTarget:r23 with2ArgSelector:@selector(tableView:didUnhighlightRowAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r22 release];
    [r20 release];
    [r23 release];
    return;
}

-(bool)tableView:(void *)arg2 shouldHighlightRowAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = @class(MPAdPlacerInvocation);
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[r22 invokeForTarget:r23 with2ArgSelector:@selector(tableView:shouldHighlightRowAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r20 release];
    [r23 release];
    r19 = [MPAdPlacerInvocation boolResultForInvocation:r22 defaultValue:0x1];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void *)tableView:(void *)arg2 willSelectRowAtIndexPath:(void *)arg3 {
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
    r0 = [r21 streamAdPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 isAdAtIndexPath:r20];
    [r0 release];
    if (r24 != 0x0) {
            r21 = [r20 retain];
    }
    else {
            r0 = [r21 originalDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 respondsToSelector:@selector(tableView:willSelectRowAtIndexPath:), r3] != 0x0) {
                    r0 = [r21 streamAdPlacer];
                    r0 = [r0 retain];
                    r26 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
                    [r0 release];
                    r24 = [[r22 tableView:r19 willSelectRowAtIndexPath:r26] retain];
                    r0 = [r21 streamAdPlacer];
                    r0 = [r0 retain];
                    r21 = [[r0 adjustedIndexPathForOriginalIndexPath:r24] retain];
                    [r0 release];
                    [r24 release];
                    [r26 release];
            }
            else {
                    r21 = [r20 retain];
            }
            [r22 release];
    }
    [r20 release];
    [r19 release];
    [r21 autorelease];
    r0 = r21;
    return r0;
}

-(void *)tableView:(void *)arg2 willDeselectRowAtIndexPath:(void *)arg3 {
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
    r0 = [r21 streamAdPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 isAdAtIndexPath:r20];
    [r0 release];
    if (r24 != 0x0) {
            r21 = [r20 retain];
    }
    else {
            r0 = [r21 originalDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 respondsToSelector:@selector(tableView:willDeselectRowAtIndexPath:), r3] != 0x0) {
                    r0 = [r21 streamAdPlacer];
                    r0 = [r0 retain];
                    r26 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
                    [r0 release];
                    r24 = [[r22 tableView:r19 willDeselectRowAtIndexPath:r26] retain];
                    r0 = [r21 streamAdPlacer];
                    r0 = [r0 retain];
                    r21 = [[r0 adjustedIndexPathForOriginalIndexPath:r24] retain];
                    [r0 release];
                    [r24 release];
                    [r26 release];
            }
            else {
                    r21 = [r20 retain];
            }
            [r22 release];
    }
    [r20 release];
    [r19 release];
    [r21 autorelease];
    r0 = r21;
    return r0;
}

-(void)tableView:(void *)arg2 didDeselectRowAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[MPAdPlacerInvocation invokeForTarget:r23 with2ArgSelector:@selector(tableView:didDeselectRowAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r22 release];
    [r20 release];
    [r23 release];
    return;
}

-(void)tableView:(void *)arg2 didSelectRowAtIndexPath:(void *)arg3 {
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
            r0 = [r22 tableView];
            r0 = [r0 retain];
            r21 = r0;
            [r0 deselectRowAtIndexPath:r20 animated:0x0];
    }
    else {
            r0 = [r22 originalDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 respondsToSelector:@selector(tableView:didSelectRowAtIndexPath:), r3] != 0x0) {
                    r0 = [r22 streamAdPlacer];
                    r0 = [r0 retain];
                    r23 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
                    [r0 release];
                    [r21 tableView:r19 didSelectRowAtIndexPath:r23];
                    [r23 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(long long)tableView:(void *)arg2 editingStyleForRowAtIndexPath:(void *)arg3 {
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
    if ((r24 & 0x1) != 0x0) {
            r22 = 0x0;
    }
    else {
            r0 = [r22 originalDelegate];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 respondsToSelector:@selector(tableView:editingStyleForRowAtIndexPath:), r3] != 0x0) {
                    r0 = [r22 streamAdPlacer];
                    r0 = [r0 retain];
                    r23 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
                    [r0 release];
                    r22 = [r21 tableView:r19 editingStyleForRowAtIndexPath:r23];
                    [r23 release];
            }
            else {
                    r22 = [r22 tableView:r19 canEditRowAtIndexPath:r20];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void *)tableView:(void *)arg2 titleForDeleteConfirmationButtonForRowAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = @class(MPAdPlacerInvocation);
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[r22 invokeForTarget:r23 with2ArgSelector:@selector(tableView:titleForDeleteConfirmationButtonForRowAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r20 release];
    [r23 release];
    r19 = [[MPAdPlacerInvocation resultForInvocation:r22 defaultValue:@"Delete"] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)tableView:(void *)arg2 willBeginEditingRowAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[MPAdPlacerInvocation invokeForTarget:r23 with2ArgSelector:@selector(tableView:willBeginEditingRowAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r22 release];
    [r20 release];
    [r23 release];
    return;
}

-(bool)tableView:(void *)arg2 shouldIndentWhileEditingRowAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = @class(MPAdPlacerInvocation);
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[r22 invokeForTarget:r23 with2ArgSelector:@selector(tableView:shouldIndentWhileEditingRowAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r20 release];
    [r23 release];
    r19 = [MPAdPlacerInvocation boolResultForInvocation:r22 defaultValue:0x1];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void)tableView:(void *)arg2 didEndEditingRowAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[MPAdPlacerInvocation invokeForTarget:r23 with2ArgSelector:@selector(tableView:didEndEditingRowAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r22 release];
    [r20 release];
    [r23 release];
    return;
}

-(long long)tableView:(void *)arg2 indentationLevelForRowAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = @class(MPAdPlacerInvocation);
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[r22 invokeForTarget:r23 with2ArgSelector:@selector(tableView:indentationLevelForRowAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r20 release];
    [r23 release];
    r19 = [MPAdPlacerInvocation integerResultForInvocation:r22 defaultValue:0x0];
    [r22 release];
    r0 = r19;
    return r0;
}

-(bool)tableView:(void *)arg2 shouldShowMenuForRowAtIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r22 = @class(MPAdPlacerInvocation);
    r19 = [arg3 retain];
    r23 = [[self originalDelegate] retain];
    r20 = [[self streamAdPlacer] retain];
    r22 = [[r22 invokeForTarget:r23 with2ArgSelector:@selector(tableView:shouldShowMenuForRowAtIndexPath:) firstArg:r21 secondArg:r19 streamAdPlacer:r20] retain];
    [r19 release];
    [r21 release];
    [r20 release];
    [r23 release];
    r19 = [MPAdPlacerInvocation boolResultForInvocation:r22 defaultValue:0x0];
    [r22 release];
    r0 = r19;
    return r0;
}

-(bool)tableView:(void *)arg2 canPerformAction:(void *)arg3 forRowAtIndexPath:(void *)arg4 withSender:(void *)arg5 {
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
            if ([r0 respondsToSelector:@selector(tableView:canPerformAction:forRowAtIndexPath:withSender:), r3, r4, r5] != 0x0) {
                    r0 = [r23 streamAdPlacer];
                    r0 = [r0 retain];
                    r25 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
                    [r0 release];
                    r22 = [r24 tableView:r19 canPerformAction:r22 forRowAtIndexPath:r25 withSender:r21];
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

-(void)tableView:(void *)arg2 performAction:(void *)arg3 forRowAtIndexPath:(void *)arg4 withSender:(void *)arg5 {
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
            if ([r0 respondsToSelector:@selector(tableView:performAction:forRowAtIndexPath:withSender:), r3, r4, r5] != 0x0) {
                    r0 = [r23 streamAdPlacer];
                    r0 = [r0 retain];
                    r25 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
                    [r0 release];
                    [r24 tableView:r19 performAction:r21 forRowAtIndexPath:r25 withSender:r22];
                    [r25 release];
            }
            [r24 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)tableView:(void *)arg2 viewForHeaderInSection:(long long)arg3 {
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
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 originalDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(tableView:viewForHeaderInSection:), r3];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r21 originalDelegate];
            r0 = [r0 retain];
            r20 = [[r0 tableView:r19 viewForHeaderInSection:r20] retain];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)tableView:(void *)arg2 viewForFooterInSection:(long long)arg3 {
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
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 originalDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(tableView:viewForFooterInSection:), r3];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r21 originalDelegate];
            r0 = [r0 retain];
            r20 = [[r0 tableView:r19 viewForFooterInSection:r20] retain];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(double)tableView:(void *)arg2 heightForHeaderInSection:(long long)arg3 {
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 originalDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(tableView:heightForHeaderInSection:), r3];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r21 originalDelegate];
            r0 = [r0 retain];
            [r0 tableView:r19 heightForHeaderInSection:r20];
            v8 = v0;
            [r0 release];
    }
    r0 = [r19 release];
    return r0;
}

-(double)tableView:(void *)arg2 estimatedHeightForFooterInSection:(long long)arg3 {
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 originalDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(tableView:estimatedHeightForFooterInSection:), r3];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r21 originalDelegate];
            r0 = [r0 retain];
            [r0 tableView:r19 estimatedHeightForFooterInSection:r20];
            v8 = v0;
            [r0 release];
    }
    r0 = [r19 release];
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

-(double)tableView:(void *)arg2 estimatedHeightForHeaderInSection:(long long)arg3 {
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 originalDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(tableView:estimatedHeightForHeaderInSection:), r3];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r21 originalDelegate];
            r0 = [r0 retain];
            [r0 tableView:r19 estimatedHeightForHeaderInSection:r20];
            v8 = v0;
            [r0 release];
    }
    r0 = [r19 release];
    return r0;
}

-(double)tableView:(void *)arg2 heightForFooterInSection:(long long)arg3 {
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 originalDelegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(tableView:heightForFooterInSection:), r3];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r21 originalDelegate];
            r0 = [r0 retain];
            [r0 tableView:r19 heightForFooterInSection:r20];
            v8 = v0;
            [r0 release];
    }
    r0 = [r19 release];
    return r0;
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

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
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

-(void *)streamAdPlacer {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void)setStreamAdPlacer:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)tableView {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setTableView:(void *)arg2 {
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

-(void *)insertionTimer {
    r0 = *(self + 0x30);
    return r0;
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