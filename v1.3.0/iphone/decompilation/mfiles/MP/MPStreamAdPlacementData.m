@implementation MPStreamAdPlacementData

-(void *)initWithPositioning:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 initializeDesiredPositionsFromPositioning:r19];
            r22 = [[NSMutableDictionary dictionary] retain];
            [r20 setOriginalAdIndexPaths:r22];
            [r22 release];
            r22 = [[NSMutableDictionary dictionary] retain];
            [r20 setAdjustedAdIndexPaths:r22];
            [r22 release];
            r21 = [[NSMutableDictionary dictionary] retain];
            [r20 setAdDataObjects:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)positioningArrayForSection:(unsigned long long)arg2 inDictionary:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg3 retain];
    r23 = [[NSNumber numberWithUnsignedInteger:r20] retain];
    r0 = [r19 objectForKey:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 == 0x0) {
            r22 = [[NSMutableArray array] retain];
            [[NSNumber numberWithUnsignedInteger:r20] retain];
            [r19 setObject:r2 forKey:r3];
            [r20 release];
    }
    r0 = [r22 retain];
    [r0 release];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)initializeDesiredPositionsFromPositioning:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r0 = [arg2 retain];
    r28 = r0;
    r0 = [r0 fixedPositions];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 array];
    r0 = [r0 retain];
    r21 = [[r0 sortedArrayUsingSelector:@selector(compare:)] retain];
    [r0 release];
    [r22 release];
    r23 = [[NSMutableDictionary dictionary] retain];
    [r20 setDesiredOriginalPositions:r23];
    [r23 release];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 dictionary];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r20 setDesiredInsertionPositions:r22];
    [r22 release];
    [r21 enumerateObjectsUsingBlock:&var_78];
    if ([r28 repeatingInterval] >= 0x2) {
            r0 = [r21 lastObject];
            r0 = [r0 retain];
            r22 = [r0 section];
            [r0 release];
            r26 = [[r20 desiredOriginalPositions] retain];
            r23 = [[r20 positioningArrayForSection:r22 inDictionary:r26] retain];
            [r26 release];
            var_90 = r23;
            r24 = 0xff - [r23 count];
            r0 = [r21 lastObject];
            r29 = r29;
            r0 = [r0 retain];
            r26 = r0;
            var_88 = r22;
            var_80 = r21;
            r23 = @selector(repeatingInterval);
            r22 = r20;
            if (r0 != 0x0) {
                    r0 = [r21 lastObject];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 row];
                    [r0 release];
            }
            [r26 release];
            r19 = var_88;
            if (r24 != 0x0) {
                    r21 = 0x1;
                    do {
                            objc_msgSend(r28, r23);
                            asm { madd       x2, x0, x21, x25 };
                            r0 = objc_msgSend(@class(NSIndexPath), r26);
                            r29 = r29;
                            r0 = [r0 retain];
                            objc_msgSend(r22, r27);
                            r0 = r28;
                            r28 = r20;
                            [r0 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r24);
            }
            [var_90 release];
            r21 = var_80;
    }
    [r21 release];
    [r28 release];
    return;
}

-(void)insertDesiredPositionsForIndexPath:(void *)arg2 {
    r0 = [arg2 retain];
    r22 = r0;
    r20 = [r0 section];
    r24 = [[self desiredOriginalPositions] retain];
    r20 = [[self positioningArrayForSection:r20 inDictionary:r24] retain];
    [r24 release];
    r0 = [NSIndexPath indexPathForRow:[r22 row] - [r20 count] inSection:[r22 section]];
    r0 = [r0 retain];
    r26 = [r0 copy];
    [r20 addObject:r26];
    [r26 release];
    r21 = [r22 section];
    [r22 release];
    r22 = [[self desiredInsertionPositions] retain];
    r19 = [[self positioningArrayForSection:r21 inDictionary:r22] retain];
    [r22 release];
    r21 = [r0 copy];
    [r19 addObject:r21];
    [r21 release];
    [r19 release];
    [r0 release];
    [r20 release];
    return;
}

