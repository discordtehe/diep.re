@implementation GADOMIDAdSession

-(void)addToRegistry {
    r0 = [GADOMIDAdSessionRegistry getInstance];
    r0 = [r0 retain];
    [r0 addAdSession:self];
    [r0 release];
    return;
}

-(void *)friendlyObstructions {
    [self->_friendlyObstructions compact];
    r0 = [self->_friendlyObstructions allObjects];
    return r0;
}

-(void *)adEventsPublisher {
    r0 = self->_bridge;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithConfiguration:(void *)arg2 adSessionContext:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x90;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x20, arg2);
    objc_storeStrong(r29 - 0x28, arg3);
    var_30 = arg4;
    r0 = [[&var_40 super] init];
    var_10 = r0;
    objc_storeStrong(r29 - 0x10, r0);
    if (var_10 == 0x0) goto loc_1008cd208;

loc_1008cceb0:
    if (0x0 != 0x0) goto loc_1008ccf04;

loc_1008cceb8:
    [GADOMIDError setGADOMIDErrorFor:var_30 code:0x5e2 message:@"Context can not be nil."];
    var_8 = 0x0;
    goto loc_1008cd220;

loc_1008cd220:
    objc_storeStrong(r29 - 0x28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = var_8;
    return r0;

loc_1008ccf04:
    r0 = [NSUUID UUID];
    r0 = [r0 retain];
    var_70 = r0;
    r0 = [r0 UUIDString];
    r0 = [r0 retain];
    r9 = var_10->_identifier;
    var_10->_identifier = r0;
    [r9 release];
    [var_70 release];
    objc_storeStrong((int64_t *)&var_10->_context, 0x0);
    objc_storeStrong((int64_t *)&var_10->_configuration, 0x0);
    r0 = [NSPointerArray weakObjectsPointerArray];
    r0 = [r0 retain];
    r9 = var_10->_friendlyObstructions;
    var_10->_friendlyObstructions = r0;
    [r9 release];
    var_78 = [GADOMIDBridge alloc];
    r0 = [GADOMIDJSExecutorFactory JSExecutorForContext:var_10->_context];
    r29 = r29;
    var_80 = [r0 retain];
    r0 = [var_78 initWithJSExecutor:var_80];
    r9 = var_10->_bridge;
    var_10->_bridge = r0;
    [r9 release];
    [var_80 release];
    [var_10->_bridge publishInitWithConfiguration:0x0];
    r0 = [GADOMIDEventFilter alloc];
    r0 = [r0 initWithFinalEventCode:0x10];
    r9 = var_10->_eventFilter;
    var_10->_eventFilter = r0;
    [r9 release];
    r0 = [GADOMIDAdSessionStatePublisher alloc];
    r0 = [r0 initWithCommandPublisher:var_10->_bridge];
    r9 = var_10->_statePublisher;
    var_10->_statePublisher = r0;
    [r9 release];
    [GADOMIDMethodInvoker performSelectorAsync:@selector(addToRegistry) target:var_10];
    *(int8_t *)(int64_t *)&var_10->_lastPublishedViewStateWasPopulated = 0x1;
    goto loc_1008cd208;

loc_1008cd208:
    var_8 = [var_10 retain];
    goto loc_1008cd220;
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

-(void)onStart {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 adSessionDidStart:self];
    [r0 release];
    return;
}

