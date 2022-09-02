@implementation NSMutableDictionary

-(void)mp_removeNullsRecursively {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1e0;
    r19 = self;
    r21 = [[NSMutableArray array] retain];
    r22 = [[NSMutableArray array] retain];
    r0 = @class(NSMutableArray);
    r0 = [r0 array];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r0 = [r21 retain];
    r20 = r0;
    var_178 = r0;
    r0 = [r23 retain];
    r21 = r0;
    var_170 = r0;
    r0 = [r22 retain];
    var_230 = r0;
    var_168 = r0;
    [r19 enumerateKeysAndObjectsUsingBlock:&var_198];
    var_228 = r20;
    [r19 removeObjectsForKeys:r20];
    var_1D0 = q0;
    r0 = [r21 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r24 = r0;
            r23 = *var_1D0;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_1D0 != r23) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = [r19 objectForKey:*(var_1D8 + r28 * 0x8)];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 mp_removeNullsRecursively];
                            [r27 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r24);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r24 = r0;
            } while (r0 != 0x0);
    }
    r22 = @selector(countByEnumeratingWithState:objects:count:);
    [r21 release];
    var_210 = q0;
    r0 = [var_230 retain];
    r23 = r0;
    r0 = objc_msgSend(r0, r22);
    if (r0 != 0x0) {
            r24 = r0;
            r28 = *var_210;
            do {
                    r20 = 0x0;
                    do {
                            if (*var_210 != r28) {
                                    objc_enumerationMutation(r23);
                            }
                            r0 = [r19 objectForKey:*(var_218 + r20 * 0x8)];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 mp_removeNullsRecursively];
                            [r27 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r24);
                    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r23 release];
    [var_168 release];
    [var_170 release];
    [var_178 release];
    [r21 release];
    [r23 release];
    [var_228 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

-(void)adnw_setNonNilObject:(void *)arg2 forKey:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r21 setObject:r2 forKey:r3];
    }
    [r20 release];
    return;
}

-(void)adnw_setNullStringIfNilObject:(void *)arg2 forKey:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = r21;
    }
    else {
            r0 = r21;
    }
    [r0 setObject:r2 forKey:r3];
    [r19 release];
    return;
}

-(void)adnw_setNullStringIfNullCharPointer:(char *)arg2 forKey:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    if (r21 != 0x0) {
            r21 = [[NSString stringWithUTF8String:r2] retain];
    }
    [r20 adnw_setNullStringIfNilObject:r21 forKey:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void)setNonNilObject:(void *)arg2 forKey:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r20 = r0;
    if (r0 != 0x0) {
            [r21 setObject:r2 forKey:r3];
    }
    [r20 release];
    return;
}

-(void)setNullStringIfNilObject:(void *)arg2 forKey:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = r21;
    }
    else {
            r0 = r21;
    }
    [r0 setObject:r2 forKey:r3];
    [r19 release];
    return;
}

-(void)setNullStringIfNullCharPointer:(char *)arg2 forKey:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    if (r21 != 0x0) {
            r21 = [[NSString stringWithUTF8String:r2] retain];
    }
    [r20 adnw_setNullStringIfNilObject:r21 forKey:r19];
    [r21 release];
    [r19 release];
    return;
}

-(void)setObjectIfNotExists:(void *)arg2 forKey:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [r20 objectForKeyedSubscript:r21];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [r20 setObject:r2 forKey:r3];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void)setNSTimeInterval:(double)arg2 forKey:(void *)arg3 {
    r22 = [arg2 retain];
    r20 = [[NSString stringWithFormat:@"%f"] retain];
    [self setObject:r20 forKeyedSubscript:r22];
    [r22 release];
    [r20 release];
    return;
}

-(void)setFloat:(float)arg2 forKey:(void *)arg3 {
    r2 = arg2;
    r19 = self;
    r20 = @class(NSString);
    asm { fcvt       d8, s0 };
    r22 = [r2 retain];
    r20 = [[r20 stringWithFormat:@"%f"] retain];
    [r19 setObject:r20 forKeyedSubscript:r22];
    [r22 release];
    [r20 release];
    return;
}

@end