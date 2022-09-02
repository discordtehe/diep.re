@implementation GADContent

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithSequenceNumber:(long long)arg2 {
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
    r20 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(GADSettings);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r19->_contentAgeWeight = [r0 integerForKey:*0x100e9b838];
            [r0 release];
            r0 = @class(GADSettings);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r19->_contentLengthWeight = [r0 integerForKey:*0x100e9b840];
            [r0 release];
            objc_storeStrong((int64_t *)&r19->_fingerprint, @"");
            r0 = [GADBinaryHeap alloc];
            r0 = [r0 initWithComparator:0x1008720bc];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_heap));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(GADSettings);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r19->_maximumShingleCount = [r0 integerForKey:*0x100e9b850];
            [r0 release];
            r0 = @class(GADSettings);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r19->_minimumParagraphLength = [r0 integerForKey:*0x100e9b848];
            [r0 release];
            r19->_sequenceNumber = r20;
            r0 = @class(GADSettings);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r19->_shingleLength = [r0 integerForKey:*0x100e9b858];
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void)deductServedPenalty {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_score));
    *(self + r8) = *(self + r8) - 0x64;
    return;
}

-(void)selectShinglesFromTokens:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r21 = [r0 count];
    if (r21 != 0x0) {
            r25 = r20->_shingleLength;
            if (r21 > r25) {
                    if (!CPU_FLAGS & A) {
                            r22 = r21;
                    }
                    else {
                            r22 = r25;
                    }
            }
            r23 = [[r19 firstObject] retain];
            r0 = sub_100873470();
            [r23 release];
            r23 = [[NSIndexSet indexSetWithIndexesInRange:0x1] retain];
            [r19 enumerateObjectsAtIndexes:r23 options:0x0 usingBlock:&var_88];
            r24 = *(int32_t *)(&var_60 + 0x18);
            r22 = [[r19 subarrayWithRange:0x0] retain];
            [r20 updateHeapWithHash:r24 shingle:r22];
            if (r21 >= r25) {
                    [r20 applyRollingHashToTokens:r19 baseHash:r24];
            }
            [r22 release];
            [r23 release];
            _Block_object_dispose(&var_60, 0x8);
    }
    [r19 release];
    return;
}

-(void)applyRollingHashToTokens:(void *)arg2 baseHash:(unsigned int)arg3 {
    r31 = r31 - 0xa0;
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 count];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_shingleLength));
    r8 = *(r20 + r24);
    if (r0 >= r8) {
            sub_100872c90(0x1001fff, r8 - 0x1);
            [r19 count] - *(r20 + r24);
            r22 = [[NSIndexSet indexSetWithIndexesInRange:0x0] retain];
            r23 = [r19 retain];
            var_68 = [r20 retain];
            [r23 enumerateObjectsAtIndexes:r22 options:0x0 usingBlock:&var_90];
            [var_68 release];
            [r23 release];
            [r22 release];
            _Block_object_dispose(&var_50, 0x8);
    }
    [r19 release];
    return;
}

