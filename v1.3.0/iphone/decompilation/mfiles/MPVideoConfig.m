@implementation MPVideoConfig

-(void *)initWithVASTResponse:(void *)arg2 additionalTrackers:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            [r21 commonInit:r19 additionalTrackers:r20];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)clickTrackingURLsFromWrapper:(void *)arg2 {
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
    r19 = [arg2 retain];
    r20 = [[NSMutableArray array] retain];
    var_110 = q0;
    var_130 = r19;
    r0 = [r19 creatives];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r19 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r19) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = *(var_118 + r22 * 0x8);
                            r0 = [r0 linearAd];
                            r0 = [r0 retain];
                            r0 = [r0 clickTrackingURLs];
                            r29 = r29;
                            [r0 retain];
                            [r20 addObjectsFromArray:r2];
                            [r28 release];
                            [r27 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r0 = objc_msgSend(r21, var_128);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    [var_130 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)trackingEventsFromWrapper:(void *)arg2 {
    r31 = r31 - 0x150;
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
    var_138 = self;
    r19 = [arg2 retain];
    r21 = [[NSMutableArray array] retain];
    var_110 = q0;
    var_130 = r19;
    r0 = [r19 creatives];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r24 = r0;
            r19 = *var_110;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_110 != r19) {
                                    objc_enumerationMutation(r22);
                            }
                            r27 = @selector(addObject:);
                            r0 = *(var_118 + r23 * 0x8);
                            r0 = [r0 linearAd];
                            r0 = [r0 retain];
                            r0 = [r0 trackingEvents];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r21, r27);
                            [r20 release];
                            [r28 release];
                            r23 = r23 + 0x1;
                    } while (r23 < r24);
                    r0 = objc_msgSend(r22, var_128);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r22 release];
    r20 = [[var_138 dictionaryByMergingTrackingDictionaries:r21] retain];
    [r21 release];
    [var_130 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)commonInit:(void *)arg2 additionalTrackers:(void *)arg3 {
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
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [r20 playbackCandidatesFromVASTResponse:r22];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    if ([r21 count] != 0x0) {
            r0 = [r21 objectAtIndexedSubscript:0x0];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 linearAd];
            r0 = [r0 retain];
            r23 = [[r0 highestBitrateMediaFile] retain];
            [r0 release];
            r0 = [r23 URL];
            r0 = [r0 retain];
            r8 = *(r20 + 0x8);
            *(r20 + 0x8) = r0;
            [r8 release];
            r0 = [r22 linearAd];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 clickThroughURL];
            r0 = [r0 retain];
            r8 = *(r20 + 0x10);
            *(r20 + 0x10) = r0;
            [r8 release];
            [r25 release];
            r0 = [r22 linearAd];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 clickTrackingURLs];
            r0 = [r0 retain];
            r8 = *(r20 + 0x18);
            *(r20 + 0x18) = r0;
            [r8 release];
            [r25 release];
            r0 = [r22 errorURLs];
            r0 = [r0 retain];
            r8 = *(r20 + 0x20);
            *(r20 + 0x20) = r0;
            [r8 release];
            r0 = [r22 impressionURLs];
            r0 = [r0 retain];
            r8 = *(r20 + 0x28);
            *(r20 + 0x28) = r0;
            [r8 release];
            r0 = [r22 linearAd];
            r0 = [r0 retain];
            r24 = [[r0 trackingEvents] retain];
            [r0 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e350];
            r0 = [r0 retain];
            r8 = *(r20 + 0x30);
            *(r20 + 0x30) = r0;
            [r8 release];
            r0 = [r20 trackersByMergingOriginalTrackers:r24 additionalTrackers:r19 name:*0x100e7e358];
            r0 = [r0 retain];
            r8 = *(r20 + 0x38);
            *(r20 + 0x38) = r0;
            [r8 release];
            r0 = [r20 trackersByMergingOriginalTrackers:r24 additionalTrackers:r19 name:*0x100e7e360];
            r0 = [r0 retain];
            r8 = *(r20 + 0x40);
            *(r20 + 0x40) = r0;
            [r8 release];
            r0 = [r20 trackersByMergingOriginalTrackers:r24 additionalTrackers:r19 name:*0x100e7e368];
            r0 = [r0 retain];
            r8 = *(r20 + 0x48);
            *(r20 + 0x48) = r0;
            [r8 release];
            r0 = [r20 trackersByMergingOriginalTrackers:r24 additionalTrackers:r19 name:*0x100e7e370];
            r0 = [r0 retain];
            r8 = *(r20 + 0x50);
            *(r20 + 0x50) = r0;
            [r8 release];
            r0 = [r20 trackersByMergingOriginalTrackers:r24 additionalTrackers:r19 name:*0x100e7e378];
            r0 = [r0 retain];
            r8 = *(r20 + 0x58);
            *(r20 + 0x58) = r0;
            [r8 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e380];
            r0 = [r0 retain];
            r8 = *(r20 + 0x60);
            *(r20 + 0x60) = r0;
            [r8 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e388];
            r0 = [r0 retain];
            r8 = *(r20 + 0x68);
            *(r20 + 0x68) = r0;
            [r8 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e390];
            r0 = [r0 retain];
            r8 = *(r20 + 0x70);
            *(r20 + 0x70) = r0;
            [r8 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e398];
            r0 = [r0 retain];
            r8 = *(r20 + 0x78);
            *(r20 + 0x78) = r0;
            [r8 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e3a0];
            r0 = [r0 retain];
            r8 = *(r20 + 0x80);
            *(r20 + 0x80) = r0;
            [r8 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e3a8];
            r0 = [r0 retain];
            r8 = *(r20 + 0x88);
            *(r20 + 0x88) = r0;
            [r8 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e3b0];
            r0 = [r0 retain];
            r8 = *(r20 + 0x90);
            *(r20 + 0x90) = r0;
            [r8 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e3b8];
            r0 = [r0 retain];
            r8 = *(r20 + 0x98);
            *(r20 + 0x98) = r0;
            [r8 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e3c0];
            r0 = [r0 retain];
            r8 = *(r20 + 0xa0);
            *(r20 + 0xa0) = r0;
            [r8 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e3c8];
            r0 = [r0 retain];
            r8 = *(r20 + 0xa8);
            *(r20 + 0xa8) = r0;
            [r8 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e3d0];
            r0 = [r0 retain];
            r8 = *(r20 + 0xb0);
            *(r20 + 0xb0) = r0;
            [r8 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e3d8];
            r0 = [r0 retain];
            r8 = *(r20 + 0xb8);
            *(r20 + 0xb8) = r0;
            [r8 release];
            r0 = [r24 objectForKeyedSubscript:*0x100e7e3e0];
            r0 = [r0 retain];
            r8 = *(r20 + 0xc0);
            *(r20 + 0xc0) = r0;
            [r8 release];
            [r22 minimumViewabilityTimeInterval];
            *(r20 + 0xc8) = d0;
            [r22 minimumFractionOfVideoVisible];
            *(r20 + 0xd0) = d0;
            r0 = [r22 viewabilityTrackingURL];
            r0 = [r0 retain];
            r8 = *(r20 + 0xd8);
            *(r20 + 0xd8) = r0;
            [r8 release];
            [r24 release];
            [r23 release];
            [r22 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)customClickURLsFromWrapper:(void *)arg2 {
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
    r19 = [arg2 retain];
    r20 = [[NSMutableArray array] retain];
    var_110 = q0;
    var_130 = r19;
    r0 = [r19 creatives];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r19 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r19) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = *(var_118 + r22 * 0x8);
                            r0 = [r0 linearAd];
                            r0 = [r0 retain];
                            r0 = [r0 customClickURLs];
                            r29 = r29;
                            [r0 retain];
                            [r20 addObjectsFromArray:r2];
                            [r28 release];
                            [r27 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r0 = objc_msgSend(r21, var_128);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    [var_130 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)industryIconsFromWrapper:(void *)arg2 {
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
    r19 = [arg2 retain];
    r20 = [[NSMutableArray array] retain];
    var_110 = q0;
    var_130 = r19;
    r0 = [r19 creatives];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r23 = r0;
            r19 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r19) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = *(var_118 + r22 * 0x8);
                            r0 = [r0 linearAd];
                            r0 = [r0 retain];
                            r0 = [r0 industryIcons];
                            r29 = r29;
                            [r0 retain];
                            [r20 addObjectsFromArray:r2];
                            [r28 release];
                            [r27 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r0 = objc_msgSend(r21, var_128);
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    [var_130 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)firstObjectForKey:(void *)arg2 inDictionary:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r0 = [arg3 objectForKey:r20];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    [NSArray class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r19 firstObject];
            r0 = [r0 retain];
    }
    else {
            r0 = [r19 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)trackersByMergingOriginalTrackers:(void *)arg2 additionalTrackers:(void *)arg3 name:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [[r19 objectForKeyedSubscript:r21] retain];
    [NSArray class];
    r26 = [r23 isKindOfClass:r2];
    [r23 release];
    r0 = [r20 objectForKeyedSubscript:r21];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if ((r26 & 0x1) != 0x0) {
            r25 = @selector(isKindOfClass:);
            [NSArray class];
            r24 = objc_msgSend(r23, r25);
            [r23 release];
            if ((r24 & 0x1) != 0x0) {
                    r23 = [NSMutableArray new];
                    r24 = [[r19 objectForKeyedSubscript:r21] retain];
                    [r23 addObjectsFromArray:r24];
                    [r24 release];
                    r22 = [[r20 objectForKeyedSubscript:r21] retain];
                    [r23 addObjectsFromArray:r22];
                    [r22 release];
            }
            else {
                    r23 = [[r19 objectForKeyedSubscript:r21] retain];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)mediaURL {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setMediaURL:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)extensionFromInlineAd:(void *)arg2 forKey:(void *)arg3 {
    r31 = r31 - 0x160;
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
    r23 = self;
    r20 = [arg2 retain];
    r26 = [arg3 retain];
    r0 = [r20 extensions];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"Extension"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [NSDictionary class];
    if ([r22 isKindOfClass:r2] == 0x0) goto loc_100477f68;

loc_100477f18:
    r25 = @selector(isKindOfClass:);
    r27 = [[r23 firstObjectForKey:r26 inDictionary:r22] retain];
    [NSDictionary class];
    if ((objc_msgSend(r27, r25) & 0x1) != 0x0) goto loc_1004780e0;

loc_100477f5c:
    [r27 release];
    goto loc_1004780bc;

loc_1004780bc:
    r27 = 0x0;
    goto loc_1004780e0;

loc_1004780e0:
    var_60 = **___stack_chk_guard;
    [r22 release];
    [r19 release];
    [r26 release];
    [r20 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r27 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100477f68:
    r25 = @selector(isKindOfClass:);
    [NSArray class];
    if (objc_msgSend(r22, r25) == 0x0) goto loc_1004780bc;

loc_100477f8c:
    var_140 = r19;
    stack[-328] = r20;
    var_128 = r26;
    var_148 = r22;
    r0 = [r22 retain];
    var_110 = q0;
    r0 = [r0 retain];
    r26 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1004780a4;

loc_100477fd4:
    r28 = r0;
    r22 = *var_110;
    goto loc_100477fe4;

loc_100477fe4:
    r20 = 0x0;
    goto loc_100477fec;

loc_100477fec:
    if (*var_110 != r22) {
            objc_enumerationMutation(r26);
    }
    r25 = @selector(isKindOfClass:);
    r27 = *(var_118 + r20 * 0x8);
    [NSDictionary class];
    if (objc_msgSend(r27, r25) == 0x0) goto loc_100478074;

loc_10047802c:
    r25 = @selector(isKindOfClass:);
    r0 = [r23 firstObjectForKey:r2 inDictionary:r3];
    r29 = r29;
    r27 = [r0 retain];
    [NSDictionary class];
    if ((objc_msgSend(r27, r25) & 0x1) != 0x0) goto loc_1004780c4;

loc_10047806c:
    [r27 release];
    goto loc_100478074;

loc_100478074:
    r20 = r20 + 0x1;
    if (r20 < r28) goto loc_100477fec;

loc_100478080:
    r0 = objc_msgSend(r26, var_130);
    r28 = r0;
    if (r0 != 0x0) goto loc_100477fe4;

loc_1004780a4:
    [r26 release];
    [r26 release];
    r27 = 0x0;
    goto loc_1004780d4;

loc_1004780d4:
    r19 = var_140;
    r20 = stack[-328];
    r26 = var_128;
    r22 = var_148;
    goto loc_1004780e0;

loc_1004780c4:
    [r26 release];
    [r26 release];
    goto loc_1004780d4;
}

-(void *)clickThroughURL {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)clickTrackingURLs {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setClickThroughURL:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)dictionaryByMergingTrackingDictionaries:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x240;
    var_238 = self;
    r19 = [arg2 retain];
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r25 = [r0 retain];
    var_190 = q0;
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_278 = r0;
    var_250 = r1;
    r0 = objc_msgSend(r0, r1);
    var_260 = r0;
    if (r0 != 0x0) {
            var_270 = *var_190;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_190 != var_270) {
                                    objc_enumerationMutation(var_278);
                            }
                            var_258 = r19;
                            r23 = *(var_198 + r19 * 0x8);
                            var_1D0 = q0;
                            r0 = [r23 allKeys];
                            r29 = r29;
                            r0 = [r0 retain];
                            var_210 = r0;
                            r0 = objc_msgSend(r0, var_250);
                            var_1E8 = r0;
                            if (r0 != 0x0) {
                                    r26 = *var_1D0;
                                    var_200 = r23;
                                    do {
                                            r28 = 0x0;
                                            r21 = @selector(objectForKeyedSubscript:);
                                            r27 = @selector(class);
                                            var_1F0 = r27;
                                            do {
                                                    if (*var_1D0 != r26) {
                                                            objc_enumerationMutation(var_210);
                                                    }
                                                    r22 = *(var_1D8 + r28 * 0x8);
                                                    r0 = objc_msgSend(r23, r21);
                                                    r29 = r29;
                                                    [r0 retain];
                                                    objc_msgSend(@class(NSArray), r27);
                                                    r24 = [r19 isKindOfClass:r2];
                                                    [r19 release];
                                                    if (r24 != 0x0) {
                                                            r0 = objc_msgSend(r25, r21);
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            [r0 release];
                                                            if (r0 == 0x0) {
                                                                    r0 = [NSMutableArray array];
                                                                    r29 = r29;
                                                                    r19 = [r0 retain];
                                                                    [r25 setObject:r19 forKeyedSubscript:r22];
                                                                    [r19 release];
                                                            }
                                                            r24 = [objc_msgSend(r25, r21) retain];
                                                            r0 = objc_msgSend(r23, r21);
                                                            r29 = r29;
                                                            r27 = [r0 retain];
                                                            [r24 addObjectsFromArray:r2];
                                                    }
                                                    else {
                                                            r0 = objc_msgSend(var_200, r21);
                                                            r0 = [r0 retain];
                                                            r24 = r0;
                                                            r0 = objc_msgSend(r0, r27);
                                                            r0 = NSStringFromClass(r0);
                                                            r0 = [r0 retain];
                                                            r23 = r21;
                                                            r21 = r27;
                                                            r27 = r0;
                                                            r25 = r25;
                                                            r26 = r26;
                                                            r22 = [[NSString stringWithFormat:@"TrackingEvents dictionary expected an array object for key '%@' but got an instance of %@ instead."] retain];
                                                            r0 = [MPLogEvent eventWithMessage:r22 level:0x1e];
                                                            r29 = r29;
                                                            r20 = [r0 retain];
                                                            r1 = r21;
                                                            r21 = r23;
                                                            [MPLogging logEvent:r20 source:0x0 fromClass:objc_msgSend(var_238, r1)];
                                                            r23 = var_200;
                                                            [r20 release];
                                                            [r22 release];
                                                    }
                                                    [r27 release];
                                                    [r24 release];
                                                    r28 = r28 + 0x1;
                                                    r27 = var_1F0;
                                            } while (r28 < var_1E8);
                                            r0 = objc_msgSend(var_210, var_250);
                                            var_1E8 = r0;
                                    } while (r0 != 0x0);
                            }
                            [var_210 release];
                            r19 = var_258 + 0x1;
                    } while (r19 < var_260);
                    r0 = objc_msgSend(var_278, var_250);
                    var_260 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_278 release];
    [var_278 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r25 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setClickTrackingURLs:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)errorURLs {
    r0 = *(self + 0x20);
    return r0;
}

-(void)setErrorURLs:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(void *)impressionURLs {
    r0 = *(self + 0x28);
    return r0;
}

-(void)setImpressionURLs:(void *)arg2 {
    objc_storeStrong(self + 0x28, arg2);
    return;
}

-(void *)creativeViewTrackers {
    r0 = *(self + 0x30);
    return r0;
}

-(void *)startTrackers {
    r0 = *(self + 0x38);
    return r0;
}

-(void)setStartTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x38, arg2);
    return;
}

