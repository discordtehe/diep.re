@implementation MPVASTStringUtilities

+(double)doubleFromString:(void *)arg2 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = *0x1011d8500;
    r19 = [arg2 retain];
    if (r20 != -0x1) {
            dispatch_once(0x1011d8500, 0x100e7fb68);
    }
    r20 = [[*0x1011d84f8 numberFromString:r19] retain];
    [r19 release];
    [r20 doubleValue];
    r0 = [r20 release];
    return r0;
}

+(bool)stringRepresentsNonNegativePercentage:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (*qword_1011d8508 != -0x1) {
            dispatch_once(0x1011d8508, 0x100e7fb88);
    }
    r20 = *0x1011d8510;
    [r19 length];
    r0 = [r20 matchesInString:r19 options:0x0 range:0x0];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            r0 = [r20 objectAtIndexedSubscript:0x0];
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 range] != 0x7fffffffffffffff) {
                    if (CPU_FLAGS & NE) {
                            r21 = 0x1;
                    }
            }
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)stringRepresentsNonNegativeDuration:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (*qword_1011d8518 != -0x1) {
            dispatch_once(0x1011d8518, 0x100e7fba8);
    }
    r20 = *0x1011d8520;
    [r19 length];
    r0 = [r20 matchesInString:r19 options:0x0 range:0x0];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            r0 = [r20 objectAtIndexedSubscript:0x0];
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 range] != 0x7fffffffffffffff) {
                    if (CPU_FLAGS & NE) {
                            r21 = 0x1;
                    }
            }
            [r22 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(long long)percentageFromString:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (*qword_1011d8508 != -0x1) {
            dispatch_once(0x1011d8508, 0x100e7fbc8);
    }
    if ([r19 length] != 0x0) {
            r20 = @selector(length);
            objc_msgSend(r19, r20);
            r0 = [r21 matchesInString:r19 options:0x0 range:0x0];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 count] != 0x0) {
                    r0 = [r20 objectAtIndexedSubscript:0x0];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 range];
                    r22 = 0x0;
                    if (r0 != 0x7fffffffffffffff) {
                            r0 = [r19 substringWithRange:[r21 rangeAtIndex:0x1]];
                            r0 = [r0 retain];
                            r22 = [r0 integerValue];
                            [r0 release];
                    }
                    [r21 release];
            }
            else {
                    r22 = 0x0;
            }
            [r20 release];
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = r22;
    return r0;
}

+(double)timeIntervalFromString:(void *)arg2 {
    var_50 = d9;
    stack[-88] = d8;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (*qword_1011d8518 != -0x1) {
            dispatch_once(0x1011d8518, 0x100e7fbe8);
    }
    if ([r19 length] != 0x0) {
            r20 = @selector(length);
            objc_msgSend(r19, r20);
            r0 = [r21 matchesInString:r19 options:0x0 range:0x0];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 count] != 0x0) {
                    r0 = [r20 objectAtIndexedSubscript:0x0];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    if ([r0 range] != 0x7fffffffffffffff) {
                            if ([r21 rangeAtIndex:r2] == 0x7fffffffffffffff) {
                                    if ([r21 rangeAtIndex:r2] != 0x7fffffffffffffff && [r21 rangeAtIndex:r2] != 0x7fffffffffffffff && [r21 rangeAtIndex:r2] != 0x7fffffffffffffff) {
                                            r0 = [r19 substringWithRange:[r21 rangeAtIndex:r2]];
                                            r0 = [r0 retain];
                                            [r0 integerValue];
                                            [r0 release];
                                            r0 = [r19 substringWithRange:[r21 rangeAtIndex:r2]];
                                            r0 = [r0 retain];
                                            [r0 integerValue];
                                            [r0 release];
                                            r0 = [r19 substringWithRange:[r21 rangeAtIndex:r2]];
                                            r0 = [r0 retain];
                                            [r0 doubleValue];
                                            v8 = v0;
                                            [r0 release];
                                            asm { madd       x8, x26, x9, x8 };
                                            asm { scvtf      d0, x8 };
                                    }
                            }
                            else {
                                    r0 = [r19 substringWithRange:[r21 rangeAtIndex:r2]];
                                    r0 = [r0 retain];
                                    [r0 doubleValue];
                                    v8 = v0;
                                    [r0 release];
                            }
                    }
                    [r21 release];
            }
            [r20 release];
    }
    r0 = [r19 release];
    return r0;
}

+(void *)stringFromTimeInterval:(double)arg2 {
    r1 = _cmd;
    r0 = self;
    if (d0 < 0x0) {
            r0 = [@"00:00:00.000" autorelease];
    }
    else {
            asm { fcvtzs     x8, d0 };
            r9 = 0x48d159e26af37c05;
            asm { smulh      x9, x8, x9 };
            r10 = SAR(r9, 0xa);
            asm { smulh      x10, x8, x9 };
            asm { smulh      x9, x8, x9 };
            fmod(r0, r1);
            r0 = [NSString stringWithFormat:r2];
            r0 = [r0 retain];
            r0 = [r0 autorelease];
    }
    return r0;
}

@end