-(void)updateContentWithText:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x230;
    r27 = self;
    r0 = [arg2 retain];
    r26 = r0;
    if ([r0 length] != 0x0) {
            r0 = [r26 componentsSeparatedByString:@"\n"];
            r29 = r29;
            r19 = [r0 retain];
            var_240 = [[NSMutableArray alloc] init];
            r0 = [r19 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_208 = r0;
            var_268 = r1;
            r19 = objc_msgSend(r0, r1);
            if (r19 != 0x0) {
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_minimumParagraphLength));
                    do {
                            r25 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_208);
                                    }
                                    r21 = @selector(length);
                                    r20 = *(0x0 + r25 * 0x8);
                                    if (objc_msgSend(r20, r21) >= *(r27 + r23)) {
                                            sub_100822370(var_240, r20);
                                            r0 = objc_msgSend(r20, r21);
                                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_contentTotalLength));
                                            *(r27 + r8) = *(r27 + r8) + r0;
                                    }
                                    r25 = r25 + 0x1;
                            } while (r25 < r19);
                            r19 = objc_msgSend(var_208, var_268);
                    } while (r19 != 0x0);
            }
            [var_208 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_contentTotalLength));
            r8 = *(r27 + r8);
            r8 = r27->_contentLengthWeight * r8;
            asm { madd       x8, x10, x9, x8 };
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_score));
            if (r8 > *(r27 + r9)) {
                    var_270 = r26;
                    *(r27 + r9) = r8;
                    var_248 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
                    r0 = [var_240 retain];
                    var_260 = r0;
                    r0 = objc_msgSend(r0, var_268);
                    var_210 = r0;
                    if (r0 != 0x0) {
                            var_250 = r27;
                            do {
                                    r19 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(var_260);
                                            }
                                            r21 = @selector(length);
                                            var_200 = r19;
                                            r26 = [[*(0x0 + r19 * 0x8) lowercaseStringWithLocale:var_248] retain];
                                            r19 = [[NSMutableArray alloc] init];
                                            r0 = @class(GADCharacterSets);
                                            r0 = [r0 sharedInstance];
                                            r0 = [r0 retain];
                                            r22 = [[r0 characterDelimitedSet] retain];
                                            [r0 release];
                                            r0 = @class(GADCharacterSets);
                                            r0 = [r0 sharedInstance];
                                            r0 = [r0 retain];
                                            r20 = r0;
                                            r0 = [r0 spaceDelimitedSet];
                                            r29 = r29;
                                            var_1F0 = [r0 retain];
                                            [r20 release];
                                            if (objc_msgSend(r26, r21) != 0x0) {
                                                    r28 = 0x0;
                                                    r27 = 0x0;
                                                    do {
                                                            if (r27 == 0x0) {
                                                                    r27 = [[NSMutableString alloc] init];
                                                            }
                                                            r0 = [r26 characterAtIndex:r28];
                                                            var_15A = r0;
                                                            if ([r22 characterIsMember:r0] != 0x0) {
                                                                    if ([r27 length] != 0x0) {
                                                                            sub_100822370(r19, r27);
                                                                            [r27 release];
                                                                            r27 = 0x0;
                                                                    }
                                                                    sub_100822370(r19, [[NSString alloc] initWithCharacters:r2 length:r3]);
                                                                    [r23 release];
                                                            }
                                                            else {
                                                                    if ([var_1F0 characterIsMember:var_15A] != 0x0) {
                                                                            CFStringAppendCharacters(r27, &var_15A, 0x1);
                                                                    }
                                                                    else {
                                                                            if ([r27 length] != 0x0) {
                                                                                    sub_100822370(r19, r27);
                                                                                    [r27 release];
                                                                                    r27 = 0x0;
                                                                            }
                                                                    }
                                                            }
                                                            r28 = r28 + 0x1;
                                                    } while (r28 < [r26 length]);
                                            }
                                            else {
                                                    r27 = 0x0;
                                            }
                                            if ([r27 length] != 0x0) {
                                                    sub_100822370(r19, r27);
                                            }
                                            r19 = [r19 retain];
                                            [var_1F0 release];
                                            [r22 release];
                                            [r27 release];
                                            [r19 release];
                                            r27 = var_250;
                                            [r27 selectShinglesFromTokens:r2];
                                            [r19 release];
                                            [r26 release];
                                            r19 = var_200 + 0x1;
                                    } while (r19 < var_210);
                                    r0 = objc_msgSend(var_260, var_268);
                                    var_210 = r0;
                            } while (r0 != 0x0);
                    }
                    [var_260 release];
                    r0 = [r27 shingleHash];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_fingerprint));
                    r8 = *(r27 + r9);
                    *(r27 + r9) = r0;
                    [r8 release];
                    [var_248 release];
                    r26 = var_270;
            }
            [var_240 release];
            [var_208 release];
    }
    var_58 = **___stack_chk_guard;
    [r26 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)fingerprint {
    r0 = self->_fingerprint;
    return r0;
}