-(void *)playbackCandidatesFromVASTResponse:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x3a0;
    var_2C8 = self;
    r19 = [arg2 retain];
    var_330 = [[NSMutableArray array] retain];
    var_220 = q0;
    var_3F0 = r19;
    r0 = [r19 ads];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_3D0 = r0;
    var_3A0 = r1;
    r0 = objc_msgSend(r0, r1);
    var_3B0 = r0;
    if (r0 == 0x0) goto loc_10047770c;

loc_100476a84:
    var_3B8 = *var_220;
    goto loc_100476a90;

loc_100476a90:
    r20 = 0x0;
    r22 = @selector(inlineAd);
    var_3C0 = r22;
    goto loc_100476ad8;

loc_100476ad8:
    if (*var_220 != var_3B8) {
            objc_enumerationMutation(var_3D0);
    }
    r25 = *(var_228 + r20 * 0x8);
    r0 = objc_msgSend(r25, r22);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100476fe0;

loc_100476b1c:
    var_3A8 = r20;
    r0 = objc_msgSend(r25, r22);
    r0 = [r0 retain];
    var_2E8 = r0;
    r0 = [r0 creatives];
    r29 = r29;
    r0 = [r0 retain];
    var_260 = q0;
    var_2D8 = r0;
    r0 = objc_msgSend(r0, var_3A0);
    if (r0 == 0x0) goto loc_100476fd4;

