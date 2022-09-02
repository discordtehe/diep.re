@implementation GADAnimationConfig

-(struct CGRect)initialFrame {
    r0 = self;
    return r0;
}

-(void)setInitialFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_initialFrame));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

-(struct CGRect)finalFrame {
    r0 = self;
    return r0;
}

+(void *)animationConfigsFromAnimations:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    var_130 = [[NSMutableArray alloc] init];
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    var_138 = r0;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_138);
                            }
                            r21 = *(0x0 + r20 * 0x8);
                            r0 = [r21 objectForKeyedSubscript:@"type"];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = [r0 isEqual:@"video"];
                            [r0 release];
                            if (r25 != 0x0) {
                                    r19 = [[GADVideoAnimationConfig alloc] initWithDictionary:r2];
                            }
                            else {
                                    r19 = 0x0;
                            }
                            r0 = [r21 objectForKeyedSubscript:@"type"];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = [r0 isEqual:@"in_app_store"];
                            [r0 release];
                            if (r26 != 0x0) {
                                    r21 = [[GADStoreKitProductAnimationConfig alloc] initWithDictionary:r2];
                                    [r19 release];
                                    r19 = r21;
                            }
                            if (r19 != 0x0) {
                                    sub_100822370(var_130, r19);
                            }
                            [r19 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r23);
                    r23 = objc_msgSend(var_138, var_140);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_138 release];
    [var_138 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_130 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setFinalFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_finalFrame));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    *(int128_t *)(0x10 + self + r8) = d2;
    *(int128_t *)(0x18 + self + r8) = d3;
    return;
}

@end