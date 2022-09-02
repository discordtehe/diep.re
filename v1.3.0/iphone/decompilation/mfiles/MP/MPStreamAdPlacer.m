@implementation MPStreamAdPlacer

+(void *)placerWithViewController:(void *)arg2 adPositioning:(void *)arg3 rendererConfigurations:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r21 = [objc_alloc() initWithViewController:r22 adPositioning:r20 rendererConfigurations:r19];
    [r19 release];
    [r20 release];
    [r22 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)dealloc {
    [*(self + 0x38) cancel];
    [[&var_20 super] dealloc];
    return;
}

-(void)setItemCount:(unsigned long long)arg2 forSection:(long long)arg3 {
    r21 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    r20 = [[self sectionCounts] retain];
    r19 = [[NSNumber numberWithInteger:arg3] retain];
    [r20 setObject:r21 forKeyedSubscript:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    return;
}

-(void *)initWithViewController:(void *)arg2 adPositioning:(void *)arg3 rendererConfigurations:(void *)arg4 {
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
    r22 = arg4;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r22 retain];
    r21 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r25 = r0;
            r26 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r26) {
                                    objc_enumerationMutation(r21);
                            }
                            r27 = r27 + 0x1;
                    } while (r27 < r25);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r25 = r0;
            } while (r0 != 0x0);
    }
    r0 = [[&var_130 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            objc_storeWeak(r23 + 0x18, r19);
            r0 = [r20 copy];
            r8 = *(r23 + 0x28);
            *(r23 + 0x28) = r0;
            [r8 release];
            r0 = objc_alloc();
            r0 = [r0 initWithDelegate:r23];
            r8 = *(r23 + 0x30);
            *(r23 + 0x30) = r0;
            [r8 release];
            r0 = objc_alloc();
            r0 = [r0 initWithPositioning:*(r23 + 0x28)];
            r8 = *(r23 + 0x40);
            *(r23 + 0x40) = r0;
            [r8 release];
            objc_storeStrong(r23 + 0x10, r22);
            r0 = objc_alloc();
            r0 = objc_msgSend(r0, r24);
            r8 = *(r23 + 0x50);
            *(r23 + 0x50) = r0;
            [r8 release];
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setVisibleIndexPaths:(void *)arg2 {
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
    if ([r0 count] != 0x0) {
            r21 = @selector(count);
            r0 = [r19 sortedArrayUsingSelector:@selector(compare:)];
            r0 = [r0 retain];
            r8 = *(r20 + 0x8);
            *(r20 + 0x8) = r0;
            [r8 release];
            r0 = [r20 visibleIndexPaths];
            r0 = [r0 retain];
            r24 = [[r0 firstObject] retain];
            [r20 setTopConsideredIndexPath:r24];
            [r24 release];
            [r0 release];
            r0 = [r20 visibleIndexPaths];
            r0 = [r0 retain];
            r23 = [[r0 lastObject] retain];
            r21 = [[r20 furthestValidIndexPathAfterIndexPath:r23 withinDistance:objc_msgSend(r19, r21) + 0x3] retain];
            [r20 setBottomConsideredIndexPath:r21];
            [r21 release];
            [r23 release];
            [r0 release];
            [r20 fillAdsInConsideredRange];
    }
    else {
            r0 = *(r20 + 0x8);
            *(r20 + 0x8) = 0x0;
            [r0 release];
            [r20 setTopConsideredIndexPath:0x0];
            [r20 setBottomConsideredIndexPath:0x0];
    }
    [r19 release];
    return;
}

-(void)loadAdsForAdUnitID:(void *)arg2 {
    [self loadAdsForAdUnitID:arg2 targeting:0x0];
    return;
}

-(struct CGSize)sizeForAdAtIndexPath:(void *)arg2 withMaximumWidth:(double)arg3 {
    r21 = [arg2 retain];
    r0 = [self adPlacementData];
    r0 = [r0 retain];
    r22 = [[r0 adDataAtAdjustedIndexPath:r21] retain];
    [r0 release];
    r23 = [[r22 ad] retain];
    [self sizeForAd:r23 withMaximumWidth:r21 andIndexPath:r4];
    [r21 release];
    [r23 release];
    r0 = [r22 ad];
    r0 = [r0 retain];
    [r0 updateAdViewSize:r23];
    [r0 release];
    r0 = [r22 release];
    return r0;
}

-(void)renderAdAtIndexPath:(void *)arg2 inView:(void *)arg3 {
    r31 = r31 - 0x160;
    var_60 = d9;
    stack[-104] = d8;
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
    r25 = self;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [r25 adPlacementData];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 adDataAtAdjustedIndexPath:r20];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r19 release];
    if (r22 != 0x0) {
            var_150 = r25;
            var_148 = r22;
            var_140 = r21;
            var_138 = r20;
            var_120 = q0;
            r0 = [r21 subviews];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r25 = r0;
                    r22 = *var_120;
                    do {
                            r20 = 0x0;
                            do {
                                    if (*var_120 != r22) {
                                            objc_enumerationMutation(r23);
                                    }
                                    r26 = @selector(class);
                                    r19 = *(var_128 + r20 * 0x8);
                                    objc_msgSend(@class(MPNativeView), r26);
                                    if (objc_msgSend(r19, r27) != 0x0) {
                                            [r19 removeFromSuperview];
                                    }
                                    r20 = r20 + 0x1;
                            } while (r20 < r25);
                            r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r25 = r0;
                    } while (r0 != 0x0);
            }
            [r23 release];
            r22 = var_148;
            r0 = [r22 ad];
            r0 = [r0 retain];
            r24 = [[r0 retrieveAdViewWithError:0x0] retain];
            r21 = var_140;
            [r21 addSubview:r24];
            [r24 release];
            [r0 release];
            r19 = [[r22 ad] retain];
            [r21 bounds];
            r20 = var_138;
            [var_150 sizeForAd:r19 withMaximumWidth:r20 andIndexPath:0x10];
            [r19 release];
            r0 = [r22 ad];
            r0 = [r0 retain];
            [r0 updateAdViewSize:r19];
            r0 = r0;
    }
    else {
            r24 = [[NSString stringWithFormat:@"-renderAdAtIndexPath: An ad does not exist at indexPath"] retain];
            r23 = [[MPLogEvent eventWithMessage:r24 level:0x1e] retain];
            [MPLogging logEvent:r23 source:0x0 fromClass:[r25 class]];
            [r23 release];
            r0 = r24;
    }
    var_70 = **___stack_chk_guard;
    [r0 release];
    [r22 release];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_70) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isAdAtIndexPath:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self adPlacementData];
    r0 = [r0 retain];
    r20 = [r0 isAdAtAdjustedIndexPath:r21];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)adjustedNumberOfItems:(unsigned long long)arg2 inSection:(unsigned long long)arg3 {
    r0 = [self adPlacementData];
    r0 = [r0 retain];
    r19 = [r0 adjustedNumberOfItems:arg2 inSection:arg3];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)adjustedIndexPathForOriginalIndexPath:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self adPlacementData];
    r0 = [r0 retain];
    r20 = [[r0 adjustedIndexPathForOriginalIndexPath:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)originalIndexPathForAdjustedIndexPath:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self adPlacementData];
    r0 = [r0 retain];
    r20 = [[r0 originalIndexPathForAdjustedIndexPath:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)loadAdsForAdUnitID:(void *)arg2 targeting:(void *)arg3 {
    r31 = r31 - 0x190;
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
    r19 = [arg2 retain];
    var_180 = [arg3 retain];
    var_178 = r19;
    [self setAdUnitID:r19];
    var_160 = [[NSMutableArray array] retain];
    var_110 = q0;
    r23 = self;
    r0 = [self sectionCounts];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_170 = r1;
    var_168 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r25 = r0;
            r21 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r21) {
                                    objc_enumerationMutation(var_168);
                            }
                            r19 = [*(var_118 + r22 * 0x8) unsignedIntegerValue];
                            r0 = [r23 adPlacementData];
                            r0 = [r0 retain];
                            r0 = [r0 adjustedIndexPathsWithAdsInSection:r19];
                            r29 = r29;
                            [r0 retain];
                            [var_160 addObjectsFromArray:r2];
                            [r19 release];
                            [r24 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r25);
                    r0 = objc_msgSend(var_168, var_170);
                    r25 = r0;
            } while (r0 != 0x0);
    }
    [var_168 release];
    r21 = var_178;
    if (r21 == 0x0) goto loc_1004aa59c;

