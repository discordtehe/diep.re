@implementation USRVJsonStorage

-(void *)getValueForKey:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [r20 storageContents];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r24 = [[r20 getParentObjectTreeForTree:r19] retain];
            r0 = [r20 findObjectForKey:r24];
            r29 = r29;
            r25 = [r0 retain];
            [NSDictionary class];
            r26 = [r25 isKindOfClass:r2];
            [r25 release];
            [r24 release];
            [r21 release];
            if (r26 != 0x0) {
                    r21 = [[r19 componentsSeparatedByString:@"."] retain];
                    r22 = [[r20 getParentObjectTreeForTree:r19] retain];
                    r0 = [r20 findObjectForKey:r22];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r22 release];
                    if (r20 != 0x0) {
                            r23 = [[r21 objectAtIndex:[r21 count] - 0x1] retain];
                            r22 = [[r20 objectForKey:r2] retain];
                            [r23 release];
                            r23 = 0x0;
                    }
                    else {
                            r23 = 0x1;
                    }
                    [r20 release];
                    [r21 release];
                    if (r23 != 0x0) {
                            r22 = 0x0;
                    }
            }
            else {
                    r22 = 0x0;
            }
    }
    else {
            [r21 release];
            r22 = 0x0;
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(bool)set:(void *)arg2 value:(void *)arg3 {
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
    r0 = [r21 storageContents];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if ([r19 length] != 0x0 && r19 != 0x0 && r22 != 0x0) {
            [r22 release];
            if (r20 != 0x0) {
                    r23 = [[r21 getParentObjectTreeForTree:r19] retain];
                    [r21 createObjectTree:r23];
                    [r23 release];
                    r24 = [[r21 getParentObjectTreeForTree:r19] retain];
                    r0 = [r21 findObjectForKey:r24];
                    r29 = r29;
                    r25 = [r0 retain];
                    [NSDictionary class];
                    r26 = [r25 isKindOfClass:r2];
                    [r25 release];
                    [r24 release];
                    if (r26 != 0x0) {
                            r22 = [[r21 getParentObjectTreeForTree:r19] retain];
                            r0 = [r21 findObjectForKey:r22];
                            r29 = r29;
                            r21 = [r0 retain];
                            [r22 release];
                            if (r21 != 0x0) {
                                    r0 = [r19 componentsSeparatedByString:@"."];
                                    r0 = [r0 retain];
                                    [[r0 objectAtIndex:[r0 count] - 0x1] retain];
                                    [r21 setObject:r2 forKey:r3];
                                    [r23 release];
                                    [r22 release];
                                    [r21 release];
                                    r21 = 0x1;
                            }
                    }
                    else {
                            r21 = 0x0;
                    }
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            [r22 release];
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)deleteKey:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [r20 storageContents];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r24 = [[r20 getParentObjectTreeForTree:r19] retain];
            r0 = [r20 findObjectForKey:r24];
            r29 = r29;
            r25 = [r0 retain];
            [NSDictionary class];
            r26 = [r25 isKindOfClass:r2];
            [r25 release];
            [r24 release];
            [r23 release];
            if (r26 != 0x0) {
                    r23 = [[r19 componentsSeparatedByString:@"."] retain];
                    r21 = [[r20 getParentObjectTreeForTree:r19] retain];
                    r0 = [r20 findObjectForKey:r21];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r21 release];
                    if (r20 != 0x0) {
                            [[r23 objectAtIndex:[r23 count] - 0x1] retain];
                            [r20 removeObjectForKey:r2];
                            [r21 release];
                            [r20 release];
                            [r23 release];
                            r20 = 0x1;
                    }
                    else {
                            [r23 release];
                    }
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            [r23 release];
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)getParentObjectTreeForTree:(void *)arg2 {
    r21 = [[arg2 componentsSeparatedByString:@"."] retain];
    r19 = [[NSMutableArray arrayWithArray:r21] retain];
    [r21 release];
    [r19 removeLastObject];
    r20 = [[r19 componentsJoinedByString:r2] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)findObjectForKey:(void *)arg2 {
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
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0 || [r19 length] == 0x0) goto loc_1000c8884;

loc_1000c8754:
    r20 = [[r19 componentsSeparatedByString:@"."] retain];
    r0 = [r21 storageContents];
    r29 = r29;
    r26 = [r0 retain];
    if ([r20 count] == 0x0) goto loc_1000c8870;

loc_1000c87a8:
    r21 = 0x0;
    r25 = r26;
    goto loc_1000c87c4;

loc_1000c87c4:
    r23 = @selector(objectForKey:);
    r26 = [[r20 objectAtIndex:r2] retain];
    r0 = objc_msgSend(r25, r23);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    if (r0 == 0x0) goto loc_1000c88a4;

loc_1000c880c:
    r24 = @selector(count);
    r23 = @selector(objectForKey:);
    r27 = [[r20 objectAtIndex:r2] retain];
    r0 = objc_msgSend(r25, r23);
    r29 = r29;
    r26 = [r0 retain];
    [r25 release];
    [r27 release];
    r21 = r21 + 0x1;
    r0 = objc_msgSend(r20, r24);
    r25 = r26;
    if (r0 > r21) goto loc_1000c87c4;

loc_1000c8870:
    r25 = [r26 retain];
    r21 = r25;
    goto loc_1000c88a8;

loc_1000c88a8:
    [r25 release];
    [r20 release];
    goto loc_1000c88b8;

loc_1000c88b8:
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_1000c88a4:
    r21 = 0x0;
    goto loc_1000c88a8;

loc_1000c8884:
    r21 = [[r21 storageContents] retain];
    goto loc_1000c88b8;
}

-(void)createObjectTree:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg2 retain];
    if (r20 != 0x0 && [r20 length] != 0x0) {
            var_60 = r20;
            r20 = [[r20 componentsSeparatedByString:@"."] retain];
            r0 = [r19 storageContents];
            r29 = r29;
            r19 = [r0 retain];
            if ([r20 count] != 0x0) {
                    r21 = 0x0;
                    r28 = r19;
                    do {
                            r19 = [[r20 objectAtIndex:r21] retain];
                            r0 = [r28 objectForKey:r19];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            [r19 release];
                            if (r0 == 0x0) {
                                    r26 = @selector(setObject:forKey:);
                                    [[NSMutableDictionary alloc] init];
                                    r0 = [r20 objectAtIndex:r21];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r28, r26);
                                    [r24 release];
                                    [r19 release];
                            }
                            r27 = @selector(count);
                            r24 = [[r20 objectAtIndex:r21] retain];
                            r0 = [r28 objectForKey:r24];
                            r29 = r29;
                            r19 = [r0 retain];
                            [r28 release];
                            [r24 release];
                            r21 = r21 + 0x1;
                            r0 = objc_msgSend(r20, r27);
                            r28 = r19;
                    } while (r0 > r21);
            }
            [r19 release];
            [r20 release];
            r20 = var_60;
    }
    [r20 release];
    return;
}

