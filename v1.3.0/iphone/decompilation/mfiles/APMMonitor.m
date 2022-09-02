@implementation APMMonitor

-(void *)initWithLibraryVersion:(long long)arg2 {
    r21 = [[APMASLLogger alloc] init];
    r19 = [self initWithLogLevel:0x6 logger:r21 libraryVersion:arg2];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void *)initWithLogLevel:(long long)arg2 logger:(void *)arg3 libraryVersion:(long long)arg4 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg4;
    r22 = arg3;
    r23 = arg2;
    r19 = [r22 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r20->_logLevel = r23;
            objc_storeStrong((int64_t *)&r20->_logger, r22);
            r20->_libraryVersion = r21;
            *(int8_t *)(int64_t *)&r20->_encodeContexts = 0x0;
            *(int8_t *)(int64_t *)&r20->_debugModeEnabled = 0x0;
            objc_storeStrong((int64_t *)&r20->_logTag, *0x100e6cf88);
            r0 = dispatch_queue_create("APMMonitorQueue", 0x0);
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_monitorQueue));
            r8 = *(r20 + r23);
            *(r20 + r23) = r0;
            [r8 release];
            r21 = *(r20 + r23);
            r0 = dispatch_get_global_queue(0xffffffffffff8000, 0x0);
            r29 = r29;
            dispatch_set_target_queue(r21, [r0 retain]);
            [r22 release];
            r0 = [APMUserDefaults alloc];
            r0 = [r0 initWithSuiteName:*0x100e6cf90];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_monitorUserDefaults));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r22 = *(r20 + r23);
            r21 = [r20 retain];
            var_48 = r21;
            dispatch_sync(r22, &var_68);
            if (([APMAEU isFAS] & 0x1) == 0x0) {
                    r0 = [NSProcessInfo processInfo];
                    r0 = [r0 retain];
                    r22 = [[r0 arguments] retain];
                    [r0 release];
                    r0 = @class(APMUserDefaults);
                    r0 = [r0 standardUserDefaults];
                    r0 = [r0 retain];
                    r23 = [[r0 objectForKey:*0x100e6e420] retain];
                    [r0 release];
                    if (([r22 containsObject:r2] & 0x1) == 0x0 && ([r23 boolValue] & 0x1) == 0x0 && [r22 containsObject:r2] == 0x0 && ([r22 containsObject:r2] & 0x1) == 0x0 && ([r22 containsObject:r2] & 0x1) == 0x0) {
                            if (([r22 containsObject:r2] & 0x1) == 0x0) {
                                    if ([r22 containsObject:r2] != 0x0) {
                                            [r21 setDebugModeEnabled:r2];
                                    }
                            }
                            else {
                                    [r21 setDebugModeEnabled:r2];
                            }
                    }
                    else {
                            [r21 setDebugModeEnabled:r2];
                    }
                    [r23 release];
                    [r22 release];
            }
            [var_48 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setLogLevel:(long long)arg2 {
    self->_logLevel = arg2;
    return;
}

-(void)setDebugModeEnabled:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ((arg2 & 0x1) != 0x0) {
            r0 = [APMAEU isFAS];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_logLevel));
            r8 = r19 + r8;
            if ((r0 & 0x1) == 0x0) {
                    *r8 = 0x7;
                    sub_1000abd3c(0x7);
                    r20 = [[APMUserDefaults standardUserDefaults] retain];
                    r22 = 0x1;
                    r21 = [@(YES) retain];
                    [r20 setObject:r21 forKey:*0x100e6e420];
                    [r21 release];
                    [r20 release];
                    [r19 logWithLevel:0x7 messageCode:0x5dc0 message:@"Debug mode is on"];
            }
            else {
                    *r8 = 0x6;
                    sub_1000abd3c(0x5);
                    r0 = [APMUserDefaults standardUserDefaults];
                    r0 = [r0 retain];
                    [r0 removeObjectForKey:*0x100e6e420];
                    [r0 release];
                    [r19 logWithLevel:0x7 messageCode:0x5dc1 message:@"Debug mode is off"];
                    r22 = 0x0;
            }
    }
    else {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_logLevel));
            r8 = r19 + r8;
            *r8 = 0x6;
            sub_1000abd3c(0x5);
            r0 = [APMUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            [r0 removeObjectForKey:*0x100e6e420];
            [r0 release];
            [r19 logWithLevel:0x7 messageCode:0x5dc1 message:@"Debug mode is off"];
            r22 = 0x0;
    }
    *(int8_t *)(int64_t *)&r19->_debugModeEnabled = r22;
    return;
}

