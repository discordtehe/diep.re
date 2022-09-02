@implementation TR_DDLog

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d6db0 != -0x1) {
            dispatch_once(0x1011d6db0, &var_28);
    }
    r0 = *0x1011d6da8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)initialize {
    if (*qword_1011d6db8 != -0x1) {
            dispatch_once(0x1011d6db8, 0x100e7bc48);
    }
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [[NSMutableArray alloc] initWithCapacity:0x4];
            [r19 set_loggers:r20];
            [r20 release];
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r2 selector:r3 name:r4 object:r5];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

+(void *)loggingQueue {
    r0 = *0x1011d6dc0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)applicationWillTerminate:(void *)arg2 {
    [self flushLog];
    return;
}

-(void)addLogger:(void *)arg2 {
    [self addLogger:arg2 withLevel:0xffffffffffffffff];
    return;
}

+(void)addLogger:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 addLogger:r21];
    [r21 release];
    [r0 release];
    return;
}

+(void)addLogger:(void *)arg2 withLevel:(unsigned long long)arg3 {
    r22 = [arg2 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 addLogger:r22 withLevel:arg3];
    [r22 release];
    [r0 release];
    return;
}

-(void)addLogger:(void *)arg2 withLevel:(unsigned long long)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r22 = *0x1011d6dc0;
            var_30 = [r19 retain];
            dispatch_async(r22, &var_58);
            [var_30 release];
    }
    [r19 release];
    return;
}

+(void)removeLogger:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 removeLogger:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)removeLogger:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r21 = *0x1011d6dc0;
            var_28 = [r19 retain];
            dispatch_async(r21, &var_50);
            [var_28 release];
    }
    [r19 release];
    return;
}

+(void)removeAllLoggers {
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 removeAllLoggers];
    [r0 release];
    return;
}

-(void)removeAllLoggers {
    dispatch_async(*0x1011d6dc0, &var_28);
    return;
}

