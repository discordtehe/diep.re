@implementation UICollectionView

-(void)mp_setAdPlacer:(void *)arg2 {
    objc_setAssociatedObject(self, 0x1011d8540, arg2, 0x0);
    return;
}

-(void *)mp_adPlacer {
    r0 = objc_getAssociatedObject(self, 0x1011d8540);
    return r0;
}

-(void)mp_setDelegate:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 mp_adPlacer];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r1 = @selector(setOriginalDelegate:);
            r0 = r20;
    }
    else {
            r1 = @selector(setDelegate:);
            r0 = r21;
    }
    objc_msgSend(r0, r1);
    [r19 release];
    [r20 release];
    return;
}

-(void *)mp_delegate {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self mp_adPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r1 = @selector(originalDelegate);
            r0 = r19;
    }
    else {
            r1 = @selector(delegate);
            r0 = r20;
    }
    r20 = [objc_msgSend(r0, r1) retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)mp_setDataSource:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 mp_adPlacer];
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r1 = @selector(setOriginalDataSource:);
            r0 = r20;
    }
    else {
            r1 = @selector(setDataSource:);
            r0 = r21;
    }
    objc_msgSend(r0, r1);
    [r19 release];
    [r20 release];
    return;
}

-(void *)mp_dataSource {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self mp_adPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r1 = @selector(originalDataSource);
            r0 = r19;
    }
    else {
            r1 = @selector(dataSource);
            r0 = r20;
    }
    r20 = [objc_msgSend(r0, r1) retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)mp_indexPathsForSelectedItems {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self mp_adPlacer] retain];
    r0 = [self indexPathsForSelectedItems];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r19 streamAdPlacer];
            r0 = [r0 retain];
            r22 = [[r0 originalIndexPathsForAdjustedIndexPaths:r20] retain];
            [r20 release];
            [r0 release];
            r20 = r22;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)mp_dequeueReusableCellWithReuseIdentifier:(void *)arg2 forIndexPath:(void *)arg3 {
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
    r21 = [arg3 retain];
    r0 = [r22 mp_adPlacer];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [r21 retain];
    if (r20 != 0x0) {
            r0 = [r20 streamAdPlacer];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 adjustedIndexPathForOriginalIndexPath:r21];
            r29 = r29;
            r23 = [r0 retain];
            [r21 release];
            [r24 release];
            if (r21 == 0x0) {
                    r22 = [[r22 dequeueReusableCellWithReuseIdentifier:r19 forIndexPath:r23] retain];
            }
            else {
                    if (r23 == 0x0) {
                            r22 = 0x0;
                    }
                    else {
                            r22 = [[r22 dequeueReusableCellWithReuseIdentifier:r19 forIndexPath:r23] retain];
                    }
            }
    }
    else {
            r23 = r21;
            if (r21 != 0x0) {
                    if (r23 == 0x0) {
                            r22 = 0x0;
                    }
                    else {
                            r22 = [[r22 dequeueReusableCellWithReuseIdentifier:r19 forIndexPath:r23] retain];
                    }
            }
            else {
                    r22 = [[r22 dequeueReusableCellWithReuseIdentifier:r19 forIndexPath:r23] retain];
            }
    }
    [r23 release];
    [r20 release];
    [r21 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)mp_selectItemAtIndexPath:(void *)arg2 animated:(bool)arg3 scrollPosition:(unsigned long long)arg4 {
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
    r19 = arg4;
    r20 = arg3;
    r21 = self;
    r23 = [arg2 retain];
    r0 = [r21 mp_adPlacer];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r23 = [r23 retain];
    if (r22 != 0x0) {
            r0 = [r22 streamAdPlacer];
            r0 = [r0 retain];
            r24 = [[r0 adjustedIndexPathForOriginalIndexPath:r23] retain];
            [r23 release];
            [r0 release];
            if (r23 == 0x0) {
                    [r21 selectItemAtIndexPath:r24 animated:r20 scrollPosition:r19];
            }
            else {
                    if (r24 != 0x0) {
                            [r21 selectItemAtIndexPath:r24 animated:r20 scrollPosition:r19];
                    }
            }
    }
    else {
            r24 = r23;
            if (r23 != 0x0) {
                    if (r24 != 0x0) {
                            [r21 selectItemAtIndexPath:r24 animated:r20 scrollPosition:r19];
                    }
            }
            else {
                    [r21 selectItemAtIndexPath:r24 animated:r20 scrollPosition:r19];
            }
    }
    [r24 release];
    [r22 release];
    [r23 release];
    return;
}

