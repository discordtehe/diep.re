@implementation FBBDSignalContext

+(void)currentContextWithCompletionBlock:(void *)arg2 {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (dispatch_queue_get_label(*__dispatch_main_q) != dispatch_queue_get_label(0x0)) {
            if (r19 != 0x0) {
                    var_28 = [NSMutableDictionary new];
                    r0 = dispatch_group_create();
                    dispatch_group_enter(r0);
                    [r20 retain];
                    dispatch_async(*__dispatch_main_q, &var_80);
                    dispatch_group_wait(r20, 0xffffffffffffffff);
                    (*(r19 + 0x10))(r19, *(&var_50 + 0x28));
                    [r0 release];
                    [r20 release];
                    _Block_object_dispose(&var_50, 0x8);
                    [var_28 release];
            }
    }
    else {
            (*(r19 + 0x10))(r19, 0x0);
            var_28 = [NSMutableDictionary new];
            r0 = dispatch_group_create();
            dispatch_group_enter(r0);
            [r20 retain];
            dispatch_async(*__dispatch_main_q, &var_80);
            dispatch_group_wait(r20, 0xffffffffffffffff);
            (*(r19 + 0x10))(r19, *(&var_50 + 0x28));
            [r0 release];
            [r20 release];
            _Block_object_dispose(&var_50, 0x8);
            [var_28 release];
    }
    [r19 release];
    return;
}

+(void *)contextWithContextName:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r22 = 0x0;
            r20 = r19;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r20 = [r0 retain];
            r22 = 0x1;
    }
    r21 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    if (r22 != 0x0) {
            [r20 release];
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end