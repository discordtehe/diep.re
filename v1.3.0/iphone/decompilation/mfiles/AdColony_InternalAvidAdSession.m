@implementation AdColony_InternalAvidAdSession

+(void *)avidAdSessionWithId:(void *)arg2 context:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self alloc] initWithId:r21 context:r19];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)sessionType {
    objc_retainAutorelease(@"");
    return @"";
}

+(void *)mediaType {
    objc_retainAutorelease(@"");
    return @"";
}

-(void *)avidAdSessionId {
    r0 = self->_internalContext;
    r0 = [r0 avidAdSessionId];
    return r0;
}

-(void *)initWithId:(void *)arg2 context:(void *)arg3 {
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r24 = [[[r21 class] sessionType] retain];
            r23 = [[[r21 class] mediaType] retain];
            r0 = [AdColony_InternalAvidAdSessionContext contextWithId:r19 avidSessionType:r24 mediaType:r23 context:r20];
            r0 = [r0 retain];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_internalContext));
            r8 = *(r21 + r25);
            *(r21 + r25) = r0;
            [r8 release];
            [r23 release];
            [r24 release];
            r0 = [AdColony_AvidBridge new];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_avidBridge));
            r8 = *(r21 + r23);
            *(r21 + r23) = r0;
            [r8 release];
            [*(r21 + r23) setAvidAdSessionContext:*(r21 + r25)];
            [*(r21 + r23) setDelegate:r21];
            r25 = [AdColony_AvidEventDispatcher alloc];
            r25 = [r25 initWithShouldWaitForReadyEvent:[r20 isDeferred]];
            [r21 setEventDispatcher:r25];
            [r25 release];
            r0 = [r21 eventDispatcher];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setDelegate:r21];
            [r0 release];
            if ([r20 isDeferred] != 0x0) {
                    r0 = [r21 makeDeferredAdSessionListener];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r21 set_avidDeferredAdSessionListener:r24];
                    [r24 release];
            }
            [r21 setIsReady:[r20 isDeferred] ^ 0x1];
            r0 = [AdColony_AvidObstructionsWhiteList new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_obstructionsWhiteList));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r21 onViewChanged];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)avidAdSessionContext {
    r0 = self->_internalContext;
    r0 = [r0 avidAdSessionContext];
    return r0;
}

-(void *)avidDeferredAdSessionListener {
    [self checkAccessToDeferredAdSessionListener];
    r0 = [self _avidDeferredAdSessionListener];
    return r0;
}

-(void)checkAccessToDeferredAdSessionListener {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self avidAdSessionContext];
    r0 = [r0 retain];
    r21 = [r0 isDeferred];
    [r0 release];
    if ((r21 & 0x1) == 0x0) {
            [r19 throwDeferredAdSessionListenerAccessedOnNonDeferredSession];
    }
    return;
}

-(void)throwDeferredAdSessionListenerAccessedOnNonDeferredSession {
    r0 = [NSException exceptionWithName:**_NSInternalInconsistencyException reason:@"avidDeferredAdSessionListener is not accessible on a session which is not deferred." userInfo:0x0];
    r0 = [r0 retain];
    [r0 raise];
    [r0 release];
    return;
}

-(bool)isEmpty {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self view];
    r0 = [r0 retain];
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)registerAdView:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20 doesManageView:r19] & 0x1) == 0x0) {
            [r20 onViewChanged];
            objc_storeWeak((int64_t *)&r20->_view, r19);
            [r20 onViewRegistered];
            [r20 updateIsActiveIfNeeded];
    }
    [r19 release];
    return;
}

-(void)unregisterAdView:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self doesManageView:arg2] != 0x0) {
            [r19 onViewChanged];
            [r19 cleanupViewState];
            objc_storeWeak((int64_t *)&r19->_view, 0x0);
            [r19 onViewUnregistered];
            [r19 updateIsActiveIfNeeded];
    }
    return;
}

-(bool)doesManageView:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self view];
    r0 = [r0 retain];
    r19 = [r0 isEqual:r2];
    [r22 release];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)onStart {
    return;
}

-(void)onEnd {
    [self cleanupViewState];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adSessionDidEnd:self];
    [r0 release];
    [self setOnEndCalled:0x1];
    return;
}

-(void)onViewRegistered {
    return;
}

-(void)cleanupViewState {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self isActive] != 0x0) {
            r19 = [[r19 avidBridge] retain];
            r20 = [[AdColony_AvidDictionaryUtil emptyState] retain];
            [r19 publishNativeViewState:r20];
            [r20 release];
            [r19 release];
    }
    return;
}

-(void)onViewUnregistered {
    return;
}

-(void)setAppState:(long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    if ([self isActive] != 0x0) {
            r0 = [r20 avidBridge];
            r0 = [r0 retain];
            [r0 publishAppState:r19];
            [r0 release];
    }
    return;
}