loc_1004aa4d4:
    r26 = r23;
    r0 = [r23 adPositioning];
    r29 = r29;
    r19 = [r0 retain];
    [MPClientAdPositioning class];
    r25 = [r19 isKindOfClass:r2];
    [r19 release];
    if (r25 == 0x0) goto loc_1004aa778;

loc_1004aa538:
    r19 = objc_alloc();
    r0 = [r26 adPositioning];
    r29 = r29;
    r20 = [r0 retain];
    r19 = [r19 initWithPositioning:r20];
    [r26 setAdPlacementData:r19];
    [r19 release];
    r0 = r20;
    goto loc_1004aa5d8;

loc_1004aa5d8:
    [r0 release];
    goto loc_1004aa5dc;

loc_1004aa5dc:
    r22 = var_160;
    if ([r22 count] != 0x0) {
            r0 = [r26 delegate];
            r29 = r29;
            r0 = [r0 retain];
            [r0 adPlacer:r26 didRemoveAdsAtIndexPaths:r22];
            [r0 release];
    }
    if (r21 != 0x0) {
            r23 = [[r26 adSource] retain];
            r20 = [[r26 rendererConfigurations] retain];
            r19 = var_180;
            [r23 loadAdsWithAdUnitIdentifier:r21 rendererConfigurations:r20 andTargeting:r19];
    }
    else {
            r23 = [[NSString stringWithFormat:@"Ad placer cannot load ads with a nil ad unit ID."] retain];
            r20 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
            [MPLogging logEvent:r20 source:0x0 fromClass:[r26 class]];
            r19 = var_180;
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    [r23 release];
    [r22 release];
    [r19 release];
    [r21 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_1004aa778:
    r24 = @selector(isKindOfClass:);
    r0 = [r26 adPositioning];
    r29 = r29;
    r19 = [r0 retain];
    [MPServerAdPositioning class];
    r20 = objc_msgSend(r19, r24);
    [r19 release];
    if (r20 != 0x0) {
            r19 = [objc_alloc() initWithPositioning:0x0];
            [r26 setAdPlacementData:r19];
            [r19 release];
            r19 = [objc_alloc() init];
            [r26 setPositioningSource:r19];
            [r19 release];
            objc_initWeak(&stack[-312], r26);
            [[r26 positioningSource] retain];
            r0 = [r26 adUnitID];
            r29 = r29;
            [r0 retain];
            objc_copyWeak(&var_158 + 0x28, &stack[-312]);
            [r20 loadPositionsWithAdUnitIdentifier:r24 completionHandler:&var_158];
            [r24 release];
            [r20 release];
            objc_destroyWeak(&var_158 + 0x28);
            objc_destroyWeak(&stack[-312]);
    }
    goto loc_1004aa5dc;

loc_1004aa59c:
    r19 = [objc_alloc() initWithPositioning:0x0];
    r26 = r23;
    [r23 setAdPlacementData:r19];
    r0 = r19;
    goto loc_1004aa5d8;
}

-(void *)originalIndexPathsForAdjustedIndexPaths:(void *)arg2 {
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
    r19 = self;
    r21 = [arg2 retain];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    r20 = [r0 retain];
    var_110 = q0;
    r0 = [r21 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = [r19 originalIndexPathForAdjustedIndexPath:*(var_118 + r28 * 0x8)];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = r0;
                            if (r0 != 0x0) {
                                    [r20 addObject:r2];
                            }
                            [r26 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    r19 = [r20 copy];
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)adjustedIndexPathsForOriginalIndexPaths:(void *)arg2 {
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
    r19 = self;
    r21 = [arg2 retain];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    r20 = [r0 retain];
    var_110 = q0;
    r0 = [r21 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r21);
                            }
                            r25 = @selector(addObject:);
                            r0 = [r19 adjustedIndexPathForOriginalIndexPath:*(var_118 + r28 * 0x8)];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r20, r25);
                            [r26 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    r19 = [r20 copy];
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)insertItemsAtIndexPaths:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self adPlacementData];
    r0 = [r0 retain];
    [r0 insertItemsAtIndexPaths:r21];
    [r0 release];
    [r21 enumerateObjectsUsingBlock:&var_48];
    [r21 release];
    return;
}