-(void)mp_deselectItemAtIndexPath:(void *)arg2 animated:(bool)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self;
    r22 = [arg2 retain];
    r0 = [r20 mp_adPlacer];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = [r22 retain];
    if (r21 != 0x0) {
            r0 = [r21 streamAdPlacer];
            r0 = [r0 retain];
            r23 = [[r0 adjustedIndexPathForOriginalIndexPath:r22] retain];
            [r22 release];
            [r0 release];
    }
    else {
            r23 = r22;
    }
    [r20 deselectItemAtIndexPath:r23 animated:r19];
    [r23 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)mp_reloadData {
    [self reloadData];
    return;
}

-(void *)mp_indexPathForItemAtPoint:(struct CGPoint)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self mp_adPlacer] retain];
    r0 = [self indexPathForItemAtPoint:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r19 streamAdPlacer];
            r0 = [r0 retain];
            r22 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
            [r20 release];
            [r0 release];
            r20 = r22;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)mp_layoutAttributesForItemAtIndexPath:(void *)arg2 {
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
    r21 = [arg2 retain];
    r0 = [r19 mp_adPlacer];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [r21 retain];
    if (r20 != 0x0) {
            r0 = [r20 streamAdPlacer];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 adjustedIndexPathForOriginalIndexPath:r21];
            r29 = r29;
            r22 = [r0 retain];
            [r21 release];
            [r23 release];
    }
    else {
            r22 = r21;
    }
    r19 = [[r19 layoutAttributesForItemAtIndexPath:r22] retain];
    [r22 release];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)mp_indexPathForCell:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r19 = [[self mp_adPlacer] retain];
    r0 = [self indexPathForCell:r21];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r19 != 0x0) {
            r0 = [r19 streamAdPlacer];
            r0 = [r0 retain];
            r22 = [[r0 originalIndexPathForAdjustedIndexPath:r20] retain];
            [r20 release];
            [r0 release];
            r20 = r22;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)mp_cellForItemAtIndexPath:(void *)arg2 {
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
    r21 = [arg2 retain];
    r0 = [r19 mp_adPlacer];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [r21 retain];
    if (r20 != 0x0) {
            r0 = [r20 streamAdPlacer];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 adjustedIndexPathForOriginalIndexPath:r21];
            r29 = r29;
            r22 = [r0 retain];
            [r21 release];
            [r23 release];
    }
    else {
            r22 = r21;
    }
    r19 = [[r19 cellForItemAtIndexPath:r22] retain];
    [r22 release];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)mp_indexPathsForVisibleItems {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self mp_adPlacer] retain];
    r0 = [self indexPathsForVisibleItems];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r19 streamAdPlacer];
            r0 = [r0 retain];
            r22 = [[r0 originalIndexPathsForAdjustedIndexPaths:r20] retain];
            [r20 release];
            [r0 release];
            r20 = r22;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)mp_insertSections:(void *)arg2 {
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
    r0 = [r20 mp_adPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r21 streamAdPlacer];
            r0 = [r0 retain];
            [r0 insertSections:r2];
            [r23 release];
    }
    [r20 insertSections:r2];
    [r21 release];
    [r19 release];
    return;
}

-(void)mp_scrollToItemAtIndexPath:(void *)arg2 atScrollPosition:(unsigned long long)arg3 animated:(bool)arg4 {
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
    r19 = arg4;
    r20 = arg3;
    r21 = self;
    r23 = [arg2 retain];
    r0 = [r21 mp_adPlacer];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r23 = [r23 retain];
    if (r22 != 0x0) {
            r0 = [r22 streamAdPlacer];
            r0 = [r0 retain];
            r24 = [[r0 adjustedIndexPathForOriginalIndexPath:r23] retain];
            [r23 release];
            [r0 release];
            if (r23 == 0x0) {
                    [r21 scrollToItemAtIndexPath:r24 atScrollPosition:r20 animated:r19];
            }
            else {
                    if (r24 != 0x0) {
                            [r21 scrollToItemAtIndexPath:r24 atScrollPosition:r20 animated:r19];
                    }
            }
    }
    else {
            r24 = r23;
            if (r23 != 0x0) {
                    if (r24 != 0x0) {
                            [r21 scrollToItemAtIndexPath:r24 atScrollPosition:r20 animated:r19];
                    }
            }
            else {
                    [r21 scrollToItemAtIndexPath:r24 atScrollPosition:r20 animated:r19];
            }
    }
    [r24 release];
    [r22 release];
    [r23 release];
    return;
}