-(unsigned long long)adjustedNumberOfItems:(unsigned long long)arg2 inSection:(unsigned long long)arg3 {
    r3 = arg3;
    r0 = self;
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
    r19 = arg2;
    if (arg2 != 0x0) {
            r22 = [[NSIndexPath indexPathForRow:r19 - 0x1 inSection:r3] retain];
            r23 = [[r0 originalAdIndexPaths] retain];
            r21 = [[r0 positioningArrayForSection:r3 inDictionary:r23] retain];
            [r23 release];
            r19 = [r0 indexOfIndexPath:r22 inSortedArray:r21 options:0x600] + r19;
            [r21 release];
            [r22 release];
    }
    r0 = r19;
    return r0;
}

-(void *)adjustedIndexPathForOriginalIndexPath:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0 && [r19 row] != 0x7fffffffffffffff) {
            r23 = [r19 section];
            r24 = [[r21 originalAdIndexPaths] retain];
            r23 = [[r21 positioningArrayForSection:r23 inDictionary:r24] retain];
            [r24 release];
            r20 = [[NSIndexPath indexPathForRow:[r19 row] + [r21 indexOfIndexPath:r19 inSortedArray:r23 options:0x600] inSection:[r19 section]] retain];
            [r23 release];
    }
    else {
            r20 = [r19 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)originalIndexPathForAdjustedIndexPath:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0 && [r19 row] != 0x7fffffffffffffff) {
            if (([r21 isAdAtAdjustedIndexPath:r19] & 0x1) != 0x0) {
                    r20 = 0x0;
            }
            else {
                    r23 = [r19 section];
                    r24 = [[r21 adjustedAdIndexPaths] retain];
                    r23 = [[r21 positioningArrayForSection:r23 inDictionary:r24] retain];
                    [r24 release];
                    r20 = [[NSIndexPath indexPathForRow:[r19 row] - [r21 indexOfIndexPath:r19 inSortedArray:r23 options:0x400] inSection:[r19 section]] retain];
                    [r23 release];
            }
    }
    else {
            r20 = [r19 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)nextAdInsertionIndexPathForAdjustedIndexPath:(void *)arg2 {
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
    if ([r0 section] >= [r20 largestSectionIndexContainingAds]) {
            r20 = 0x0;
    }
    else {
            r23 = [[r20 desiredInsertionPositions] retain];
            r24 = [[NSNumber numberWithUnsignedInteger:[r19 section]] retain];
            r0 = [r23 objectForKey:r24];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
            [r23 release];
            r0 = [r20 indexOfIndexPath:r19 inSortedArray:r22 options:0x500];
            if (r22 != 0x0) {
                    r23 = r0;
                    if (r23 < [r22 count]) {
                            r20 = [[r22 objectAtIndex:r2] retain];
                    }
                    else {
                            r21 = [[NSIndexPath indexPathForRow:0x0 inSection:[r19 section] + 0x1] retain];
                            r20 = [[r20 nextAdInsertionIndexPathForAdjustedIndexPath:r21] retain];
                            [r21 release];
                    }
            }
            else {
                    r21 = [[NSIndexPath indexPathForRow:0x0 inSection:[r19 section] + 0x1] retain];
                    r20 = [[r20 nextAdInsertionIndexPathForAdjustedIndexPath:r21] retain];
                    [r21 release];
            }
            [r22 release];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)previousAdInsertionIndexPathForAdjustedIndexPath:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r21 = r0;
    r19 = [r0 section];
    r22 = [[self desiredInsertionPositions] retain];
    r0 = [self positioningArrayForSection:r19 inDictionary:r22];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    r20 = [self indexOfIndexPath:r21 inSortedArray:r19 options:0x500];
    [r21 release];
    if (r20 != 0x0) {
            r20 = [[r19 objectAtIndexedSubscript:r20 - 0x1] retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)adjustedAdIndexPathsInAdjustedRange:(struct _NSRange)arg2 inSection:(long long)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r23 = [[self adjustedAdIndexPaths] retain];
    r19 = [[self positioningArrayForSection:r4 inDictionary:r23] retain];
    [r23 release];
    r20 = [[r19 indexesOfObjectsPassingTest:&var_60] retain];
    r21 = [[r19 objectsAtIndexes:r20] retain];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)clearAdsInAdjustedRange:(struct _NSRange)arg2 inSection:(long long)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xe0;
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
    r20 = [[self adjustedAdIndexPaths] retain];
    r19 = [[r21 positioningArrayForSection:r4 inDictionary:r20] retain];
    [r20 release];
    r22 = [[r21 originalAdIndexPaths] retain];
    r20 = [[r21 positioningArrayForSection:r4 inDictionary:r22] retain];
    [r22 release];
    r25 = [[r21 adDataObjects] retain];
    r22 = [[r21 positioningArrayForSection:r4 inDictionary:r25] retain];
    [r25 release];
    r28 = [[r21 desiredInsertionPositions] retain];
    r25 = [[r21 positioningArrayForSection:r4 inDictionary:r28] retain];
    [r28 release];
    r28 = [[r21 desiredOriginalPositions] retain];
    r26 = [[r21 positioningArrayForSection:r4 inDictionary:r28] retain];
    [r28 release];
    r0 = [r19 indexesOfObjectsPassingTest:&var_80];
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 count] != 0x0) {
            r0 = [r19 retain];
            r24 = r0;
            var_A8 = r0;
            r0 = [r20 retain];
            var_90 = [r26 retain];
            var_88 = [r25 retain];
            [r23 enumerateIndexesWithOptions:0x2 usingBlock:&var_C8];
            [r24 removeObjectsAtIndexes:r23];
            [r0 removeObjectsAtIndexes:r23];
            [r22 removeObjectsAtIndexes:r23];
            [var_88 release];
            [var_90 release];
            [r0 release];
            [var_A8 release];
    }
    [r23 release];
    [r26 release];
    [r25 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)insertAdData:(void *)arg2 atIndexPath:(void *)arg3 {
    r31 = r31 - 0xd0;
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
    r27 = self;
    var_70 = [arg2 retain];
    r0 = [arg3 retain];
    r23 = r0;
    r20 = [r0 section];
    r22 = [[r27 desiredInsertionPositions] retain];
    r28 = [[r27 positioningArrayForSection:r20 inDictionary:r22] retain];
    [r22 release];
    r20 = [r23 section];
    r22 = [[r27 desiredOriginalPositions] retain];
    var_78 = [[r27 positioningArrayForSection:r20 inDictionary:r22] retain];
    [r22 release];
    r20 = [r23 section];
    r22 = [[r27 adjustedAdIndexPaths] retain];
    r21 = [[r27 positioningArrayForSection:r20 inDictionary:r22] retain];
    [r22 release];
    r20 = [r23 section];
    r22 = [[r27 originalAdIndexPaths] retain];
    r26 = [[r27 positioningArrayForSection:r20 inDictionary:r22] retain];
    [r22 release];
    r20 = [r23 section];
    r22 = [[r27 adDataObjects] retain];
    r0 = [r27 positioningArrayForSection:r20 inDictionary:r22];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r22 release];
    r0 = [r27 indexOfIndexPath:r23 inSortedArray:r28 options:0x100];
    if (r0 == 0x7fffffffffffffff) {
            r22 = [[NSString stringWithFormat:@"Attempted to insert an ad at position %@, which is not in the desired array."] retain];
            r25 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
            [MPLogging logEvent:r25 source:0x0 fromClass:[r27 class]];
            r20 = var_78;
            r19 = var_70;
    }
    else {
            r19 = r0;
            var_88 = r23;
            r0 = [var_78 objectAtIndexedSubscript:r19];
            r0 = [r0 retain];
            var_80 = r24;
            r24 = r28;
            r28 = r0;
            r0 = [r24 objectAtIndexedSubscript:r19];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r21;
            r20 = [r27 indexOfIndexPath:r0 inSortedArray:r22 options:0x500];
            var_A8 = r28;
            var_A0 = r26;
            [r26 insertObject:r28 atIndex:r20];
            var_B0 = r0;
            [r22 insertObject:r0 atIndex:r20];
            [var_80 insertObject:var_70 atIndex:r20];
            [var_78 removeObjectAtIndex:r19];
            var_90 = r24;
            [r24 removeObjectAtIndex:r19];
            r26 = r20 + 0x1;
            if (r26 < [r22 count]) {
                    do {
                            r0 = [r22 objectAtIndexedSubscript:r2];
                            r0 = [r0 retain];
                            r0 = [NSIndexPath indexPathForRow:[r0 row] + 0x1 inSection:[r0 section]];
                            r29 = r29;
                            [r0 retain];
                            [r22 setObject:r2 atIndexedSubscript:r3];
                            [r21 release];
                            [r23 release];
                            r26 = r26 + 0x1;
                    } while (r26 < objc_msgSend(r22, r27));
            }
            r26 = @selector(objectAtIndexedSubscript:);
            var_98 = r22;
            r22 = @selector(section);
            r28 = var_90;
            if (r19 < [var_90 count]) {
                    do {
                            r0 = objc_msgSend(r28, r26);
                            r0 = [r0 retain];
                            r0 = [NSIndexPath indexPathForRow:[r0 row] + 0x1 inSection:objc_msgSend(r0, r22)];
                            r29 = r29;
                            [r0 retain];
                            [r28 setObject:r2 atIndexedSubscript:r3];
                            [r23 release];
                            [r21 release];
                            r19 = r19 + 0x1;
                    } while (r19 < objc_msgSend(r28, r27));
            }
            r20 = var_78;
            r19 = var_70;
            r23 = var_88;
            r24 = var_80;
            r26 = var_A0;
            r21 = var_98;
            r25 = var_B0;
            r22 = var_A8;
    }
    [r25 release];
    [r22 release];
    [r24 release];
    [r26 release];
    [r21 release];
    [r20 release];
    [r28 release];
    [r23 release];
    [r19 release];
    return;
}

