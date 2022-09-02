@implementation GADOMIDAdViewCache

-(void *)initWithAdSessionRegistry:(void *)arg2 {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x18, arg2);
    r0 = [[&var_28 super] init];
    var_8 = r0;
    objc_storeStrong(r29 - 0x8, r0);
    if (var_8 != 0x0) {
            objc_storeStrong((int64_t *)&var_8->_adSessionRegistry, 0x0);
            r0 = [NSMutableDictionary new];
            r9 = var_8->_adViews;
            var_8->_adViews = r0;
            [r9 release];
            r0 = [NSMutableDictionary new];
            r9 = var_8->_friendlyObstructions;
            var_8->_friendlyObstructions = r0;
            [r9 release];
            r0 = [GADOMIDViewKey new];
            r9 = var_8->_key;
            var_8->_key = r0;
            [r9 release];
            r0 = [NSMutableSet new];
            r9 = var_8->_rootViews;
            var_8->_rootViews = r0;
            [r9 release];
            r0 = [NSMutableSet new];
            r9 = var_8->_visibleSessionIds;
            var_8->_visibleSessionIds = r0;
            [r9 release];
            r0 = [NSMutableSet new];
            r9 = var_8->_hiddenSessionIds;
            var_8->_hiddenSessionIds = r0;
            [r9 release];
    }
    var_38 = [var_8 retain];
    objc_storeStrong(r29 - 0x18, 0x0);
    objc_storeStrong(r29 - 0x8, 0x0);
    r0 = var_38;
    return r0;
}

-(void)addFriendlyObstruction:(void *)arg2 forAdSession:(void *)arg3 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = self;
    objc_storeStrong(&saved_fp - 0x18, arg2);
    objc_storeStrong(&saved_fp - 0x20, arg3);
    [var_8->_key setView:0x0];
    r0 = var_8->_friendlyObstructions;
    r0 = [r0 objectForKey:var_8->_key];
    r29 = &saved_fp;
    var_28 = [r0 retain];
    if (var_28 == 0x0) {
            r8 = var_28;
            var_28 = [NSMutableArray new];
            [r8 release];
            [var_8->_friendlyObstructions setObject:var_28 forKey:var_8->_key];
    }
    r0 = [0x0 identifier];
    r0 = [r0 retain];
    [var_28 addObject:r0];
    [r0 release];
    objc_storeStrong(&var_28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x18, 0x0);
    return;
}

-(bool)buildRootViewsFromAdView:(void *)arg2 {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    var_10 = self;
    r0 = objc_storeStrong(&var_20, arg2);
    r0 = [var_20 window];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r10 = 0x1;
            }
    }
    [r0 release];
    if (((r10 ^ 0x1) & 0x1) == 0x0) goto loc_1008d1870;

loc_1008d1860:
    var_1 = 0x0;
    goto loc_1008d19bc;

loc_1008d19bc:
    objc_storeStrong(&var_20, 0x0);
    r0 = var_1 & 0x1 & 0x1;
    return r0;

loc_1008d1870:
    var_30 = [NSMutableSet new];
    var_38 = [var_20 retain];
    goto loc_1008d18a4;

loc_1008d18a4:
    if (var_38 == 0x0) goto loc_1008d194c;

loc_1008d18ac:
    if (([var_38 isHidden] & 0x1) != 0x0) goto loc_1008d18e8;

loc_1008d18c8:
    [var_38 alpha];
    if (d0 != 0x0) goto loc_1008d18f8;

loc_1008d18e8:
    var_1 = 0x0;
    goto loc_1008d1994;

loc_1008d1994:
    objc_storeStrong(&var_38, 0x0);
    objc_storeStrong(&var_30, 0x0);
    goto loc_1008d19bc;

loc_1008d18f8:
    [var_30 addObject:var_38];
    r0 = [var_38 superview];
    r29 = r29;
    r8 = var_38;
    var_38 = [r0 retain];
    [r8 release];
    goto loc_1008d18a4;