+(void *)allLoggers {
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 allLoggers] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)allLoggers {
    dispatch_sync(*qword_1011d6dc0, &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)allLoggersWithLevel {
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    r20 = [[r0 allLoggersWithLevel] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)allLoggersWithLevel {
    dispatch_sync(*qword_1011d6dc0, &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)queueLogMessage:(void *)arg2 asynchronously:(bool)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    [arg2 retain];
    dispatch_semaphore_wait(*0x1011d6dd0, 0xffffffffffffffff);
    r19 = [r20 retain];
    var_28 = r19;
    r0 = objc_retainBlock(&var_50);
    r20 = r0;
    r1 = r20;
    if (arg3 != 0x0) {
            dispatch_async(*0x1011d6dc0, r1);
    }
    else {
            dispatch_sync(*0x1011d6dc0, r1);
    }
    [r20 release];
    [var_28 release];
    [r19 release];
    return;
}

+(void)log:(bool)arg2 level:(unsigned long long)arg3 flag:(unsigned long long)arg4 context:(long long)arg5 file:(char *)arg6 function:(char *)arg7 line:(unsigned long long)arg8 tag:(void *)arg9 format:(void *)arg10 {
    var_0 = arg8;
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
    r29 = &saved_fp;
    r24 = arg7;
    r19 = arg6;
    r20 = arg5;
    r22 = arg4;
    r23 = arg3;
    r26 = arg2;
    r25 = self;
    r27 = arg10;
    r21 = [arg9 retain];
    if (r27 != 0x0) {
            var_60 = r20;
            r20 = r23;
            r23 = r22;
            r22 = r19;
            r27 = [r27 retain];
            r19 = [[NSString alloc] initWithFormat:r27 arguments:r29 + 0x28];
            [r27 release];
            [r25 log:r26 message:r19 level:r20 flag:r23 context:var_60 file:r22 function:r24 line:var_0 tag:r21];
            [r19 release];
    }
    [r21 release];
    return;
}

-(void)log:(bool)arg2 level:(unsigned long long)arg3 flag:(unsigned long long)arg4 context:(long long)arg5 file:(char *)arg6 function:(char *)arg7 line:(unsigned long long)arg8 tag:(void *)arg9 format:(void *)arg10 {
    var_0 = arg8;
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
    r29 = &saved_fp;
    r24 = arg7;
    r19 = arg6;
    r20 = arg5;
    r22 = arg4;
    r23 = arg3;
    r26 = arg2;
    r25 = self;
    r27 = arg10;
    r21 = [arg9 retain];
    if (r27 != 0x0) {
            var_60 = r20;
            r20 = r23;
            r23 = r22;
            r22 = r19;
            r27 = [r27 retain];
            r19 = [[NSString alloc] initWithFormat:r27 arguments:r29 + 0x28];
            [r27 release];
            [r25 log:r26 message:r19 level:r20 flag:r23 context:var_60 file:r22 function:r24 line:var_0 tag:r21];
            [r19 release];
    }
    [r21 release];
    return;
}

+(void)log:(bool)arg2 level:(unsigned long long)arg3 flag:(unsigned long long)arg4 context:(long long)arg5 file:(char *)arg6 function:(char *)arg7 line:(unsigned long long)arg8 tag:(void *)arg9 format:(void *)arg10 args:(char *)arg11 {
    r27 = [arg9 retain];
    r26 = [arg10 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 log:arg2 level:arg3 flag:arg4 context:arg5 file:arg6 function:arg7 line:arg8 tag:r27 format:r26 args:arg11];
    [r26 release];
    [r27 release];
    [r0 release];
    return;
}

-(void)log:(bool)arg2 level:(unsigned long long)arg3 flag:(unsigned long long)arg4 context:(long long)arg5 file:(char *)arg6 function:(char *)arg7 line:(unsigned long long)arg8 tag:(void *)arg9 format:(void *)arg10 args:(char *)arg11 {
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
    var_58 = arg7;
    r19 = arg6;
    r20 = arg5;
    r23 = arg4;
    r24 = arg3;
    r26 = arg2;
    r25 = self;
    r28 = arg10;
    r27 = arg11;
    r21 = arg8;
    r22 = [arg9 retain];
    if (r28 != 0x0) {
            var_60 = r19;
            r28 = [r28 retain];
            r19 = [[NSString alloc] initWithFormat:r28 arguments:r27];
            [r28 release];
            [r25 log:r26 message:r19 level:r24 flag:r23 context:r20 file:var_60 function:var_58 line:r21 tag:r22];
            [r19 release];
    }
    [r22 release];
    return;
}

+(void)log:(bool)arg2 message:(void *)arg3 level:(unsigned long long)arg4 flag:(unsigned long long)arg5 context:(long long)arg6 file:(char *)arg7 function:(char *)arg8 line:(unsigned long long)arg9 tag:(void *)arg10 {
    r26 = [arg3 retain];
    r25 = [arg10 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 log:arg2 message:r26 level:arg4 flag:arg5 context:arg6 file:arg7 function:arg8 line:arg9 tag:r25];
    [r25 release];
    [r26 release];
    [r0 release];
    return;
}

-(void)log:(bool)arg2 message:(void *)arg3 level:(unsigned long long)arg4 flag:(unsigned long long)arg5 context:(long long)arg6 file:(char *)arg7 function:(char *)arg8 line:(unsigned long long)arg9 tag:(void *)arg10 {
    r23 = [arg3 retain];
    r26 = [arg10 retain];
    r27 = [TR_DDLogMessage alloc];
    r19 = [[NSString stringWithFormat:@"%s"] retain];
    r25 = [[NSString stringWithFormat:@"%s"] retain];
    r21 = [r27 initWithMessage:r23 level:arg4 flag:arg5 context:arg6 file:r19 function:r25 line:arg9 tag:r26 options:0x0 timestamp:0x0];
    [r26 release];
    [r23 release];
    [r25 release];
    [r19 release];
    [self queueLogMessage:r21 asynchronously:arg2];
    [r21 release];
    return;
}

+(void)log:(bool)arg2 message:(void *)arg3 {
    r22 = [arg3 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 log:arg2 message:r22];
    [r22 release];
    [r0 release];
    return;
}

-(void)log:(bool)arg2 message:(void *)arg3 {
    [self queueLogMessage:arg3 asynchronously:arg2];
    return;
}

+(void)flushLog {
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 flushLog];
    [r0 release];
    return;
}

-(void)flushLog {
    dispatch_sync(*0x1011d6dc0, &var_28);
    return;
}

+(void *)registeredClasses {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
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
    goto loc_1003f6600;

loc_1003f6600:
    r0 = objc_getClassList(0x0, 0x0);
    if (r0 < 0x1) goto loc_1003f66d0;

loc_1003f6614:
    r22 = r0 & !(r0 / 0xffffffff80000000);
    r20 = malloc(r22 << 0x3);
    if (r20 == 0x0) goto loc_1003f66d0;

loc_1003f662c:
    r0 = objc_getClassList(r20, r22);
    r21 = r0 & !(r0 / 0xffffffff80000000);
    if (r0 >= 0x1) {
            asm { ccmp       w21, w22, #0x2, ge };
    }
    if (!CPU_FLAGS & B) {
            free(r20);
            r21 = 0x0;
    }
    if (r21 == 0x0) goto loc_1003f6600;

loc_1003f6658:
    r22 = [[NSMutableArray arrayWithCapacity:r21] retain];
    r26 = 0x0;
    do {
            r25 = *(r20 + r26 * 0x8);
            if ([r19 isRegisteredClass:r25] != 0x0) {
                    [r22 addObject:r2];
            }
            r26 = r26 + 0x1;
    } while (r26 < r21);
    free(r20);
    goto loc_1003f66d4;

loc_1003f66d4:
    r0 = [r22 autorelease];
    return r0;

loc_1003f66d0:
    r22 = 0x0;
    goto loc_1003f66d4;
}

+(bool)isRegisteredClass:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r0 = object_getClass(arg2);
    r0 = class_copyMethodList(r0, &var_44);
    r19 = r0;
    if (r19 != 0x0) {
            if (var_44 != 0x0) {
                    r20 = 0x0;
                    r21 = 0x0;
                    r22 = 0x0;
                    r8 = &@selector(_initOpenAL);
                    r23 = *(r8 + 0xf38);
                    r24 = *(r8 + 0xf40);
                    do {
                            r0 = *(r19 + r20 * 0x8);
                            r0 = method_getName(r0);
                            if (r0 != r23) {
                                    if (CPU_FLAGS & NE) {
                                            r8 = 0x1;
                                    }
                            }
                            if (CPU_FLAGS & E) {
                                    if (CPU_FLAGS & E) {
                                            r9 = 0x1;
                                    }
                            }
                            if (r0 == r24) {
                                    if (CPU_FLAGS & E) {
                                            r10 = 0x1;
                                    }
                            }
                            r22 = r22 | r9;
                            r21 = r21 | r10 & r8;
                            r25 = r22 & r21;
                            if ((r25 & 0x1) != 0x0) {
                                break;
                            }
                            r20 = r20 + 0x1;
                            r8 = var_44;
                    } while (r20 < r8);
            }
            else {
                    r25 = 0x0;
            }
            free(r19);
    }
    else {
            r25 = 0x0;
    }
    r0 = r25 & 0x1;
    return r0;
}

+(unsigned long long)levelForClass:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    if ([self isRegisteredClass:r2] != 0x0) {
            r0 = [r19 ddLogLevel];
    }
    else {
            r0 = 0xffffffffffffffff;
    }
    return r0;
}

