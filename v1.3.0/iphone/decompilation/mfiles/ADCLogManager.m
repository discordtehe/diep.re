@implementation ADCLogManager

-(void *)crashManager {
    return 0x0;
}

-(void *)init {
    r31 = r31 - 0x80;
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
    r0 = [[&var_50 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_kibanaWaitingQueue));
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            [r8 release];
            r21 = *(r19 + r25);
            r22 = [NSMutableArray new];
            [r21 setObject:r22 forKeyedSubscript:@"adcolony_ios_sdk"];
            [r22 release];
            r21 = *(r19 + r25);
            r22 = [NSMutableArray new];
            [r21 setObject:r22 forKeyedSubscript:@"adcolony_fatal_reports"];
            [r22 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_moduleConfigs));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_queuedLogs));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r19->_sendInterval = 0x4014000000000000;
            objc_storeStrong((int64_t *)&r19->_environment, @"Production");
            r0 = [NSString stringWithFormat:@"%d.%d.%d"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_version));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r20 = 0x0;
            do {
                    [r19 setLoggingConfigForModule:r2 sendLevel:r3 printLevel:r4 privateLogging:r5];
                    r20 = r20 + 0x1;
            } while (r20 != 0x3);
    }
    r0 = r19;
    return r0;
}

-(void)setLoggingConfigForModule:(unsigned long long)arg2 sendLevel:(long long)arg3 printLevel:(long long)arg4 privateLogging:(bool)arg5 {
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [r0 performBlockOnWorkerThread:&var_78 mode:0x1];
    [r0 release];
    return;
}

-(void)setLogsActive {
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [r0 performBlockOnWorkerThread:&var_38 mode:0x1];
    [r0 release];
    return;
}

-(void)setSendInterval:(double)arg2 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    v8 = v0;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_logIntervalTimer));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 invalidate];
    }
    r0 = [NSTimer timerWithTimeInterval:r19 target:@selector(propogateLogs) selector:0x0 userInfo:0x1 repeats:r6];
    r0 = [r0 retain];
    r8 = *(r19 + r21);
    *(r19 + r21) = r0;
    [r8 release];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [r0 addTimer:*(r19 + r21)];
    [r0 release];
    r19->_sendInterval = d8;
    return;
}

-(void)queueKibanaLog:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r21 = [[AdColony sharedInstance] retain];
            var_28 = [r19 retain];
            [r21 performBlockOnWorkerThread:&var_50 mode:0x1];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)propogateLogs {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCLogManager propogateLogs]" line:0x9c withFormat:@"Propogating logs and crash reports"];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [r0 performBlockOnWorkerThread:&var_38 mode:0x1];
    [r0 release];
    return;
}

+(char *)getTagForLevel:(long long)arg2 {
    r2 = arg2;
    if (r2 != -0x1) {
            r0 = *(0x100e70438 + r2 * 0x8);
    }
    else {
            r0 = "*** FATAL ***";
    }
    return r0;
}

+(void *)getFullMessageWithFormat:(void *)arg2 withArgs:(char *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            if ([r19 rangeOfString:@"http://|https://" options:0x400] == 0x7fffffffffffffff) {
                    r0 = [NSString alloc];
                    r0 = [r0 initWithFormat:r19 arguments:r20];
            }
            else {
                    r0 = [r19 retain];
            }
            r20 = r0;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)briefLogWithModuleID:(long long)arg2 isPublic:(bool)arg3 level:(long long)arg4 withFormat:(void *)arg5 {
    r23 = [[self getFullMessageWithFormat:arg5 withArgs:&saved_fp + 0x10] retain];
    [self processLogWithModuleID:arg2 isPublic:arg3 level:arg4 function:0x0 line:0x0 withMessage:r23];
    [r23 release];
    return;
}

+(void)fullLogWithModuleID:(long long)arg2 isPublic:(bool)arg3 level:(long long)arg4 function:(char *)arg5 line:(int)arg6 withFormat:(void *)arg7 {
    r25 = [[self getFullMessageWithFormat:arg7 withArgs:&saved_fp + 0x10] retain];
    [self processLogWithModuleID:arg2 isPublic:arg3 level:arg4 function:arg5 line:arg6 withMessage:r25];
    [r25 release];
    return;
}

