@implementation ADCNativeLayer

+(void *)sharedLayer {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d22b0 != -0x1) {
            dispatch_once(0x1011d22b0, &var_28);
    }
    r0 = *0x1011d22b8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)registerHandlers {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 postNotificationName:r2 object:r3];
    [r19 release];
    return;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setDownloadingController:0x0];
            r21 = [NSMutableDictionary new];
            [r19 setModules:r21];
            [r21 release];
            r0 = [r19 outbound];
            r0 = [r0 retain];
            objc_sync_enter(r0);
            r22 = [NSMutableArray new];
            [r19 setOutbound:r22];
            [r22 release];
            objc_sync_exit(r21);
            [r21 release];
            r21 = [NSMutableDictionary new];
            [r19 setTypedHandlers:r21];
            [r21 release];
            r21 = [NSMutableArray new];
            [r19 setMessageSenders:r21];
            [r21 release];
            [r19 setNativeMessageIDCounter:0x1];
            [r19 setDynamicModuleIDCounter:0x2];
            r20 = [NSLock new];
            [r19 setAccessLock:r20];
            [r20 release];
            [r19 setPauseCount:0x0];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(onApplicationResignedActive) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(onApplicationBecameActive) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void)loadControllerWithCompletion:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[AdColony sharedInstance] retain];
    var_28 = r20;
    r20 = [r20 retain];
    [r21 performBlockOnWorkerThread:&var_50 mode:0x1];
    [r21 release];
    [var_28 release];
    [r20 release];
    return;
}

-(void)loadController {
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [r0 performBlockOnWorkerThread:&var_38 mode:0x1];
    [r0 release];
    return;
}

-(long long)nextControllerDownload {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = [self controllerDownloadAttempts] - 0x1;
    if (r8 <= 0x3) {
            r0 = *(0x100ba2a10 + r8 * 0x8);
    }
    else {
            r0 = 0x78;
    }
    return r0;
}