+(void *)registeredClassNames {
    r31 = r31 - 0x130;
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
    r0 = [self registeredClasses];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [NSMutableArray arrayWithCapacity:[r0 count]];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r0 = [r20 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r23 = @selector(addObject:);
                            r0 = *(0x0 + r27 * 0x8);
                            r0 = NSStringFromClass(r0);
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r19, r23);
                            [r24 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(unsigned long long)levelForClassWithName:(void *)arg2 {
    r0 = [self levelForClass:NSClassFromString(arg2)];
    return r0;
}

+(void)setLevel:(unsigned long long)arg2 forClassWithName:(void *)arg3 {
    [self setLevel:arg2 forClass:NSClassFromString(arg3)];
    return;
}

+(void)setLevel:(unsigned long long)arg2 forClass:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = arg2;
    if ([self isRegisteredClass:r20] != 0x0) {
            [r20 ddSetLogLevel:r19];
    }
    return;
}

-(void)lt_addLogger:(void *)arg2 level:(unsigned long long)arg3 {
    r31 = r31 - 0x160;
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
    r21 = arg3;
    r19 = [arg2 retain];
    var_148 = self;
    r0 = [self _loggers];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r25 == 0x0) goto loc_1003f6aa8;

loc_1003f6a38:
    r20 = 0x0;
    goto loc_1003f6a3c;

loc_1003f6a3c:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r23);
    }
    r8 = *(0x0 + r20 * 0x8);
    if (r8->_logger != r19 || r8->_level != r21) goto loc_1003f6a7c;

