@implementation SSEReachability

+(void *)reachabilityWithHostName:(void *)arg2 {
    r0 = [SSEReachability reachabilityWithHostname:arg2];
    return r0;
}

+(void *)reachabilityWithAddress:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = **_kCFAllocatorDefault;
    r0 = SCNetworkReachabilityCreateWithAddress(r0, arg2);
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [r20 alloc];
            r0 = [r0 initWithReachabilityRef:r19];
    }
    r0 = [r0 autorelease];
    return r0;
}

+(void *)reachabilityWithHostname:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [arg2 retain];
    r20 = [objc_retainAutorelease(arg2) UTF8String];
    [r21 release];
    r0 = SCNetworkReachabilityCreateWithName(0x0, r20);
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 alloc];
            r0 = [r0 initWithReachabilityRef:r20];
    }
    r0 = [r0 autorelease];
    return r0;
}

+(void *)reachabilityForInternetConnection {
    r0 = [NSURL URLWithString:@"https://www.oriori.com/"];
    r0 = [r0 retain];
    r21 = [[r0 host] retain];
    r19 = [[self reachabilityWithHostName:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithReachabilityRef:(struct __SCNetworkReachability *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setReachableOnWWAN:0x1];
            [r19 setReachabilityRef:r20];
            r20 = dispatch_queue_create("com.supersonic.reachability", 0x0);
            [r19 setReachabilitySerialQueue:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(bool)startNotifier {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self reachabilityObject];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_100701dc0;

loc_100701d94:
    r0 = [r19 reachabilityObject];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r0 == r19) goto loc_100701e50;

loc_100701dc0:
    r0 = [r19 reachabilityRef];
    r0 = SCNetworkReachabilitySetCallback(r0, 0x100701e9c, &var_48);
    if (r0 == 0x0) goto loc_100701e70;

loc_100701df4:
    r21 = [r19 reachabilityRef];
    r22 = [[r19 reachabilitySerialQueue] retain];
    r21 = SCNetworkReachabilitySetDispatchQueue(r21, r22);
    [r22 release];
    if (r21 == 0x0) goto loc_100701e58;

loc_100701e3c:
    [r19 setReachabilityObject:r19];
    goto loc_100701e50;

loc_100701e50:
    r0 = 0x1;
    return r0;

loc_100701e58:
    SCNetworkReachabilitySetCallback([r19 reachabilityRef], 0x0, 0x0);
    goto loc_100701e70;

loc_100701e70:
    [r19 setReachabilityObject:0x0];
    r0 = 0x0;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self stopNotifier];
    if ([r19 reachabilityRef] != 0x0) {
            CFRelease([r19 reachabilityRef]);
            [r19 setReachabilityRef:0x0];
    }
    [r19 setReachableBlock:0x0];
    [r19 setUnreachableBlock:0x0];
    [r19 setReachabilityBlock:0x0];
    [r19 setReachabilitySerialQueue:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)stopNotifier {
    SCNetworkReachabilitySetCallback([self reachabilityRef], 0x0, 0x0);
    SCNetworkReachabilitySetDispatchQueue([self reachabilityRef], 0x0);
    [self setReachabilityObject:0x0];
    return;
}

-(bool)isReachable {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self reachabilityRef];
    r0 = SCNetworkReachabilityGetFlags(r0, &var_14);
    if (r0 != 0x0) {
            r0 = [r19 isReachableWithFlags:var_14];
    }
    return r0;
}

-(bool)isReachableWithFlags:(unsigned int)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = 0x5;
    reg_zero = r8 & !r2;
    if (reg_zero != 0x0) {
            r8 = 0x5;
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    r19 = r8 & r2 / 0x2;
    if ((r2 & 0x40000) == 0x0) {
            r0 = r19;
    }
    else {
            r0 = [r0 reachableOnWWAN];
            r0 = r19 & r0;
    }
    return r0;
}

-(bool)isReachableViaWWAN {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (SCNetworkReachabilityGetFlags([self reachabilityRef], &saved_fp - 0x4) != 0x0) {
            reg_zero = 0x40002 & !0x0;
            if (reg_zero == 0x0) {
                    r0 = 0x1;
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)isReachableViaWiFi {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self reachabilityRef];
    r0 = SCNetworkReachabilityGetFlags(r0, &saved_fp - 0x4);
    if (r0 != 0x0) {
            if ((0x0 & 0x40000) == 0x0) {
                    if (CPU_FLAGS & E) {
                            r9 = 0x1;
                    }
            }
            if ((0x0 & 0x2) == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = r9;
                    }
                    else {
                            r0 = 0x0;
                    }
            }
    }
    return r0;
}

-(bool)isConnectionRequired {
    r0 = [self connectionRequired];
    return r0;
}

-(bool)connectionRequired {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self reachabilityRef];
    r0 = SCNetworkReachabilityGetFlags(r0, &saved_fp - 0x4);
    if (r0 != 0x0) {
            asm { ubfx       w0, w8, #0x2, #0x1 };
    }
    return r0;
}

-(bool)isConnectionOnDemand {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self reachabilityRef];
    r0 = SCNetworkReachabilityGetFlags(r0, &saved_fp - 0x4);
    if (r0 != 0x0) {
            r8 = var_4;
            r9 = r8 & 0x4;
            if ((r8 & 0x28) != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            r0 = r8 & r9 / 0x4;
    }
    return r0;
}

-(unsigned int)reachabilityFlags {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self reachabilityRef];
    r0 = SCNetworkReachabilityGetFlags(r0, &saved_fp - 0x4);
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = 0x0;
            }
            else {
                    r0 = 0x0;
            }
    }
    return r0;
}

