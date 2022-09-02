@implementation AdColony_AvidViewProcessor

-(void *)stateForView:(void *)arg2 {
    [self frameInWindowSystemForView:r2];
    r0 = [self windowForView:arg2];
    r0 = [r0 retain];
    [r0 convertRect:0x0 toWindow:r3];
    [r0 release];
    r0 = [AdColony_AvidDictionaryUtil stateWithFrame:[arg2 clipsToBounds] clipsToBounds:r3];
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

-(void)addView:(void *)arg2 toDictionary:(void *)arg3 {
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
    r0 = [r20 layer];
    r0 = [r0 retain];
    [r0 zPosition];
    r21 = [[NSNumber numberWithDouble:r2] retain];
    [r0 release];
    r22 = [[r19 objectForKey:r2] retain];
    if (r22 == 0x0) {
            [NSMutableArray new];
            [r22 release];
            [r19 setObject:r2 forKey:r3];
            r22 = r23;
    }
    [r22 addObject:r2];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)orderedChildrenForView:(void *)arg2 {
    r31 = r31 + 0xffffffffffffff90 - 0x120;
    r20 = self;
    r22 = *___stack_chk_guard;
    r22 = *r22;
    var_68 = r22;
    r0 = [arg2 subviews];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    var_138 = r24;
    var_128 = 0x0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            var_140 = 0x0;
            r21 = 0x0;
            r22 = *0x0;
            r19 = r20;
            do {
                    r20 = 0x0;
                    var_148 = @selector(new);
                    var_150 = @selector(subarrayWithRange:);
                    var_158 = @selector(arrayWithArray:);
                    var_160 = @selector(numberWithInt:);
                    var_168 = @selector(setObject:forKey:);
                    var_130 = @selector(addView:toDictionary:);
                    do {
                            if (*0x0 != r22) {
                                    objc_enumerationMutation(var_138);
                            }
                            r27 = *(0x0 + r20 * 0x8);
                            r0 = [r27 layer];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 zPosition];
                            [r0 release];
                            if (r21 != 0x0) {
                                    var_130 = @selector(addView:toDictionary:);
                                    objc_msgSend(r19, var_130);
                            }
                            else {
                                    r24 = r22;
                                    r22 = r19;
                                    if (d8 == 0x0) {
                                            r21 = 0x0;
                                            var_140 = var_140 + 0x1;
                                            r19 = r22;
                                    }
                                    else {
                                            var_130 = @selector(addView:toDictionary:);
                                            var_148 = @selector(new);
                                            var_150 = @selector(subarrayWithRange:);
                                            var_158 = @selector(arrayWithArray:);
                                            var_160 = @selector(numberWithInt:);
                                            var_168 = @selector(setObject:forKey:);
                                            r21 = objc_msgSend(@class(NSMutableDictionary), var_148);
                                            r19 = [objc_msgSend(var_138, var_150) retain];
                                            [objc_msgSend(@class(NSMutableArray), var_158) retain];
                                            [r19 release];
                                            r0 = objc_msgSend(@class(NSNumber), var_160);
                                            r29 = r29;
                                            [r0 retain];
                                            objc_msgSend(r21, var_168);
                                            [r19 release];
                                            r19 = r22;
                                            objc_msgSend(r19, var_130);
                                            [r28 release];
                                    }
                                    r22 = r24;
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r23);
                    var_170 = @selector(countByEnumeratingWithState:objects:count:);
                    r24 = var_138;
                    r23 = objc_msgSend(r24, var_170);
            } while (r23 != 0x0);
            r0 = r19;
            r22 = *___stack_chk_guard;
            r22 = *r22;
            if (r21 != 0x0) {
                    r0 = [r0 buildChildrenFromDictionary:r21];
                    r29 = r29;
                    r20 = [r0 retain];
            }
            else {
                    r20 = [r24 retain];
                    r21 = 0x0;
            }
    }
    else {
            r20 = [r24 retain];
            r21 = 0x0;
    }
    [r24 release];
    [r21 release];
    [r20 autorelease];
    if (r22 == var_68) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)buildChildrenFromDictionary:(void *)arg2 {
    r31 = r31 + 0xffffffffffffffa0 - 0xd0;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 allKeys];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 sortedArrayUsingComparator:0x100e76dd0];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r20 release];
    r20 = [NSMutableArray new];
    var_118 = 0x0;
    r0 = [r21 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = [r19 objectForKey:*(0x0 + r27 * 0x8)];
                            r29 = r29;
                            [r0 retain];
                            [r20 addObjectsFromArray:r2];
                            [r26 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    r22 = objc_retainAutoreleaseReturnValue(r20);
    [r20 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)processorForChildren {
    r0 = objc_loadWeakRetained((int64_t *)&self->_processorForChildren);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setProcessorForChildren:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_processorForChildren, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_processorForChildren);
    return;
}

@end