-(void)logWithLevel:(long long)arg2 messageCode:(long long)arg3 message:(void *)arg4 {
    r24 = [arg4 retain];
    r0 = [NSArray arrayWithObjects:&stack[-72] count:0x0];
    r22 = [r0 retain];
    [self logWithLevel:arg2 messageCode:arg3 message:r24 contexts:r22];
    [r24 release];
    [r22 release];
    return;
}

-(void)logWithLevel:(long long)arg2 messageCode:(long long)arg3 message:(void *)arg4 context:(void *)arg5 {
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
    r29 = &saved_fp;
    r20 = arg3;
    r21 = arg2;
    r23 = self;
    r22 = [arg4 retain];
    r19 = [arg5 retain];
    if (r19 != 0x0) {
            r26 = 0x0;
            r24 = r19;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r24 = [r0 retain];
            r26 = 0x1;
    }
    r0 = [NSArray arrayWithObjects:&var_50 count:0x1];
    r25 = [r0 retain];
    [r23 logWithLevel:r21 messageCode:r20 message:r22 contexts:r25];
    [r22 release];
    [r25 release];
    if (r26 != 0x0) {
            [r24 release];
    }
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)logWithLevel:(long long)arg2 messageCode:(long long)arg3 message:(void *)arg4 context:(void *)arg5 context:(void *)arg6 {
    r31 = r31 - 0x80;
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
    var_70 = arg3;
    r22 = arg2;
    r24 = self;
    r23 = [arg4 retain];
    r19 = [arg5 retain];
    r20 = [arg6 retain];
    if (r19 != 0x0) {
            r28 = 0x0;
            r25 = r19;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r25 = [r0 retain];
            r28 = 0x1;
    }
    if (r20 != 0x0) {
            r21 = 0x0;
            r26 = r20;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r26 = [r0 retain];
            r21 = 0x1;
    }
    r0 = [NSArray arrayWithObjects:&var_68 count:0x2];
    r27 = [r0 retain];
    [r24 logWithLevel:r22 messageCode:var_70 message:r23 contexts:r27];
    [r23 release];
    [r27 release];
    if (r21 != 0x0) {
            [r26 release];
    }
    if (r28 != 0x0) {
            [r25 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)logWithLevel:(long long)arg2 messageCode:(long long)arg3 message:(void *)arg4 contexts:(void *)arg5 {
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
    r29 = &saved_fp;
    r23 = arg3;
    r21 = arg2;
    r22 = self;
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    if (([r22 isLoggableLevel:r2] & 0x1) != 0x0 || [APMMonitor isMonitorableLevel:r21] != 0x0) {
            if ([r22 isLoggableLevel:r2] != 0x0) {
                    r0 = [APMMonitor stringWithLogMessage:r19 logLevel:r21 contexts:r20 encodeContexts:*(int8_t *)(int64_t *)&r22->_encodeContexts];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r22 logToConsole:r23 message:r24 logLevel:r21];
                    [r24 release];
            }
            if ([APMMonitor isMonitorableLevel:r21] != 0x0) {
                    r23 = [[APMMonitor encodedStringWithContextArray:r20 insertSpaces:0x0] retain];
                    r0 = sub_100198f80();
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if ([r0 length] != 0x0) {
                            r25 = [[r23 stringByAppendingFormat:@",%@"] retain];
                            [r23 release];
                            r23 = r25;
                    }
                    [r22 insertOrUpdateMonitoringDataWithMessage:r19 encodedContext:r23 logLevel:r21];
                    [r24 release];
                    [r23 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)logWithLevel:(long long)arg2 messageCode:(long long)arg3 message:(void *)arg4 context:(void *)arg5 context:(void *)arg6 context:(void *)arg7 {
    r31 = r31 - 0xa0;
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
    var_80 = arg2;
    var_78 = arg3;
    var_88 = self;
    r24 = [arg4 retain];
    r19 = [arg5 retain];
    r20 = [arg6 retain];
    r21 = [arg7 retain];
    if (r19 != 0x0) {
            var_8C = 0x0;
            r26 = r19;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r26 = [r0 retain];
            var_8C = 0x1;
    }
    if (r20 != 0x0) {
            r25 = 0x0;
            r27 = r20;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r27 = [r0 retain];
            r25 = 0x1;
    }
    if (r21 != 0x0) {
            r23 = 0x0;
            r28 = r21;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r28 = [r0 retain];
            r23 = 0x1;
    }
    r0 = [NSArray arrayWithObjects:&var_70 count:0x3];
    r22 = [r0 retain];
    [var_88 logWithLevel:var_80 messageCode:var_78 message:r24 contexts:r22];
    [r24 release];
    [r22 release];
    if (r23 != 0x0) {
            [r28 release];
    }
    if (r25 != 0x0) {
            [r27 release];
    }
    if (var_8C != 0x0) {
            [r26 release];
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

-(void *)monitoringDataForDispatchWithSamplePeriod:(double)arg2 lastSampledTimestamp:(double)arg3 {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_monitorQueue))), &var_80);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)clearMonitoringData {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_monitorQueue))), &var_28);
    return;
}

