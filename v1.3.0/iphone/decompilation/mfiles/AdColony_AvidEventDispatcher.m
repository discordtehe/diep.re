@implementation AdColony_AvidEventDispatcher

-(void *)initWithShouldWaitForReadyEvent:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r20 = arg2;
    *(r31 + 0xffffffffffffffd0) = self;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setShouldWaitForReadyEvent:r20];
            r20 = [NSMutableArray new];
            [r19 setEventBuffer:r20];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(bool)isReadyEventReceived {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self readyEvent] retain];
    if (r19 != 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = [r20 shouldWaitForReadyEvent] ^ 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)postEvent:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
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
    r22 = [r0 retain];
    r21 = [@"deferredReady" isEqualToString:r2];
    [r22 release];
    if ((r21 & 0x1) != 0x0) {
            [r20 assertReadyEventAllowed];
            [r20 assertItIsTheFirstReadyEvent];
            [r20 setReadyEvent:r19];
    }
    [r20 assertReadyEventReceived];
    r0 = [r20 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 eventDispatcherShouldBufferEvent:r20];
    [r0 release];
    if (r24 != 0x0 && (r21 ^ 0x1) != 0x0) {
            r0 = [r20 eventBuffer];
            r0 = [r0 retain];
            [r0 addObject:r2];
            r0 = r20;
    }
    else {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 eventDispatcher:r20 didPushEvent:r19];
            r0 = r0;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)forwardEventsFromBufferToDelegate {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self readyEvent];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r19 delegate] retain];
            r20 = [[r19 readyEvent] retain];
            [r21 eventDispatcher:r19 didPushEvent:r20];
            [r20 release];
            [r21 release];
    }
    [r19 pushBufferToDelegate];
    return;
}

-(void)assertItIsTheFirstReadyEvent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self readyEvent];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            objc_exception_throw(objc_retainAutorelease([[NSException exceptionWithName:@"AvidAdSessionException" reason:@"The AVID ad session is already ready. Please ensure you are only calling recordReadyEventForDeferredAdSession once for the deferred AVID ad session." userInfo:0x0] retain]));
    }
    return;
}

-(void)assertReadyEventAllowed {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r29 = &saved_fp;
    if (([self shouldWaitForReadyEvent] & 0x1) == 0x0) {
            objc_exception_throw(objc_retainAutorelease([[NSException exceptionWithName:@"AvidAdSessionException" reason:@"The AVID ad session is not deferred and executing this method is not supported. Please specify isDeferred when creating the AVID ad session." userInfo:0x0] retain]));
    }
    return;
}

-(void)pushBufferToDelegate {
    r31 = r31 + 0xffffffffffffffa0 - 0xd0;
    r19 = self;
    r0 = [self eventBuffer];
    r0 = [r0 retain];
    [r0 copy];
    [r0 release];
    r0 = [r19 eventBuffer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r20 release];
    var_118 = 0x0;
    r0 = [r22 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r0 = [r19 delegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 eventDispatcher:r2 didPushEvent:r3];
                            [r26 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)assertReadyEventReceived {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r29 = &saved_fp;
    if (([self isReadyEventReceived] & 0x1) == 0x0) {
            objc_exception_throw(objc_retainAutorelease([[NSException exceptionWithName:@"AvidAdSessionException" reason:@"The AVID ad session is not ready. Please ensure you have called recordReadyEventForDeferredAdSession for the deferred AVID ad session before recording any video event." userInfo:0x0] retain]));
    }
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)readyEvent {
    r0 = self->_readyEvent;
    return r0;
}

-(void)setReadyEvent:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_readyEvent));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(bool)shouldWaitForReadyEvent {
    r0 = *(int8_t *)(int64_t *)&self->_shouldWaitForReadyEvent;
    return r0;
}

-(void *)eventBuffer {
    r0 = self->_eventBuffer;
    return r0;
}

-(void)setShouldWaitForReadyEvent:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldWaitForReadyEvent = arg2;
    return;
}

-(void)setEventBuffer:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_eventBuffer));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_eventBuffer, 0x0);
    objc_storeStrong((int64_t *)&self->_readyEvent, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end