-(void *)getKeys:(void *)arg2 recursive:(bool)arg3 {
    r31 = r31 - 0x1b0;
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
    r26 = arg3;
    r27 = self;
    r24 = [arg2 retain];
    r0 = [r27 getValueForKey:r24];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [NSDictionary class];
    r21 = [r20 isKindOfClass:r2];
    [r20 release];
    if ((r21 & 0x1) != 0x0) {
            r0 = [r27 getValueForKey:r24];
            r29 = r29;
            r23 = [r0 retain];
            r0 = [NSMutableArray alloc];
            r22 = @selector(init);
            r25 = objc_msgSend(r0, r22);
            if (r23 != 0x0) {
                    var_178 = @selector(init);
                    var_180 = r23;
                    r0 = [r23 allKeys];
                    r29 = r29;
                    r0 = [r0 retain];
                    r28 = r0;
                    if ([r0 count] != 0x0) {
                            r20 = 0x0;
                            var_150 = r24;
                            var_154 = r26;
                            var_168 = r28;
                            stack[-368] = r27;
                            do {
                                    r0 = [r28 objectAtIndex:r20];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    if ((r26 & 0x1) != 0x0) {
                                            r0 = [NSString stringWithFormat:@"%@.%@", r3, r4];
                                            r0 = [r0 retain];
                                            var_128 = r20;
                                            r20 = r0;
                                            r0 = [r27 getKeys:r20 recursive:0x1];
                                            r29 = r29;
                                            r19 = [r0 retain];
                                            r0 = r20;
                                            r20 = var_128;
                                            [r0 release];
                                            [r25 addObject:r21];
                                            if (r19 != 0x0) {
                                                    var_108 = q0;
                                                    r0 = [r19 retain];
                                                    r20 = r0;
                                                    r3 = &stack[-232];
                                                    r28 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    if (r28 != 0x0) {
                                                            r27 = *var_108;
                                                            do {
                                                                    r24 = 0x0;
                                                                    do {
                                                                            if (*var_108 != r27) {
                                                                                    objc_enumerationMutation(r20);
                                                                            }
                                                                            r0 = [NSString stringWithFormat:r2];
                                                                            r29 = r29;
                                                                            r26 = [r0 retain];
                                                                            [r25 addObject:r26];
                                                                            [r26 release];
                                                                            r24 = r24 + 0x1;
                                                                    } while (r24 < r28);
                                                                    r3 = &stack[-232];
                                                                    r28 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                            } while (r28 != 0x0);
                                                    }
                                                    r4 = 0x10;
                                                    [r20 release];
                                                    [r20 release];
                                                    r24 = var_150;
                                                    r26 = var_154;
                                                    r28 = var_168;
                                                    r27 = stack[-368];
                                                    r20 = var_128;
                                            }
                                    }
                                    else {
                                            [r25 addObject:r21];
                                    }
                                    var_138 = @selector(count);
                                    [r21 release];
                                    r20 = r20 + 0x1;
                            } while (objc_msgSend(r28, var_138) > r20);
                    }
                    r19 = [r25 retain];
                    [r28 release];
                    r20 = 0x0;
                    r22 = var_178;
                    r21 = @selector(alloc);
                    r23 = var_180;
            }
            else {
                    r21 = @selector(alloc);
                    r19 = @selector(getValueForKey:);
                    r20 = 0x1;
            }
            [r25 release];
            [r23 release];
            if (r20 != 0x0) {
                    r19 = objc_msgSend(objc_msgSend(@class(NSArray), r21), r22);
            }
    }
    else {
            r21 = @selector(alloc);
            r22 = @selector(init);
            r19 = objc_msgSend(objc_msgSend(@class(NSArray), r21), r22);
    }
    var_58 = **___stack_chk_guard;
    [r24 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)hasData {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self storageContents];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r20 storageContents];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 allKeys];
            r0 = [r0 retain];
            r21 = r0;
            if ([r0 count] != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r22 = 0x1;
                    }
            }
            [r21 release];
            [r20 release];
            [r19 release];
            r0 = r22;
    }
    else {
            [r19 release];
            r0 = 0x0;
    }
    return r0;
}

-(void)clearData {
    [self setStorageContents:0x0];
    return;
}

-(bool)initData {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self storageContents];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = 0x0;
    }
    else {
            r20 = [[NSMutableDictionary alloc] init];
            [r19 setStorageContents:r20];
            [r20 release];
            r0 = 0x1;
    }
    return r0;
}

-(void *)storageContents {
    r0 = self->_storageContents;
    return r0;
}

-(void)setStorageContents:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_storageContents, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_storageContents, 0x0);
    return;
}

@end