+(void *)logLevelDescriptionFromLogLevel:(long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    if (*qword_1011d1f60 != -0x1) {
            dispatch_once(0x1011d1f60, 0x100e6dff8);
    }
    r20 = *0x1011d1f58;
    r19 = [[NSNumber numberWithInteger:r19] retain];
    r20 = [[r20 objectForKeyedSubscript:r19] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(bool)isSilentLevel:(long long)arg2 {
    r2 = arg2;
    if (r2 <= 0x7) {
            r0 = 0x24 >> (r2 & 0xff) & 0x1;
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

+(bool)isMonitorableLevel:(long long)arg2 {
    r2 = arg2;
    if (r2 <= 0x7) {
            r0 = 0x36 >> (r2 & 0xff) & 0x1;
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

+(void *)encodedStringWithContextArray:(void *)arg2 insertSpaces:(bool)arg3 {
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
    r29 = &saved_fp;
    r24 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            r20 = [[NSMutableString alloc] init];
            r27 = @"";
            [r27 retain];
            r0 = [r19 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_128 = r1;
            var_120 = r0;
            r25 = objc_msgSend(r0, r1);
            if (r25 != 0x0) {
                    var_130 = r19;
                    if (r24 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r24 = @",";
                            }
                            else {
                                    r24 = @", ";
                            }
                    }
                    r26 = @"";
                    do {
                            r22 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_120);
                                    }
                                    [r20 appendString:r26];
                                    r0 = [r21 encodedStringWithContextObject:r2];
                                    r29 = r29;
                                    r27 = [r0 retain];
                                    [r20 appendString:r27];
                                    [r27 release];
                                    r27 = [r24 retain];
                                    [r26 release];
                                    r22 = r22 + 0x1;
                                    r26 = r27;
                            } while (r22 < r25);
                            r25 = objc_msgSend(var_120, var_128);
                            r26 = r27;
                    } while (r25 != 0x0);
                    r19 = var_130;
            }
            [var_120 release];
            [r27 release];
    }
    else {
            r20 = @"";
            [r20 retain];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)encodedStringWithContextObject:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_100169304;

loc_100169298:
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_100169304;

loc_1001692c4:
    [NSString class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100169334;

loc_1001692f8:
    r20 = @"-";
    goto loc_10016930c;

loc_10016930c:
    [r20 retain];
    goto loc_100169314;

loc_100169314:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_100169334:
    r21 = @selector(isKindOfClass:);
    [NSNumber class];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_1001693a0;

loc_100169358:
    r0 = [r19 longLongValue];
    r20 = r0;
    if (r20 < 0x0) {
            asm { cneg       x8, x20, mi };
    }
    if (&@selector(uploader:completedRequest:withResponse:uniqueName:error:completionHandler:) <= 0x63) {
            r0 = [NSString stringWithFormat:r2];
    }
    else {
            r1 = @selector(longLongValue);
            r8 = &@selector(uploader:completedRequest:withResponse:uniqueName:error:completionHandler:);
            asm { scvtf      d0, x8 };
            r0 = log10(r0);
            asm { fcvtms     w8, d0 };
            asm { scvtf      d1, w8 };
            pow(r0, r1);
            asm { fcvtzs     x8, d0 };
            r9 = 0x1 - (r8 + r8 * 0x4) * 0x2;
            if (r20 < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r9 = &@selector(uploader:completedRequest:withResponse:uniqueName:error:completionHandler:);
                    }
                    else {
                            r9 = r9;
                    }
            }
            if (CPU_FLAGS & GE) {
                    asm { csneg      x8, x10, x8, ge };
            }
            r0 = [NSString stringWithFormat:r2];
    }
    r20 = [r0 retain];
    goto loc_100169314;

loc_1001693a0:
    r21 = @selector(isKindOfClass:);
    [NSException class];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_100169474;

loc_1001693c4:
    r0 = [APMMonitor lastAPMSymbolFromException:r19];
    r0 = [r0 retain];
    r21 = r0;
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r21;
            }
            else {
                    r0 = @"-";
            }
    }
    r20 = [r0 retain];
    goto loc_100169504;

loc_100169504:
    [r21 release];
    goto loc_100169314;

loc_100169474:
    r21 = @selector(isKindOfClass:);
    [NSError class];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_1001694e0;

loc_100169498:
    r0 = [r19 retain];
    r21 = r0;
    r0 = [r0 domain];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r20 = [[r21 domain] retain];
    }
    else {
            r20 = @"-";
            [r20 retain];
    }
    [r22 release];
    goto loc_100169504;