-(void *)adjustedIndexPathsWithAdsInSection:(unsigned long long)arg2 {
    r21 = [[self adjustedAdIndexPaths] retain];
    r19 = [[self positioningArrayForSection:arg2 inDictionary:r21] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)isAdAtAdjustedIndexPath:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r20 = [r0 section];
    r22 = [[self adjustedAdIndexPaths] retain];
    r20 = [[self positioningArrayForSection:r20 inDictionary:r22] retain];
    [r22 release];
    r19 = [self indexOfIndexPath:r0 inSortedArray:r20 options:0x100];
    [r0 release];
    if (r19 != 0x7fffffffffffffff) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)adDataAtAdjustedIndexPath:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r20 = r0;
    r19 = [r0 section];
    r23 = [[self adjustedAdIndexPaths] retain];
    r19 = [[self positioningArrayForSection:r19 inDictionary:r23] retain];
    [r23 release];
    r22 = [r20 section];
    r23 = [[self adDataObjects] retain];
    r0 = [self positioningArrayForSection:r22 inDictionary:r23];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    r21 = [self indexOfIndexPath:r20 inSortedArray:r19 options:0x100];
    [r20 release];
    if (r21 == 0x7fffffffffffffff) {
            r20 = 0x0;
    }
    else {
            r20 = [[r22 objectAtIndexedSubscript:r21] retain];
    }
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)insertSections:(void *)arg2 {
    [arg2 enumerateIndexesUsingBlock:&var_28];
    return;
}