-(void)publishNativeViewStateWithCommand:(void *)arg2 timestamp:(double)arg3 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r19->_lastUpdate < d0) {
            r19->_adState = 0x1;
            r21 = [r2 retain];
            r0 = [r19 avidBridge];
            r0 = [r0 retain];
            [r0 publishCommand:r21];
            [r21 release];
            [r0 release];
    }
    return;
}

-(void)publishEmptyNativeViewStateWithCommand:(void *)arg2 timestamp:(double)arg3 {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r20->_lastUpdate < d8) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_adState));
            if (*(r20 + r8) != 0x2) {
                    *(r20 + r8) = 0x2;
                    r0 = [r20 avidBridge];
                    r0 = [r0 retain];
                    [r0 publishCommand:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void)publishReadyEvent {
    [self setIsReady:0x1];
    r0 = [self avidBridge];
    r0 = [r0 retain];
    [r0 publishReadyEvent];
    [r0 release];
    [self updateIsActiveIfNeeded];
    return;
}

-(void)updateIsActiveIfNeeded {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self avidBridge];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 isAvidJsInjected] != 0x0 && [r19 isReady] != 0x0) {
            r21 = [r19 isEmpty] ^ 0x1;
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    if ((r21 ^ [r19 isActive]) == 0x1) {
            [r19 setIsActive:r21];
            r21 = [r19 isActive];
            r20 = [[r19 delegate] retain];
            if (r21 != 0x0) {
                    r1 = @selector(adSessionBecomeActive:);
            }
            else {
                    r1 = @selector(adSessionResignActive:);
            }
            objc_msgSend(r20, r1);
            [r20 release];
    }
    return;
}

-(void *)makeDeferredAdSessionListener {
    r20 = [AdColony_AvidDeferredAdSessionListenerImpl new];
    r19 = [[self eventDispatcher] retain];
    [r20 setDispatcher:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)avidBridgeDidInjectAvid {
    r0 = [self eventDispatcher];
    r0 = [r0 retain];
    [r0 forwardEventsFromBufferToDelegate];
    [r0 release];
    [self updateIsActiveIfNeeded];
    return;
}

-(void)eventDispatcher:(void *)arg2 didPushEvent:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [arg3 retain];
    [r19 assertSessionIsNotClosed];
    r20 = [arg3 type];
    [r22 release];
    r20 = [r20 retain];
    r21 = [@"deferredReady" isEqualToString:r2];
    [r20 release];
    if (r21 != 0x0) {
            [r19 publishReadyEvent];
    }
    return;
}

-(bool)eventDispatcherShouldBufferEvent:(void *)arg2 {
    r0 = [self avidBridge];
    r0 = [r0 retain];
    r20 = [r0 isAvidJsInjected] ^ 0x1;
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)assertSessionIsNotClosed {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r29 = &saved_fp;
    if ([self onEndCalled] != 0x0) {
            objc_exception_throw(objc_retainAutorelease([[NSException exceptionWithName:@"AvidAdSessionException" reason:@"The AVID ad session is finished already. A finished session could not receive any events." userInfo:0x0] retain]));
    }
    return;
}

-(void)onViewChanged {
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    self->_lastUpdate = d0;
    [r0 release];
    self->_adState = 0x0;
    return;
}

-(void *)view {
    r0 = objc_loadWeakRetained((int64_t *)&self->_view);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isActive {
    r0 = *(int8_t *)(int64_t *)&self->_isActive;
    return r0;
}

-(void)setIsActive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isActive = arg2;
    return;
}

-(bool)onEndCalled {
    r0 = *(int8_t *)(int64_t *)&self->_onEndCalled;
    return r0;
}

-(void)setOnEndCalled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_onEndCalled = arg2;
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)eventDispatcher {
    r0 = self->_eventDispatcher;
    return r0;
}

-(void)setEventDispatcher:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_eventDispatcher));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void *)obstructionsWhiteList {
    r0 = self->_obstructionsWhiteList;
    return r0;
}

-(void *)avidBridge {
    r0 = self->_avidBridge;
    return r0;
}

-(double)lastUpdate {
    r0 = self;
    return r0;
}

-(unsigned long long)adState {
    r0 = self->_adState;
    return r0;
}

-(void *)_avidDeferredAdSessionListener {
    r0 = self->__avidDeferredAdSessionListener;
    return r0;
}

-(void)set_avidDeferredAdSessionListener:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(__avidDeferredAdSessionListener));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(bool)isReady {
    r0 = *(int8_t *)(int64_t *)&self->_isReady;
    return r0;
}

-(void)setIsReady:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isReady = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->__avidDeferredAdSessionListener, 0x0);
    objc_storeStrong((int64_t *)&self->_avidBridge, 0x0);
    objc_storeStrong((int64_t *)&self->_obstructionsWhiteList, 0x0);
    objc_storeStrong((int64_t *)&self->_eventDispatcher, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_destroyWeak((int64_t *)&self->_view);
    objc_storeStrong((int64_t *)&self->_internalContext, 0x0);
    return;
}

@end