loc_1003f6b44:
    r0 = r23;
    goto loc_1003f6c3c;

loc_1003f6c3c:
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1003f6a7c:
    r20 = r20 + 0x1;
    if (r20 < r25) goto loc_1003f6a3c;

loc_1003f6a88:
    r25 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r25 != 0x0) goto loc_1003f6a38;

loc_1003f6aa8:
    [r23 release];
    if ([r19 respondsToSelector:r2] != 0x0) {
            r0 = [r19 loggerQueue];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 == 0x0) {
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 loggerName];
                            r29 = r29;
                            r0 = [r0 retain];
                            r0 = objc_retainAutorelease(r0);
                            r24 = [r0 UTF8String];
                            [r0 release];
                    }
                    else {
                            r24 = 0x0;
                    }
                    r24 = dispatch_queue_create(r24, 0x0);
            }
    }
    else {
            if ([r19 respondsToSelector:r2] != 0x0) {
                    r0 = [r19 loggerName];
                    r29 = r29;
                    r0 = [r0 retain];
                    r0 = objc_retainAutorelease(r0);
                    r24 = [r0 UTF8String];
                    [r0 release];
            }
            else {
                    r24 = 0x0;
            }
            r24 = dispatch_queue_create(r24, 0x0);
    }
    r23 = @selector(respondsToSelector:);
    r21 = [[TR_DDLoggerNode nodeWithLogger:r19 loggerQueue:r24 level:r21] retain];
    r0 = [var_148 _loggers];
    r0 = [r0 retain];
    [r0 addObject:r21];
    [r0 release];
    if (objc_msgSend(r19, r23) != 0x0) {
            r20 = r21->_loggerQueue;
            var_120 = [r19 retain];
            dispatch_async(r20, &var_140);
            [var_120 release];
    }
    [r21 release];
    r0 = r24;
    goto loc_1003f6c3c;
}

-(void)lt_removeLogger:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 _loggers];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 == 0x0) goto loc_1003f6dcc;

loc_1003f6d6c:
    r27 = 0x0;
    goto loc_1003f6d70;

loc_1003f6d70:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r22);
    }
    r0 = *(0x0 + r27 * 0x8);
    if (r0->_logger == r19) goto loc_1003f6dd4;

loc_1003f6da0:
    r27 = r27 + 0x1;
    if (r27 < r24) goto loc_1003f6d70;

loc_1003f6dac:
    r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) goto loc_1003f6d6c;

loc_1003f6dcc:
    r0 = r22;
    goto loc_1003f6e94;

loc_1003f6e94:
    [r0 release];
    goto loc_1003f6e98;

loc_1003f6e98:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1003f6dd4:
    r23 = [r0 retain];
    [r22 release];
    if (r23 == 0x0) goto loc_1003f6e98;

loc_1003f6de8:
    if ([r19 respondsToSelector:r2] != 0x0) {
            r22 = r23->_loggerQueue;
            var_120 = [r19 retain];
            dispatch_async(r22, &var_140);
            [var_120 release];
    }
    r0 = [r20 _loggers];
    r0 = [r0 retain];
    [r0 removeObject:r23];
    [r0 release];
    r0 = r23;
    goto loc_1003f6e94;
}

