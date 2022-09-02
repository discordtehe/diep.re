@implementation UADSMetaData

-(void *)initWithCategory:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setCategory:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)setRaw:(void *)arg2 value:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self initData];
    r22 = [[self getActualKeyForKey:r21] retain];
    [r21 release];
    r0 = [[&var_30 super] set:r22 value:r19];
    [r19 release];
    [r22 release];
    r0 = r0;
    return r0;
}

-(bool)set:(void *)arg2 value:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r20 = self;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    [r20 initData];
    r21 = @class(NSNumber);
    r0 = [NSDate date];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    [r0 timeIntervalSince1970];
    asm { fcvtzs     x2, d0 };
    r21 = [[r21 numberWithLongLong:r2] retain];
    [r22 release];
    r22 = [[r20 getActualKeyForKey:r19] retain];
    r0 = [NSString stringWithFormat:@"%@.value"];
    r29 = r29;
    r24 = [r0 retain];
    r0 = [[&var_60 super] set:r2 value:r3];
    [r23 release];
    if (r0 != 0x0) {
            r25 = [[r20 getActualKeyForKey:r19] retain];
            r23 = [[NSString stringWithFormat:@"%@.ts"] retain];
            r0 = [[&var_70 super] set:r2 value:r3];
            r20 = r0;
            [r23 release];
            [r25 release];
    }
    else {
            r20 = 0x0;
    }
    [r24 release];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)getActualKeyForKey:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[arg2 retain] retain];
    r0 = [r20 category];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r20 category] retain];
            r20 = [[NSString stringWithFormat:r2] retain];
            [r19 release];
            [r21 release];
    }
    else {
            r20 = r19;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)category {
    r0 = self->_category;
    return r0;
}

-(void)setCategory:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_category, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_category, 0x0);
    return;
}

-(void)commit {
    r31 = r31 - 0x1a0;
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
    r29 = &saved_fp;
    var_130 = self;
    if ([USRVStorageManager init] != 0x0) {
            r27 = [[USRVStorageManager getStorage:0x1] retain];
            r0 = [var_130 storageContents];
            r29 = r29;
            [[r0 retain] release];
            if (r27 != 0x0) {
                    asm { ccmp       x19, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & E) {
                    var_108 = q0;
                    var_168 = @selector(storageContents);
                    r0 = [var_130 storageContents];
                    r29 = r29;
                    r0 = [r0 retain];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_150 = r0;
                    var_160 = r1;
                    r0 = objc_msgSend(r0, r1);
                    var_120 = r0;
                    if (r0 != 0x0) {
                            var_138 = *var_108;
                            do {
                                    r28 = 0x0;
                                    r25 = @selector(getValueForKey:);
                                    do {
                                            if (*var_108 != var_138) {
                                                    objc_enumerationMutation(var_150);
                                            }
                                            r23 = *(var_110 + r28 * 0x8);
                                            r21 = [objc_msgSend(var_130, r25) retain];
                                            r0 = objc_msgSend(r27, r25);
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            if (r22 != 0x0) {
                                                    r24 = r27;
                                                    r26 = r25;
                                                    r0 = objc_msgSend(r27, r25);
                                                    r29 = r29;
                                                    r19 = [r0 retain];
                                                    r27 = @selector(class);
                                                    objc_msgSend(@class(NSDictionary), r27);
                                                    r25 = @selector(isKindOfClass:);
                                                    if (objc_msgSend(r19, r25) != 0x0) {
                                                            objc_msgSend(@class(NSDictionary), r27);
                                                            r27 = objc_msgSend(r21, r25);
                                                            [r19 release];
                                                            [r22 release];
                                                            if (r27 != 0x0) {
                                                                    r25 = r26;
                                                                    r22 = [objc_msgSend(r24, r25) retain];
                                                                    r0 = [NSDictionary dictionaryByMerging:r2 secondary:r3];
                                                                    r29 = r29;
                                                                    r19 = [r0 retain];
                                                                    [r21 release];
                                                                    [r22 release];
                                                                    r21 = r19;
                                                                    r27 = r24;
                                                            }
                                                            else {
                                                                    r27 = r24;
                                                                    r25 = r26;
                                                            }
                                                    }
                                                    else {
                                                            [r19 release];
                                                            [r22 release];
                                                            r27 = r24;
                                                            r25 = r26;
                                                    }
                                            }
                                            [r27 set:r2 value:r3];
                                            [r21 release];
                                            r28 = r28 + 0x1;
                                    } while (r28 < var_120);
                                    r0 = objc_msgSend(var_150, var_160);
                                    var_120 = r0;
                            } while (r0 != 0x0);
                    }
                    [var_150 release];
                    [r27 writeStorage];
                    r19 = [objc_msgSend(var_130, var_168) retain];
                    [r27 sendEvent:@"SET" values:r19];
                    [r19 release];
            }
            [r27 release];
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Init storages failed!", @selector(getLogLevel), r2, r3);
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

@end