+(void *)getFullMessage:(char *)arg2 level:(long long)arg3 line:(int)arg4 message:(void *)arg5 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r20 = arg2;
    r19 = [arg5 retain];
    r22 = [ADCLogManager getTagForLevel:arg3];
    r0 = [NSString alloc];
    r20 = [r0 initWithFormat:r2];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)processLogWithModuleID:(long long)arg2 isPublic:(bool)arg3 level:(long long)arg4 function:(char *)arg5 line:(int)arg6 withMessage:(void *)arg7 {
    r31 = r31 - 0xc0;
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
    r20 = arg6;
    r23 = arg5;
    r21 = arg4;
    r25 = arg3;
    r22 = arg2;
    r24 = self;
    r19 = [arg7 retain];
    if (r19 != 0x0) {
            var_A8 = r22;
            r0 = [AdColony sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r28 = [r0 active];
            [r0 release];
            if (r28 != 0x0) {
                    r26 = [[AdColony sharedInstance] retain];
                    var_78 = [r19 retain];
                    [r26 performBlockOnWorkerThread:&var_A0 mode:0x0];
                    [r26 release];
                    r0 = var_78;
            }
            else {
                    [[r24 getFullMessage:r23 level:r21 line:r20 message:r19] retain];
                    NSLog(@"%@", @selector(getFullMessage:level:line:message:));
                    r0 = r20;
            }
            [r0 release];
    }
    [r19 release];
    return;
}

-(double)sendInterval {
    r0 = self;
    return r0;
}

+(void)processLogImplWithModuleID:(char *)arg2 isPublic:(bool)arg3 level:(long long)arg4 line:(int)arg5 message:(void *)arg6 moduleID:(long long)arg7 {
    r31 = r31 - 0xb0;
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
    r26 = arg4;
    var_8C = arg3;
    r28 = [arg6 retain];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r25 = [[r0 logManager] retain];
    [r0 release];
    r21 = r25->_moduleConfigs;
    var_98 = arg7;
    r19 = [[NSNumber numberWithInteger:arg7] retain];
    r21 = [[r21 objectForKeyedSubscript:r19] retain];
    [r19 release];
    r0 = [self getFullMessage:arg2 level:r26 line:arg5 message:r28];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r0 = r28;
    r28 = r25;
    [r0 release];
    if (*(int8_t *)(int64_t *)&r28->_active != 0x0) {
            var_80 = r21;
            r0 = [r21 objectForKeyedSubscript:@"send_level"];
            r29 = r29;
            r0 = [r0 retain];
            r20 = [r0 integerValue];
            [r0 release];
            if (r20 >= r26) {
                    asm { ccmp       x20, #0x4, #0x4, ge };
            }
            if (!CPU_FLAGS & E) {
                    r19 = [[ADCLog alloc] initWithLogLevel:r26 andMessage:r22];
                    [r28 queueKibanaLog:r19];
                    [r19 release];
            }
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 options];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 getNumericOptionWithKey:@"disable_logging"];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 boolValue];
            [r0 release];
            [r21 release];
            [r19 release];
            r21 = var_80;
            r24 = @selector(objectForKeyedSubscript:);
            if ((r25 & 0x1) == 0x0) {
                    r0 = objc_msgSend(r21, r24);
                    r29 = r29;
                    r0 = [r0 retain];
                    r1 = @selector(integerValue);
                    r23 = objc_msgSend(r0, r1);
                    [r0 release];
                    if (r23 != 0x4 && (var_8C & 0x1) != 0x0) {
                            NSLog(@"%@", r1);
                    }
                    else {
                            if (r23 >= r26 && r23 != 0x4) {
                                    r0 = objc_msgSend(r21, r24);
                                    r0 = [r0 retain];
                                    r1 = @selector(boolValue);
                                    r20 = objc_msgSend(r0, r1);
                                    [r0 release];
                                    if (r20 != 0x0) {
                                            NSLog(@"%@", r1);
                                    }
                            }
                    }
            }
    }
    else {
            r23 = r28->_queuedLogs;
            [[NSNumber numberWithBool:var_8C] retain];
            [[NSNumber numberWithInteger:var_98] retain];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithInteger:r26];
            r0 = [r0 retain];
            r0 = [NSArray arrayWithObjects:&var_78 count:0x4];
            [r0 retain];
            [r23 addObject:r2];
            [r24 release];
            r0 = r21;
            r21 = r25;
            [r0 release];
            [r19 release];
            [r20 release];
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r28 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)version {
    r0 = self->_version;
    return r0;
}

-(void *)environment {
    r0 = self->_environment;
    return r0;
}

-(void)setVersion:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_version, arg2);
    return;
}

-(void)setEnvironment:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_environment, arg2);
    return;
}

-(bool)active {
    r0 = *(int8_t *)(int64_t *)&self->_active;
    return r0;
}

-(void)setCrashManager:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_crashManager, arg2);
    return;
}

-(void)setActive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_active = arg2;
    return;
}

-(void)setKibanaWaitingQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_kibanaWaitingQueue, arg2);
    return;
}

-(void *)moduleConfigs {
    r0 = self->_moduleConfigs;
    return r0;
}

-(void *)kibanaWaitingQueue {
    r0 = self->_kibanaWaitingQueue;
    return r0;
}

-(void)setQueuedLogs:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_queuedLogs, arg2);
    return;
}

-(void)setModuleConfigs:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_moduleConfigs, arg2);
    return;
}

-(void *)queuedLogs {
    r0 = self->_queuedLogs;
    return r0;
}

-(void *)cacheInfoTimer {
    r0 = self->_cacheInfoTimer;
    return r0;
}

-(void *)logIntervalTimer {
    r0 = self->_logIntervalTimer;
    return r0;
}

-(void)setLogIntervalTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_logIntervalTimer, arg2);
    return;
}

-(void)setCacheInfoTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cacheInfoTimer, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cacheInfoTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_logIntervalTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_queuedLogs, 0x0);
    objc_storeStrong((int64_t *)&self->_moduleConfigs, 0x0);
    objc_storeStrong((int64_t *)&self->_kibanaWaitingQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_crashManager, 0x0);
    objc_storeStrong((int64_t *)&self->_environment, 0x0);
    objc_storeStrong((int64_t *)&self->_version, 0x0);
    return;
}

@end