loc_100476b70:
    r21 = r0;
    r22 = *var_260;
    var_348 = r22;
    goto loc_100476b80;

loc_100476b80:
    r28 = 0x0;
    r19 = @selector(objectForKeyedSubscript:);
    var_320 = r21;
    goto loc_100476c6c;

loc_100476c6c:
    if (*var_260 != r22) {
            objc_enumerationMutation(var_2D8);
    }
    r20 = *(var_268 + r28 * 0x8);
    r0 = [r20 linearAd];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    if (r0 == 0x0) goto loc_100476fa0;

loc_100476ca8:
    r0 = [r20 linearAd];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 mediaFiles];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 count];
    [r0 release];
    [r24 release];
    [r27 release];
    if (r26 == 0x0) goto loc_100476fa8;

loc_100476cfc:
    r27 = [objc_alloc() init];
    r20 = [[r20 linearAd] retain];
    [r27 setLinearAd:r20];
    [r20 release];
    r21 = r19;
    r20 = [[var_2E8 errorURLs] retain];
    [r27 setErrorURLs:r20];
    [r20 release];
    r20 = [[var_2E8 impressionURLs] retain];
    [r27 setImpressionURLs:r20];
    [r20 release];
    r19 = r21;
    r0 = [var_2C8 extensionFromInlineAd:var_2E8 forKey:@"MoPubViewabilityTracker"];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 != 0x0) {
            r25 = [objc_msgSend(r20, r19) retain];
            r24 = [[NSURL URLWithString:r25] retain];
            [r25 release];
            r22 = r19;
            r0 = objc_msgSend(r20, r22);
            r29 = r29;
            r25 = [r0 retain];
            if (([MPVASTStringUtilities stringRepresentsNonNegativeDuration:r25] & 0x1) != 0x0) {
                    r0 = objc_msgSend(r20, r22);
                    r29 = r29;
                    r19 = [r0 retain];
                    r26 = [MPVASTStringUtilities stringRepresentsNonNegativePercentage:r19];
                    [r19 release];
                    [r25 release];
                    if (r24 != 0x0 && r26 != 0x0) {
                            var_370 = @selector(setMinimumFractionOfVideoVisible:);
                            var_378 = @selector(setViewabilityTrackingURL:);
                            r19 = @class(MPVASTStringUtilities);
                            r25 = [objc_msgSend(r20, r21) retain];
                            [r19 timeIntervalFromString:r25];
                            [r27 setMinimumViewabilityTimeInterval:r25];
                            [r25 release];
                            r19 = @class(MPVASTStringUtilities);
                            r0 = objc_msgSend(r20, r21);
                            r29 = r29;
                            [r19 percentageFromString:[r0 retain]];
                            asm { scvtf      d0, x0 };
                            asm { fdiv       d0, d0, d1 };
                            objc_msgSend(r27, var_370);
                            [r25 release];
                            objc_msgSend(r27, var_378);
                    }
            }
            else {
                    [r25 release];
            }
            [r24 release];
            r19 = r21;
            r22 = var_348;
    }
    [var_330 addObject:r2];
    [r20 release];
    r21 = var_320;
    goto loc_100476fa0;