-(unsigned long long)nextDynamicModuleID {
    r0 = [self accessLock];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r22 = [self dynamicModuleIDCounter];
    [self setDynamicModuleIDCounter:[self dynamicModuleIDCounter] + 0x1];
    r0 = [self accessLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = r22;
    return r0;
}

-(void *)moduleForIdentifier:(unsigned long long)arg2 {
    r0 = [self modules];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r20 = [[self modules] retain];
    r21 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    [[r20 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r20 release];
    objc_sync_exit(r19);
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)registerDynamicModule:(void *)arg2 {
    [arg2 retain];
    r0 = [self modules];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r21 = [[self modules] retain];
    r22 = [[NSNumber numberWithUnsignedInteger:[r19 originNumber]] retain];
    [r21 setObject:r19 forKeyedSubscript:r22];
    [r22 release];
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)unregisterDynamicModule:(void *)arg2 {
    [arg2 retain];
    r0 = [self modules];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r21 = [[self modules] retain];
    [[NSNumber numberWithUnsignedInteger:[r19 originNumber]] retain];
    [r21 removeObjectForKey:r2];
    [r22 release];
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)unregisterAllDynamicModules {
    r0 = [self modules];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = [self modules];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r20 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)moduleUpdate {
    r31 = r31 - 0x1d0;
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
    r20 = self;
    r0 = [self modules];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 allValues];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1B0 = r1;
    r23 = objc_msgSend(r21, r1);
    if (r23 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r26 = *(0x0 + r28 * 0x8);
                            if (([r26 disabled] & 0x1) == 0x0) {
                                    [r26 pumpMessages:r2];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r23 = objc_msgSend(r21, var_1B0);
            } while (r23 != 0x0);
    }
    var_68 = **___stack_chk_guard;
    [r21 release];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    var_158 = [[r0 allValues] retain];
    [r0 release];
    dispatch_async(*__dispatch_main_q, &var_1A8);
    _Block_object_dispose(&var_180, 0x8);
    [var_158 release];
    [r20 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

-(unsigned long long)nextNativeMessageID {
    r0 = [self accessLock];
    r0 = [r0 retain];
    [r0 lock];
    [r0 release];
    r21 = [self nativeMessageIDCounter];
    [self setNativeMessageIDCounter:r21 + 0x1];
    r0 = [self accessLock];
    r0 = [r0 retain];
    [r0 unlock];
    [r0 release];
    r0 = r21;
    return r0;
}

-(void)addMessageSender:(void *)arg2 {
    [arg2 retain];
    r0 = [self messageSenders];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r21 release];
    [r19 release];
    return;
}

-(void)addTarget:(void *)arg2 selector:(void *)arg3 forMessageType:(void *)arg4 {
    r22 = [arg2 retain];
    r25 = [arg4 retain];
    r20 = [[ADCMessageHandler handlerWithTarget:r22 selector:arg3] retain];
    [r22 release];
    r0 = [self typedHandlers];
    r0 = [r0 retain];
    [r0 setObject:r20 forKeyedSubscript:arg4];
    [r25 release];
    [r0 release];
    [r20 release];
    return;
}

-(void *)handlerForMessageType:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self typedHandlers];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:arg2] retain];
    [r22 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)dispatchMessages:(void *)arg2 {
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
    r19 = self;
    r0 = [arg2 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r0;
    var_130 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            r25 = @selector(originNumber);
                            r24 = @selector(moduleForIdentifier:);
                            r28 = *(0x0 + r26 * 0x8);
                            [r28 target];
                            asm { sxtw       x2, w0 };
                            r0 = objc_msgSend(r19, r24);
                            r29 = r29;
                            r0 = [r0 retain];
                            r21 = r0;
                            if (objc_msgSend(r0, r25) != 0x0) {
                                    r0 = r21;
                                    r1 = @selector(queueMessage:);
                            }
                            else {
                                    r0 = r19;
                                    r1 = @selector(dispatchMessage:);
                            }
                            objc_msgSend(r0, r1);
                            [r21 release];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r22 = objc_msgSend(var_120, var_130);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)sendMessage:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_1002037b4;

loc_1002036e0:
    [r19 target];
    asm { sxtw       x2, w0 };
    r0 = [r22 moduleForIdentifier:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_100203730;

loc_100203718:
    r1 = @selector(queueMessage:);
    r0 = r20;
    goto loc_100203724;

loc_100203724:
    objc_msgSend(r0, r1);
    goto loc_1002037ac;

loc_1002037ac:
    [r20 release];
    goto loc_1002037b4;

loc_1002037b4:
    [r19 release];
    return;

loc_100203730:
    if ([r19 target] == 0x0) goto loc_1002037d0;

loc_100203740:
    r23 = [[r19 type] retain];
    [r19 target];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCNativeLayer sendMessage:]" line:0x146 withFormat:@"Attempted to send an %@ message to an unknown ADCModule with id: %d"];
    [r23 release];
    goto loc_1002037ac;

loc_1002037d0:
    r1 = @selector(dispatchMessage:);
    r0 = r22;
    goto loc_100203724;
}

-(void)dispatchMessage:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 type];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 isEqualToString:r2] != 0x0) {
            [r22 release];
            r0 = [r19 type];
            r29 = r29;
            r23 = [r0 retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCNativeLayer dispatchMessage:]" line:0x11f withFormat:@"Handling message of type: %@"];
            [r23 release];
    }
    else {
            r0 = [r19 type];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 rangeOfString:@"Log."];
            [r0 release];
            [r22 release];
            if (r24 == 0x7fffffffffffffff) {
                    r0 = [r19 type];
                    r29 = r29;
                    r23 = [r0 retain];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCNativeLayer dispatchMessage:]" line:0x11f withFormat:@"Handling message of type: %@"];
                    [r23 release];
            }
    }
    r23 = [[r20 typedHandlers] retain];
    r24 = [[r19 type] retain];
    r0 = [r23 objectForKeyedSubscript:r24];
    r29 = r29;
    r22 = [r0 retain];
    [r24 release];
    [r23 release];
    if (r22 != 0x0) {
            r2 = @"Log.set_log_level";
            r0 = [r22 target];
            r21 = [r0 retain];
            r23 = [r22 selector];
            [r19 origin];
            asm { sxtw       x2, w0 };
            r20 = [[r20 moduleForIdentifier:r2] retain];
            if (r20 == 0x0) {
                    [r19 origin];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCNativeLayer dispatchMessage:]" line:0x12d withFormat:@"Creating an ADCMessageContext with a nil origin with ID: %d"];
            }
            ([r21 methodForSelector:r23])(r21, r23, r19, r20);
            [r20 release];
    }
    else {
            r21 = [[r19 type] retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCNativeLayer dispatchMessage:]" line:0x124 withFormat:@"%@ message received by native; no message handler registered for this type."];
    }
    [r21 release];
    [r22 release];
    [r19 release];
    return;
}

