@implementation OMIDtapjoyAdSession

-(void)addToRegistry {
    r0 = [OMIDtapjoyAdSessionRegistry getInstance];
    r0 = [r0 retain];
    [r0 addAdSession:self];
    [r0 release];
    return;
}

-(void *)friendlyObstructions {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_friendlyObstructions));
    [*(self + r20) compact];
    r0 = *(self + r20);
    r0 = [r0 allObjects];
    return r0;
}

-(void *)adEventsPublisher {
    r0 = self->_bridge;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithConfiguration:(void *)arg2 adSessionContext:(void *)arg3 error:(void * *)arg4 {
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
    r24 = arg4;
    r23 = arg3;
    r22 = arg2;
    r19 = [r22 retain];
    r20 = [r23 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 == 0x0) goto loc_10095e76c;

loc_10095e588:
    if (r20 == 0x0) goto loc_10095e77c;

loc_10095e58c:
    r0 = [NSUUID UUID];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 UUIDString];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_identifier));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    [r24 release];
    objc_storeStrong((int64_t *)&r21->_context, r23);
    objc_storeStrong((int64_t *)&r21->_configuration, r22);
    r0 = [NSPointerArray weakObjectsPointerArray];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_friendlyObstructions));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    r23 = [OMIDtapjoyBridge alloc];
    r24 = [[OMIDtapjoyJSExecutorFactory JSExecutorForContext:r21->_context] retain];
    r0 = [r23 initWithJSExecutor:r24];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_bridge));
    r8 = *(r21 + r23);
    *(r21 + r23) = r0;
    [r8 release];
    [r24 release];
    [*(r21 + r23) publishInitWithConfiguration:r19];
    r0 = [OMIDtapjoyEventFilter alloc];
    r0 = [r0 initWithFinalEventCode:0x10];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_eventFilter));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    r0 = [OMIDtapjoyAdSessionStatePublisher alloc];
    r0 = [r0 initWithCommandPublisher:*(r21 + r23)];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_statePublisher));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    [OMIDtapjoyMethodInvoker performSelectorAsync:@selector(addToRegistry) target:r21];
    [r21 setLastPublishedViewStateWasPopulated:0x1];
    goto loc_10095e76c;

loc_10095e76c:
    r22 = [r21 retain];
    goto loc_10095e7a4;

loc_10095e7a4:
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;

loc_10095e77c:
    [OMIDtapjoyError setOMIDErrorFor:r24 code:0x5e2 message:@"Context can not be nil."];
    r22 = 0x0;
    goto loc_10095e7a4;
}

-(void *)videoEventsPublisher {
    r0 = self->_bridge;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)mainAdView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_mainAdView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setMainAdView:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20->_eventFilter isFinalEventAccepted] & 0x1) == 0x0) {
            [OMIDtapjoyMethodInvoker performSelectorSync:@selector(internal_setMainAdView:) target:r20 argument:r19];
    }
    [r19 release];
    return;
}

-(void)internal_setMainAdView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r21 = (int64_t *)&r20->_mainAdView;
    r0 = objc_loadWeakRetained(r21);
    [r0 release];
    if (r0 != r19) {
            objc_storeWeak(r21, r19);
            [r20->_statePublisher cleanupAdState];
            if (r19 != 0x0) {
                    r0 = [r20 delegate];
                    r0 = [r0 retain];
                    [r0 adSession:r20 didRegisterAdView:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void)onStart {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adSessionDidStart:self];
    [r0 release];
    return;
}

-(void)start {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([r19->_eventFilter acceptEventWithCode:0x1] != 0x0) {
            r20 = r19->_bridge;
            r21 = r19->_identifier;
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_context));
            r22 = [[*(r19 + r23) toJSON] retain];
            r23 = [[*(r19 + r23) resourcesJSON] retain];
            [r20 publishStartEventWithAdSessionId:r21 JSONContext:r22 verificationParameters:r23];
            [r23 release];
            [r22 release];
            [r19 setDeviceVolume];
            [OMIDtapjoyMethodInvoker performSelectorAsync:@selector(onStart) target:r19];
    }
    return;
}

