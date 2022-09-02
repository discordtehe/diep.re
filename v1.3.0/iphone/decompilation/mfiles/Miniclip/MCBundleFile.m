@implementation MCBundleFile

+(void *)keyTag {
    return @"__key__";
}

+(void *)buildPathForPath:(void *)arg2 andLeaf:(void *)arg3 {
    r2 = arg2;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    if (r2 != 0x0) {
            r20 = r2;
            if (([r20 isEqualToString:r2] & 0x1) != 0x0) {
                    r0 = r19;
            }
            else {
                    r0 = [NSString stringWithFormat:r2];
            }
    }
    else {
            r0 = r19;
    }
    return r0;
}

-(void)addToBundleObject:(void *)arg2 forPath:(void *)arg3 withParent:(void *)arg4 {
    [FlatBundleHelper helperForObject:arg2 withParent:arg4];
    [*(self + 0x10) setObject:r2 forKey:r3];
    return;
}

-(void)processBundleObj:(void *)arg2 withKey:(void *)arg3 forPath:(void *)arg4 withParent:(void *)arg5 {
    r20 = [[self class] buildPathForPath:arg4 andLeaf:arg3];
    [self addToBundleObject:arg2 forPath:r20 withParent:arg5];
    [self recursiveReadBundle:arg2 withPath:r20];
    return;
}

-(void)flattenBundle:(void *)arg2 {
    [*(self + 0x10) release];
    *(self + 0x10) = [[NSMutableDictionary alloc] init];
    [self recursiveReadBundle:arg2 withPath:0x0];
    [self addToBundleObject:arg2 forPath:@"" withParent:0x0];
    return;
}

-(void *)convertCollectionsToMutable:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if (arg2 != 0x0) {
            r0 = [NSPropertyListSerialization dataFromPropertyList:r19 format:0xc8 errorDescription:&var_18];
            if (r0 != 0x0) {
                    asm { ccmp       x8, #0x0, #0x0, ne };
            }
            if (!CPU_FLAGS & NE) {
                    r0 = [NSPropertyListSerialization propertyListFromData:r0 mutabilityOption:0x1 format:0x0 errorDescription:&var_20];
                    if (r0 == 0x0) {
                            if (!CPU_FLAGS & E) {
                                    r19 = r0;
                            }
                            else {
                                    r19 = r19;
                            }
                    }
            }
    }
    r0 = r19;
    return r0;
}

-(void *)initWithData:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[r19 class] keyTag];
            r0 = [NSPropertyListSerialization propertyListFromData:r20 mutabilityOption:0x1 format:0x0 errorDescription:&var_38];
            if (r0 != 0x0) {
                    r20 = r0;
                    [NSDictionary class];
                    if ([r20 isKindOfClass:r2] != 0x0) {
                            [r19 flattenBundle:r20];
                    }
            }
    }
    r0 = r19;
    return r0;
}

-(void *)initWithfileName:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [NSData alloc];
    r0 = [r0 initWithContentsOfFile:arg2];
    if (r0 != 0x0) {
            r19 = [r19 initWithData:r0];
            [r0 release];
            r0 = r19;
    }
    return r0;
}