-(void)lt_removeAllLoggers {
    r31 = r31 - 0x180;
    var_60 = d9;
    stack[-104] = d8;
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
    stack[-368] = self;
    r0 = [self _loggers];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r25 = @selector(respondsToSelector:);
                            r27 = *(0x0 + r20 * 0x8);
                            if (objc_msgSend(r27->_logger, r25) != 0x0) {
                                    dispatch_async(r27->_loggerQueue, &var_150);
                            }
                            r20 = r20 + 0x1;
                    } while (r20 < r23);
                    r23 = objc_msgSend(r21, var_158);
            } while (r23 != 0x0);
    }
    var_68 = **___stack_chk_guard;
    [r21 release];
    r0 = [stack[-368] _loggers];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void *)lt_allLoggers {
    r31 = r31 - 0x130;
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
    r19 = [NSMutableArray new];
    r0 = [self _loggers];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            [r19 addObject:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    r20 = [r19 copy];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)lt_allLoggersWithLevel {
    r31 = r31 - 0x140;
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
    r19 = [NSMutableArray new];
    r0 = [self _loggers];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    var_120 = r0;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            r24 = @selector(addObject:);
                            r8 = *(0x0 + r20 * 0x8);
                            r0 = [TR_DDLoggerInformation informationWithLogger:r8->_logger andLevel:r8->_level];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r19, r24);
                            [r25 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r22);
                    r22 = objc_msgSend(var_120, var_128);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    r20 = [r19 copy];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)lt_log:(void *)arg2 {
    var_60 = d9;
    stack[-104] = d8;
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
    r31 = r31 + 0xffffffffffffff90 - 0x200;
    r20 = self;
    r19 = [arg2 retain];
    if (*qword_1011d6dd8 >= 0x2) {
            var_198 = q0;
            r0 = [r20 _loggers];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_250 = r1;
            r22 = objc_msgSend(r0, r1);
            if (r22 != 0x0) {
                    r25 = *var_198;
                    do {
                            r21 = 0x0;
                            do {
                                    if (*var_198 != r25) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r8 = *(var_1A0 + r21 * 0x8);
                                    if ((r8->_level & r19->_flag) != 0x0) {
                                            r23 = r8->_loggerQueue;
                                            r24 = *0x1011d6dc8;
                                            var_1B0 = [r19 retain];
                                            dispatch_group_async(r24, r23, &var_1D8);
                                            [var_1B0 release];
                                    }
                                    r21 = r21 + 0x1;
                            } while (r21 < r22);
                            r22 = objc_msgSend(r20, var_250);
                    } while (r22 != 0x0);
            }
            [r20 release];
            dispatch_group_wait(*0x1011d6dc8, 0xffffffffffffffff);
    }
    else {
            var_208 = q0;
            r0 = [r20 _loggers];
            r0 = [r0 retain];
            r20 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_250 = r1;
            r22 = objc_msgSend(r0, r1);
            if (r22 != 0x0) {
                    r24 = *var_208;
                    do {
                            r28 = 0x0;
                            do {
                                    if (*var_208 != r24) {
                                            objc_enumerationMutation(r20);
                                    }
                                    r8 = *(var_210 + r28 * 0x8);
                                    if ((r8->_level & r19->_flag) != 0x0) {
                                            r23 = r8->_loggerQueue;
                                            var_220 = [r19 retain];
                                            dispatch_sync(r23, &var_248);
                                            [var_220 release];
                                    }
                                    r28 = r28 + 0x1;
                            } while (r28 < r22);
                            r22 = objc_msgSend(r20, var_250);
                    } while (r22 != 0x0);
            }
            [r20 release];
    }
    var_68 = **___stack_chk_guard;
    dispatch_semaphore_signal(*0x1011d6dd0);
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)lt_flush {
    r31 = r31 - 0x170;
    var_60 = d9;
    stack[-104] = d8;
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
    r0 = [self _loggers];
    r0 = [r0 retain];
    r19 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r1;
    r21 = objc_msgSend(r0, r1);
    if (r21 != 0x0) {
            do {
                    r25 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r19);
                            }
                            r23 = @selector(respondsToSelector:);
                            r26 = *(0x0 + r25 * 0x8);
                            if (objc_msgSend(r26->_logger, r23) != 0x0) {
                                    dispatch_group_async(*0x1011d6dc8, r26->_loggerQueue, &var_150);
                            }
                            r25 = r25 + 0x1;
                    } while (r25 < r21);
                    r21 = objc_msgSend(r19, var_158);
            } while (r21 != 0x0);
    }
    var_68 = **___stack_chk_guard;
    [r19 release];
    dispatch_group_wait(*0x1011d6dc8, 0xffffffffffffffff);
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(void)set_loggers:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->__loggers, arg2);
    return;
}

-(void *)_loggers {
    r0 = self->__loggers;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->__loggers, 0x0);
    return;
}

@end