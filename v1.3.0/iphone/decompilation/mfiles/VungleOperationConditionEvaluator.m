@implementation VungleOperationConditionEvaluator

+(void)evaluateConditions:(void *)arg2 operation:(void *)arg3 completion:(void *)arg4 {
    r31 = r31 - 0x1d0;
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
    r29 = &saved_fp;
    r24 = [arg2 retain];
    r22 = [arg3 retain];
    r27 = [arg4 retain];
    r20 = dispatch_group_create();
    r23 = [NSMutableSet new];
    *(int128_t *)(&var_140 + 0x20) = q0;
    *(int128_t *)(&var_140 + 0x30) = q0;
    var_130 = q0;
    r0 = [r24 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1B8 = r1;
    var_1B0 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r26 = r0;
            var_1C0 = r27;
            r21 = *var_130;
            do {
                    r19 = 0x0;
                    do {
                            if (*var_130 != r21) {
                                    objc_enumerationMutation(var_1B0);
                            }
                            dispatch_group_enter(r20);
                            var_150 = [r23 retain];
                            r24 = [r20 retain];
                            objc_msgSend(r28, r27);
                            [r0 release];
                            [var_150 release];
                            r19 = r19 + 0x1;
                    } while (r19 < r26);
                    r0 = objc_msgSend(var_1B0, var_1B8);
                    r26 = r0;
            } while (r0 != 0x0);
            r27 = var_1C0;
    }
    else {
            r24 = r20;
    }
    var_78 = **___stack_chk_guard;
    [var_1B0 release];
    r25 = [dispatch_get_global_queue(0x0, 0x0) retain];
    var_188 = r22;
    [r22 retain];
    var_180 = r23;
    [r23 retain];
    [r27 retain];
    dispatch_group_notify(r20, r25, &var_1A8);
    [r25 release];
    [r27 release];
    [var_180 release];
    [var_188 release];
    [r21 release];
    [r23 release];
    [r22 release];
    [r24 release];
    [var_1B0 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;
}

@end