-(void)broadcastMessage:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[AdColony sharedInstance] retain];
    var_28 = r20;
    r20 = [r20 retain];
    [r21 performBlockOnWorkerThread:&var_50 mode:0x1];
    [r21 release];
    [var_28 release];
    [r20 release];
    return;
}

-(void)onApplicationResignedActive {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [AdColony sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 configured];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            [r0 performBlockOnWorkerThread:0x100e73208 mode:0x1];
            [r0 release];
    }
    return;
}

-(void)onApplicationBecameActive {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [AdColony sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 configured];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [AdColony sharedInstance];
            r0 = [r0 retain];
            [r0 performBlockOnWorkerThread:0x100e73248 mode:0x1];
            [r0 release];
    }
    return;
}

-(bool)downloadingController {
    r0 = *(int8_t *)(int64_t *)&self->_downloadingController;
    return r0;
}

-(void)setDownloadingController:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_downloadingController = arg2;
    return;
}

-(void *)controllerDownloadTimer {
    r0 = self->_controllerDownloadTimer;
    return r0;
}

-(void)setControllerDownloadTimer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_controllerDownloadTimer, arg2);
    return;
}

-(long long)controllerDownloadAttempts {
    r0 = self->_controllerDownloadAttempts;
    return r0;
}

-(void)setControllerDownloadAttempts:(long long)arg2 {
    self->_controllerDownloadAttempts = arg2;
    return;
}

-(void *)controllerLoadCompletion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_controllerLoadCompletion)), 0x0);
    return r0;
}

-(void)setControllerLoadCompletion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)modules {
    r0 = self->_modules;
    return r0;
}

-(void)setModules:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_modules, arg2);
    return;
}

-(void)setTypedHandlers:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_typedHandlers, arg2);
    return;
}

-(void *)typedHandlers {
    r0 = self->_typedHandlers;
    return r0;
}

-(void *)outbound {
    r0 = self->_outbound;
    return r0;
}

-(void)setOutbound:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_outbound, arg2);
    return;
}

-(void *)messageSenders {
    r0 = self->_messageSenders;
    return r0;
}

-(void)setMessageSenders:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_messageSenders, arg2);
    return;
}

-(unsigned long long)nativeMessageIDCounter {
    r0 = self->_nativeMessageIDCounter;
    return r0;
}

-(void)setNativeMessageIDCounter:(unsigned long long)arg2 {
    self->_nativeMessageIDCounter = arg2;
    return;
}

-(unsigned long long)dynamicModuleIDCounter {
    r0 = self->_dynamicModuleIDCounter;
    return r0;
}

-(void)setDynamicModuleIDCounter:(unsigned long long)arg2 {
    self->_dynamicModuleIDCounter = arg2;
    return;
}

-(void *)accessLock {
    r0 = self->_accessLock;
    return r0;
}

-(void)setAccessLock:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_accessLock, arg2);
    return;
}

-(int)pauseCount {
    r0 = *(int32_t *)(int64_t *)&self->_pauseCount;
    return r0;
}

-(void)setPauseCount:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_pauseCount = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_accessLock, 0x0);
    objc_storeStrong((int64_t *)&self->_messageSenders, 0x0);
    objc_storeStrong((int64_t *)&self->_outbound, 0x0);
    objc_storeStrong((int64_t *)&self->_typedHandlers, 0x0);
    objc_storeStrong((int64_t *)&self->_modules, 0x0);
    objc_storeStrong((int64_t *)&self->_controllerLoadCompletion, 0x0);
    objc_storeStrong((int64_t *)&self->_controllerDownloadTimer, 0x0);
    return;
}

@end