+(void *)bundleFileWithFileName:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithfileName:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void)recursiveReadBundle:(void *)arg2 withPath:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1e0;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    [NSDictionary class];
    r1 = @selector(isKindOfClass:);
    var_1F0 = r1;
    if (objc_msgSend(r20, r1) != 0x0) {
            [r20 removeObjectForKey:*(r21 + 0x8)];
            var_190 = q0;
            r0 = [r20 allKeys];
            r22 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_1E8 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r24 = r0;
                    r28 = *var_190;
                    do {
                            r23 = 0x0;
                            do {
                                    if (*var_190 != r28) {
                                            objc_enumerationMutation(r22);
                                    }
                                    [r20 objectForKey:*(var_198 + r23 * 0x8)];
                                    [r21 processBundleObj:r2 withKey:r3 forPath:r4 withParent:r5];
                                    r23 = r23 + 0x1;
                            } while (r23 < r24);
                            r0 = objc_msgSend(r22, var_1E8);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
    }
    else {
            [NSArray class];
            if (objc_msgSend(r20, var_1F0) != 0x0) {
                    r23 = [*(r21 + 0x10) objectForKey:r19];
                    r2 = [NSMutableDictionary dictionary];
                    var_220 = r23;
                    [r23 setCollectionKeys:r2];
                    var_1D0 = q0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_228 = r1;
                    r0 = objc_msgSend(r20, r1);
                    if (r0 != 0x0) {
                            r28 = &@class(MCConfigurationData);
                            r22 = @selector(objectForKey:);
                            r27 = r0;
                            r26 = *var_1D0;
                            do {
                                    r24 = 0x0;
                                    do {
                                            if (*var_1D0 != r26) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            r25 = *(var_1D8 + r24 * 0x8);
                                            [*(r28 + 0x18) class];
                                            if (objc_msgSend(r25, var_1F0) != 0x0 && objc_msgSend(r25, r22) != 0x0) {
                                                    r0 = objc_msgSend(r25, r22);
                                                    r0 = [r0 retain];
                                                    [r21 processBundleObj:r25 withKey:r0 forPath:r19 withParent:r20];
                                                    [[var_220 collectionKeys] setObject:r0 forKey:r25];
                                                    r28 = r28;
                                                    r22 = r22;
                                                    [r0 release];
                                            }
                                            r24 = r24 + 0x1;
                                    } while (r24 < r27);
                                    r0 = objc_msgSend(r20, var_228);
                                    r27 = r0;
                            } while (r0 != 0x0);
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)initWithObject:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r2 = [NSPropertyListSerialization dataFromPropertyList:arg2 format:0xc8 errorDescription:&var_18];
    if (r2 != 0x0) {
            asm { ccmp       x8, #0x0, #0x0, ne };
    }
    r0 = 0x0;
    if (!CPU_FLAGS & NE) {
            r0 = [r19 initWithData:r2];
    }
    return r0;
}

+(void *)bundleFileWithData:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithData:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void)dealloc {
    [*(self + 0x10) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)removeFromBundleObject:(void *)arg2 forPath:(void *)arg3 {
    [*(self + 0x10) removeObjectForKey:r2];
    return;
}

+(void *)bundleFileWithObject:(void *)arg2 {
    r0 = [self alloc];
    r0 = [r0 initWithObject:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void)removeBundleObj:(void *)arg2 withKey:(void *)arg3 forPath:(void *)arg4 {
    r19 = [[self class] buildPathForPath:arg4 andLeaf:arg3];
    [self recursiveRemoveBundle:arg2 withPath:r19];
    [self removeFromBundleObject:arg2 forPath:r19];
    return;
}

-(void *)objectForPath:(void *)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (arg2 != 0x0) {
            r0 = *(r0 + 0x10);
            r0 = [r0 objectForKey:r2];
            r0 = [r0 object];
    }
    else {
            r0 = [r0 objectForPath:@""];
    }
    return r0;
}

-(void)setObject:(void *)arg2 forPath:(void *)arg3 {
    r3 = arg3;
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r20 = self;
    if (r3 == 0x0) goto loc_100276a38;

loc_100276934:
    r19 = r3;
    r0 = *(r20 + 0x10);
    r0 = [r0 objectForKey:r3];
    r23 = [[r0 object] retain];
    r21 = [r0 parentObject];
    if (r23 != 0x0) {
            [r20 recursiveRemoveBundle:r23 withPath:r19];
    }
    r22 = [r20 convertCollectionsToMutable:r22];
    if (r21 != 0x0) {
            [r20 replaceObject:r23 byObject:r22 inCollection:r21];
    }
    if (r23 != 0x0) {
            [r20 removeFromBundleObject:r23 forPath:r19];
    }
    [r23 release];
    if (r22 == 0x0) goto .l1;

loc_100276a04:
    [r20 addToBundleObject:r22 forPath:r19 withParent:r21];
    r1 = @selector(recursiveReadBundle:withPath:);
    r0 = r20;
    goto loc_100276a50;

loc_100276a50:
    objc_msgSend(r0, r1);
    return;

.l1:
    return;

loc_100276a38:
    r1 = @selector(setObject:forPath:);
    r0 = r20;
    goto loc_100276a50;
}

-(void)recursiveRemoveBundle:(void *)arg2 withPath:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    [NSDictionary class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            var_190 = q0;
            r0 = [r20 allKeys];
            r22 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_1E8 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r24 = r0;
                    r28 = *var_190;
                    do {
                            r23 = 0x0;
                            do {
                                    if (*var_190 != r28) {
                                            objc_enumerationMutation(r22);
                                    }
                                    [r20 objectForKey:*(var_198 + r23 * 0x8)];
                                    [r21 removeBundleObj:r2 withKey:r3 forPath:r4];
                                    r23 = r23 + 0x1;
                            } while (r23 < r24);
                            r0 = objc_msgSend(r22, var_1E8);
                            r24 = r0;
                    } while (r0 != 0x0);
            }
    }
    else {
            r23 = @selector(isKindOfClass:);
            [NSArray class];
            if (objc_msgSend(r20, r23) != 0x0) {
                    r23 = [[*(r21 + 0x10) objectForKey:r19] collectionKeys];
                    var_1D0 = q0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_1E8 = r1;
                    r0 = objc_msgSend(r20, r1);
                    if (r0 != 0x0) {
                            r25 = r0;
                            r28 = *var_1D0;
                            do {
                                    r24 = 0x0;
                                    do {
                                            if (*var_1D0 != r28) {
                                                    objc_enumerationMutation(r20);
                                            }
                                            [r23 objectForKey:*(var_1D8 + r24 * 0x8)];
                                            [r21 removeBundleObj:r2 withKey:r3 forPath:r4];
                                            r24 = r24 + 0x1;
                                    } while (r24 < r25);
                                    r0 = objc_msgSend(r20, var_1E8);
                                    r25 = r0;
                            } while (r0 != 0x0);
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(bool)replaceObject:(void *)arg2 byObject:(void *)arg3 inCollection:(void *)arg4 {
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
    r19 = arg4;
    r20 = arg3;
    r21 = arg2;
    [NSMutableArray class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100276794;

loc_10027676c:
    r0 = [r19 indexOfObject:r21];
    if (r0 != 0x7fffffffffffffff) goto loc_10027686c;

loc_10027678c:
    r0 = 0x0;
    goto loc_1002768d8;

loc_1002768d8:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10027686c:
    if (r20 == 0x0) goto loc_1002768ac;

loc_100276870:
    r1 = @selector(replaceObjectAtIndex:withObject:);
    r0 = r19;
    goto loc_1002768a4;

loc_1002768a4:
    objc_msgSend(r0, r1);
    goto loc_1002768d4;

loc_1002768d4:
    r0 = 0x1;
    goto loc_1002768d8;

loc_1002768ac:
    r1 = @selector(removeObject:);
    r0 = r19;
    goto loc_1002768d0;

loc_1002768d0:
    objc_msgSend(r0, r1);
    goto loc_1002768d4;

loc_100276794:
    r23 = @selector(isKindOfClass:);
    [NSMutableDictionary class];
    r0 = objc_msgSend(r19, r23);
    if (r0 == 0x0) goto loc_1002768d8;

loc_1002767b8:
    var_110 = q0;
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_1002768d8;

loc_1002767e8:
    r23 = r0;
    r26 = *var_110;
    goto loc_1002767f8;

loc_1002767f8:
    r28 = 0x0;
    goto loc_100276800;

loc_100276800:
    if (*var_110 != r26) {
            objc_enumerationMutation(r19);
    }
    r24 = @selector(objectForKey:);
    r25 = *(var_118 + r28 * 0x8);
    if (objc_msgSend(r19, r24) == r21) goto loc_100276888;

loc_100276838:
    r28 = r28 + 0x1;
    if (r28 < r23) goto loc_100276800;

loc_100276844:
    r23 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) goto loc_1002767f8;

loc_100276868:
    r0 = 0x0;
    goto loc_1002768d8;

loc_100276888:
    if (r25 == 0x0) goto loc_10027678c;

loc_10027688c:
    if (r20 == 0x0) goto loc_1002768c0;

loc_100276890:
    r1 = @selector(setObject:forKey:);
    r0 = r19;
    goto loc_1002768a4;

loc_1002768c0:
    r1 = @selector(removeObjectForKey:);
    r0 = r19;
    goto loc_1002768d0;
}

@end