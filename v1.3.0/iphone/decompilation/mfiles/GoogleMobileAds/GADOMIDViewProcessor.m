@implementation GADOMIDViewProcessor

-(void *)stateForView:(void *)arg2 {
    objc_storeStrong(&saved_fp - 0x18, arg2);
    [self frameInWindowSystemForView:0x0];
    r0 = [self windowForView:0x0];
    r0 = [r0 retain];
    [r0 convertRect:0x0 toWindow:r3];
    [r0 release];
    var_90 = [[GADOMIDDictionaryUtil stateWithFrame:[0x0 clipsToBounds] clipsToBounds:r3] retain];
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    r0 = [var_90 autorelease];
    return r0;
}

-(void *)childrenForView:(void *)arg2 {
    objc_storeStrong(&var_18, arg2);
    var_30 = [[var_18 subviews] retain];
    objc_storeStrong(&var_18, 0x0);
    r0 = [var_30 autorelease];
    return r0;
}

-(struct CGRect)frameInWindowSystemForView:(void *)arg2 {
    objc_storeStrong(&var_38, arg2);
    [var_38 bounds];
    [var_38 convertRect:0x0 toView:r3];
    r0 = objc_storeStrong(&var_38, 0x0);
    return r0;
}

-(void *)windowForView:(void *)arg2 {
    objc_storeStrong(&var_18, arg2);
    var_30 = [[var_18 window] retain];
    objc_storeStrong(&var_18, 0x0);
    r0 = [var_30 autorelease];
    return r0;
}

-(void)addView:(void *)arg2 toDictionary:(void *)arg3 {
    r31 = r31 - 0x70;
    saved_fp = r29;
    stack[-8] = r30;
    objc_storeStrong(&saved_fp - 0x18, arg2);
    objc_storeStrong(&saved_fp - 0x20, arg3);
    r0 = [0x0 layer];
    r0 = [r0 retain];
    [r0 zPosition];
    var_28 = [[NSNumber numberWithDouble:r2] retain];
    [r0 release];
    r0 = [0x0 objectForKey:var_28];
    r29 = &saved_fp;
    var_30 = [r0 retain];
    if (var_30 == 0x0) {
            r8 = var_30;
            var_30 = [NSMutableArray new];
            [r8 release];
            [0x0 setObject:var_30 forKey:var_28];
    }
    [var_30 addObject:0x0];
    objc_storeStrong(&var_30, 0x0);
    objc_storeStrong(r29 - 0x28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x18, 0x0);
    return;
}