-(void)deleteSections:(void *)arg2 {
    [arg2 enumerateIndexesWithOptions:0x2 usingBlock:&var_28];
    return;
}

-(void)insertItemsAtIndexPaths:(void *)arg2 {
    r0 = [arg2 sortedArrayUsingSelector:@selector(compare:)];
    r0 = [r0 retain];
    [r0 enumerateObjectsUsingBlock:&var_38];
    [r0 release];
    return;
}

-(void)deleteItemsAtIndexPaths:(void *)arg2 {
    r0 = [arg2 sortedArrayUsingSelector:@selector(compare:)];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 firstObject];
    r0 = [r0 retain];
    [r0 section];
    [r0 release];
    [r19 enumerateObjectsUsingBlock:&var_98];
    _Block_object_dispose(&var_60, 0x8);
    _Block_object_dispose(&saved_fp - 0x40, 0x8);
    [r19 release];
    return;
}

-(void)moveSection:(long long)arg2 toSection:(long long)arg3 {
    r21 = [[self desiredInsertionPositions] retain];
    r0 = [self positioningArrayForSection:arg2 inDictionary:r21];
    r0 = [r0 retain];
    [r21 release];
    r24 = [[self desiredOriginalPositions] retain];
    var_80 = [[self positioningArrayForSection:arg2 inDictionary:r24] retain];
    [r24 release];
    r24 = [[self adjustedAdIndexPaths] retain];
    var_78 = [[self positioningArrayForSection:arg2 inDictionary:r24] retain];
    [r24 release];
    r26 = [[self originalAdIndexPaths] retain];
    var_68 = [[self positioningArrayForSection:arg2 inDictionary:r26] retain];
    [r26 release];
    r24 = [[self adDataObjects] retain];
    var_58 = [[self positioningArrayForSection:arg2 inDictionary:r24] retain];
    [r24 release];
    r23 = [[NSIndexSet indexSetWithIndex:arg2] retain];
    [self deleteSections:r23];
    [r23 release];
    r23 = [[NSIndexSet indexSetWithIndex:arg3] retain];
    [self insertSections:r23];
    [r23 release];
    r24 = [[self desiredInsertionPositions] retain];
    r25 = [[NSNumber numberWithInteger:arg3] retain];
    [r24 setObject:r0 forKeyedSubscript:r25];
    [r25 release];
    [r24 release];
    r21 = [[self desiredOriginalPositions] retain];
    r24 = [[NSNumber numberWithInteger:arg3] retain];
    [r21 setObject:var_80 forKeyedSubscript:r24];
    [r24 release];
    [r21 release];
    r21 = [[self adjustedAdIndexPaths] retain];
    r24 = [[NSNumber numberWithInteger:arg3] retain];
    [r21 setObject:var_78 forKeyedSubscript:r24];
    [r24 release];
    [r21 release];
    r21 = [[self originalAdIndexPaths] retain];
    r24 = [[NSNumber numberWithInteger:arg3] retain];
    [r21 setObject:var_68 forKeyedSubscript:r24];
    [r24 release];
    [r21 release];
    r21 = [[self adDataObjects] retain];
    r22 = [[NSNumber numberWithInteger:arg3] retain];
    [r21 setObject:var_58 forKeyedSubscript:r22];
    [r22 release];
    [r21 release];
    [self updateAllSectionsForPositioningArraysAtSection:arg3];
    [var_58 release];
    [var_68 release];
    [var_78 release];
    [var_80 release];
    [r0 release];
    return;
}