loc_1001694e0:
    r20 = @"?";
    goto loc_10016930c;

loc_100169304:
    r20 = @"";
    goto loc_10016930c;
}

+(void *)stringWithLogMessage:(void *)arg2 logLevel:(long long)arg3 contexts:(void *)arg4 encodeContexts:(bool)arg5 {
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
    r19 = arg5;
    r21 = [arg2 retain];
    r22 = [arg4 retain];
    if (r21 == 0x0) goto loc_100168dd4;

loc_100168db4:
    if ([r21 length] != 0x0) goto loc_100168df0;

loc_100168dc8:
    r20 = @"(Message was empty)";
    goto loc_100168ddc;

loc_100168ddc:
    [r20 retain];
    [r21 release];
    r21 = r20;
    goto loc_100168df0;

loc_100168df0:
    r23 = [[NSMutableString alloc] initWithString:r21];
    if ([r22 count] == 0x0) goto loc_100169224;

loc_100168e30:
    if (r19 == 0x0) goto loc_100168e84;

loc_100168e34:
    r19 = [[APMMonitor encodedStringWithContextArray:r22 insertSpaces:0x1] retain];
    [r23 appendFormat:@": %@"];
    [r19 release];
    goto loc_100169224;

loc_100169224:
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100168e84:
    var_170 = r23;
    var_160 = r21;
    r26 = [[NSMutableArray alloc] init];
    var_168 = r22;
    r0 = [r22 retain];
    r24 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = &stack[-232];
    var_158 = r1;
    r20 = objc_msgSend(r0, r1);
    if (r20 == 0x0) goto loc_1001691b4;

loc_100168efc:
    r25 = 0x0;
    var_140 = r20;
    goto loc_100168f54;

loc_100168f54:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r24);
    }
    r27 = *(0x0 + r25 * 0x8);
    if ([r27 respondsToSelector:@selector(isKindOfClass:)] == 0x0 || [r27 isKindOfClass:[NSException class]] == 0x0) goto loc_100169014;

