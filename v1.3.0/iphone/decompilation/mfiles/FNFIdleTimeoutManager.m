@implementation FNFIdleTimeoutManager

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_application));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSHashTable weakObjectsHashTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_clients));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)addNonIdlingClient:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = (int64_t *)&r21->_lock;
    std::__1::mutex::lock();
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_clients));
    if (([*(r21 + r22) containsObject:r2] & 0x1) == 0x0) {
            if ([*(r21 + r22) count] == 0x0) {
                    dispatch_async(*__dispatch_main_q, &var_48);
            }
            [*(r21 + r22) addObject:r2];
    }
    std::__1::mutex::unlock();
    [r19 release];
    return;
}

-(void)_setApplication:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_application, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_application, 0x0);
    objc_storeStrong((int64_t *)&self->_clients, 0x0);
    std::__1::mutex::~mutex();
    return;
}

-(void)removeNonIdlingClient:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = (int64_t *)&r21->_lock;
    std::__1::mutex::lock();
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_clients));
    if ([*(r21 + r22) containsObject:r2] != 0x0) {
            [*(r21 + r22) removeObject:r19];
            if ([*(r21 + r22) count] == 0x0) {
                    dispatch_async(*__dispatch_main_q, &var_48);
            }
    }
    std::__1::mutex::unlock();
    [r19 release];
    return;
}

-(void *).cxx_construct {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_lock));
    *(r0 + r8) = 0x32aaaba7;
    *(int128_t *)(0x8 + r0 + r8) = q0;
    *(int128_t *)(0x18 + r0 + r8) = q0;
    *(int128_t *)(0x28 + r0 + r8) = q0;
    *(0x38 + r0 + r8) = 0x0;
    return r0;
}

+(void *)sharedInstance {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011ddd28 != -0x1) {
            dispatch_once(0x1011ddd28, 0x100eb0578);
    }
    r0 = *0x1011ddd30;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

@end