-(void)moveItemAtIndexPath:(void *)arg2 toIndexPath:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r22 = @class(NSArray);
    r21 = [arg3 retain];
    r22 = [[r22 arrayWithObjects:&var_40 count:0x1] retain];
    [self deleteItemsAtIndexPaths:r22];
    [r22 release];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_48 count:0x1];
    r22 = [r0 retain];
    [self insertItemsAtIndexPaths:r22];
    [r21 release];
    [r19 release];
    [r22 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(unsigned long long)indexOfIndexPath:(void *)arg2 inSortedArray:(void *)arg3 options:(unsigned long long)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = 0x7fffffffffffffff;
    if (r19 != 0x0) {
            r22 = 0x7fffffffffffffff;
            if ([r19 row] != r22) {
                    r22 = [r20 indexOfObject:r19 inSortedRange:0x0 options:[r20 count] usingComparator:r21];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)incrementDesiredIndexPathsAtIndex:(unsigned long long)arg2 inSection:(unsigned long long)arg3 {
    r23 = [[self desiredOriginalPositions] retain];
    r20 = [[self positioningArrayForSection:arg3 inDictionary:r23] retain];
    [r23 release];
    r23 = [[self desiredInsertionPositions] retain];
    r21 = [[self positioningArrayForSection:arg3 inDictionary:r23] retain];
    [r23 release];
    var_58 = r20;
    r0 = [r20 objectAtIndexedSubscript:arg2];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[NSIndexPath indexPathForRow:[r0 row] + 0x1 inSection:[r22 section]] retain];
    [r20 setObject:r23 atIndexedSubscript:arg2];
    r0 = [r21 objectAtIndexedSubscript:arg2];
    r0 = [r0 retain];
    r20 = [[NSIndexPath indexPathForRow:[r0 row] + 0x1 inSection:[r0 section]] retain];
    [r21 setObject:r20 atIndexedSubscript:arg2];
    [r20 release];
    [r0 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [var_58 release];
    return;
}

-(unsigned long long)largestSectionIndexContainingAds {
    r0 = [self desiredInsertionPositions];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 allKeys];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 valueForKeyPath:@"@max.unsignedIntValue"];
    r0 = [r0 retain];
    r22 = [r0 unsignedIntegerValue];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)decrementDesiredIndexPathsAtIndex:(unsigned long long)arg2 inSection:(unsigned long long)arg3 {
    r23 = [[self desiredOriginalPositions] retain];
    r20 = [[self positioningArrayForSection:arg3 inDictionary:r23] retain];
    [r23 release];
    r23 = [[self desiredInsertionPositions] retain];
    r21 = [[self positioningArrayForSection:arg3 inDictionary:r23] retain];
    [r23 release];
    var_58 = r20;
    r0 = [r20 objectAtIndexedSubscript:arg2];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[NSIndexPath indexPathForRow:[r0 row] - 0x1 inSection:[r22 section]] retain];
    [r20 setObject:r23 atIndexedSubscript:arg2];
    r0 = [r21 objectAtIndexedSubscript:arg2];
    r0 = [r0 retain];
    r20 = [[NSIndexPath indexPathForRow:[r0 row] - 0x1 inSection:[r0 section]] retain];
    [r21 setObject:r20 atIndexedSubscript:arg2];
    [r20 release];
    [r0 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [var_58 release];
    return;
}