loc_100476fa0:
    [r27 release];
    goto loc_100476fa8;

loc_100476fa8:
    r28 = r28 + 0x1;
    if (r28 < r21) goto loc_100476c6c;

loc_100476fb4:
    r0 = objc_msgSend(var_2D8, var_3A0);
    r21 = r0;
    if (r0 != 0x0) goto loc_100476b80;

loc_100476fd4:
    [var_2D8 release];
    goto loc_1004776cc;

loc_1004776cc:
    r20 = var_3A8;
    r22 = var_3C0;
    [var_2E8 release];
    goto loc_1004776dc;

loc_1004776dc:
    r20 = r20 + 0x1;
    if (r20 < var_3B0) goto loc_100476ad8;

loc_1004776ec:
    r0 = objc_msgSend(var_3D0, var_3A0);
    var_3B0 = r0;
    if (r0 != 0x0) goto loc_100476a90;

loc_10047770c:
    var_60 = **___stack_chk_guard;
    [var_3D0 release];
    [var_3F0 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_330 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100476fe0:
    r0 = [r25 wrapper];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1004776dc;

loc_100477000:
    var_3A8 = r20;
    r0 = [r25 wrapper];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [[r0 wrappedVASTResponse] retain];
    r0 = [var_2C8 playbackCandidatesFromVASTResponse:r21];
    r29 = r29;
    r23 = [r0 retain];
    [r21 release];
    [r19 release];
    var_2A0 = q0;
    r0 = [r23 retain];
    var_2E8 = r0;
    r0 = objc_msgSend(r0, var_3A0);
    var_2F0 = r0;
    if (r0 != 0x0) {
            var_398 = *var_2A0;
            var_2C0 = r25;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_2A0 != var_398) {
                                    objc_enumerationMutation(var_2E8);
                            }
                            r21 = *(var_2A8 + r19 * 0x8);
                            r0 = [r21 errorURLs];
                            r0 = [r0 retain];
                            var_2D8 = r19;
                            r19 = r0;
                            r0 = [r25 wrapper];
                            r0 = [r0 retain];
                            r24 = [[r0 errorURLs] retain];
                            r28 = [[r19 arrayByAddingObjectsFromArray:r24] retain];
                            [r21 setErrorURLs:r28];
                            [r28 release];
                            [r24 release];
                            [r0 release];
                            [r19 release];
                            r19 = [[r21 impressionURLs] retain];
                            r0 = [r25 wrapper];
                            r0 = [r0 retain];
                            r24 = [[r0 impressionURLs] retain];
                            r28 = [[r19 arrayByAddingObjectsFromArray:r24] retain];
                            [r21 setImpressionURLs:r28];
                            [r28 release];
                            [r24 release];
                            [r0 release];
                            [r19 release];
                            r0 = [r21 linearAd];
                            r0 = [r0 retain];
                            r24 = r0;
                            r23 = [[r0 trackingEvents] retain];
                            r28 = [[r25 wrapper] retain];
                            r19 = [[var_2C8 trackingEventsFromWrapper:r28] retain];
                            r25 = [[NSArray arrayWithObjects:&var_1F0 count:0x2] retain];
                            r22 = [[var_2C8 dictionaryByMergingTrackingDictionaries:r25] retain];
                            r0 = [r21 linearAd];
                            r0 = [r0 retain];
                            [r0 setTrackingEvents:r22];
                            [r0 release];
                            [r22 release];
                            [r25 release];
                            [r19 release];
                            [r28 release];
                            [r23 release];
                            [r24 release];
                            r0 = [r21 linearAd];
                            r0 = [r0 retain];
                            var_2E0 = r0;
                            r24 = [[r0 clickTrackingURLs] retain];
                            r19 = [[var_2C0 wrapper] retain];
                            r20 = [[var_2C8 clickTrackingURLsFromWrapper:r19] retain];
                            r22 = [[r24 arrayByAddingObjectsFromArray:r20] retain];
                            r0 = [r21 linearAd];
                            r0 = [r0 retain];
                            [r0 setClickTrackingURLs:r22];
                            [r0 release];
                            [r22 release];
                            [r20 release];
                            [r19 release];
                            [r24 release];
                            [var_2E0 release];
                            r0 = [r21 linearAd];
                            r0 = [r0 retain];
                            r23 = r0;
                            r24 = [[r0 customClickURLs] retain];
                            r19 = [[var_2C0 wrapper] retain];
                            r20 = [[var_2C8 customClickURLsFromWrapper:r19] retain];
                            r22 = [[r24 arrayByAddingObjectsFromArray:r20] retain];
                            r0 = [r21 linearAd];
                            r0 = [r0 retain];
                            [r0 setCustomClickURLs:r22];
                            r25 = var_2C0;
                            [r0 release];
                            [r22 release];
                            [r20 release];
                            [r19 release];
                            [r24 release];
                            [r23 release];
                            r0 = [r21 linearAd];
                            r0 = [r0 retain];
                            [[[[r0 industryIcons] retain] arrayByAddingObjectsFromArray:[[var_2C8 industryIconsFromWrapper:[[r25 wrapper] retain]] retain]] retain];
                            r0 = [r21 linearAd];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setIndustryIcons:r2];
                            [r21 release];
                            [r22 release];
                            [r20 release];
                            [r19 release];
                            [r24 release];
                            [r23 release];
                            r19 = var_2D8 + 0x1;
                    } while (r19 < var_2F0);
                    r0 = objc_msgSend(var_2E8, var_3A0);
                    var_2F0 = r0;
            } while (r0 != 0x0);
    }
    [var_2E8 release];
    [var_330 addObjectsFromArray:r2];
    goto loc_1004776cc;
}