-(void)deleteItemsAtIndexPaths:(void *)arg2 {
    r31 = r31 - 0x100;
    var_60 = d9;
    stack[-104] = d8;
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
    r0 = [arg2 sortedArrayUsingSelector:@selector(compare:)];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [NSMutableSet setWithCapacity:[r0 count]];
    r0 = [r0 retain];
    r0 = [r0 retain];
    r20 = r0;
    var_68 = r0;
    [r22 enumerateObjectsUsingBlock:&var_88];
    r23 = [[NSMutableArray array] retain];
    r0 = [r22 retain];
    r22 = r0;
    var_A0 = r0;
    r0 = [r23 retain];
    r23 = r0;
    var_90 = r0;
    [r20 enumerateObjectsUsingBlock:&var_C0];
    r0 = [r19 adPlacementData];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 deleteItemsAtIndexPaths:r22];
    [r0 release];
    [r22 enumerateObjectsUsingBlock:&var_E8];
    if ([r23 count] != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 adPlacer:r19 didRemoveAdsAtIndexPaths:r23];
            [r0 release];
    }
    [var_90 release];
    [var_A0 release];
    [r23 release];
    [var_68 release];
    [r20 release];
    [r22 release];
    return;
}

-(void)insertSections:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self adPlacementData];
    r0 = [r0 retain];
    [r0 insertSections:r21];
    [r0 release];
    [self insertItemCountSections:r21];
    [r21 release];
    return;
}