-(void)incrementPlacedIndexPathsAtIndex:(unsigned long long)arg2 inSection:(unsigned long long)arg3 {
    r23 = [[self originalAdIndexPaths] retain];
    r20 = [[self positioningArrayForSection:arg3 inDictionary:r23] retain];
    [r23 release];
    r23 = [[self adjustedAdIndexPaths] retain];
    r21 = [[self positioningArrayForSection:arg3 inDictionary:r23] retain];
    [r23 release];
    var_58 = r20;
    r0 = [r20 objectAtIndexedSubscript:arg2];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[NSIndexPath indexPathForRow:[r0 row] + 0x1 inSection:[r22 section]] retain];
    [r20 setObject:r23 atIndexedSubscript:arg2];
    r0 = [r21 objectAtIndexedSubscript:arg2];
    r0 = [r0 retain];
    r20 = [[NSIndexPath indexPathForRow:[r0 row] + 0x1 inSection:[r0 section]] retain];
    [r21 setObject:r20 atIndexedSubscript:arg2];
    [r20 release];
    [r0 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [var_58 release];
    return;
}

-(void)decrementPlacedIndexPathsAtIndex:(unsigned long long)arg2 inSection:(unsigned long long)arg3 {
    r23 = [[self originalAdIndexPaths] retain];
    r20 = [[self positioningArrayForSection:arg3 inDictionary:r23] retain];
    [r23 release];
    r23 = [[self adjustedAdIndexPaths] retain];
    r21 = [[self positioningArrayForSection:arg3 inDictionary:r23] retain];
    [r23 release];
    var_58 = r20;
    r0 = [r20 objectAtIndexedSubscript:arg2];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[NSIndexPath indexPathForRow:[r0 row] - 0x1 inSection:[r22 section]] retain];
    [r20 setObject:r23 atIndexedSubscript:arg2];
    r0 = [r21 objectAtIndexedSubscript:arg2];
    r0 = [r0 retain];
    r20 = [[NSIndexPath indexPathForRow:[r0 row] - 0x1 inSection:[r0 section]] retain];
    [r21 setObject:r20 atIndexedSubscript:arg2];
    [r20 release];
    [r0 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [var_58 release];
    return;
}

