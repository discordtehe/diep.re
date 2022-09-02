@implementation TR_RNCryptor

+(void *)synchronousResultForCryptor:(void *)arg2 data:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0xc0;
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
    r21 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = dispatch_semaphore_create(0x0);
    r22 = [[[NSMutableData data] retain] retain];
    var_88 = r22;
    r23 = [r23 retain];
    var_80 = r23;
    r0 = objc_retainBlock(&var_A8);
    r24 = r0;
    [r19 setHandler:r24];
    r25 = dispatch_queue_create("net.robnapier.RNEncryptor.response", 0x0);
    [r19 setResponseQueue:r25];
    [r19 addData:r20];
    [r19 finish];
    dispatch_semaphore_wait(r23, 0xffffffffffffffff);
    r0 = *(&var_70 + 0x28);
    if (r0 != 0x0) {
            if (r21 != 0x0) {
                    r0 = objc_retainAutorelease(r0);
                    r26 = 0x0;
                    *r21 = r0;
            }
            else {
                    r26 = 0x0;
            }
    }
    else {
            r26 = [r22 retain];
    }
    [r25 release];
    [r24 release];
    [var_80 release];
    [var_88 release];
    _Block_object_dispose(&var_70, 0x8);
    [0x0 release];
    [r22 release];
    [r23 release];
    [r20 release];
    [r19 release];
    r0 = [r26 autorelease];
    return r0;
}

+(void *)randomDataOfLength:(unsigned long long)arg2 {
    r0 = [NSMutableData dataWithLength:r2];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    SecRandomCopyBytes(0x0, arg2, [r0 mutableBytes]);
    r0 = [r20 autorelease];
    return r0;
}

+(void *)keyForPassword:(void *)arg2 salt:(void *)arg3 settings:(struct _RNCryptorKeyDerivationSettings)arg4 {
    memcpy(&r4, &arg4, 0x8);
    r31 = r31 - 0x80;
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
    r20 = r4;
    r22 = arg3;
    r19 = [arg2 retain];
    r24 = *r20;
    r26 = [r22 retain];
    r0 = [NSMutableData dataWithLength:r24];
    r29 = &saved_fp;
    var_60 = [r0 retain];
    var_58 = r19;
    if (*(int8_t *)(r20 + 0x1c) != 0x0) {
            r0 = objc_retainAutorelease(r19);
            r27 = [r0 UTF8String];
            r24 = @selector(length);
            r26 = r26;
            r0 = [NSData dataWithBytes:r27 length:objc_msgSend(r0, r24)];
            r0 = [r0 retain];
    }
    else {
            r0 = [r19 dataUsingEncoding:0x4];
            r0 = [r0 retain];
            r24 = @selector(length);
    }
    var_64 = *(int32_t *)(r20 + 0x10);
    r0 = objc_retainAutorelease(r0);
    r28 = [r0 bytes];
    r21 = objc_msgSend(r0, r24);
    r0 = objc_retainAutorelease(r22);
    r27 = [r0 bytes];
    r22 = objc_msgSend(r0, r24);
    [r26 release];
    r23 = *(int128_t *)(r20 + 0x14);
    r20 = *(int128_t *)(r20 + 0x18);
    r0 = objc_retainAutorelease(var_60);
    CCKeyDerivationPBKDF(var_64, r28, r21, r27, r22, r23, r20, [r0 mutableBytes], objc_msgSend(r0, r24));
    [r25 release];
    [var_58 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_responseQueue));
    r0 = *(r19 + r8);
    if (r0 != 0x0) {
            *(r19 + r8) = 0x0;
            [r0 release];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
    r0 = *(r19 + r8);
    if (r0 != 0x0) {
            *(r19 + r8) = 0x0;
            [r0 release];
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)setResponseQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_responseQueue, arg2);
    return;
}

-(void)addData:(void *)arg2 {
    return;
}

-(void *)initWithHandler:(void *)arg2 {
    r31 = r31 - 0x50;
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
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [NSStringFromClass([r20 class]) retain];
            r24 = [[@"net.robnapier.response." stringByAppendingString:r21] retain];
            [r21 release];
            r0 = objc_retainAutorelease(r24);
            r21 = r0;
            r0 = [r0 UTF8String];
            r0 = dispatch_queue_create(r0, 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_responseQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r22 = [NSStringFromClass([r20 class]) retain];
            r23 = [[@"net.robnapier." stringByAppendingString:r22] retain];
            [r22 release];
            r0 = objc_retainAutorelease(r23);
            r22 = r0;
            r0 = [r0 UTF8String];
            r0 = dispatch_queue_create(r0, 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [NSMutableData data];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(__outData));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_handler));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r22 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)finish {
    return;
}

-(void)cleanupAndNotifyWithError:(void *)arg2 {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self setError:arg2];
    [r19 setFinished:0x1];
    r0 = [r19 handler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 responseQueue];
            r0 = [r0 retain];
            dispatch_sync(r0, &var_38);
            [r20 release];
            [r19 setHandler:0x0];
    }
    return;
}

-(bool)hasHMAC {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self HMACLength];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)engine {
    r0 = self->_engine;
    return r0;
}

-(void)setEngine:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_engine, arg2);
    return;
}

-(void *)responseQueue {
    r0 = self->_responseQueue;
    return r0;
}

-(void *)outData {
    r0 = self->__outData;
    return r0;
}

-(void *)queue {
    r0 = self->_queue;
    return r0;
}

-(void)setQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_queue, arg2);
    return;
}

-(unsigned long long)HMACLength {
    r0 = self->__HMACLength;
    return r0;
}

-(void)setHMACLength:(unsigned long long)arg2 {
    self->__HMACLength = arg2;
    return;
}

-(void *)error {
    r0 = self->_error;
    return r0;
}

-(void)setError:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_error, arg2);
    return;
}

-(bool)isFinished {
    r0 = *(int8_t *)(int64_t *)&self->_finished;
    return r0;
}

-(void)setFinished:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_finished = arg2;
    return;
}

-(void)setOptions:(unsigned char)arg2 {
    *(int8_t *)(int64_t *)&self->_options = arg2;
    return;
}

-(unsigned char)options {
    r0 = *(int8_t *)(int64_t *)&self->_options;
    return r0;
}

-(void *)handler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_handler)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_handler, 0x0);
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->__outData, 0x0);
    objc_storeStrong((int64_t *)&self->_engine, 0x0);
    objc_storeStrong((int64_t *)&self->_responseQueue, 0x0);
    return;
}

-(void)setHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end