-(void)moveItemAtIndexPath:(void *)arg2 toIndexPath:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [self adPlacementData];
    r0 = [r0 retain];
    [r0 moveItemAtIndexPath:r21 toIndexPath:r19];
    [r19 release];
    [r21 release];
    [r0 release];
    return;
}

-(void)deleteSections:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self adPlacementData];
    r0 = [r0 retain];
    [r0 deleteSections:r21];
    [r0 release];
    [self deleteItemCountSections:r21];
    [r21 release];
    return;
}

-(void)moveSection:(long long)arg2 toSection:(long long)arg3 {
    r0 = [self adPlacementData];
    r0 = [r0 retain];
    [r0 moveSection:arg2 toSection:arg3];
    [r0 release];
    r23 = [[self sectionCounts] retain];
    r24 = [[NSNumber numberWithInteger:arg2] retain];
    r0 = [r23 objectForKeyedSubscript:r24];
    r0 = [r0 retain];
    r22 = [r0 unsignedIntegerValue];
    [r0 release];
    [r24 release];
    [r23 release];
    r21 = [[NSIndexSet indexSetWithIndex:arg2] retain];
    [self deleteItemCountSections:r21];
    [r21 release];
    r21 = [[NSIndexSet indexSetWithIndex:arg3] retain];
    [self insertItemCountSections:r21];
    [r21 release];
    [self setItemCount:r22 forSection:arg3];
    return;
}

-(void)insertItemCountSections:(void *)arg2 {
    [arg2 enumerateIndexesUsingBlock:&var_28];
    return;
}

-(void)deleteItemCountSections:(void *)arg2 {
    [arg2 enumerateIndexesWithOptions:0x2 usingBlock:&var_28];
    return;
}

