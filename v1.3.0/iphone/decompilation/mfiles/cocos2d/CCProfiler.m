@implementation CCProfiler

+(void *)sharedProfiler {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d4338;
    if (r0 == 0x0) {
            r0 = [CCProfiler alloc];
            r0 = [r0 init];
            *0x1011d4338 = r0;
    }
    return r0;
}

-(void *)createAndAddTimerWithName:(void *)arg2 {
    r21 = [[CCProfilingTimer alloc] initWithName:arg2];
    [*(self + 0x8) setObject:r21 forKey:arg2];
    [r21 release];
    r0 = r21;
    return r0;
}

-(void)releaseTimer:(void *)arg2 {
    [*(self + 0x8) removeObjectForKey:r2];
    return;
}

-(void)releaseAllTimers {
    [*(self + 0x8) removeAllObjects];
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[NSMutableDictionary alloc] initWithCapacity:0xa];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)displayTimers {
    r31 = r31 - 0x110;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r19 = r0;
    var_F0 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r22 = *var_F0;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_F0 != r22) {
                                    objc_enumerationMutation(r19);
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

@end