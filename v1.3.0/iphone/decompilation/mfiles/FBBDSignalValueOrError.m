@implementation FBBDSignalValueOrError

-(void *)initWithValue:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_signalValue, r20);
            [r21 initError];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)initWithError:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_signalError, r20);
            [r21 initError];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)signalValue:(void * *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (([self isSignalValue] & 0x1) != 0x0) {
            r0 = r20->_signalValue;
            r0 = [r0 retain];
    }
    else {
            if (r19 != 0x0) {
                    r8 = objc_retainAutorelease(r20->_error);
                    r0 = 0x0;
                    *r19 = r8;
            }
            else {
                    r0 = 0x0;
            }
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void *)signalError:(void * *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (([self isSignalError] & 0x1) != 0x0) {
            r0 = r20->_signalError;
            r0 = [r0 retain];
    }
    else {
            if (r19 != 0x0) {
                    r8 = objc_retainAutorelease(r20->_error);
                    r0 = 0x0;
                    *r19 = r8;
            }
            else {
                    r0 = 0x0;
            }
    }
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isSignalValue {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r0->_signalValue != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)isSignalError {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (r0->_signalError != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(unsigned long long)dataSize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = 0x101174b4c;
    if ([self isSignalValue] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x101174b4c;
            }
            else {
                    r8 = 0x101174b48;
            }
    }
    r0 = *(r19 + sign_extend_64(*(int32_t *)r8));
    r0 = [r0 dataSize];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    objc_storeStrong((int64_t *)&self->_signalError, 0x0);
    objc_storeStrong((int64_t *)&self->_signalValue, 0x0);
    return;
}

-(void)initError {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r0 = [NSError errorWithDomain:@"FBBDErrorDomain" code:0x1 userInfo:r21];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_error));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r21 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

@end