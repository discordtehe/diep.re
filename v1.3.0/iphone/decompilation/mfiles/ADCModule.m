@implementation ADCModule

-(void)logMessage:(void *)arg2 {
    NSLog(@"ADCController: %@", _cmd);
    return;
}

-(void)beginMessagePassing:(void *)arg2 {
    r20 = **_NSInternalInconsistencyException;
    r21 = [NSStringFromSelector(_cmd) retain];
    [NSException raise:r20 format:@"You must override %@ in a subclass"];
    [r21 release];
    return;
}

-(void)pumpMessages:(void *)arg2 {
    r20 = **_NSInternalInconsistencyException;
    r21 = [NSStringFromSelector(_cmd) retain];
    [NSException raise:r20 format:@"You must override %@ in a subclass"];
    [r21 release];
    return;
}

-(void)queueMessage:(void *)arg2 {
    [arg2 retain];
    r0 = [self outbound];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = [self outbound];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r21 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)queueMessages:(void *)arg2 {
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
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r26 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            [r19 queueMessage:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)objectForIdentifier:(unsigned long long)arg2 {
    r19 = self->_boundObjects;
    r20 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    r19 = [[r19 objectForKeyedSubscript:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(int)bindObject:(void *)arg2 {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_nextBoundObjectIdentifier));
    r19 = *(int32_t *)(self + r8);
    *(int32_t *)(self + r8) = r19 + 0x1;
    r20 = self->_boundObjects;
    r23 = [arg2 retain];
    r21 = [[NSNumber numberWithInt:r19] retain];
    [r20 setObject:r23 forKeyedSubscript:r21];
    [r23 release];
    [r21 release];
    r0 = r19;
    return r0;
}

-(void)unbindObjectForIdentifier:(unsigned long long)arg2 {
    r19 = self->_boundObjects;
    [[NSNumber numberWithUnsignedInteger:arg2] retain];
    [r19 removeObjectForKey:r2];
    [r20 release];
    return;
}

-(unsigned long long)originNumber {
    r0 = self->_originNumber;
    return r0;
}

-(void)setOriginNumber:(unsigned long long)arg2 {
    self->_originNumber = arg2;
    return;
}

-(void *)info {
    r0 = self->_info;
    return r0;
}

-(void)setInfo:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_info, arg2);
    return;
}

-(void *)adSessionID {
    r0 = self->_adSessionID;
    return r0;
}

-(void)setAdSessionID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adSessionID, arg2);
    return;
}

-(void *)currentRenderView {
    r0 = self->_currentRenderView;
    return r0;
}

-(void)setCurrentRenderView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currentRenderView, arg2);
    return;
}

-(bool)active {
    r0 = *(int8_t *)(int64_t *)&self->_active;
    return r0;
}

-(void)setActive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_active = arg2;
    return;
}

-(bool)disabled {
    r0 = *(int8_t *)(int64_t *)&self->_disabled;
    return r0;
}

-(bool)adc3InitCalled {
    r0 = *(int8_t *)(int64_t *)&self->_adc3InitCalled;
    return r0;
}

-(void)setDisabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_disabled = arg2;
    return;
}

-(void)setAdc3InitCalled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_adc3InitCalled = arg2;
    return;
}

-(void *)outbound {
    r0 = self->_outbound;
    return r0;
}

-(void)setOutbound:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_outbound, arg2);
    return;
}

-(int)nextBoundObjectIdentifier {
    r0 = *(int32_t *)(int64_t *)&self->_nextBoundObjectIdentifier;
    return r0;
}

-(void)setNextBoundObjectIdentifier:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_nextBoundObjectIdentifier = arg2;
    return;
}

-(void *)boundObjects {
    r0 = self->_boundObjects;
    return r0;
}

-(void)setBoundObjects:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_boundObjects, arg2);
    return;
}

-(int)pumpsSinceLastMessage {
    r0 = *(int32_t *)(int64_t *)&self->_pumpsSinceLastMessage;
    return r0;
}

-(void)setPumpsSinceLastMessage:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_pumpsSinceLastMessage = arg2;
    return;
}

-(void *)dateOfLastMessage {
    r0 = self->_dateOfLastMessage;
    return r0;
}

-(void)setDateOfLastMessage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dateOfLastMessage, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dateOfLastMessage, 0x0);
    objc_storeStrong((int64_t *)&self->_boundObjects, 0x0);
    objc_storeStrong((int64_t *)&self->_outbound, 0x0);
    objc_storeStrong((int64_t *)&self->_currentRenderView, 0x0);
    objc_storeStrong((int64_t *)&self->_adSessionID, 0x0);
    objc_storeStrong((int64_t *)&self->_info, 0x0);
    return;
}

@end