-(void *)mp_visibleCells {
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
    r20 = self;
    r0 = [self mp_adPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            var_128 = r19;
            r22 = [[r20 mp_indexPathsForVisibleItems] retain];
            r0 = [NSMutableArray array];
            r29 = r29;
            r21 = [r0 retain];
            var_110 = q0;
            r0 = [r22 retain];
            r22 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r0 != 0x0) {
                    r24 = r0;
                    r28 = *var_110;
                    do {
                            r19 = 0x0;
                            do {
                                    if (*var_110 != r28) {
                                            objc_enumerationMutation(r22);
                                    }
                                    r0 = [r20 mp_cellForItemAtIndexPath:*(var_118 + r19 * 0x8)];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r27 = r0;
                                    if (r0 != 0x0) {
                                            [r21 addObject:r2];
                                    }
                                    [r27 release];
                                    r19 = r19 + 0x1;
                            } while (r19 < r24);
                            r0 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            r24 = r0;
                    } while (r0 != 0x0);
            }
            [r22 release];
            [r22 release];
            r19 = var_128;
    }
    else {
            r21 = [[r20 visibleCells] retain];
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)mp_deleteSections:(void *)arg2 {
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
    r0 = [r20 mp_adPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r21 streamAdPlacer];
            r0 = [r0 retain];
            [r0 deleteSections:r2];
            [r23 release];
    }
    [r20 deleteSections:r2];
    [r21 release];
    [r19 release];
    return;
}

-(void)mp_reloadSections:(void *)arg2 {
    [self reloadSections:arg2];
    return;
}

-(void)mp_moveSection:(long long)arg2 toSection:(long long)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    r0 = [self mp_adPlacer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            r0 = [r22 streamAdPlacer];
            r0 = [r0 retain];
            [r0 moveSection:r2 toSection:r3];
            [r24 release];
    }
    [r21 moveSection:r2 toSection:r3];
    [r22 release];
    return;
}

-(void)mp_deleteItemsAtIndexPaths:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self mp_adPlacer] retain];
    var_38 = r20;
    r20 = [r20 retain];
    var_30 = r21;
    r21 = [r21 retain];
    [self performBatchUpdates:&var_58 completion:0x0];
    [var_30 release];
    [var_38 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)mp_insertItemsAtIndexPaths:(void *)arg2 {
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
    r21 = [arg2 retain];
    r0 = [r19 mp_adPlacer];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [r21 retain];
    if (r20 != 0x0) {
            r0 = [r20 streamAdPlacer];
            r0 = [r0 retain];
            [r0 insertItemsAtIndexPaths:r2];
            [r24 release];
            r0 = [r20 streamAdPlacer];
            r0 = [r0 retain];
            r23 = [[r0 adjustedIndexPathsForOriginalIndexPaths:r21] retain];
            [r21 release];
            [r0 release];
    }
    else {
            r23 = r21;
    }
    [r19 insertItemsAtIndexPaths:r2];
    [r23 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)mp_reloadItemsAtIndexPaths:(void *)arg2 {
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
    r21 = [arg2 retain];
    r0 = [r19 mp_adPlacer];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [r21 retain];
    if (r20 != 0x0) {
            r0 = [r20 streamAdPlacer];
            r0 = [r0 retain];
            r22 = [[r0 adjustedIndexPathsForOriginalIndexPaths:r21] retain];
            [r21 release];
            [r0 release];
    }
    else {
            r22 = r21;
    }
    [r19 reloadItemsAtIndexPaths:r22];
    [r22 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)mp_moveItemAtIndexPath:(void *)arg2 toIndexPath:(void *)arg3 {
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
    r19 = self;
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r0 = [r19 mp_adPlacer];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r22 retain];
    r22 = [r23 retain];
    if (r21 != 0x0) {
            r0 = [r21 streamAdPlacer];
            r0 = [r0 retain];
            r23 = [[r0 adjustedIndexPathForOriginalIndexPath:r20] retain];
            [r20 release];
            [r0 release];
            r0 = [r21 streamAdPlacer];
            r0 = [r0 retain];
            r25 = [[r0 adjustedIndexPathForOriginalIndexPath:r22] retain];
            [r22 release];
            [r0 release];
            r0 = [r21 streamAdPlacer];
            r0 = [r0 retain];
            [r0 moveItemAtIndexPath:r2 toIndexPath:r3];
            [r26 release];
    }
    else {
            r23 = r20;
            r25 = r22;
    }
    [r19 moveItemAtIndexPath:r2 toIndexPath:r3];
    [r25 release];
    [r23 release];
    [r21 release];
    [r22 release];
    [r20 release];
    return;
}

@end