-(struct _NSRange)rangeToDeleteInSection:(void *)arg2 forOriginalContentIndexPaths:(void *)arg3 {
    r31 = r31 - 0xb0;
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
    r0 = [r21 sectionCounts];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:r19];
    r0 = [r0 retain];
    r23 = [r0 integerValue];
    [r0 release];
    [r22 release];
    var_68 = &var_70;
    r0 = [r20 lastObject];
    r29 = &saved_fp;
    var_48 = [r0 retain];
    if (r23 == [*(var_68 + 0x28) row] + 0x1) {
            r0 = [r20 reverseObjectEnumerator];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 allObjects];
            r0 = [r0 retain];
            [r0 enumerateObjectsUsingBlock:&var_98];
            [r0 release];
            [r25 release];
            r0 = [r21 adPlacementData];
            r29 = r29;
            r26 = [r0 retain];
            r23 = [r26 adjustedNumberOfItems:r23 inSection:[r19 integerValue]];
            [r26 release];
            if ([*(var_68 + 0x28) row] != 0x0) {
                    r24 = [[NSIndexPath indexPathForRow:[*(var_68 + 0x28) row] - 0x1 inSection:[*(var_68 + 0x28) section]] retain];
                    r0 = [r21 adPlacementData];
                    r0 = [r0 retain];
                    r25 = [[r0 adjustedIndexPathForOriginalIndexPath:r24] retain];
                    [r0 release];
                    r21 = [r25 row];
                    r23 = r23 - [r25 row];
                    [r25 release];
                    [r24 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
            r23 = 0x0;
    }
    _Block_object_dispose(&var_70, 0x8);
    [var_48 release];
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)retrieveAdDataForInsertionPath:(void *)arg2 {
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
    r22 = [[self adSource] retain];
    r23 = [[r19 adUnitID] retain];
    r0 = [r22 dequeueAdForAdUnitIdentifier:r23];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    [r22 release];
    if (r20 != 0x0) {
            r22 = [objc_alloc() init];
            r19 = [[r19 adUnitID] retain];
            [r22 setAdUnitID:r19];
            [r19 release];
            [r22 setAd:r20];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)earliestValidIndexPathBeforeIndexPath:(void *)arg2 withinDistance:(unsigned long long)arg3 {
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
    r29 = &saved_fp;
    r22 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r28 = [r0 indexAtPosition:0x0];
    var_98 = r0;
    r0 = [r0 indexAtPosition:0x1];
    if (r22 == 0x0) goto loc_1004ac66c;

loc_1004ac560:
    var_88 = r22;
    r20 = 0x0;
    r9 = @selector(sectionCounts);
    r24 = r21;
    goto loc_1004ac574;

loc_1004ac574:
    if (r0 > 0x0) goto loc_1004ac65c;

loc_1004ac57c:
    var_80 = r20;
    var_78 = r0;
    r22 = 0x0;
    var_70 = r28;
    r25 = r28;
    do {
            r25 = r25 - 0x1;
            r26 = r9;
            r23 = [objc_msgSend(r24, r9) retain];
            r20 = [[NSNumber numberWithUnsignedInteger:r25] retain];
            r0 = [r23 objectForKeyedSubscript:r20];
            r29 = r29;
            r19 = [r0 retain];
            [r22 release];
            [r20 release];
            [r23 release];
            r0 = [r19 unsignedIntegerValue];
            r9 = r26;
            if (r19 != 0x0) {
                    asm { ccmp       x0, #0x0, #0x0, ne };
            }
            r22 = r19;
    } while (CPU_FLAGS & E);
    r23 = r0;
    r22 = var_88;
    r20 = var_80;
    r0 = var_78;
    r28 = var_70;
    if (r19 == 0x0) goto loc_1004ac66c;

loc_1004ac648:
    [r19 release];
    r9 = r26;
    r0 = r23;
    r28 = r25;
    goto loc_1004ac65c;

loc_1004ac65c:
    r20 = r20 + 0x1;
    r0 = r0 - 0x1;
    if (r20 != r22) goto loc_1004ac574;

loc_1004ac66c:
    var_58 = **___stack_chk_guard;
    r0 = [NSIndexPath indexPathWithIndexes:&var_68 length:0x2];
    r19 = [r0 retain];
    [var_98 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)shouldPlaceAdAtIndexPath:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 topConsideredIndexPath];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) goto loc_1004ac8f4;

loc_1004ac730:
    r0 = [r20 bottomConsideredIndexPath];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    [r0 release];
    [r23 release];
    r23 = 0x0;
    if (r19 == 0x0) goto loc_1004ac92c;

loc_1004ac764:
    r23 = 0x0;
    if (r24 == 0x0) goto loc_1004ac92c;

loc_1004ac768:
    r23 = [[r20 sectionCounts] retain];
    r24 = [[NSNumber numberWithInteger:[r19 section]] retain];
    r0 = [r23 objectForKeyedSubscript:r24];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 unsignedIntegerValue];
    [r0 release];
    [r24 release];
    [r23 release];
    if ([r19 indexAtPosition:0x1] >= [r20 adjustedNumberOfItems:r27 inSection:[r19 section]]) goto loc_1004ac8fc;