loc_100168fb0:
    r20 = r24;
    r24 = r26;
    r22 = [r27 retain];
    r0 = [APMMonitor lastAPMSymbolFromException:r22];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) goto loc_100169090;

loc_100168fe8:
    r0 = [NSString stringWithFormat:@"%@: %@", r3, 0x10];
    r29 = r29;
    goto loc_100169008;

loc_100169008:
    r23 = [r0 retain];
    goto loc_1001690dc;

loc_1001690dc:
    [r26 release];
    [r22 release];
    r26 = r24;
    r24 = r20;
    r20 = var_140;
    goto loc_1001690f8;

loc_1001690f8:
    if ([r23 respondsToSelector:@selector(description)] != 0x0) {
            r0 = [r23 description];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    [r27 class];
                    r0 = [NSString stringWithFormat:@"<%@ %p>"];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r23 release];
                    r23 = r22;
            }
    }
    else {
            [r27 class];
            r0 = [NSString stringWithFormat:@"<%@ %p>"];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            r23 = r22;
    }
    [r26 addObject:r23];
    [r23 release];
    r25 = r25 + 0x1;
    if (r25 < r20) goto loc_100168f54;

loc_100169194:
    r3 = &stack[-232];
    r20 = objc_msgSend(r24, var_158);
    if (r20 != 0x0) goto loc_100168efc;

loc_1001691b4:
    [r24 release];
    r23 = var_170;
    [r23 appendString:@": "];
    r20 = [[r26 componentsJoinedByString:r2] retain];
    [r23 appendString:r20];
    [r20 release];
    [r26 release];
    r22 = var_168;
    r21 = var_160;
    goto loc_100169224;

loc_100169090:
    if ([r22 respondsToSelector:@selector(description)] == 0x0) goto loc_1001690d8;

loc_1001690a4:
    r0 = [r22 description];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    [r0 release];
    if (r23 == 0x0) goto loc_1001690dc;

loc_1001690c4:
    r0 = [r22 description];
    r29 = r29;
    goto loc_100169008;

loc_1001690d8:
    r23 = 0x0;
    goto loc_1001690dc;

loc_100169014:
    if ([r27 respondsToSelector:@selector(description)] != 0x0) {
            r0 = [r27 description];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [NSNull null];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (r27 == r22) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r27;
                            }
                            else {
                                    r0 = @"(nil)";
                            }
                    }
                    r23 = [r0 retain];
                    [r22 release];
            }
            else {
                    r23 = 0x0;
            }
    }
    else {
            r23 = 0x0;
    }
    goto loc_1001690f8;

loc_100168dd4:
    r20 = @"(Message was nil)";
    goto loc_100168ddc;
}

-(void)loadMonitoringDataFromUserDefaultsOnMonitorQueue {
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
    r20 = [[r19->_monitorUserDefaults arrayForKey:*0x100e6e3b8] retain];
    r0 = [APMMonitoringSampledData alloc];
    r0 = [r0 initWithArray:r20];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_monitoringSampledData));
    r8 = *(r19 + r24);
    *(r19 + r24) = r0;
    [r8 release];
    if (*(r19 + r24) == 0x0) {
            r0 = [APMMonitoringSampledData alloc];
            r0 = [r0 initWithArray:0x0];
            r8 = *(r19 + r24);
            *(r19 + r24) = r0;
            [r8 release];
    }
    [r20 release];
    return;
}

+(void *)lastAPMSymbolFromException:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_100169594;

loc_100169540:
    r0 = [r19 callStackSymbols];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] > 0x1) goto loc_10016959c;

loc_100169574:
    r24 = [[r19 name] retain];
    goto loc_100169818;