-(void *)orderedChildrenForView:(void *)arg2 {
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xffffffffffffffe0 - 0x220;
    r11 = *___stack_chk_guard;
    *((&saved_fp - 0xf8) + 0xe0) = **___stack_chk_guard;
    *((&saved_fp - 0xf8) + 0x18) = self;
    *((&saved_fp - 0xf8) + 0x10) = _cmd;
    *((&saved_fp - 0xf8) + 0x8) = 0x0;
    var_190 = &saved_fp - 0xf8;
    objc_storeStrong(&saved_fp - 0xf0, arg2);
    *var_190 = 0x0;
    var_100 = 0x0;
    r0 = [*(var_190 + 0x8) subviews];
    r29 = &saved_fp;
    var_108 = [r0 retain];
    memset(&stack[-352], zero_extend_64(0x0), 0x40);
    r0 = [var_108 retain];
    var_1A0 = r0;
    r0 = [r0 countByEnumeratingWithState:&stack[-352] objects:r29 - 0x98 count:0x10];
    var_1A8 = r0;
    if (r0 != 0x0) {
            var_1B0 = *var_140;
            var_1B8 = &stack[-352] + 0x10;
            var_1C0 = 0x0;
            var_1C8 = var_1A8;
            do {
                    do {
                            var_1D0 = var_1C8;
                            var_1D8 = var_1C0;
                            if (**var_1B8 != var_1B0) {
                                    objc_enumerationMutation(var_1A0);
                            }
                            var_110 = *(var_148 + var_1D8 * 0x8);
                            r0 = [var_110 layer];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 zPosition];
                            [r0 release];
                            d0 = d0;
                            var_158 = d0;
                            if (*var_190 != 0x0) {
                                    [*(var_190 + 0x18) addView:var_110 toDictionary:*var_190];
                            }
                            else {
                                    d0 = var_158;
                                    if (d0 == 0x0) {
                                            var_100 = var_100 + 0x1;
                                    }
                                    else {
                                            r0 = [NSMutableDictionary new];
                                            r1 = *var_190;
                                            *var_190 = r0;
                                            [r1 release];
                                            *(var_190 + 0x40) = 0x0;
                                            *(var_190 + 0x38) = var_100;
                                            *(var_190 + 0x28) = *(var_190 + 0x40);
                                            *(var_190 + 0x30) = *(var_190 + 0x38);
                                            *(int128_t *)(var_190 + 0x48) = *(int128_t *)(var_190 + 0x28);
                                            var_1F8 = [[var_108 subarrayWithRange:*(var_190 + 0x48)] retain];
                                            var_160 = [[NSMutableArray arrayWithArray:var_1F8] retain];
                                            [var_1F8 release];
                                            var_200 = *var_190;
                                            r0 = @(0x0);
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [var_200 setObject:var_160 forKey:r0];
                                            [r0 release];
                                            [*(var_190 + 0x18) addView:var_110 toDictionary:*var_190];
                                            objc_storeStrong(&var_160, 0x0);
                                    }
                            }
                            var_1C8 = var_1D0;
                            var_1C0 = var_1D8 + 0x1;
                    } while (var_1D8 + 0x1 < var_1D0);
                    r0 = [var_1A0 countByEnumeratingWithState:&stack[-352] objects:r29 - 0x98 count:0x10];
                    var_1C8 = r0;
                    var_1C0 = 0x0;
            } while (r0 != 0x0);
    }
    [var_1A0 release];
    var_179 = 0x0;
    if (*var_190 != 0x0) {
            r0 = [*(var_190 + 0x18) buildChildrenFromDictionary:*var_190];
            r29 = r29;
            r0 = [r0 retain];
            var_178 = r0;
            var_179 = 0x1;
            var_220 = r0;
    }
    else {
            var_220 = var_108;
    }
    *(var_190 + 0x20) = [var_220 retain];
    if ((var_179 & 0x1 & 0x1) != 0x0) {
            [var_178 release];
    }
    objc_storeStrong(&var_108, 0x0);
    objc_storeStrong(r29 - 0xf8, 0x0);
    objc_storeStrong(r29 - 0xf0, 0x0);
    var_228 = [*(var_190 + 0x20) autorelease];
    if (**___stack_chk_guard == *(var_190 + 0xe0)) {
            r0 = var_228;
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

-(void *)buildChildrenFromDictionary:(void *)arg2 {
    r31 = r31 - 0x190;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r10 = *___stack_chk_guard;
    objc_storeStrong(&saved_fp - 0xb0, arg2);
    r0 = [0x0 allKeys];
    r0 = [r0 retain];
    var_118 = r0;
    r0 = [r0 sortedArrayUsingComparator:0x100ea07e0];
    r29 = &saved_fp;
    var_B8 = [r0 retain];
    [var_118 release];
    var_C0 = [NSMutableArray new];
    memset(&stack[-280], zero_extend_64(0x0), 0x40);
    r0 = [var_B8 retain];
    var_120 = r0;
    r0 = [r0 countByEnumeratingWithState:&stack[-280] objects:r29 - 0x98 count:0x10];
    var_128 = r0;
    if (r0 != 0x0) {
            var_130 = *var_F8;
            var_138 = &stack[-280] + 0x10;
            var_140 = 0x0;
            var_148 = var_128;
            do {
                    do {
                            var_150 = var_148;
                            var_158 = var_140;
                            if (**var_138 != var_130) {
                                    objc_enumerationMutation(var_120);
                            }
                            r0 = [0x0 objectForKey:*(var_100 + var_158 * 0x8)];
                            r29 = r29;
                            r0 = [r0 retain];
                            [var_C0 addObjectsFromArray:r0];
                            [r0 release];
                            var_148 = var_150;
                            var_140 = var_158 + 0x1;
                    } while (var_158 + 0x1 < var_150);
                    r0 = [var_120 countByEnumeratingWithState:&stack[-280] objects:r29 - 0x98 count:0x10];
                    var_148 = r0;
                    var_140 = 0x0;
            } while (r0 != 0x0);
    }
    var_18 = **___stack_chk_guard;
    [var_120 release];
    var_178 = [var_C0 retain];
    objc_storeStrong(&var_C0, 0x0);
    objc_storeStrong(r29 - 0xb8, 0x0);
    objc_storeStrong(r29 - 0xb0, 0x0);
    var_180 = [var_178 autorelease];
    if (**___stack_chk_guard == var_18) {
            r0 = var_180;
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

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_processorForChildren);
    return;
}

@end