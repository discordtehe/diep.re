@implementation AdColony_AvidStatePublisher

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
            r0 = dispatch_queue_create(0x0, 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)publishState:(void *)arg2 toSessions:(void *)arg3 timestamp:(double)arg4 {
    r21 = [arg2 retain];
    r19 = [arg3 copy];
    r22 = self->_queue;
    var_50 = r21;
    [r21 retain];
    var_48 = [self retain];
    var_40 = r19;
    [r19 retain];
    dispatch_async(r22, &var_70);
    [var_40 release];
    [var_48 release];
    [var_50 release];
    [r19 release];
    [r21 release];
    return;
}

-(void)publishEmptyStateToSessions:(void *)arg2 timestamp:(double)arg3 {
    r20 = [arg2 copy];
    var_38 = [self retain];
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    [r20 release];
    [var_38 release];
    [r19 release];
    return;
}

-(void)cleanupCache {
    r19 = self->_queue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)_publishEmptyStateToSessions:(void *)arg2 timestamp:(double)arg3 {
    r31 = r31 + 0xffffffffffffff90 - 0xf0;
    v8 = v0;
    r19 = [arg2 retain];
    r21 = [[AdColony_AvidDictionaryUtil emptyRootView] retain];
    r20 = [[AdColony_AvidDictionaryUtil jsonStateWithRoot:r21 timestamp:arg3] retain];
    var_148 = r20;
    [r21 release];
    var_138 = [[AdColony_AvidCommand setNativeViewState:r20] retain];
    var_128 = 0x0;
    r0 = self->_adSessionRegistry;
    r0 = [r0 internalAvidAdSessions];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_130 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_130);
                            }
                            r28 = *(0x0 + r22 * 0x8);
                            r0 = [r28 avidAdSessionId];
                            r29 = r29;
                            r20 = [r0 retain];
                            r23 = [r19 containsObject:r20];
                            [r20 release];
                            if (r23 != 0x0) {
                                    [r28 publishEmptyNativeViewStateWithCommand:r2 timestamp:r3];
                            }
                            r22 = r22 + 0x1;
                    } while (r22 < r24);
                    var_140 = @selector(countByEnumeratingWithState:objects:count:);
                    r24 = objc_msgSend(var_130, var_140);
            } while (r24 != 0x0);
    }
    var_68 = **___stack_chk_guard;
    [var_130 release];
    [var_138 release];
    [var_148 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)publishNativeViewStateCommand:(void *)arg2 toSessions:(void *)arg3 timestamp:(double)arg4 {
    r31 = r31 + 0xffffffffffffff90 - 0xf0;
    v8 = v0;
    var_138 = [arg2 retain];
    r20 = [arg3 retain];
    var_128 = 0x0;
    r0 = self->_adSessionRegistry;
    r0 = [r0 internalAvidAdSessions];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_130 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_130);
                            }
                            r27 = *(0x0 + r21 * 0x8);
                            r0 = [r27 avidAdSessionId];
                            r29 = r29;
                            r28 = [r0 retain];
                            r22 = [r20 containsObject:r28];
                            [r28 release];
                            if (r22 != 0x0) {
                                    [r27 publishNativeViewStateWithCommand:r2 timestamp:r3];
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r23);
                    var_140 = @selector(countByEnumeratingWithState:objects:count:);
                    r23 = objc_msgSend(var_130, var_140);
            } while (r23 != 0x0);
    }
    var_68 = **___stack_chk_guard;
    [var_130 release];
    [r20 release];
    [var_138 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void *)adSessionRegistry {
    r0 = self->_adSessionRegistry;
    return r0;
}

-(void *)previousState {
    r0 = self->_previousState;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adSessionRegistry, 0x0);
    objc_storeStrong((int64_t *)&self->_previousState, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    return;
}

@end