loc_100169818:
    [r20 release];
    goto loc_100169820;

loc_100169820:
    [r19 release];
    r0 = [r24 autorelease];
    return r0;

loc_10016959c:
    r22 = @selector(count);
    var_90 = r19;
    r0 = [NSPredicate predicateWithFormat:@"SELF != ''"];
    r29 = r29;
    r25 = [r0 retain];
    if (objc_msgSend(r20, r22) < 0x3) goto loc_1001697f0;

loc_1001695dc:
    r22 = @selector(count);
    r26 = @selector(whitespaceCharacterSet);
    r27 = 0x2;
    var_78 = r22;
    var_80 = r20;
    goto loc_10016962c;

loc_10016962c:
    r28 = [[r20 objectAtIndexedSubscript:r27] retain];
    r21 = [objc_msgSend(@class(NSCharacterSet), r26) retain];
    r0 = [r28 componentsSeparatedByCharactersInSet:r2];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 filteredArrayUsingPredicate:r25];
    r29 = r29;
    r19 = [r0 retain];
    [r24 release];
    [r21 release];
    if (objc_msgSend(r19, r22) < 0x4) goto loc_1001697c8;

loc_1001696bc:
    r0 = [r19 objectAtIndexedSubscript:0x4];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r0 = [r19 objectAtIndexedSubscript:0x3];
            r29 = r29;
            r24 = [r0 retain];
    }
    else {
            var_88 = @selector(stringWithFormat:);
            r0 = [r19 objectAtIndexedSubscript:0x3];
            r0 = [r0 retain];
            r20 = r25;
            r25 = r0;
            r0 = [r19 objectAtIndexedSubscript:0x4];
            r0 = [r0 retain];
            r22 = r26;
            r26 = r0;
            r0 = objc_msgSend(@class(NSString), var_88);
            r29 = r29;
            r24 = [r0 retain];
            r0 = r26;
            r26 = r22;
            [r0 release];
            r0 = r25;
            r25 = r20;
            r20 = var_80;
            r22 = var_78;
            [r0 release];
    }
    [r21 release];
    if ([r24 rangeOfString:r2 options:r3] != 0x7fffffffffffffff) goto loc_10016984c;

loc_1001697c0:
    [r24 release];
    goto loc_1001697c8;

loc_1001697c8:
    [r19 release];
    [r28 release];
    r27 = r27 + 0x1;
    if (objc_msgSend(r20, r22) > r27) goto loc_10016962c;

loc_1001697f0:
    r19 = var_90;
    r24 = [[r19 name] retain];
    goto loc_100169810;

loc_100169810:
    [r25 release];
    goto loc_100169818;

loc_10016984c:
    [r19 release];
    [r28 release];
    r19 = var_90;
    goto loc_100169810;

loc_100169594:
    r24 = 0x0;
    goto loc_100169820;
}

-(bool)isLoggableLevel:(long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [APMASLLogger GULLoggerLevelFromLogLevel:r2];
    r0 = sub_1000abec4(r0);
    if (r0 != 0x0) {
            r0 = [APMMonitor isSilentLevel:r19];
            r0 = r0 ^ 0x1;
    }
    return r0;
}

-(void)logToConsole:(long long)arg2 message:(void *)arg3 logLevel:(long long)arg4 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r22 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    if (r19 != 0x0) {
            var_38 = [r19 retain];
            r0 = objc_retainBlock(&var_60);
            dispatch_async(r20->_monitorQueue, r0);
            [r21 release];
            [var_38 release];
    }
    [r19 release];
    return;
}

-(void)insertOrUpdateMonitoringDataWithMessage:(void *)arg2 encodedContext:(void *)arg3 logLevel:(long long)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [[APMMonitor monitoringDataKeyWithMessage:r22 logLevel:arg4 libraryVersion:self->_libraryVersion] retain];
    [r22 release];
    r22 = self->_monitorQueue;
    var_30 = r19;
    [r19 retain];
    var_28 = r20;
    [r20 retain];
    dispatch_async(r22, &var_58);
    [var_28 release];
    [var_30 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)saveMonitoringDataToUserDefaultsOnMonitorQueue {
    r20 = self->_monitorUserDefaults;
    r21 = [[self->_monitoringSampledData sampledData] retain];
    [r20 setObject:r21 forKey:*0x100e6e3b8];
    [r21 release];
    [self synchronizeToDiskOnMonitorQueue];
    return;
}

