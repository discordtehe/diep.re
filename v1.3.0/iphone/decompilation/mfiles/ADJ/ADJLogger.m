@implementation ADJLogger

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            *(int32_t *)(int64_t *)&r19->_loglevel = 0x3;
            [r19 setLogLevelLocked:0x0];
            [r19 setIsProductionEnvironment:0x0];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)lockLogLevel {
    [self setLogLevelLocked:0x1];
    return;
}

-(void)setLogLevel:(int)arg2 isProductionEnvironment:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = arg2;
    r20 = self;
    if (([self logLevelLocked] & 0x1) == 0x0) {
            *(int32_t *)(int64_t *)&r20->_loglevel = r21;
            [r20 setIsProductionEnvironment:r19];
    }
    return;
}

-(void)verbose:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg2 retain];
    if (([r19 isProductionEnvironment] & 0x1) == 0x0 && [r19 loglevel] <= 0x1) {
            [r19 logLevel:@"v" format:r20 parameters:r29 + 0x10];
    }
    [r20 release];
    return;
}

-(void)debug:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg2 retain];
    if (([r19 isProductionEnvironment] & 0x1) == 0x0 && [r19 loglevel] <= 0x2) {
            [r19 logLevel:@"d" format:r20 parameters:r29 + 0x10];
    }
    [r20 release];
    return;
}

-(void)info:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg2 retain];
    if (([r19 isProductionEnvironment] & 0x1) == 0x0 && [r19 loglevel] <= 0x3) {
            [r19 logLevel:@"i" format:r20 parameters:r29 + 0x10];
    }
    [r20 release];
    return;
}

-(void)warn:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg2 retain];
    if (([r19 isProductionEnvironment] & 0x1) == 0x0 && [r19 loglevel] <= 0x4) {
            [r19 logLevel:@"w" format:r20 parameters:r29 + 0x10];
    }
    [r20 release];
    return;
}

-(void)warnInProduction:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg2 retain];
    if ([r19 loglevel] <= 0x4) {
            [r19 logLevel:@"w" format:r20 parameters:r29 + 0x10];
    }
    [r20 release];
    return;
}

-(void)error:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg2 retain];
    if (([r19 isProductionEnvironment] & 0x1) == 0x0 && [r19 loglevel] <= 0x5) {
            [r19 logLevel:@"e" format:r20 parameters:r29 + 0x10];
    }
    [r20 release];
    return;
}

-(void)assert:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = [arg2 retain];
    if (([r19 isProductionEnvironment] & 0x1) == 0x0 && [r19 loglevel] <= 0x6) {
            [r19 logLevel:@"a" format:r20 parameters:r29 + 0x10];
    }
    [r20 release];
    return;
}

+(int)LogLevelFromString:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r20 = 0x2;
            }
            else {
                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                            r20 = 0x3;
                    }
                    else {
                            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                    r20 = 0x4;
                            }
                            else {
                                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                            r20 = 0x5;
                                    }
                                    else {
                                            r20 = @selector(isEqualToString:);
                                            if (objc_msgSend(r19, r20) != 0x0) {
                                                    if (!CPU_FLAGS & NE) {
                                                            r20 = 0x3;
                                                    }
                                                    else {
                                                            r20 = 0x6;
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

-(int)loglevel {
    r0 = *(int32_t *)(int64_t *)&self->_loglevel;
    return r0;
}

-(void)logLevel:(void *)arg2 format:(void *)arg3 parameters:(char *)arg4 {
    r31 = r31 - 0x150;
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
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [[NSString alloc] initWithFormat:r21 arguments:arg4];
    [r21 release];
    r0 = [r20 componentsSeparatedByString:r2];
    r0 = [r0 retain];
    r21 = r0;
    r2 = &var_120;
    r3 = &stack[-232];
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            NSLog(@"\t[%@]%@: %@", @selector(componentsSeparatedByString:), r2, r3);
                            r27 = r27 + 0x1;
                    } while (r27 < r24);
                    r2 = &var_120;
                    r3 = &stack[-232];
                    r24 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setLoglevel:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_loglevel = arg2;
    return;
}

-(void)setLogLevelLocked:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_logLevelLocked = arg2;
    return;
}

-(bool)logLevelLocked {
    r0 = *(int8_t *)(int64_t *)&self->_logLevelLocked;
    return r0;
}

-(bool)isProductionEnvironment {
    r0 = *(int8_t *)(int64_t *)&self->_isProductionEnvironment;
    return r0;
}

-(void)setIsProductionEnvironment:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isProductionEnvironment = arg2;
    return;
}

@end