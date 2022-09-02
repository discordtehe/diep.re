@implementation OMIDtapjoyViewProcessor

-(void *)stateForView:(void *)arg2 {
    [self frameInWindowSystemForView:r2];
    r0 = [self windowForView:arg2];
    r0 = [r0 retain];
    [r0 convertRect:0x0 toWindow:r3];
    [r0 release];
    r0 = [OMIDtapjoyDictionaryUtil stateWithFrame:[arg2 clipsToBounds] clipsToBounds:r3];
    return r0;
}

-(void *)childrenForView:(void *)arg2 {
    r0 = [arg2 subviews];
    return r0;
}

-(struct CGRect)frameInWindowSystemForView:(void *)arg2 {
    [arg2 bounds];
    r0 = [arg2 convertRect:0x0 toView:r3];
    return r0;
}

-(void *)windowForView:(void *)arg2 {
    r0 = [arg2 window];
    return r0;
}

-(void *)orderedChildrenForView:(void *)arg2 {
    r31 = r31 - 0x190;
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
    r23 = self;
    r0 = [arg2 subviews];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_170 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            var_138 = 0x0;
            r21 = 0x0;
            var_168 = r23;
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r19);
                            }
                            r27 = *(0x0 + r20 * 0x8);
                            r0 = [r27 layer];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 zPosition];
                            [r0 release];
                            if (r21 != 0x0) {
                                    [r23 addView:r2 toDictionary:r3];
                            }
                            else {
                                    if (d8 == 0x0) {
                                            r21 = 0x0;
                                            var_138 = var_138 + 0x1;
                                    }
                                    else {
                                            r21 = [NSMutableDictionary new];
                                            r0 = [r19 subarrayWithRange:0x0];
                                            r0 = [r0 retain];
                                            r23 = r19;
                                            r28 = [[NSMutableArray arrayWithArray:r0] retain];
                                            [r0 release];
                                            r0 = @(0x0);
                                            r29 = r29;
                                            r19 = [r0 retain];
                                            [r21 setObject:r28 forKey:r19];
                                            r0 = r19;
                                            r19 = r23;
                                            r23 = var_168;
                                            [r0 release];
                                            [r23 addView:r2 toDictionary:r3];
                                            [r28 release];
                                    }
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r24);
                    r24 = objc_msgSend(r19, var_170);
            } while (r24 != 0x0);
            if (r21 != 0x0) {
                    r20 = [[r23 buildChildrenFromDictionary:r21] retain];
            }
            else {
                    r20 = [r19 retain];
                    r21 = 0x0;
            }
    }
    else {
            r20 = [r19 retain];
            r21 = 0x0;
    }
    var_68 = **___stack_chk_guard;
    [r19 release];
    [r21 release];
    [r20 autorelease];
    if (**___stack_chk_guard == var_68) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)addView:(void *)arg2 toDictionary:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg3 retain];
    r0 = [r20 layer];
    r0 = [r0 retain];
    [r0 zPosition];
    r21 = [[NSNumber numberWithDouble:r2] retain];
    [r0 release];
    r22 = [[r19 objectForKey:r2] retain];
    if (r22 == 0x0) {
            r22 = [NSMutableArray new];
            [r19 setObject:r2 forKey:r3];
    }
    [r22 addObject:r2];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)buildChildrenFromDictionary:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 allKeys];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 sortedArrayUsingComparator:0x100ea3468];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r20 release];
    r20 = [NSMutableArray new];
    r0 = [r21 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = [r19 objectForKey:*(0x0 + r28 * 0x8)];
                            r29 = r29;
                            [r0 retain];
                            [r20 addObjectsFromArray:r2];
                            [r26 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setProcessorForChildren:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_processorForChildren, arg2);
    return;
}

-(void *)processorForChildren {
    r0 = objc_loadWeakRetained((int64_t *)&self->_processorForChildren);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_processorForChildren);
    return;
}

@end