-(void)synchronizeToDiskOnMonitorQueue {
    [self->_monitorUserDefaults synchronize];
    return;
}

+(void *)monitoringDataKeyWithMessage:(void *)arg2 logLevel:(long long)arg3 libraryVersion:(long long)arg4 {
    r4 = arg4;
    r3 = arg3;
    r2 = arg2;
    if (r3 <= 0x5) {
            r8 = *(int32_t *)(0x100ba20d0 + r3 * 0x4);
    }
    else {
            r8 = 0x3f;
    }
    r0 = [NSString stringWithFormat:@"%@%c_%lld:%@"];
    return r0;
}

-(void)migrateMonitorDataOnMonitorQueue {
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
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_monitorUserDefaults));
    r0 = *(r19 + r25);
    r0 = [r0 integerForKey:*0x100e6e3c0];
    r21 = sign_extend_64(*(int32_t *)0x100ba2040);
    if (r0 != r21) {
            if (r0 != 0x0) {
                    if (r0 == sign_extend_64(*(int32_t *)0x100ba203c)) {
                            r0 = @class(APMUserDefaults);
                            r0 = [r0 standardUserDefaults];
                            r0 = [r0 retain];
                            [r0 removeObjectForKey:*0x100e6e3b8];
                            [r0 release];
                            r0 = @class(APMUserDefaults);
                            r0 = [r0 standardUserDefaults];
                            r0 = [r0 retain];
                            [r0 synchronize];
                            [r0 release];
                            [*(r19 + r25) setInteger:r21 forKey:*0x100e6e3c0];
                            [r19 synchronizeToDiskOnMonitorQueue];
                    }
            }
            else {
                    r0 = [APMUserDefaults standardUserDefaults];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 arrayForKey:*0x100e6e3b8];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r24 release];
                    if (r22 != 0x0) {
                            r0 = *(r19 + r25);
                            r0 = [r0 objectForKey:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 == 0x0) {
                                    [*(r19 + r25) setObject:r2 forKey:r3];
                            }
                    }
                    [*(r19 + r25) setInteger:sign_extend_64(*(int32_t *)0x100ba203c) forKey:*0x100e6e3c0];
                    [r19 synchronizeToDiskOnMonitorQueue];
                    [r22 release];
                    r0 = @class(APMUserDefaults);
                    r0 = [r0 standardUserDefaults];
                    r0 = [r0 retain];
                    [r0 removeObjectForKey:*0x100e6e3b8];
                    [r0 release];
                    r0 = @class(APMUserDefaults);
                    r0 = [r0 standardUserDefaults];
                    r0 = [r0 retain];
                    [r0 synchronize];
                    [r0 release];
                    [*(r19 + r25) setInteger:r21 forKey:*0x100e6e3c0];
                    [r19 synchronizeToDiskOnMonitorQueue];
            }
    }
    return;
}

-(bool)isDebugModeEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_debugModeEnabled;
    return r0;
}

-(bool)encodeContexts {
    r0 = *(int8_t *)(int64_t *)&self->_encodeContexts;
    return r0;
}

-(void)setEncodeContexts:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_encodeContexts = arg2;
    return;
}

-(void *)logTag {
    r0 = self->_logTag;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_logTag, 0x0);
    objc_storeStrong((int64_t *)&self->_monitorUserDefaults, 0x0);
    objc_storeStrong((int64_t *)&self->_monitorQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_monitoringSampledData, 0x0);
    objc_storeStrong((int64_t *)&self->_logger, 0x0);
    return;
}

-(void)setLogTag:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_logTag, arg2);
    return;
}

@end