loc_1004ac84c:
    r23 = [[r20 topConsideredIndexPath] retain];
    r22 = [[r20 adjustedIndexPathForOriginalIndexPath:r23] retain];
    [r23 release];
    r21 = [[r20 bottomConsideredIndexPath] retain];
    r20 = [[r20 adjustedIndexPathForOriginalIndexPath:r21] retain];
    [r21 release];
    if ([r22 compare:r2] == 0x1) {
            r23 = 0x0;
    }
    else {
            if ([r20 compare:r2] != -0x1) {
                    if (CPU_FLAGS & NE) {
                            r23 = 0x1;
                    }
            }
    }
    [r20 release];
    r0 = r22;
    goto loc_1004ac928;

loc_1004ac928:
    [r0 release];
    goto loc_1004ac92c;

loc_1004ac92c:
    [r19 release];
    r0 = r23;
    return r0;

loc_1004ac8fc:
    r23 = 0x0;
    goto loc_1004ac92c;

loc_1004ac8f4:
    r0 = r23;
    goto loc_1004ac928;
}

-(void *)furthestValidIndexPathAfterIndexPath:(void *)arg2 withinDistance:(unsigned long long)arg3 {
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
    r23 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r8 = [r0 indexAtPosition:0x0];
    var_98 = r0;
    r19 = r8;
    var_80 = [r0 indexAtPosition:0x1];
    r22 = [[r21 sectionCounts] retain];
    r27 = [[NSNumber numberWithUnsignedInteger:r19] retain];
    r0 = [r22 objectForKeyedSubscript:r27];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r27 release];
    [r22 release];
    r0 = [r20 unsignedIntegerValue];
    if (r23 == 0x0) goto loc_1004ac46c;

loc_1004ac360:
    r25 = @selector(numberWithUnsignedInteger:);
    r24 = @selector(sectionCounts);
    r10 = 0x0;
    r9 = var_80;
    var_88 = r23;
    var_70 = @selector(unsignedIntegerValue);
    goto loc_1004ac370;

loc_1004ac370:
    r8 = r9 + 0x1;
    if (r0 < r8) goto loc_1004ac388;

loc_1004ac37c:
    r10 = r10 + 0x1;
    r9 = r8;
    goto loc_1004ac458;

loc_1004ac458:
    if (r10 < r23) goto loc_1004ac370;

