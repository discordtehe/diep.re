@implementation OMIDtapjoyAdViewCache

-(void *)initWithAdSessionRegistry:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_adSessionRegistry, r21);
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_adViews));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_friendlyObstructions));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [OMIDtapjoyViewKey new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_key));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableSet);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rootViews));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableSet);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_visibleSessionIds));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableSet);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_hiddenSessionIds));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)prepareFriendlyObstructionsForAdSession:(void *)arg2 {
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
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 friendlyObstructions];
    r0 = [r0 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            [r19 addFriendlyObstruction:r2 forAdSession:r3];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)addFriendlyObstruction:(void *)arg2 forAdSession:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_key));
    [*(r20 + r22) setView:r21];
    [r21 release];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_friendlyObstructions));
    r0 = *(r20 + r23);
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) {
            r21 = [NSMutableArray new];
            [*(r20 + r23) setObject:r2 forKey:r3];
    }
    [[r19 identifier] retain];
    [r21 addObject:r2];
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(bool)buildRootViewsFromAdView:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 window];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100968504;

loc_10096843c:
    r21 = [NSMutableSet new];
    r22 = [r19 retain];
    if (r22 == 0x0) goto loc_1009684e0;

loc_100968484:
    if (([r22 isHidden] & 0x1) != 0x0) goto loc_10096850c;

loc_100968494:
    [r22 alpha];
    if (d0 == 0x0) goto loc_10096850c;

loc_1009684a8:
    [r21 addObject:r22];
    r0 = [r22 superview];
    r29 = r29;
    r27 = [r0 retain];
    [r22 release];
    r22 = r27;
    if (r27 != 0x0) goto loc_100968484;

loc_1009684e0:
    [r20->_rootViews unionSet:r21];
    r20 = 0x1;
    goto loc_100968518;

loc_100968518:
    [r21 release];
    goto loc_100968520;

loc_100968520:
    [r19 release];
    r0 = r20;
    return r0;

loc_10096850c:
    [r22 release];
    r20 = 0x0;
    goto loc_100968518;

loc_100968504:
    r20 = 0x0;
    goto loc_100968520;
}

-(void)prepare {
    r31 = r31 - 0x180;
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
    r19 = self;
    r0 = r19->_adSessionRegistry;
    r0 = [r0 activeAdSessions];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r0;
    var_160 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r22 = 0x0;
                    r24 = @selector(buildRootViewsFromAdView:);
                    var_140 = r24;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_138);
                            }
                            r27 = *(0x0 + r22 * 0x8);
                            r0 = [r27 mainAdView];
                            r29 = r29;
                            r20 = [r0 retain];
                            if (objc_msgSend(r19, r24) != 0x0) {
                                    r28 = r19->_visibleSessionIds;
                                    r21 = [[r27 identifier] retain];
                                    [r28 addObject:r21];
                                    [r21 release];
                                    r24 = r23;
                                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_key));
                                    [*(r19 + r23) setView:r20];
                                    r21 = r19->_adViews;
                                    r0 = [r27 identifier];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    r3 = *(r19 + r23);
                                    r23 = r24;
                                    r24 = var_140;
                                    [r21 setObject:r28 forKey:r3];
                                    [r28 release];
                                    [r19 prepareFriendlyObstructionsForAdSession:r2];
                            }
                            else {
                                    r21 = r19->_hiddenSessionIds;
                                    r0 = [r27 identifier];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    [r21 addObject:r27];
                                    [r27 release];
                            }
                            [r20 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r23 = objc_msgSend(var_138, var_160);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_138 release];
    if (**___stack_chk_guard != var_58) {
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
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_adViews));
    if ([*(r19 + r21) count] != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_key));
            [*(r19 + r22) setView:r20];
            r20 = [[*(r19 + r21) objectForKey:r2] retain];
            if (r20 != 0x0) {
                    [*(r19 + r21) removeObjectForKey:r2];
            }
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)friendlySessionIdsForView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_friendlyObstructions));
    if ([*(r19 + r21) count] != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_key));
            [*(r19 + r22) setView:r20];
            r20 = [[*(r19 + r21) objectForKey:r2] retain];
            if (r20 != 0x0) {
                    [r20 sortUsingComparator:0x100ea3688];
                    [*(r19 + r21) removeObjectForKey:r2];
            }
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(unsigned long long)typeForView:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = r19->_rootViews;
    r0 = [r0 containsObject:r2];
    if ((r0 & 0x1) != 0x0) {
            r0 = 0x0;
    }
    else {
            if (*(int8_t *)(int64_t *)&r19->_isAdViewProcessed == 0x0) {
                    asm { cinc       x0, x8, eq };
            }
    }
    return r0;
}

-(void *)friendlyObstructions {
    r0 = self->_friendlyObstructions;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)adViews {
    r0 = self->_adViews;
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