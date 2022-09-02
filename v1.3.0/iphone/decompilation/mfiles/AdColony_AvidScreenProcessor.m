@implementation AdColony_AvidScreenProcessor

-(void *)stateForView:(void *)arg2 {
    var_30 = d11;
    stack[-56] = d10;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIScreen mainScreen];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 bounds];
    v8 = v0;
    v9 = v1;
    v11 = v2;
    v10 = v3;
    [r0 release];
    if (**_NSFoundationVersionNumber < *0x100ba1e90) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r20 = [r0 statusBarOrientation] - 0x3;
            [r0 release];
            if (r20 < 0x2) {
                    asm { fcsel      d8, d0, d8, lo };
            }
            if (CPU_FLAGS & S) {
                    asm { fcsel      d9, d0, d9, lo };
            }
            if (CPU_FLAGS & S) {
                    asm { fcsel      d0, d10, d11, lo };
            }
            if (CPU_FLAGS & S) {
                    asm { fcsel      d10, d11, d10, lo };
            }
            v11 = 0x0;
    }
    r0 = [AdColony_AvidDictionaryUtil stateWithFrame:0x1 clipsToBounds:r3];
    return r0;
}

-(void *)orderedChildrenForView:(void *)arg2 {
    r0 = [self childrenForView:arg2];
    return r0;
}

-(void *)childrenForView:(void *)arg2 {
    r31 = r31 + 0xffffffffffffffa0 - 0x100;
    var_128 = self;
    var_138 = [[NSMutableArray array] retain];
    var_118 = 0x0;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 windows];
    r29 = &saved_fp;
    r21 = [r0 retain];
    var_120 = r21;
    [r20 release];
    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r21 = 0x0;
                    var_130 = @selector(addObject:);
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            r28 = *(0x0 + r21 * 0x8);
                            r22 = [[r28 screen] retain];
                            r0 = [UIScreen mainScreen];
                            r29 = r29;
                            r20 = [r0 retain];
                            if (r22 != r20) {
                                    [r20 release];
                                    [r22 release];
                            }
                            else {
                                    r19 = [var_128 isInternalWindow:r28];
                                    [r20 release];
                                    [r22 release];
                                    if ((r19 & 0x1) == 0x0) {
                                            var_130 = @selector(addObject:);
                                            objc_msgSend(var_138, var_130);
                                    }
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r23);
                    var_140 = @selector(countByEnumeratingWithState:objects:count:);
                    r23 = objc_msgSend(var_120, var_140);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    r19 = objc_retainAutoreleaseReturnValue(var_138);
    [var_138 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isInternalWindow:(void *)arg2 {
    r0 = [arg2 class];
    r0 = NSStringFromClass(r0);
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2];
    [r0 release];
    r0 = r20;
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