-(void *)midpointTrackers {
    r0 = *(self + 0x48);
    return r0;
}

-(void *)firstQuartileTrackers {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setFirstQuartileTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x40, arg2);
    return;
}

-(void)setMidpointTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(void *)thirdQuartileTrackers {
    r0 = *(self + 0x50);
    return r0;
}

-(void)setThirdQuartileTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x50, arg2);
    return;
}

-(void *)completionTrackers {
    r0 = *(self + 0x58);
    return r0;
}

-(void)setCompletionTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x58, arg2);
    return;
}

-(void *)muteTrackers {
    r0 = *(self + 0x60);
    return r0;
}

-(void)setMuteTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x60, arg2);
    return;
}

-(void *)unmuteTrackers {
    r0 = *(self + 0x68);
    return r0;
}

-(void)setUnmuteTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x68, arg2);
    return;
}

-(void *)pauseTrackers {
    r0 = *(self + 0x70);
    return r0;
}

-(void)setPauseTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x70, arg2);
    return;
}

-(void *)rewindTrackers {
    r0 = *(self + 0x78);
    return r0;
}

-(void)setRewindTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x78, arg2);
    return;
}

-(void *)resumeTrackers {
    r0 = *(self + 0x80);
    return r0;
}

-(void)setResumeTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x80, arg2);
    return;
}

