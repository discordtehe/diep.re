@implementation UPURTransactionErrorDetails

-(void *)getJSONDictionary {
    r31 = r31 - 0xe0;
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
    r23 = self;
    [self transactionError];
    var_B0 = [sub_1000e6558() retain];
    r0 = [r23 exceptionMessage];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_B8 = r0;
    if (r0 != 0x0) {
            r0 = [r23 exceptionMessage];
            r29 = r29;
            r0 = [r0 retain];
            var_C8 = 0x0;
            var_C4 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            var_C8 = 0x1;
            var_C4 = 0x0;
    }
    var_C0 = r0;
    [r23 store];
    r22 = [sub_1000e6d78() retain];
    r0 = [r23 storeSpecificErrorCode];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = [r23 storeSpecificErrorCode];
            r29 = r29;
            r25 = [r0 retain];
            r19 = 0x0;
            r28 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r25 = [r0 retain];
            r28 = 0x0;
            r19 = 0x1;
    }
    r0 = [r23 extras];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            r0 = [r23 extras];
            r29 = r29;
            r27 = [r0 retain];
            r21 = 0x0;
            r20 = 0x1;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r27 = [r0 retain];
            r20 = 0x0;
            r21 = 0x1;
    }
    r23 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    if (r21 != 0x0) {
            [r27 release];
    }
    if (r20 != 0x0) {
            [r27 release];
    }
    [r26 release];
    if (r19 != 0x0) {
            [r25 release];
    }
    if (r28 != 0x0) {
            [r25 release];
    }
    [r24 release];
    [r22 release];
    r19 = var_C0;
    if (var_C8 != 0x0) {
            [r19 release];
    }
    if (var_C4 != 0x0) {
            [r19 release];
    }
    var_58 = **___stack_chk_guard;
    [var_B8 release];
    [var_B0 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)initWithBuilder:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setTransactionError:[r19 transactionError]];
            r21 = [[r19 exceptionMessage] retain];
            [r20 setExceptionMessage:r21];
            [r21 release];
            [r20 setStore:[r19 store]];
            r21 = [[r19 storeSpecificErrorCode] retain];
            [r20 setStoreSpecificErrorCode:r21];
            [r21 release];
            r0 = [r19 extras];
            r0 = [r0 retain];
            r22 = [r0 mutableCopy];
            [r20 setExtras:r22];
            [r22 release];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)build:(void *)arg2 {
    (*([arg2 retain] + 0x10))(arg2, [[UPURTransactionErrorDetailsBuilder alloc] init]);
    [r22 release];
    r19 = [[UPURTransactionErrorDetails alloc] initWithBuilder:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(long long)transactionError {
    r0 = self->_transactionError;
    return r0;
}

-(void)setTransactionError:(long long)arg2 {
    self->_transactionError = arg2;
    return;
}

-(void *)exceptionMessage {
    r0 = self->_exceptionMessage;
    return r0;
}

-(void)setExceptionMessage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_exceptionMessage, arg2);
    return;
}

-(long long)store {
    r0 = self->_store;
    return r0;
}

-(void)setStore:(long long)arg2 {
    self->_store = arg2;
    return;
}

-(void *)storeSpecificErrorCode {
    r0 = self->_storeSpecificErrorCode;
    return r0;
}

-(void)setStoreSpecificErrorCode:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_storeSpecificErrorCode, arg2);
    return;
}

-(void *)extras {
    r0 = self->_extras;
    return r0;
}

-(void)setExtras:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_extras, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_extras, 0x0);
    objc_storeStrong((int64_t *)&self->_storeSpecificErrorCode, 0x0);
    objc_storeStrong((int64_t *)&self->_exceptionMessage, 0x0);
    return;
}

@end