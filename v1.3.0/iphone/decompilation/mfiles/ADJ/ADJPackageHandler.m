@implementation ADJPackageHandler

+(void *)handlerWithActivityHandler:(void *)arg2 startsSending:(bool)arg3 {
    r22 = [arg2 retain];
    r19 = [[ADJPackageHandler alloc] initWithActivityHandler:r22 startsSending:arg3];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithActivityHandler:(void *)arg2 startsSending:(bool)arg3 {
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
    r21 = arg3;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r22 = dispatch_queue_create("io.adjust.PackageQueue", 0x0);
            [r20 setInternalQueue:r22];
            [r22 release];
            r22 = [[ADJAdjustFactory packageHandlerBackoffStrategy] retain];
            [r20 setBackoffStrategy:r22];
            [r22 release];
            r23 = [[r20 internalQueue] retain];
            var_50 = [r19 retain];
            [ADJUtil launchInQueue:r23 selfInject:r20 block:&var_70];
            [r23 release];
            r21 = [r20 retain];
            [var_50 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)addPackage:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[self internalQueue] retain];
    var_38 = r20;
    r20 = [r20 retain];
    [ADJUtil launchInQueue:r22 selfInject:self block:&var_58];
    [r22 release];
    [var_38 release];
    [r20 release];
    return;
}

-(void)sendFirstPackage {
    r21 = [[self internalQueue] retain];
    [ADJUtil launchInQueue:r21 selfInject:self block:0x100e8acd0];
    [r21 release];
    return;
}

-(void)sendNextPackage:(void *)arg2 {
    r22 = [arg2 retain];
    r21 = [[self internalQueue] retain];
    [ADJUtil launchInQueue:r21 selfInject:self block:0x100e8ad10];
    [r21 release];
    r0 = [self activityHandler];
    r0 = [r0 retain];
    [r0 finishedTracking:r22];
    [r22 release];
    [r0 release];
    return;
}

-(void)closeFirstPackage:(void *)arg2 activityPackage:(void *)arg3 {
    r31 = r31 - 0xa0;
    var_50 = d9;
    stack[-88] = d8;
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
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    [arg2 setWillRetry:0x1];
    r0 = [self activityHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 finishedTracking:r22];
    [r22 release];
    [r0 release];
    r21 = [self retain];
    var_58 = r21;
    r0 = objc_retainBlock(&var_78);
    r20 = r0;
    if (r19 != 0x0) {
            r23 = [r19 increaseRetries];
            r22 = @class(ADJUtil);
            r24 = [[r21 backoffStrategy] retain];
            [r22 waitingTime:r23 backoffStrategy:r24];
            [r24 release];
            [[ADJUtil secondsNumberFormat:r23] retain];
            r0 = [r21 logger];
            r0 = [r0 retain];
            [r0 verbose:r2];
            [r24 release];
            asm { fcvtzs     x1, d0 };
            dispatch_after(dispatch_time(0x0, r1), [[r21 internalQueue] retain], r20);
            [r21 release];
            [r22 release];
    }
    else {
            (*(r20 + 0x10))(r20);
    }
    [r20 release];
    [var_58 release];
    [r19 release];
    return;
}

-(void)pauseSending {
    [self setPaused:0x1];
    return;
}

-(void)resumeSending {
    [self setPaused:0x0];
    return;
}

-(void)updatePackages:(void *)arg2 {
    r20 = [arg2 copy];
    r22 = [[self internalQueue] retain];
    var_38 = r20;
    r20 = [r20 retain];
    [ADJUtil launchInQueue:r22 selfInject:self block:&var_58];
    [r22 release];
    [var_38 release];
    [r20 release];
    return;
}

-(void)initI:(void *)arg2 activityHandler:(void *)arg3 startsSending:(bool)arg4 {
    r20 = [arg2 retain];
    [arg2 setActivityHandler:arg3];
    [arg2 setPaused:arg4 ^ 0x1];
    r21 = [[ADJAdjustFactory requestHandlerForPackageHandler:arg2] retain];
    [arg2 setRequestHandler:r21];
    [r21 release];
    r21 = [[ADJAdjustFactory logger] retain];
    [arg2 setLogger:r21];
    [r21 release];
    r21 = dispatch_semaphore_create(0x1);
    [arg2 setSendingSemaphore:r21];
    [r21 release];
    [arg2 readPackageQueueI:r20];
    [r20 release];
    return;
}

-(void)teardown:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r0 = [ADJAdjustFactory logger];
    r0 = [r0 retain];
    [r0 verbose:@"ADJPackageHandler teardown"];
    [r0 release];
    r0 = [r19 sendingSemaphore];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 sendingSemaphore];
            r29 = r29;
            r0 = [r0 retain];
            dispatch_semaphore_signal(r0);
            [r21 release];
    }
    r0 = [r19 requestHandler];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 requestHandler];
            r0 = [r0 retain];
            [r0 teardown];
            [r0 release];
    }
    [r19 teardownPackageQueueS:r20];
    [r19 setInternalQueue:0x0];
    [r19 setSendingSemaphore:0x0];
    [r19 setRequestHandler:0x0];
    [r19 setBackoffStrategy:0x0];
    [r19 setActivityHandler:0x0];
    [r19 setLogger:0x0];
    return;
}

