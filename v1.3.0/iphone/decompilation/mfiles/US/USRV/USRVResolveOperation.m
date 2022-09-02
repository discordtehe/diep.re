@implementation USRVResolveOperation

-(void *)initWithHostName:(void *)arg2 completeBlock:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setCompleteBlock:r20];
            r22 = [[USRVResolve alloc] initWithHostName:r19];
            [r21 setResolve:r22];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)startObserving {
    [self addObserver:self forKeyPath:@"isCancelled" options:0x1 context:0x0];
    return;
}

-(void)main {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = self;
    [self startObserving];
    r0 = [r19 resolve];
    r0 = [r0 retain];
    [r0 resolve];
    [r0 release];
    [r19 stopObserving];
    r0 = [r19 completeBlock];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1000e0b00;

loc_1000e0a84:
    r0 = [r19 resolve];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1000e0b00;

loc_1000e0aa0:
    r0 = [r19 resolve];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 canceled];
    [r0 release];
    [r23 release];
    [r22 release];
    if ((r25 & 0x1) == 0x0) goto loc_1000e0b08;

.l1:
    return;

loc_1000e0b08:
    r21 = [[r19 completeBlock] retain];
    r0 = [r19 resolve];
    r0 = [r0 retain];
    r23 = [[r0 hostName] retain];
    r0 = [r19 resolve];
    r0 = [r0 retain];
    r25 = [[r0 address] retain];
    r0 = [r19 resolve];
    r0 = [r0 retain];
    r27 = [[r0 error] retain];
    r0 = [r19 resolve];
    r0 = [r0 retain];
    (*(r21 + 0x10))(r21, r23, r25, r27, [[r0 errorMessage] retain]);
    [r20 release];
    [r19 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    r0 = r21;
    goto loc_1000e0c40;

loc_1000e0c40:
    [r0 release];
    return;

loc_1000e0b00:
    r0 = r22;
    goto loc_1000e0c40;
}

-(void)stopObserving {
    [self removeObserver:self forKeyPath:@"isCancelled"];
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = [arg2 retain];
    r20 = [arg2 isEqualToString:r2];
    [r21 release];
    if (r20 != 0x0) {
            r0 = [r19 resolve];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r19 resolve];
                    r0 = [r0 retain];
                    [r0 cancel];
                    [r0 release];
            }
    }
    return;
}

-(void *)completeBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completeBlock)), 0x0);
    return r0;
}

-(void)setCompleteBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)resolve {
    r0 = self->_resolve;
    return r0;
}

-(void)setResolve:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_resolve, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_resolve, 0x0);
    objc_storeStrong((int64_t *)&self->_completeBlock, 0x0);
    return;
}

@end