-(void)setMainAdView:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    r0 = objc_storeStrong(&var_18, r2);
    if (([var_8->_eventFilter isFinalEventAccepted] & 0x1) != 0x0) {
            var_1C = 0x1;
    }
    else {
            r2 = @selector(internal_setMainAdView:);
            [GADOMIDMethodInvoker performSelectorSync:r2 target:var_8 argument:var_18];
            var_1C = 0x0;
    }
    r0 = objc_storeStrong(&var_18, 0x0);
    r8 = var_1C - 0x1;
    if (r8 > 0x0) {
            r31 = r31 - 0x60;
            var_30 = r29;
            stack[-56] = r30;
            r29 = &var_30;
            var_8 = r0;
            objc_storeStrong(r29 - 0x18, r2);
            r0 = objc_loadWeakRetained((int64_t *)&var_8->_mainAdView);
            [r0 release];
            if (r0 == 0x0) {
                    var_1C = 0x1;
            }
            else {
                    objc_storeWeak((int64_t *)&var_8->_mainAdView, 0x0);
                    [var_8->_statePublisher cleanupAdState];
                    if (0x0 != 0x0) {
                            r0 = [var_8 delegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 adSession:var_8 didRegisterAdView:0x0];
                            [r0 release];
                    }
                    var_1C = 0x0;
            }
            r0 = objc_storeStrong(r29 - 0x18, 0x0);
            r8 = var_1C - 0x1;
            if (r8 > 0x0) {
                    r31 = r31 - 0x40;
                    var_90 = r29;
                    stack[-152] = r30;
                    r29 = &var_90;
                    var_8 = r0;
                    if (([var_8->_eventFilter acceptEventWithCode:0x1] & 0x1) != 0x0) {
                            var_A8 = var_8->_bridge;
                            var_B0 = var_8->_identifier;
                            var_B8 = [[var_8->_context toJSON] retain];
                            var_C0 = [[var_8->_context resourcesJSON] retain];
                            [var_A8 publishStartEventWithAdSessionId:var_B0 JSONContext:var_B8 verificationParameters:var_C0];
                            [var_C0 release];
                            [var_B8 release];
                            [var_8 setDeviceVolume];
                            [GADOMIDMethodInvoker performSelectorAsync:@selector(onStart) target:var_8];
                    }
            }
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

-(void)finish {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    if (([var_8->_eventFilter acceptEventWithCode:0x10] & 0x1) != 0x0) {
            [var_8->_bridge publishFinishEvent];
            r0 = [var_8->_bridge jsExecutor];
            r29 = r29;
            var_18 = [r0 retain];
            var_24 = [var_18 isKindOfClass:[GADOMIDLightJSExecutor class]];
            [var_18 release];
            if ((var_24 & 0x1) != 0x0) {
                    r0 = [var_8->_bridge jsExecutor];
                    r0 = [r0 retain];
                    var_30 = r0;
                    r0 = [r0 timer];
                    r0 = [r0 retain];
                    [r0 cancelAllTimers];
                    [r0 release];
                    [var_30 release];
            }
            [GADOMIDMethodInvoker performSelectorAsync:@selector(onFinish) target:var_8];
    }
    return;
}

-(void)addFriendlyObstruction:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    r0 = objc_storeStrong(&var_18, r2);
    if (([var_8->_eventFilter isFinalEventAccepted] & 0x1) != 0x0) {
            var_1C = 0x1;
    }
    else {
            r2 = @selector(internal_addFriendlyObstruction:);
            [GADOMIDMethodInvoker performSelectorAsync:r2 target:var_8 argument:var_18];
            var_1C = 0x0;
    }
    r0 = objc_storeStrong(&var_18, 0x0);
    r8 = var_1C - 0x1;
    if (r8 > 0x0) {
            r31 = r31 - 0x40;
            var_30 = r29;
            stack[-56] = r30;
            var_8 = r0;
            r0 = objc_storeStrong(&var_48, r2);
            r0 = [var_8 friendlyObstructions];
            r0 = [r0 retain];
            var_54 = [r0 containsObject:var_48] ^ 0x1;
            [r0 release];
            if ((var_54 & 0x1) != 0x0) {
                    [var_8->_friendlyObstructions addPointer:var_48];
            }
            objc_storeStrong(&var_48, 0x0);
    }
    return;
}

-(void)removeAllFriendlyObstructions {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = self;
    if (([var_8->_eventFilter isFinalEventAccepted] & 0x1) == 0x0) {
            [GADOMIDMethodInvoker performSelectorAsync:@selector(internal_removeAllFriendlyObstructions) target:var_8];
    }
    return;
}