loc_1004ac470:
    var_58 = **___stack_chk_guard;
    r0 = [NSIndexPath indexPathWithIndexes:&var_68 length:0x2];
    r19 = [r0 retain];
    [r20 release];
    [var_98 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1004ac388:
    var_80 = r9;
    var_78 = r10;
    var_90 = r19;
    r22 = r19;
    r26 = r25;
    r25 = r24;
    r24 = r21;
    do {
            r22 = r22 + 0x1;
            r19 = [objc_msgSend(r24, r25) retain];
            r23 = [objc_msgSend(@class(NSNumber), r26) retain];
            r0 = [r19 objectForKeyedSubscript:r23];
            r29 = r29;
            r27 = [r0 retain];
            [r20 release];
            [r23 release];
            [r19 release];
            r0 = objc_msgSend(r27, var_70);
            if (r27 != 0x0) {
                    asm { ccmp       x0, #0x0, #0x0, ne };
            }
            r20 = r27;
    } while (CPU_FLAGS & E);
    r10 = var_78;
    if (r27 != 0x0) {
            asm { cinc       x10, x10, ne };
    }
    if (r27 == 0x0) goto loc_1004ac464;

loc_1004ac43c:
    r9 = 0x0;
    r19 = r22;
    r20 = r27;
    r23 = var_88;
    r21 = r24;
    r24 = r25;
    r25 = r26;
    goto loc_1004ac458;

loc_1004ac464:
    r20 = 0x0;
    r19 = var_90;
    goto loc_1004ac46c;

loc_1004ac46c:
    r9 = var_80;
    goto loc_1004ac470;
}

-(void)adSourceDidFinishRequest:(void *)arg2 {
    [self fillAdsInConsideredRange];
    return;
}

-(void)fillAdsInConsideredRange {
    r31 = r31 - 0x90;
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
    r0 = [self topConsideredIndexPath];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 == 0x0) goto loc_1004acccc;

loc_1004acaa8:
    r0 = [r19 bottomConsideredIndexPath];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 == 0x0) goto .l1;

loc_1004acad4:
    r20 = [[r19 topConsideredIndexPath] retain];
    r22 = [[r19 adjustedIndexPathForOriginalIndexPath:r20] retain];
    [r20 release];
    r0 = [r19 adPlacementData];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 nextAdInsertionIndexPathForAdjustedIndexPath:r22];
    r29 = r29;
    r26 = [r0 retain];
    [r20 release];
    if ([r19 shouldPlaceAdAtIndexPath:r2] == 0x0) goto loc_1004accc4;

loc_1004acb78:
    var_78 = r22;
    goto loc_1004acbb4;

loc_1004acbb4:
    r0 = [r19 retrieveAdDataForInsertionPath:r26];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 ad];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setDelegate:r19];
    [r0 release];
    if (r25 == 0x0) goto loc_1004accc0;

loc_1004acbfc:
    r0 = [r19 adPlacementData];
    r0 = [r0 retain];
    [r0 insertAdData:r25 atIndexPath:r26];
    [r0 release];
    r0 = [r19 delegate];
    r0 = [r0 retain];
    [r0 adPlacer:r2 didLoadAdAtIndexPath:r3];
    [r24 release];
    r0 = [r19 adPlacementData];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 nextAdInsertionIndexPathForAdjustedIndexPath:r2];
    r29 = r29;
    r24 = [r0 retain];
    [r26 release];
    [r28 release];
    [r25 release];
    r0 = objc_msgSend(r19, r23);
    r26 = r24;
    if ((r0 & 0x1) != 0x0) goto loc_1004acbb4;

loc_1004accbc:
    r26 = r24;
    goto loc_1004accc0;

loc_1004accc0:
    r22 = var_78;
    goto loc_1004accc4;

loc_1004accc4:
    [r26 release];
    goto loc_1004acccc;

loc_1004acccc:
    [r22 release];
    return;

.l1:
    return;
}

-(void *)viewControllerForPresentingModalView {
    r0 = [self viewController];
    return r0;
}

-(void)willPresentModalForNativeAd:(void *)arg2 {
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
    r23 = [r0 respondsToSelector:@selector(nativeAdWillPresentModalForStreamAdPlacer:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 nativeAdWillPresentModalForStreamAdPlacer:r19];
            [r0 release];
    }
    return;
}

-(void)didDismissModalForNativeAd:(void *)arg2 {
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
    r23 = [r0 respondsToSelector:@selector(nativeAdDidDismissModalForStreamAdPlacer:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 nativeAdDidDismissModalForStreamAdPlacer:r19];
            [r0 release];
    }
    return;
}