-(void)updateHeapWithHash:(unsigned int)arg2 shingle:(void *)arg3 {
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
    r23 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_heap));
    r0 = *(r21 + r24);
    r0 = [r0 minimum];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r0 = *(r21 + r24);
    r0 = [r0 count];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_maximumShingleCount));
    if (r0 < *(r21 + r25) || [r20 hashValue] < zero_extend_64(r23)) {
            r23 = [[GADShingleHashTuple alloc] initWithShingle:r19 hashValue:r23];
            if (([*(r21 + r24) containsObject:r2] & 0x1) == 0x0) {
                    [*(r21 + r24) addObjectToHeap:r23];
                    if ([*(r21 + r24) count] > *(r21 + r25)) {
                            [[[*(r21 + r24) removedMinimum] retain] release];
                    }
            }
            [r23 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(long long)score {
    r0 = self->_score;
    return r0;
}

-(void *)shingleHash {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x210;
    r22 = self;
    r20 = &stack[-504];
    *r20 = **___stack_chk_guard;
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_heap));
    if ([*(r22 + r19) count] != 0x0) {
            var_230 = [[NSMutableData alloc] init];
            r0 = *(r22 + r19);
            r0 = [r0 sortedObjects];
            r29 = r29;
            r0 = [r0 retain];
            var_250 = r0;
            r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            var_200 = r0;
            if (r0 != 0x0) {
                    r26 = &@class(MCConfigurationData);
                    var_248 = sign_extend_64(*(int32_t *)ivar_offset(_shingleLength));
                    var_238 = r22;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_250);
                                    }
                                    r23 = @selector(countByEnumeratingWithState:objects:count:);
                                    r0 = *(0x0 + r21 * 0x8);
                                    r0 = [r0 shingle];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    r27 = r26;
                                    r24 = [[*(r26 + 0x588) alloc] initWithCapacity:*(r22 + var_248)];
                                    r0 = [r20 retain];
                                    r20 = r0;
                                    r25 = objc_msgSend(r0, r23);
                                    if (r25 != 0x0) {
                                            do {
                                                    r26 = 0x0;
                                                    do {
                                                            if (*0x0 != *0x0) {
                                                                    objc_enumerationMutation(r20);
                                                            }
                                                            sub_100873470();
                                                            [r24 appendBytes:r2 length:r3];
                                                            r26 = r26 + 0x1;
                                                    } while (r26 < r25);
                                                    r25 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            } while (r25 != 0x0);
                                    }
                                    [r20 release];
                                    r26 = r27;
                                    r25 = [[*(r26 + 0x588) alloc] initWithCapacity:0x10];
                                    r0 = objc_retainAutorelease(r24);
                                    r28 = [r0 bytes];
                                    r22 = [r0 length];
                                    r0 = objc_retainAutorelease(r25);
                                    CC_MD5(r28, r22, [r0 mutableBytes]);
                                    r0 = objc_retainAutorelease(r25);
                                    [r0 bytes];
                                    [var_230 appendBytes:r2 length:r3];
                                    [r22 release];
                                    [r24 release];
                                    [r20 release];
                                    r21 = r21 + 0x1;
                                    r22 = var_238;
                            } while (r21 < var_200);
                            r0 = [var_250 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            var_200 = r0;
                    } while (r0 != 0x0);
            }
            r19 = [sub_100845988() retain];
            [var_250 release];
            [var_230 release];
            r20 = &stack[-504];
    }
    else {
            r19 = @"";
            [r19 retain];
    }
    if (**___stack_chk_guard == *r20) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(long long)sequenceNumber {
    r0 = self->_sequenceNumber;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_fingerprint, 0x0);
    objc_storeStrong((int64_t *)&self->_heap, 0x0);
    return;
}

@end