-(void)addI:(void *)arg2 package:(void *)arg3 {
    r20 = [arg2 retain];
    r22 = [arg3 retain];
    r0 = [arg2 packageQueue];
    r0 = [r0 retain];
    [r0 addObject:arg3];
    [r0 release];
    r25 = [[arg2 logger] retain];
    r0 = [arg2 packageQueue];
    r0 = [r0 retain];
    [r0 count];
    [r25 debug:@"Added package %d (%@)"];
    [r0 release];
    [r25 release];
    r23 = [[arg2 logger] retain];
    r21 = [arg3 extendedString];
    [r22 release];
    r21 = [r21 retain];
    [r23 verbose:@"%@"];
    [r21 release];
    [r23 release];
    [arg2 writePackageQueueS:r20];
    [r20 release];
    return;
}

-(void)sendFirstI:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 packageQueue];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 count];
    [r0 release];
    if (r20 == 0x0) goto loc_100691154;

loc_1006910a0:
    if ([r19 paused] == 0x0) goto loc_1006910e4;

loc_1006910b4:
    r20 = [[r19 logger] retain];
    r1 = @selector(debug:);
    goto loc_100691144;

loc_100691144:
    objc_msgSend(r20, r1);
    r0 = r20;
    goto loc_100691150;

loc_100691150:
    [r0 release];
    goto loc_100691154;

loc_100691154:
    [r19 release];
    return;

loc_1006910e4:
    r0 = [r19 sendingSemaphore];
    r29 = r29;
    r0 = [r0 retain];
    r23 = dispatch_semaphore_wait(r0, 0x0);
    [r0 release];
    if (r23 == 0x0) goto loc_10069116c;

loc_100691118:
    r20 = [[r19 logger] retain];
    r1 = @selector(verbose:);
    goto loc_100691144;

loc_10069116c:
    r0 = [r19 packageQueue];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r29 = r29;
    r21 = [r0 retain];
    [r22 release];
    [ADJActivityPackage class];
    if (([r21 isKindOfClass:r2] & 0x1) != 0x0) {
            r0 = [r19 requestHandler];
            r0 = [r0 retain];
            [r0 sendPackage:r21 queueSize:r20 - 0x1];
            [r0 release];
    }
    else {
            r0 = [r19 logger];
            r0 = [r0 retain];
            [r0 error:@"Failed to read activity package"];
            [r0 release];
            [r19 sendNextI:r19];
    }
    r0 = r21;
    goto loc_100691150;
}

-(void)sendNextI:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [arg2 packageQueue];
    r0 = [r0 retain];
    [r0 removeObjectAtIndex:0x0];
    [r0 release];
    [arg2 writePackageQueueS:r21];
    r0 = [arg2 sendingSemaphore];
    r0 = [r0 retain];
    dispatch_semaphore_signal(r0);
    [r20 release];
    [arg2 sendFirstI:r21];
    [r21 release];
    return;
}