loc_1008d194c:
    [var_10->_rootViews unionSet:var_30];
    var_1 = 0x1;
    goto loc_1008d1994;
}

-(void)prepareFriendlyObstructionsForAdSession:(void *)arg2 {
    r31 = r31 - 0x160;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r10 = *___stack_chk_guard;
    var_A0 = self;
    r0 = objc_storeStrong(&var_B0, arg2);
    r0 = [var_B0 friendlyObstructions];
    r29 = &saved_fp;
    var_B8 = [r0 retain];
    memset(&stack[-272], zero_extend_64(0x0), 0x40);
    r0 = [var_B8 retain];
    var_110 = r0;
    r0 = [r0 countByEnumeratingWithState:&stack[-272] objects:r29 - 0x98 count:0x10];
    var_118 = r0;
    if (r0 != 0x0) {
            var_120 = *var_F0;
            var_128 = &stack[-272] + 0x10;
            var_130 = 0x0;
            var_138 = var_118;
            do {
                    do {
                            var_140 = var_138;
                            var_148 = var_130;
                            if (**var_128 != var_120) {
                                    objc_enumerationMutation(var_110);
                            }
                            [var_A0 addFriendlyObstruction:*(var_F8 + var_148 * 0x8) forAdSession:var_B0];
                            var_138 = var_140;
                            var_130 = var_148 + 0x1;
                    } while (var_148 + 0x1 < var_140);
                    r0 = [var_110 countByEnumeratingWithState:&stack[-272] objects:r29 - 0x98 count:0x10];
                    var_138 = r0;
                    var_130 = 0x0;
            } while (r0 != 0x0);
    }
    var_18 = **___stack_chk_guard;
    [var_110 release];
    objc_storeStrong(&var_B8, 0x0);
    objc_storeStrong(&var_B0, 0x0);
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;
}

-(void)prepare {
    r31 = r31 - 0x1b0;
    var_10 = r28;
    stack[-24] = r27;
    saved_fp = r29;
    stack[-8] = r30;
    r12 = *___stack_chk_guard;
    var_A0 = self;
    memset(&stack[-256], zero_extend_64(0x0), 0x40);
    r0 = [var_A0->_adSessionRegistry activeAdSessions];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_118 = r0;
    r0 = [r0 countByEnumeratingWithState:&stack[-256] objects:r29 - 0x98 count:0x10];
    var_120 = r0;
    if (r0 != 0x0) {
            var_128 = *var_E0;
            var_130 = &stack[-256] + 0x10;
            var_138 = 0x0;
            var_140 = var_120;
            do {
                    do {
                            var_148 = var_140;
                            var_150 = var_138;
                            if (**var_130 != var_128) {
                                    objc_enumerationMutation(var_118);
                            }
                            var_B0 = *(var_E8 + var_150 * 0x8);
                            r0 = [var_B0 mainAdView];
                            r29 = r29;
                            var_F8 = [r0 retain];
                            if (([var_A0 buildRootViewsFromAdView:var_F8] & 0x1) != 0x0) {
                                    var_158 = var_A0->_visibleSessionIds;
                                    r0 = [var_B0 identifier];
                                    r0 = [r0 retain];
                                    [var_158 addObject:r0];
                                    [r0 release];
                                    [var_A0->_key setView:var_F8];
                                    var_170 = var_A0->_adViews;
                                    r0 = [var_B0 identifier];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [var_170 setObject:r0 forKey:var_A0->_key];
                                    [r0 release];
                                    [var_A0 prepareFriendlyObstructionsForAdSession:var_B0];
                            }
                            else {
                                    var_188 = var_A0->_hiddenSessionIds;
                                    r0 = [var_B0 identifier];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [var_188 addObject:r0];
                                    [r0 release];
                            }
                            objc_storeStrong(&var_F8, 0x0);
                            var_140 = var_148;
                            var_138 = var_150 + 0x1;
                    } while (var_150 + 0x1 < var_148);
                    r0 = [var_118 countByEnumeratingWithState:&stack[-256] objects:r29 - 0x98 count:0x10];
                    var_140 = r0;
                    var_138 = 0x0;
            } while (r0 != 0x0);
    }
    var_18 = **___stack_chk_guard;
    [var_118 release];
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;
}