-(void *)fullscreenTrackers {
    r0 = *(self + 0x88);
    return r0;
}

-(void)setFullscreenTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x88, arg2);
    return;
}

-(void *)exitFullscreenTrackers {
    r0 = *(self + 0x90);
    return r0;
}

-(void)setExitFullscreenTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x90, arg2);
    return;
}

-(void *)expandTrackers {
    r0 = *(self + 0x98);
    return r0;
}

-(void)setExpandTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x98, arg2);
    return;
}

-(void *)collapseTrackers {
    r0 = *(self + 0xa0);
    return r0;
}

-(void)setCollapseTrackers:(void *)arg2 {
    objc_storeStrong(self + 0xa0, arg2);
    return;
}

-(void *)acceptInvitationLinearTrackers {
    r0 = *(self + 0xa8);
    return r0;
}

-(void)setAcceptInvitationLinearTrackers:(void *)arg2 {
    objc_storeStrong(self + 0xa8, arg2);
    return;
}

-(void *)closeLinearTrackers {
    r0 = *(self + 0xb0);
    return r0;
}

-(void)setCloseLinearTrackers:(void *)arg2 {
    objc_storeStrong(self + 0xb0, arg2);
    return;
}

-(void *)skipTrackers {
    r0 = *(self + 0xb8);
    return r0;
}