-(void)willLeaveApplicationFromNativeAd:(void *)arg2 {
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
    r23 = [r0 respondsToSelector:@selector(nativeAdWillLeaveApplicationFromStreamAdPlacer:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 nativeAdWillLeaveApplicationFromStreamAdPlacer:r19];
            [r0 release];
    }
    return;
}

-(void)mopubAd:(void *)arg2 didTrackImpressionWithImpressionData:(void *)arg3 {
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

-(void *)visibleIndexPaths {
    r0 = *(self + 0x8);
    return r0;
}

-(struct CGSize)sizeForAd:(void *)arg2 withMaximumWidth:(double)arg3 andIndexPath:(void *)arg4 {
    r31 = r31 - 0x90;
    var_60 = d9;
    stack[-104] = d8;
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
    v8 = v0;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r19 renderer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 respondsToSelector:r2] == 0x0) goto loc_1004ad138;

loc_1004ad084:
    r0 = [r21 viewSizeHandler];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1004ad138;

loc_1004ad0a4:
    r0 = [r21 viewSizeHandler];
    r29 = r29;
    r0 = [r0 retain];
    (*(r0 + 0x10))();
    v8 = v8;
    v9 = v1;
    [r22 release];
    if (d9 != *0x100be3fb0) goto loc_1004ad22c;

loc_1004ad0ec:
    r0 = [r19 retrieveAdViewForSizeCalculationWithError:0x0];
    r0 = [r0 retain];
    r23 = r0;
    if (r0 != 0x0) {
            [r23 sizeThatFits:0x0];
            v8 = v8;
            v9 = v1;
    }
    goto loc_1004ad224;

loc_1004ad224:
    [r23 release];
    goto loc_1004ad22c;

loc_1004ad22c:
    [r21 release];
    [r20 release];
    r0 = [r19 release];
    return r0;

loc_1004ad138:
    r23 = [NSStringFromClass([r21 class]) retain];
    r26 = [NSStringFromCGSize() retain];
    r28 = [[NSString stringWithFormat:@"WARNING: + (CGSize)viewSizeHandler is NOT implemented for native ad renderer %@ at index path %@. You MUST implement this method to ensure that ad placer native ad cells are correctly sized. Returning a default size of %@ for now."] retain];
    r27 = [[MPLogEvent eventWithMessage:r28 level:0x1e] retain];
    [MPLogging logEvent:r27 source:0x0 fromClass:[r22 class]];
    [r27 release];
    [r28 release];
    [r26 release];
    goto loc_1004ad224;
}

-(void *)rendererConfigurations {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setRendererConfigurations:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void)setViewController:(void *)arg2 {
    objc_storeWeak(self + 0x18, arg2);
    return;
}

-(void *)viewController {
    r0 = objc_loadWeakRetained(self + 0x18);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x20);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x20, arg2);
    return;
}

-(void *)adPositioning {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(void)setAdPositioning:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adSource {
    r0 = *(self + 0x30);
    return r0;
}

-(void)setAdSource:(void *)arg2 {
    objc_storeStrong(self + 0x30, arg2);
    return;
}

-(void *)positioningSource {
    r0 = *(self + 0x38);
    return r0;
}

-(void *)adPlacementData {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setPositioningSource:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void)setAdPlacementData:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void *)adUnitID {
    r0 = objc_getProperty(self, _cmd, 0x48, 0x0);
    return r0;
}

-(void *)sectionCounts {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setAdUnitID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setSectionCounts:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(void *)topConsideredIndexPath {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setTopConsideredIndexPath:(void *)arg2 {
    objc_storeStrong(self + 0x58, arg2);
    return;
}

-(void *)bottomConsideredIndexPath {
    r0 = *(self + 0x60);
    return r0;
}

-(void)setBottomConsideredIndexPath:(void *)arg2 {
    objc_storeStrong(self + 0x60, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x60, 0x0);
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_destroyWeak(self + 0x20);
    objc_destroyWeak(self + 0x18);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end