-(void)internal_removeAllFriendlyObstructions {
    r0 = [NSPointerArray weakObjectsPointerArray];
    r0 = [r0 retain];
    r9 = self->_friendlyObstructions;
    self->_friendlyObstructions = r0;
    [r9 release];
    return;
}

-(void)removeFriendlyObstruction:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    r0 = objc_storeStrong(&var_18, r2);
    if (([var_8->_eventFilter isFinalEventAccepted] & 0x1) != 0x0) {
            var_1C = 0x1;
    }
    else {
            r2 = @selector(internal_removeFriendlyObstruction:);
            [GADOMIDMethodInvoker performSelectorAsync:r2 target:var_8 argument:var_18];
            var_1C = 0x0;
    }
    r0 = objc_storeStrong(&var_18, 0x0);
    r8 = var_1C - 0x1;
    if (r8 > 0x0) goto -[GADOMIDAdSession internal_removeFriendlyObstruction:];

.l1:
    return;

-[GADOMIDAdSession internal_removeFriendlyObstruction:]:
    r31 = r31 - 0x50;
    var_30 = r29;
    stack[-56] = r30;
    r29 = &var_30;
    var_8 = r0;
    objc_storeStrong(r29 - 0x18, r2);
    var_50 = 0x0;
    goto loc_1008cdcb0;

loc_1008cdcb0:
    if (var_50 >= [var_8->_friendlyObstructions count]) goto loc_1008cddc4;

loc_1008cdcf0:
    r0 = [var_8->_friendlyObstructions pointerAtIndex:var_50];
    r29 = r29;
    if ([r0 retain] == 0x0) {
            [var_8->_friendlyObstructions removePointerAtIndex:var_50];
            var_5C = 0x2;
    }
    else {
            var_5C = 0x0;
    }
    r0 = objc_storeStrong(&var_58, 0x0);
    var_6C = var_5C;
    if (var_5C == 0x0) goto loc_1008cddb4;

loc_1008cdd9c:
    if (r9 != 0x0) {
            -[GADOMIDAdSession removeAllFriendlyObstructions](r0, 0x0);
    }
    else {
            objc_storeStrong(r29 - 0x18, 0x0);
    }
    return;

loc_1008cddb4:
    var_50 = var_50 + 0x1;
    goto loc_1008cdcb0;

loc_1008cddc4:
    objc_storeStrong(r29 - 0x18, 0x0);
    return;
}

-(void)logErrorWithType:(unsigned long long)arg2 message:(void *)arg3 {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = self;
    var_18 = arg2;
    r0 = objc_storeStrong(&var_20, arg3);
    if ([var_20 length] >= 0x0 && ([var_8->_eventFilter acceptAnyEventWithRequiredEventCodes:0x0] & 0x1) != 0x0) {
            [var_8->_bridge publishErrorWithType:var_18 errorMessage:var_20];
    }
    objc_storeStrong(&var_20, 0x0);
    return;
}

-(void)setDeviceVolume {
    var_18 = self->_statePublisher;
    [self deviceVolume];
    [var_18 publishDeviceVolume:r2];
    return;
}

-(double)deviceVolume {
    r0 = [AVAudioSession sharedInstance];
    r0 = [r0 retain];
    var_18 = r0;
    [r0 outputVolume];
    asm { fcvt       d0, s0 };
    r0 = [var_18 release];
    return r0;
}

-(void *)configuration {
    r0 = self->_configuration;
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

-(void *)bridge {
    r0 = self->_bridge;
    return r0;
}

-(void *)statePublisher {
    r0 = self->_statePublisher;
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
    r0 = *(int8_t *)(int64_t *)&self->_lastPublishedViewStateWasPopulated & 0x1;
    return r0;
}

-(void)setLastPublishedViewStateWasPopulated:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_lastPublishedViewStateWasPopulated = arg2 & 0x1;
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