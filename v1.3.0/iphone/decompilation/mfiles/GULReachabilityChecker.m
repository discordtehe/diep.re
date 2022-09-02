@implementation GULReachabilityChecker

-(struct GULReachabilityApi *)reachabilityApi {
    r0 = self->reachabilityApi_;
    return r0;
}

-(void)setReachabilityApi:(struct GULReachabilityApi *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r0->reachability_ != 0x0) {
            sub_1000abe24(@"[GULReachability]", 0x0, [[NSString stringWithFormat:@"I-REA%06ld"] retain], @"Cannot change reachability API while reachability is running. Call stop first.");
            [r19 release];
    }
    else {
            r0->reachabilityApi_ = r2;
    }
    return;
}

-(bool)isActive {
    r0 = self;
    if (r0->reachability_ != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)setReachabilityDelegate:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && ([r19 conformsToProtocol:@protocol(GULReachabilityDelegate)] & 0x1) == 0x0) {
            sub_1000abe24(@"[GULReachability]", 0x0, [[NSString stringWithFormat:@"I-NET%06ld"] retain], @"Reachability delegate doesn't conform to Reachability protocol.");
            [r20 release];
    }
    else {
            objc_storeWeak((int64_t *)&r20->reachabilityDelegate_, r19);
    }
    [r19 release];
    return;
}

-(void *)initWithReachabilityDelegate:(void *)arg2 withHost:(void *)arg3 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r20 != 0x0 && [r20 length] != 0x0) {
            if (r21 != 0x0) {
                    [r21 setReachabilityDelegate:r19];
                    r21->reachabilityApi_ = 0x100e69118;
                    *(int32_t *)(int64_t *)&r21->reachabilityStatus_ = 0x0;
                    r0 = [r20 copy];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(host_));
                    r8 = *(r21 + r9);
                    *(r21 + r9) = r0;
                    [r8 release];
                    r21->reachability_ = 0x0;
            }
            r22 = [r21 retain];
    }
    else {
            sub_1000abe24(@"[GULReachability]", 0x0, [[NSString stringWithFormat:@"I-REA%06ld"] retain], @"Invalid host specified");
            [r22 release];
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

-(void)dealloc {
    objc_storeWeak((int64_t *)&self->reachabilityDelegate_, 0x0);
    [self stop];
    [[&var_20 super] dealloc];
    return;
}

-(bool)start {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(reachability_));
    if (*(r19 + r21) != 0x0) {
            sub_1000ac2a8(@"[GULReachability]", 0x0, [[NSString stringWithFormat:@"I-REA%06ld"] retain], @"Monitoring the network status");
            [r19 release];
            r0 = 0x1;
    }
    else {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(reachabilityApi_));
            r23 = **(r19 + r22);
            r20 = **_kCFAllocatorDefault;
            r0 = r19->host_;
            r0 = [r0 UTF8String];
            r0 = (r23)(r20, r0);
            *(r19 + r21) = r0;
            if (r0 != 0x0) {
                    if ((*(*(r19 + r22) + 0x8))() != 0x0 && (*(*(r19 + r22) + 0x10))(*(r19 + r21), CFRunLoopGetMain(), **_kCFRunLoopCommonModes) != 0x0) {
                            sub_1000ac2a8(@"[GULReachability]", 0x0, [[NSString stringWithFormat:@"I-REA%06ld"] retain], @"Monitoring the network status");
                            [r19 release];
                            r0 = 0x1;
                    }
                    else {
                            (*(*(r19 + r22) + 0x20))(*(r19 + r21));
                            *(r19 + r21) = 0x0;
                            sub_1000abe24(@"[GULReachability]", 0x0, [[NSString stringWithFormat:@"I-REA%06ld"] retain], @"Failed to start reachability handle");
                            [r19 release];
                            r0 = 0x0;
                    }
            }
    }
    return r0;
}

-(void)stop {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(reachability_));
    if (*(r19 + r21) != 0x0) {
            *(int32_t *)(int64_t *)&r19->reachabilityStatus_ = 0x0;
            (*(*(r19 + sign_extend_64(*(int32_t *)ivar_offset(reachabilityApi_))) + 0x18))(*(r19 + r21), CFRunLoopGetMain(), **_kCFRunLoopCommonModes);
            (*(*(r19 + r22) + 0x20))(*(r19 + r21));
            *(r19 + r21) = 0x0;
    }
    return;
}

-(int)statusForFlags:(unsigned int)arg2 {
    r2 = arg2;
    if ((r2 & 0x2) == 0x0) {
            r0 = 0x1;
    }
    else {
            if ((r2 & 0x4) == 0x0) {
                    r0 = 0x2;
                    asm { bfxil      w0, w2, #0x12, #0x1 };
            }
            else {
                    r0 = 0x1;
                    if ((r2 & 0x28) != 0x0) {
                            r0 = 0x1;
                            COND = (r2 & 0x10) != 0x0;
                            asm { bfxil      w8, w2, #0x12, #0x1 };
                            if (COND) {
                                    if (!CPU_FLAGS & NE) {
                                            r0 = 0x2;
                                    }
                                    else {
                                            r0 = 0x1;
                                    }
                            }
                    }
            }
    }
    return r0;
}

-(struct __SCNetworkReachability *)reachability {
    r0 = self->reachability_;
    return r0;
}

-(void)setReachability:(struct __SCNetworkReachability *)arg2 {
    self->reachability_ = arg2;
    return;
}

-(void)reachabilityFlagsChanged:(unsigned int)arg2 {
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
    r19 = self;
    r0 = [self statusForFlags:arg2];
    r20 = r0;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(reachabilityStatus_));
    if (*(int32_t *)(r19 + r24) != r20) {
            if (r20 != 0x0) {
                    if (r20 == 0x1) {
                            if (!CPU_FLAGS & E) {
                                    r0 = @"Connected";
                            }
                            else {
                                    r0 = @"Disconnected";
                            }
                    }
                    r21 = [r0 retain];
            }
            else {
                    r21 = @"Unknown";
                    [r21 retain];
            }
            r22 = [[NSString stringWithFormat:@"I-REA%06ld"] retain];
            [[NSNumber numberWithUnsignedInt:r20] retain];
            sub_1000ac2a8(@"[GULReachability]", 0x0, r22, @"Network status has changed. Code:%@, status:%@");
            [r23 release];
            [r22 release];
            *(int32_t *)(r19 + r24) = r20;
            r0 = objc_loadWeakRetained((int64_t *)&r19->reachabilityDelegate_);
            [r0 reachability:r19 statusChanged:*(int32_t *)(r19 + r24)];
            [r0 release];
            [r21 release];
    }
    return;
}

-(int)reachabilityStatus {
    r0 = *(int32_t *)(int64_t *)&self->reachabilityStatus_;
    return r0;
}

-(void)setReachabilityStatus:(int)arg2 {
    *(int32_t *)(int64_t *)&self->reachabilityStatus_ = arg2;
    return;
}

-(void *)host {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(host_)), 0x0);
    return r0;
}

-(void *)reachabilityDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->reachabilityDelegate_);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setHost:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->reachabilityDelegate_);
    objc_storeStrong((int64_t *)&self->host_, 0x0);
    return;
}

@end