-(void)updatePackagesI:(void *)arg2 sessionParameters:(void *)arg3 {
    r31 = r31 - 0x190;
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
    r20 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = [r20 logger];
    r0 = [r0 retain];
    [r0 debug:@"Updating package handler queue"];
    [r0 release];
    r22 = [[r20 logger] retain];
    r23 = [[r25 callbackParameters] retain];
    [r22 verbose:@"Session callback parameters: %@"];
    [r23 release];
    [r22 release];
    r19 = [[r20 logger] retain];
    var_140 = r25;
    r23 = [[r25 partnerParameters] retain];
    [r19 verbose:@"Session partner parameters: %@"];
    [r23 release];
    [r19 release];
    var_170 = r20;
    r0 = [r20 packageQueue];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_168 = r1;
    var_160 = r0;
    r0 = objc_msgSend(r0, r1);
    var_120 = r0;
    if (r0 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_160);
                            }
                            r27 = *(0x0 + r21 * 0x8);
                            r19 = [[var_140 callbackParameters] retain];
                            r25 = [[r27 callbackParameters] retain];
                            [[ADJUtil mergeParameters:r19 source:r25 parameterName:@"Callback"] retain];
                            [r25 release];
                            [r19 release];
                            r19 = @class(ADJPackageBuilder);
                            [[r27 parameters] retain];
                            [r19 parameters:r2 setDictionary:r3 forKey:r4];
                            [r25 release];
                            r25 = [[var_140 partnerParameters] retain];
                            r20 = [[r27 partnerParameters] retain];
                            [[ADJUtil mergeParameters:r25 source:r20 parameterName:@"Partner"] retain];
                            [r20 release];
                            [r25 release];
                            r20 = @class(ADJPackageBuilder);
                            r0 = [r27 parameters];
                            r29 = r29;
                            [r0 retain];
                            [r20 parameters:r2 setDictionary:r3 forKey:r4];
                            [r25 release];
                            [r19 release];
                            [r28 release];
                            r21 = r21 + 0x1;
                    } while (r21 < var_120);
                    r0 = objc_msgSend(var_160, var_168);
                    var_120 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_160 release];
    [var_170 writePackageQueueS:var_170];
    [var_140 release];
    [var_170 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)teardownPackageQueueS:(bool)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r20 = self;
    r0 = [ADJPackageHandler class];
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r20 packageQueue];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            if (r22 != 0x0) {
                    r0 = [r20 packageQueueFilename];
                    r29 = r29;
                    r23 = [r0 retain];
                    [ADJUtil deleteFile:r23];
                    [r23 release];
            }
            r0 = [r20 packageQueue];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r0 release];
            [r20 setPackageQueue:0x0];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)readPackageQueueI:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [NSKeyedUnarchiver setClass:[ADJActivityPackage class] forClassName:@"AIActivityPackage"];
    r20 = [[r19 packageQueueFilename] retain];
    r0 = @class(NSKeyedUnarchiver);
    r0 = [r0 unarchiveObjectWithFile:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [NSArray class];
    if ([r21 isKindOfClass:r2] != 0x0) {
            [r19 setPackageQueue:r21];
            r22 = [[r19 logger] retain];
            r0 = [r19 packageQueue];
            r0 = [r0 retain];
            [r0 count];
            [r22 debug:@"Package handler read %d packages"];
            [r0 release];
            [r22 release];
            [r21 release];
    }
    else {
            if (r21 != 0x0) {
                    r0 = [r19 logger];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    [r0 error:@"Failed to read package queue"];
            }
            else {
                    r0 = [r19 logger];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    [r0 verbose:@"Package queue file not found"];
            }
            [r22 release];
            [r21 release];
            [r20 release];
            r20 = [[NSMutableArray array] retain];
            [r19 setPackageQueue:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)writePackageQueueS:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [ADJPackageHandler class];
    r0 = [r0 retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [r19 packageQueue];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r19 packageQueueFilename] retain];
            r0 = [r19 packageQueue];
            r29 = r29;
            r24 = [r0 retain];
            r23 = [NSKeyedArchiver archiveRootObject:r24 toFile:r21];
            [r24 release];
            if (r23 != 0x0) {
                    [ADJUtil excludeFromBackup:r21];
                    r23 = [[r19 logger] retain];
                    r0 = [r19 packageQueue];
                    r0 = [r0 retain];
                    [r0 count];
                    [r23 debug:@"Package handler wrote %d packages"];
                    [r0 release];
                    r0 = r23;
            }
            else {
                    r0 = [r19 logger];
                    r0 = [r0 retain];
                    [r0 error:@"Failed to write package queue"];
                    r0 = r0;
            }
            [r0 release];
            [r21 release];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void *)packageQueueFilename {
    r0 = NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1);
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r21 = [[r0 stringByAppendingPathComponent:@"AdjustIoPackageQueue"] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)internalQueue {
    r0 = self->_internalQueue;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self sendingSemaphore];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 sendingSemaphore];
            r0 = [r0 retain];
            dispatch_semaphore_signal(r0);
            [r20 release];
    }
    [[&var_30 super] dealloc];
    return;
}

-(void)setInternalQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_internalQueue, arg2);
    return;
}

-(void *)sendingSemaphore {
    r0 = self->_sendingSemaphore;
    return r0;
}

-(void)setSendingSemaphore:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sendingSemaphore, arg2);
    return;
}

-(void *)requestHandler {
    r0 = self->_requestHandler;
    return r0;
}

-(void)setRequestHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requestHandler, arg2);
    return;
}

-(void *)packageQueue {
    r0 = self->_packageQueue;
    return r0;
}

-(void)setPackageQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_packageQueue, arg2);
    return;
}

-(void *)backoffStrategy {
    r0 = self->_backoffStrategy;
    return r0;
}

-(void)setBackoffStrategy:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backoffStrategy, arg2);
    return;
}

-(bool)paused {
    r0 = *(int8_t *)(int64_t *)&self->_paused;
    return r0;
}

-(void)setPaused:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_paused = arg2;
    return;
}

-(void *)activityHandler {
    r0 = objc_loadWeakRetained((int64_t *)&self->_activityHandler);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setActivityHandler:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_activityHandler, arg2);
    return;
}

-(void *)logger {
    r0 = objc_loadWeakRetained((int64_t *)&self->_logger);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setLogger:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_logger, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_logger);
    objc_destroyWeak((int64_t *)&self->_activityHandler);
    objc_storeStrong((int64_t *)&self->_backoffStrategy, 0x0);
    objc_storeStrong((int64_t *)&self->_packageQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_requestHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_sendingSemaphore, 0x0);
    objc_storeStrong((int64_t *)&self->_internalQueue, 0x0);
    return;
}

@end