-(void)cleanup {
    [self->_adViews removeAllObjects];
    [self->_friendlyObstructions removeAllObjects];
    [self->_rootViews removeAllObjects];
    [self->_visibleSessionIds removeAllObjects];
    [self->_hiddenSessionIds removeAllObjects];
    [self->_key setView:0x0];
    *(int8_t *)(int64_t *)&self->_isAdViewProcessed = 0x0;
    return;
}

-(void)onAdViewProcessed {
    *(int8_t *)(int64_t *)&self->_isAdViewProcessed = 0x1;
    return;
}

-(void *)sessionIdForView:(void *)arg2 {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_10 = self;
    r0 = objc_storeStrong(&var_20, arg2);
    if ([var_10->_adViews count] == 0x0) {
            var_8 = 0x0;
    }
    else {
            [var_10->_key setView:var_20];
            var_30 = [[var_10->_adViews objectForKey:var_10->_key] retain];
            if (var_30 != 0x0) {
                    [var_10->_adViews removeObjectForKey:var_10->_key];
            }
            var_8 = [var_30 retain];
            objc_storeStrong(&var_30, 0x0);
    }
    objc_storeStrong(&var_20, 0x0);
    r0 = [var_8 autorelease];
    return r0;
}

-(void *)friendlySessionIdsForView:(void *)arg2 {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_10 = self;
    r0 = objc_storeStrong(&var_20, arg2);
    if ([var_10->_friendlyObstructions count] == 0x0) {
            var_8 = 0x0;
    }
    else {
            [var_10->_key setView:var_20];
            var_30 = [[var_10->_friendlyObstructions objectForKey:var_10->_key] retain];
            if (var_30 != 0x0) {
                    [var_30 sortUsingComparator:0x100ea0100];
                    [var_10->_friendlyObstructions removeObjectForKey:var_10->_key];
            }
            var_8 = [var_30 retain];
            objc_storeStrong(&var_30, 0x0);
    }
    objc_storeStrong(&var_20, 0x0);
    r0 = [var_8 autorelease];
    return r0;
}

-(unsigned long long)typeForView:(void *)arg2 {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    var_10 = self;
    objc_storeStrong(&var_20, arg2);
    if (([var_10->_rootViews containsObject:var_20] & 0x1) != 0x0) {
            var_8 = 0x0;
    }
    else {
            r9 = 0x1;
            if ((*(int8_t *)(int64_t *)&var_10->_isAdViewProcessed & 0x1) != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r9 = 0x2;
                    }
                    else {
                            r9 = 0x1;
                    }
            }
            var_8 = r9;
    }
    objc_storeStrong(&var_20, 0x0);
    r0 = var_8;
    return r0;
}

-(void *)adViews {
    r0 = self->_adViews;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)friendlyObstructions {
    r0 = self->_friendlyObstructions;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)rootViews {
    r0 = self->_rootViews;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)visibleSessionIds {
    r0 = self->_visibleSessionIds;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)hiddenSessionIds {
    r0 = self->_hiddenSessionIds;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)adSessionRegistry {
    r0 = self->_adSessionRegistry;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adSessionRegistry, 0x0);
    objc_storeStrong((int64_t *)&self->_hiddenSessionIds, 0x0);
    objc_storeStrong((int64_t *)&self->_visibleSessionIds, 0x0);
    objc_storeStrong((int64_t *)&self->_rootViews, 0x0);
    objc_storeStrong((int64_t *)&self->_key, 0x0);
    objc_storeStrong((int64_t *)&self->_friendlyObstructions, 0x0);
    objc_storeStrong((int64_t *)&self->_adViews, 0x0);
    return;
}

@end