-(void *)otherProgressTrackers {
    r0 = *(self + 0xc0);
    return r0;
}

-(void)setSkipTrackers:(void *)arg2 {
    objc_storeStrong(self + 0xb8, arg2);
    return;
}

-(void)setOtherProgressTrackers:(void *)arg2 {
    objc_storeStrong(self + 0xc0, arg2);
    return;
}

-(double)minimumViewabilityTimeInterval {
    r0 = self;
    return r0;
}

-(double)minimumFractionOfVideoVisible {
    r0 = self;
    return r0;
}

-(void *)viewabilityTrackingURL {
    r0 = *(self + 0xd8);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0xd8, 0x0);
    objc_storeStrong(self + 0xc0, 0x0);
    objc_storeStrong(self + 0xb8, 0x0);
    objc_storeStrong(self + 0xb0, 0x0);
    objc_storeStrong(self + 0xa8, 0x0);
    objc_storeStrong(self + 0xa0, 0x0);
    objc_storeStrong(self + 0x98, 0x0);
    objc_storeStrong(self + 0x90, 0x0);
    objc_storeStrong(self + 0x88, 0x0);
    objc_storeStrong(self + 0x80, 0x0);
    objc_storeStrong(self + 0x78, 0x0);
    objc_storeStrong(self + 0x70, 0x0);
    objc_storeStrong(self + 0x68, 0x0);
    objc_storeStrong(self + 0x60, 0x0);
    objc_storeStrong(self + 0x58, 0x0);
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end