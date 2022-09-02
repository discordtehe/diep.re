@implementation UPURTransactionErrorDetailsBuilder

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            [r19 setTransactionError:0x0];
            [r19 setStore:0x0];
            r20 = objc_msgSend([NSMutableDictionary alloc], r20);
            [r19 setExtras:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)putExtra:(void *)arg2 value:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self extras];
    r0 = [r0 retain];
    [r0 setObject:r2 forKey:r3];
    [r24 release];
    [r22 release];
    [r21 release];
    return;
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

-(void)setStore:(long long)arg2 {
    self->_store = arg2;
    return;
}

-(long long)store {
    r0 = self->_store;
    return r0;
}

-(void *)storeSpecificErrorCode {
    r0 = self->_storeSpecificErrorCode;
    return r0;
}

-(void)setStoreSpecificErrorCode:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_storeSpecificErrorCode, arg2);
    return;
}

-(void)setExtras:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_extras, arg2);
    return;
}

-(void *)extras {
    r0 = self->_extras;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_extras, 0x0);
    objc_storeStrong((int64_t *)&self->_storeSpecificErrorCode, 0x0);
    objc_storeStrong((int64_t *)&self->_exceptionMessage, 0x0);
    return;
}

@end