-(long long)currentReachabilityStatus {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isReachable] != 0x0) {
            if (([r19 isReachableViaWiFi] & 0x1) != 0x0) {
                    r0 = 0x2;
            }
            else {
                    if (([r19 isReachableViaWWAN] & 0x1) != 0x0) {
                            r0 = 0x1;
                    }
                    else {
                            r0 = 0x0;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(bool)isInterventionRequired {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self reachabilityRef];
    r0 = SCNetworkReachabilityGetFlags(r0, &saved_fp - 0x4);
    if (r0 != 0x0) {
            reg_zero = 0x14 & !var_4;
            if (reg_zero == 0x0) {
                    if (CPU_FLAGS & E) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(void *)currentReachabilityString {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self currentReachabilityStatus];
    if (r0 != 0x2) {
            if (r0 == 0x1) {
                    r19 = @"cellular";
            }
            else {
                    r19 = @"none";
            }
    }
    else {
            r19 = @"wifi";
    }
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)hasConnectivity {
    r0 = [self currentReachabilityString];
    r0 = [r0 retain];
    r20 = [r0 isEqualToString:r2];
    [r0 release];
    r0 = r20 ^ 0x1;
    return r0;
}

-(void *)getDeviceReachabilityType {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self currentReachabilityStatus];
    if (r0 != 0x2) {
            if (r0 == 0x0) {
                    r19 = @"notReachable";
            }
            else {
                    r19 = @"3G";
            }
    }
    else {
            r19 = @"wifi";
    }
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;
}

-(void)reachabilityChanged:(unsigned int)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if ([self isReachableWithFlags:r2] == 0x0) goto loc_100702430;

loc_1007023f4:
    r0 = [r19 reachableBlock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100702484;

loc_10070241c:
    r0 = [r19 reachableBlock];
    r29 = r29;
    goto loc_100702468;

loc_100702468:
    (*([r0 retain] + 0x10))();
    [r21 release];
    goto loc_100702484;

loc_100702484:
    r0 = [r19 reachabilityBlock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            (*([[r19 reachabilityBlock] retain] + 0x10))();
            [r21 release];
    }
    dispatch_async(*__dispatch_main_q, &var_48);
    return;

loc_100702430:
    r0 = [r19 unreachableBlock];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100702484;

loc_100702458:
    r0 = [r19 unreachableBlock];
    r29 = r29;
    goto loc_100702468;
}

-(void *)currentReachabilityFlags {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self reachabilityFlags];
    r9 = 0x57;
    if ((r0 & 0x40000) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r9 = 0x57;
            }
            else {
                    r9 = 0x2d;
            }
    }
    r11 = 0x52;
    if ((r0 & 0x2) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r11 = 0x52;
            }
            else {
                    r11 = 0x2d;
            }
    }
    r12 = 0x63;
    if ((r0 & 0x4) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r12 = 0x63;
            }
            else {
                    r12 = 0x2d;
            }
    }
    r13 = 0x74;
    if ((r0 & 0x1) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r13 = 0x74;
            }
            else {
                    r13 = 0x2d;
            }
    }
    r14 = 0x69;
    if ((r0 & 0x10) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r14 = 0x69;
            }
            else {
                    r14 = 0x2d;
            }
    }
    r15 = 0x43;
    if ((r0 & 0x8) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r15 = 0x43;
            }
            else {
                    r15 = 0x2d;
            }
    }
    r16 = 0x44;
    if ((r0 & 0x20) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r16 = 0x44;
            }
            else {
                    r16 = 0x2d;
            }
    }
    r17 = 0x6c;
    if ((r0 & 0x10000) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r17 = 0x6c;
            }
            else {
                    r17 = 0x2d;
            }
    }
    r10 = 0x2d;
    if ((r0 & 0x20000) == 0x0) {
            if (!CPU_FLAGS & E) {
                    r10 = 0x64;
            }
            else {
                    r10 = 0x2d;
            }
    }
    r0 = [NSString stringWithFormat:@"%c%c %c%c%c%c%c%c%c"];
    return r0;
}

-(void)setReachableBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)reachableBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_reachableBlock)), 0x0);
    return r0;
}

-(void *)description {
    r21 = [NSStringFromClass([self class]) retain];
    r22 = [[self currentReachabilityFlags] retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)unreachableBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_unreachableBlock)), 0x0);
    return r0;
}

-(void)setUnreachableBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setReachabilityBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)reachabilityBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_reachabilityBlock)), 0x0);
    return r0;
}

-(bool)reachableOnWWAN {
    r0 = *(int8_t *)(int64_t *)&self->_reachableOnWWAN;
    return r0;
}

-(void)setReachableOnWWAN:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_reachableOnWWAN = arg2;
    return;
}

-(void)setReachabilityRef:(struct __SCNetworkReachability *)arg2 {
    self->_reachabilityRef = arg2;
    return;
}

-(struct __SCNetworkReachability *)reachabilityRef {
    r0 = self->_reachabilityRef;
    return r0;
}

-(void *)reachabilitySerialQueue {
    r0 = self->_reachabilitySerialQueue;
    return r0;
}

-(void)setReachabilitySerialQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reachabilitySerialQueue, arg2);
    return;
}

-(void *)reachabilityObject {
    r0 = self->_reachabilityObject;
    return r0;
}

-(void)setReachabilityObject:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_reachabilityObject, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_reachabilityObject, 0x0);
    objc_storeStrong((int64_t *)&self->_reachabilitySerialQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_reachabilityBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_unreachableBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_reachableBlock, 0x0);
    return;
}

@end