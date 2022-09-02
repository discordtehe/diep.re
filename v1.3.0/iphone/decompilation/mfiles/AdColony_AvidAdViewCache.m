@implementation AdColony_AvidAdViewCache

-(void *)initWithAdSessionRegistry:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_adSessionRegistry));
            r0 = [r19 retain];
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
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
            r0 = [AdColony_AvidViewKey new];
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
    if (r0 == 0x0) goto loc_10025d944;

loc_10025d87c:
    r21 = [NSMutableSet new];
    r22 = [r19 retain];
    if (r22 == 0x0) goto loc_10025d920;

loc_10025d8c4:
    if (([r22 isHidden] & 0x1) != 0x0) goto loc_10025d94c;

loc_10025d8d4:
    [r22 alpha];
    if (d0 == 0x0) goto loc_10025d94c;

loc_10025d8e8:
    [r21 addObject:r22];
    r0 = [r22 superview];
    r29 = r29;
    r27 = [r0 retain];
    [r22 release];
    r22 = r27;
    if (r27 != 0x0) goto loc_10025d8c4;

loc_10025d920:
    [r20->_rootViews unionSet:r21];
    r20 = 0x1;
    goto loc_10025d958;

loc_10025d958:
    [r21 release];
    goto loc_10025d960;

loc_10025d960:
    [r19 release];
    r0 = r20;
    return r0;

loc_10025d94c:
    [r22 release];
    r20 = 0x0;
    goto loc_10025d958;

loc_10025d944:
    r20 = 0x0;
    goto loc_10025d960;
}

-(void)prepare {
    r31 = r31 + 0xffffffffffffffa0 - 0x120;
    r27 = self;
    var_118 = 0x0;
    r0 = r27->_adSessionRegistry;
    r0 = [r0 internalAvidAdSessions];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_120 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            r25 = *0x0;
            do {
                    r26 = 0x0;
                    r20 = @selector(view);
                    var_140 = r20;
                    r19 = @selector(isActive);
                    var_128 = r19;
                    var_130 = @selector(buildRootViewsFromAdView:);
                    var_138 = @selector(avidAdSessionId);
                    var_148 = @selector(addObject:);
                    var_150 = @selector(setView:);
                    var_158 = @selector(setObject:forKey:);
                    var_160 = @selector(prepareFriendlyObstructionsForAdSession:);
                    do {
                            if (*0x0 != r25) {
                                    objc_enumerationMutation(var_120);
                            }
                            r28 = *(0x0 + r26 * 0x8);
                            r0 = objc_msgSend(r28, r20);
                            r29 = r29;
                            r22 = [r0 retain];
                            objc_msgSend(r28, r19);
                            if (r22 != 0x0) {
                                    asm { ccmp       w0, #0x0, #0x4, ne };
                            }
                            if (!CPU_FLAGS & E) {
                                    var_130 = @selector(buildRootViewsFromAdView:);
                                    r21 = r25;
                                    if (objc_msgSend(r27, var_130) != 0x0) {
                                            var_160 = @selector(prepareFriendlyObstructionsForAdSession:);
                                            var_148 = @selector(addObject:);
                                            var_150 = @selector(setView:);
                                            var_158 = @selector(setObject:forKey:);
                                            var_138 = @selector(avidAdSessionId);
                                            r20 = r27->_visibleSessionIds;
                                            [objc_msgSend(r28, var_138) retain];
                                            objc_msgSend(r20, var_148);
                                            [r25 release];
                                            objc_msgSend(*(r27 + sign_extend_64(*(int32_t *)ivar_offset(_key))), var_150);
                                            r20 = r27->_adViews;
                                            r0 = objc_msgSend(r28, var_138);
                                            r29 = r29;
                                            [r0 retain];
                                            objc_msgSend(r20, var_158);
                                            [r25 release];
                                            objc_msgSend(r27, var_160);
                                    }
                                    else {
                                            var_148 = @selector(addObject:);
                                            var_138 = @selector(avidAdSessionId);
                                            r20 = r27->_hiddenSessionIds;
                                            r0 = objc_msgSend(r28, var_138);
                                            r29 = r29;
                                            [r0 retain];
                                            objc_msgSend(r20, var_148);
                                            [r25 release];
                                    }
                                    r25 = r21;
                                    r20 = var_140;
                                    r19 = var_128;
                            }
                            [r22 release];
                            r26 = r26 + 0x1;
                    } while (r26 < r23);
                    var_168 = @selector(countByEnumeratingWithState:objects:count:);
                    r23 = objc_msgSend(var_120, var_168);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
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
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_key));
    [*(r20 + r23) setView:r21];
    [r21 release];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_friendlyObstructions));
    r0 = *(r20 + r24);
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) {
            [NSMutableArray new];
            [r21 release];
            [*(r20 + r24) setObject:r2 forKey:r3];
            r21 = r22;
    }
    [[r19 avidAdSessionId] retain];
    [r21 addObject:r2];
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)prepareFriendlyObstructionsForAdSession:(void *)arg2 {
    r31 = r31 + 0xffffffffffffffa0 - 0xd0;
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    var_118 = 0x0;
    r0 = [r0 obstructionsWhiteList];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 whiteList];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = *(0x0 + r27 * 0x8);
                            r0 = [r0 view];
                            r29 = r29;
                            r26 = [r0 retain];
                            if (r26 != 0x0) {
                                    [r19 addFriendlyObstruction:r2 forAdSession:r3];
                            }
                            [r26 release];
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
                    [r20 sortUsingComparator:0x100e76f10];
                    [*(r19 + r21) removeObjectForKey:r2];
            }
            r19 = [r20 retain];
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
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