-(void)copyPositioningArrayInDictionary:(void *)arg2 atSection:(unsigned long long)arg3 toSection:(unsigned long long)arg4 {
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
    r20 = arg4;
    r22 = arg3;
    r19 = [arg2 retain];
    r24 = [[NSNumber numberWithUnsignedInteger:r22] retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    if (r0 != 0x0) {
            r22 = [[NSNumber numberWithUnsignedInteger:r22] retain];
            r23 = [[r19 objectForKeyedSubscript:r2] retain];
            r20 = [[NSNumber numberWithUnsignedInteger:r20] retain];
            [r19 setObject:r23 forKeyedSubscript:r20];
            [r20 release];
            [r23 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)updateSectionForPositioningArray:(void *)arg2 toSection:(unsigned long long)arg3 {
    r31 = r31 - 0x80;
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
    r19 = arg3;
    r0 = [arg2 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            r22 = 0x0;
            do {
                    r0 = [r20 objectAtIndexedSubscript:r22];
                    r0 = [r0 retain];
                    [r0 indexAtPosition:0x1];
                    r0 = [NSIndexPath indexPathWithIndexes:&var_68 length:0x2];
                    r29 = r29;
                    [r0 retain];
                    [r20 setObject:r2 atIndexedSubscript:r3];
                    [r28 release];
                    [r27 release];
                    r22 = r22 + 0x1;
            } while (r22 < objc_msgSend(r20, r21));
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)moveAllPositioningArraysInDictionariesAtSection:(unsigned long long)arg2 toSection:(unsigned long long)arg3 {
    r23 = [[self desiredInsertionPositions] retain];
    [self copyPositioningArrayInDictionary:r23 atSection:arg2 toSection:arg3];
    [r23 release];
    r23 = [[self desiredOriginalPositions] retain];
    [self copyPositioningArrayInDictionary:r23 atSection:arg2 toSection:arg3];
    [r23 release];
    r23 = [[self adjustedAdIndexPaths] retain];
    [self copyPositioningArrayInDictionary:r23 atSection:arg2 toSection:arg3];
    [r23 release];
    r23 = [[self originalAdIndexPaths] retain];
    [self copyPositioningArrayInDictionary:r23 atSection:arg2 toSection:arg3];
    [r23 release];
    r23 = [[self adDataObjects] retain];
    [self copyPositioningArrayInDictionary:r23 atSection:arg2 toSection:arg3];
    [r23 release];
    [self updateAllSectionsForPositioningArraysAtSection:arg3];
    [self clearPositioningArraysInDictionariesAtSection:arg2];
    return;
}

-(void)clearPositioningArraysInDictionariesAtSection:(unsigned long long)arg2 {
    r23 = [[self desiredInsertionPositions] retain];
    r24 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    [r23 removeObjectForKey:r24];
    [r24 release];
    [r23 release];
    r23 = [[self desiredOriginalPositions] retain];
    r24 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    [r23 removeObjectForKey:r24];
    [r24 release];
    [r23 release];
    r23 = [[self adjustedAdIndexPaths] retain];
    r24 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    [r23 removeObjectForKey:r24];
    [r24 release];
    [r23 release];
    r23 = [[self originalAdIndexPaths] retain];
    r24 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    [r23 removeObjectForKey:r24];
    [r24 release];
    [r23 release];
    r20 = [[self adDataObjects] retain];
    r19 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    [r20 removeObjectForKey:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)updateAllSectionsForPositioningArraysAtSection:(unsigned long long)arg2 {
    r24 = [[self desiredInsertionPositions] retain];
    r25 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    r26 = [[r24 objectForKeyedSubscript:r25] retain];
    [self updateSectionForPositioningArray:r26 toSection:arg2];
    [r26 release];
    [r25 release];
    [r24 release];
    r24 = [[self desiredOriginalPositions] retain];
    r25 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    r26 = [[r24 objectForKeyedSubscript:r25] retain];
    [self updateSectionForPositioningArray:r26 toSection:arg2];
    [r26 release];
    [r25 release];
    [r24 release];
    r24 = [[self adjustedAdIndexPaths] retain];
    r25 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    r26 = [[r24 objectForKeyedSubscript:r25] retain];
    [self updateSectionForPositioningArray:r26 toSection:arg2];
    [r26 release];
    [r25 release];
    [r24 release];
    r24 = [[self originalAdIndexPaths] retain];
    r21 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    r22 = [[r24 objectForKeyedSubscript:r21] retain];
    [self updateSectionForPositioningArray:r22 toSection:arg2];
    [r22 release];
    [r21 release];
    [r24 release];
    return;
}

-(void *)desiredOriginalPositions {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setDesiredOriginalPositions:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)desiredInsertionPositions {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setDesiredInsertionPositions:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)originalAdIndexPaths {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)adjustedAdIndexPaths {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setOriginalAdIndexPaths:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void)setAdjustedAdIndexPaths:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)adDataObjects {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setAdDataObjects:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end