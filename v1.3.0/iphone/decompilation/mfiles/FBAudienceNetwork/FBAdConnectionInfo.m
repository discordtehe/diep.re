@implementation FBAdConnectionInfo

+(unsigned long long)typeFromSubtype:(unsigned long long)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = arg2 - 0x4;
    r10 = arg2 - 0x1;
    r12 = 0x4;
    if (arg2 == 0xb) {
            if (!CPU_FLAGS & E) {
                    r12 = 0x0;
            }
            else {
                    r12 = 0x4;
            }
    }
    if (r10 < 0x3) {
            if (!CPU_FLAGS & B) {
                    r10 = r12;
            }
            else {
                    r10 = 0x2;
            }
    }
    if (r8 < 0x7) {
            if (!CPU_FLAGS & B) {
                    r0 = r10;
            }
            else {
                    r0 = 0x3;
            }
    }
    return r0;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdConnectionInfo");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(unsigned long long)currentConnectionType {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self currentReachabilityStatus];
    if (r0 != 0x2) {
            if (r0 != 0x1) {
                    if (!CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
                    else {
                            r0 = 0x0;
                    }
            }
    }
    else {
            r0 = [r19 typeFromSubtype:[r19 currentConnectionSubtype]];
    }
    return r0;
}

+(void *)currentCellularConnection {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*qword_1011dd108 != -0x1) {
            dispatch_once_f(0x1011dd108, 0x1011c61c0, 0x100a3d91c);
    }
    r19 = [*0x1011dd110 new];
    r20 = [[@"currentRadio" stringByAppendingString:@"AccessTechnology"] retain];
    r21 = [[r19 valueForKey:r20] retain];
    [r20 release];
    r20 = [[r21 stringByReplacingOccurrencesOfString:@"CTRadioAccessTechnology" withString:@""] retain];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(unsigned long long)statusForReachabilityFlags:(unsigned int)arg2 {
    r2 = arg2;
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if ((r2 & 0x2) == 0x0) {
            r0 = 0x0;
    }
    else {
            r8 = 0x1 & !(r2 / 0x4);
            if ((r2 & 0x10) == 0x0) {
                    asm { ccmp       w9, #0x0, #0x4, eq };
            }
            if (CPU_FLAGS & E) {
                    asm { csinc      x8, x8, xzr, eq };
            }
            if ((r2 & 0x40000) == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r0 = 0x2;
                    }
                    else {
                            r0 = r8;
                    }
            }
    }
    return r0;
}

+(unsigned long long)currentReachabilityStatus {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*qword_1011dd8a8 != -0x1) {
            dispatch_once_f(0x1011dd8a8, 0x1011c6c70, 0x100a3d91c);
    }
    r0 = qword_1011dd8b0(**_kCFAllocatorDefault, &var_28);
    if (r0 != 0x0) {
            r20 = r0;
            if (*qword_1011dd8c8 != -0x1) {
                    dispatch_once_f(0x1011dd8c8, 0x1011c6c88, 0x100a3d91c);
            }
            r0 = qword_1011dd8d0(r20, &var_2C);
            if (r0 != 0x0) {
                    r19 = [r19 statusForReachabilityFlags:var_2C];
            }
            else {
                    r19 = 0x0;
            }
            CFRelease(r20);
    }
    else {
            r19 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(unsigned long long)currentConnectionSubtype {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self currentCellularConnection];
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 containsString:r2] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            if (([r19 containsString:r2] & 0x1) != 0x0) {
                    r20 = 0x2;
            }
            else {
                    if (([r19 containsString:r2] & 0x1) != 0x0) {
                            r20 = 0x3;
                    }
                    else {
                            if (([r19 containsString:r2] & 0x1) != 0x0) {
                                    r20 = 0x4;
                            }
                            else {
                                    if (([r19 containsString:r2] & 0x1) != 0x0) {
                                            r20 = 0x5;
                                    }
                                    else {
                                            if (([r19 containsString:r2] & 0x1) != 0x0) {
                                                    r20 = 0x6;
                                            }
                                            else {
                                                    if (([r19 containsString:r2] & 0x1) != 0x0) {
                                                            r20 = 0x7;
                                                    }
                                                    else {
                                                            if (([r19 containsString:r2] & 0x1) != 0x0) {
                                                                    r20 = 0x8;
                                                            }
                                                            else {
                                                                    if (([r19 containsString:r2] & 0x1) != 0x0) {
                                                                            r20 = 0x9;
                                                                    }
                                                                    else {
                                                                            if (([r19 containsString:r2] & 0x1) != 0x0) {
                                                                                    r20 = 0xa;
                                                                            }
                                                                            else {
                                                                                    r20 = @selector(containsString:);
                                                                                    if (objc_msgSend(r19, r20) != 0x0) {
                                                                                            if (!CPU_FLAGS & NE) {
                                                                                                    r20 = 0x0;
                                                                                            }
                                                                                            else {
                                                                                                    r20 = 0xb;
                                                                                            }
                                                                                    }
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

@end