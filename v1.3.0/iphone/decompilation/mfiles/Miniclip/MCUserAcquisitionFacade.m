@implementation MCUserAcquisitionFacade

-(void)setLogging:(bool)arg2 {
    *(int8_t *)(self + 0x10) = arg2;
    return;
}

+(void *)sharedMCUserAcquisitionFacade {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011e5f80;
    if (r0 == 0x0) {
            r0 = [MCUserAcquisitionIOSFacade new];
            *0x1011e5f80 = r0;
    }
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)unregisterDelegate:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 == arg2) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    return;
}

-(void)registerDelegate:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != r2) {
            r20 = r2;
            if (r0 != 0x0) {
                    [r0 release];
            }
            *(r19 + 0x8) = [r20 retain];
    }
    return;
}

-(void)trackVirtualClick:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if (arg2 == 0x0 && ([0x0 isEqualToString:r2] & 0x1) == 0x0) {
            if (*(int8_t *)(r20 + 0x10) != 0x0) {
                    [NSString stringWithFormat:r2];
                    NSLog(@"[MCUserAcquisition] %@", r1);
            }
    }
    else {
            r0 = *(r20 + 0x8);
            if (r0 != 0x0) {
                    if ([r0 respondsToSelector:@selector(sendTrackerUrl:)] != 0x0) {
                            [*(r20 + 0x8) sendTrackerUrl:r19];
                    }
            }
    }
    return;
}

-(bool)shouldHandleURL:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r0 = [r2 scheme];
            if (r0 != 0x0) {
                    r19 = r0;
                    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                            r0 = 0x0;
                    }
                    else {
                            r0 = [r19 lowercaseString];
                            r0 = [r0 rangeOfString:@"adjust"];
                            if (r0 != 0x7fffffffffffffff) {
                                    if (CPU_FLAGS & NE) {
                                            r0 = 0x1;
                                    }
                            }
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)intializeWithAppToken:(void *)arg2 {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(self + 0x10) != 0x0) {
            [NSString stringWithFormat:r2];
            NSLog(@"[MCUserAcquisition] %@", r1);
    }
    return;
}

-(void)trackSessionStart {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(self + 0x10) != 0x0) {
            [NSString stringWithFormat:r2];
            NSLog(@"[MCUserAcquisition] %@", r1);
    }
    return;
}

-(void)trackSessionEnd {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(self + 0x10) != 0x0) {
            [NSString stringWithFormat:r2];
            NSLog(@"[MCUserAcquisition] %@", r1);
    }
    return;
}

-(void)trackSimpleEvent:(void *)arg2 {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(self + 0x10) != 0x0) {
            [NSString stringWithFormat:r2];
            NSLog(@"[MCUserAcquisition] %@", r1);
    }
    return;
}

-(void)trackRevenueEvent:(void *)arg2 revenue:(double)arg3 currency:(void *)arg4 receipt:(void *)arg5 transactionId:(void *)arg6 {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(self + 0x10) != 0x0) {
            [NSString stringWithFormat:r2];
            NSLog(@"[MCUserAcquisition] %@", r1);
    }
    return;
}

-(void)trackDeepLink:(void *)arg2 {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(self + 0x10) != 0x0) {
            [NSString stringWithFormat:r2];
            NSLog(@"[MCUserAcquisition] %@", r1);
    }
    return;
}

@end