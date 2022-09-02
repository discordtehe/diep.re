@implementation FBBDSignalError

-(void *)initWithErrorCode:(long long)arg2 withErrorName:(void *)arg3 withErrorMessage:(void *)arg4 withErrorStack:(void *)arg5 {
    r31 = r31 - 0x60;
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
    r20 = arg5;
    r22 = arg4;
    r24 = arg3;
    r26 = arg2;
    r19 = [arg3 retain];
    r21 = [r22 retain];
    r23 = [r20 retain];
    r0 = [[&var_50 super] init];
    r25 = r0;
    if (r0 != 0x0) {
            r25->_errorCode = r26;
            objc_storeStrong((int64_t *)&r25->_errorName, r24);
            objc_storeStrong((int64_t *)&r25->_errorMessage, r22);
            objc_storeStrong((int64_t *)&r25->_errorStack, r20);
    }
    [r23 release];
    [r21 release];
    [r19 release];
    r0 = r25;
    return r0;
}

-(void *)errorDict {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [NSMutableDictionary new];
    r22 = [[NSNumber numberWithInteger:r20->_errorCode] retain];
    [r19 setObject:r22 forKeyedSubscript:@"ec"];
    [r22 release];
    if (r20->_errorName != 0x0) {
            [r19 setObject:r2 forKeyedSubscript:@"en"];
    }
    if (r20->_errorMessage != 0x0) {
            [r19 setObject:r2 forKeyedSubscript:@"em"];
    }
    if (r20->_errorStack != 0x0) {
            [r19 setObject:r2 forKeyedSubscript:@"es"];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(unsigned long long)dataSize {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self errorDict];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [NSMutableData new];
            r22 = [[NSKeyedArchiver alloc] initForWritingWithMutableData:r21];
            r19 = [[r19 errorDict] retain];
            [r22 encodeObject:r19 forKey:@"signalErrorKey"];
            [r19 release];
            [r22 finishEncoding];
            r19 = [r21 length];
            [r22 release];
            [r21 release];
            r0 = r19;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_errorStack, 0x0);
    objc_storeStrong((int64_t *)&self->_errorMessage, 0x0);
    objc_storeStrong((int64_t *)&self->_errorName, 0x0);
    return;
}

@end