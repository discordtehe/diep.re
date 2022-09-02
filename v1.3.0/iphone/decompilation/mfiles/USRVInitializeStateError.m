@implementation USRVInitializeStateError

-(void *)execute {
    return 0x0;
}

-(void *)erroredState {
    r0 = self->_erroredState;
    return r0;
}

-(void *)initWithConfiguration:(void *)arg2 erroredState:(void *)arg3 stateName:(void *)arg4 message:(void *)arg5 {
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
    r24 = [arg2 retain];
    r22 = [arg3 retain];
    var_130 = [arg4 retain];
    var_138 = [arg5 retain];
    r0 = [[&var_E8 super] initWithConfiguration:r24];
    r21 = r0;
    [r24 release];
    if (r21 != 0x0) {
            [r21 setErroredState:r22];
    }
    var_148 = r22;
    var_118 = q0;
    r0 = [r21 configuration];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 getModuleConfigurationList];
    r29 = r29;
    r24 = [r0 retain];
    [r19 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    r26 = objc_msgSend(r24, r1);
    if (r26 != 0x0) {
            r20 = *var_118;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_118 != r20) {
                                    objc_enumerationMutation(r24);
                            }
                            r0 = [r21 configuration];
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 getModuleConfiguration:r2];
                            r29 = r29;
                            r19 = [r0 retain];
                            [r25 release];
                            if (r19 != 0x0) {
                                    r0 = [r21 configuration];
                                    r29 = r29;
                                    [r0 retain];
                                    [r19 initErrorState:r2 state:r3 message:r4];
                                    [r25 release];
                            }
                            [r19 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r26);
                    r26 = objc_msgSend(r24, var_140);
            } while (r26 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r24 release];
    [var_138 release];
    [var_130 release];
    [var_148 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setErroredState:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_erroredState, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_erroredState, 0x0);
    return;
}

@end