-(void)finish {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([r19->_eventFilter acceptEventWithCode:0x10] != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_bridge));
            [*(r19 + r23) publishFinishEvent];
            r0 = *(r19 + r23);
            r0 = [r0 jsExecutor];
            r29 = r29;
            r21 = [r0 retain];
            [OMIDtapjoyLightJSExecutor class];
            r22 = [r21 isKindOfClass:r2];
            [r21 release];
            if (r22 != 0x0) {
                    r0 = *(r19 + r23);
                    r0 = [r0 jsExecutor];
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [r0 timer];
                    r0 = [r0 retain];
                    [r0 cancelAllTimers];
                    [r0 release];
                    [r20 release];
            }
            [OMIDtapjoyMethodInvoker performSelectorAsync:@selector(onFinish) target:r19];
    }
    return;
}

-(void)onFinish {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adSessionDidFinish:self];
    [r0 release];
    return;
}

-(void)addFriendlyObstruction:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20->_eventFilter isFinalEventAccepted] & 0x1) == 0x0) {
            [OMIDtapjoyMethodInvoker performSelectorAsync:@selector(internal_addFriendlyObstruction:) target:r20 argument:r19];
    }
    [r19 release];
    return;
}

-(void)internal_addFriendlyObstruction:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 friendlyObstructions];
    r0 = [r0 retain];
    r22 = [r0 containsObject:r2];
    [r0 release];
    if ((r22 & 0x1) == 0x0) {
            [r20->_friendlyObstructions addPointer:r19];
    }
    [r19 release];
    return;
}

-(void)removeFriendlyObstruction:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20->_eventFilter isFinalEventAccepted] & 0x1) == 0x0) {
            [OMIDtapjoyMethodInvoker performSelectorAsync:@selector(internal_removeFriendlyObstruction:) target:r20 argument:r19];
    }
    [r19 release];
    return;
}

-(void)internal_removeFriendlyObstruction:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_friendlyObstructions));
    if ([*(r20 + r24) count] == 0x0) goto loc_10095eeb4;

loc_10095ee48:
    r21 = 0x0;
    goto loc_10095ee58;

loc_10095ee58:
    r0 = *(r20 + r24);
    r0 = [r0 pointerAtIndex:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == r19) goto loc_10095ee98;

loc_10095ee78:
    r23 = @selector(count);
    [r0 release];
    r21 = r21 + 0x1;
    if (r21 < objc_msgSend(*(r20 + r24), r23)) goto loc_10095ee58;

loc_10095eeb4:
    [r19 release];
    return;

loc_10095ee98:
    [*(r20 + r24) removePointerAtIndex:r21];
    [r19 release];
    goto loc_10095eeb4;
}

-(void)removeAllFriendlyObstructions {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([r19->_eventFilter isFinalEventAccepted] & 0x1) == 0x0) {
            [OMIDtapjoyMethodInvoker performSelectorAsync:@selector(internal_removeAllFriendlyObstructions) target:r19];
    }
    return;
}

-(void)internal_removeAllFriendlyObstructions {
    r0 = [NSPointerArray weakObjectsPointerArray];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_friendlyObstructions));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)logErrorWithType:(unsigned long long)arg2 message:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r21 = self;
    r0 = [arg3 retain];
    r20 = r0;
    if ([r0 length] != 0x0 && [r21->_eventFilter acceptAnyEventWithRequiredEventCodes:0x0] != 0x0) {
            [r21->_bridge publishErrorWithType:r19 errorMessage:r20];
    }
    [r20 release];
    return;
}

-(void)setDeviceVolume {
    r19 = self->_statePublisher;
    [self deviceVolume];
    [r19 publishDeviceVolume:r2];
    return;
}

-(void *)configuration {
    r0 = self->_configuration;
    return r0;
}

-(double)deviceVolume {
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    [r0 outputVolume];
    asm { fcvt       d8, s0 };
    r0 = [r19 release];
    return r0;
}

-(void *)identifier {
    r0 = self->_identifier;
    return r0;
}

-(void *)eventFilter {
    r0 = self->_eventFilter;
    return r0;
}

-(void *)statePublisher {
    r0 = self->_statePublisher;
    return r0;
}

-(void *)bridge {
    r0 = self->_bridge;
    return r0;
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

-(bool)lastPublishedViewStateWasPopulated {
    r0 = *(int8_t *)(int64_t *)&self->_lastPublishedViewStateWasPopulated;
    return r0;
}

-(void)setLastPublishedViewStateWasPopulated:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_lastPublishedViewStateWasPopulated = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_statePublisher, 0x0);
    objc_storeStrong((int64_t *)&self->_bridge, 0x0);
    objc_storeStrong((int64_t *)&self->_eventFilter, 0x0);
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_destroyWeak((int64_t *)&self->_mainAdView);
    objc_storeStrong((int64_t *)&self->_friendlyObstructions, 0x0);
    return;
}

@end