@implementation ADCContainerMPAPI

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [NSMutableArray new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_trackedTouches));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)create:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x1e0;
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
    r24 = self;
    r19 = [r2 retain];
    r27 = [r3 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"ad_session_id"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1001e087c;

loc_1001e0678:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    [r20 release];
    if (r22 == 0x0) goto loc_1001e08b4;

loc_1001e06e4:
    var_1B0 = r24;
    var_1A8 = r27;
    r0 = [r19 dict];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r25 = [r0 retain];
    [r20 release];
    var_1B8 = r25;
    if (r25 != 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 boolValue];
            [r0 release];
            [r20 release];
            [r22 setShouldPollViewability:[r25 boolValue]];
            objc_initWeak(r29 - 0xb0, r22);
            [ADCViewabilityMonitor alloc];
            objc_copyWeak((r29 - 0x80) + 0x28, r29 - 0xb0);
            r0 = [r21 retain];
            r20 = [r28 initWithSessionID:r0 advancedMeasurementEnabled:r23 viewabilityUpdateHandler:r29 - 0x80];
            [r22 setViewabilityMonitor:r20];
            [r20 release];
            [r0 release];
            objc_destroyWeak((r29 - 0x80) + 0x28);
            objc_destroyWeak(r29 - 0xb0);
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainerMPAPI create:]" line:0x7c withFormat:@"No value supplied for configuring viewability. Will not poll visibility for ad session: %@"];
    }
    r0 = [r19 dict];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r24 = [r0 retain];
    [r20 release];
    if (r24 == 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r24 = [r0 retain];
            [r20 release];
            if (r24 != 0x0) {
                    r28 = [ADCUtil getOrientationMaskFromAdColonyOrientation:[r24 integerValue]];
            }
            else {
                    r28 = 0x18;
            }
    }
    else {
            r28 = [ADCUtil getOrientationMaskFromAdColonyOrientation:[r24 integerValue]];
    }
    var_A8 = r29 - 0xb0;
    if ([ADCUtil appSupportedOrientations] != 0x1e) goto loc_1001e0a74;

loc_1001e0a20:
    if ([NSThread isMainThread] == 0x0) goto loc_1001e0ac8;

loc_1001e0a38:
    r0 = [ADCContainer alloc];
    r0 = [r0 initWithDelegate:var_1B0 supportedOrientations:r28];
    r8 = *(var_A8 + 0x28);
    *(var_A8 + 0x28) = r0;
    r0 = r8;
    goto loc_1001e0c2c;

loc_1001e0c2c:
    [r0 release];
    goto loc_1001e0c30;

loc_1001e0c30:
    [*(var_A8 + 0x28) setAdSessionID:r21];
    r0 = [ADCMessage numberValueFromMessage:r2 withKey:r3];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPAPI create:]" line:0xae withFormat:@"Fullscreen flag not supplied"];
    }
    r20 = [r25 boolValue];
    r27 = var_1A8;
    r26 = var_1B8;
    [*(var_A8 + 0x28) setIsFullscreen:r20];
    if ((r20 & 0x1) == 0x0) goto loc_1001e0d04;

loc_1001e0ce8:
    [r22 setFullscreenContainer:*(var_A8 + 0x28)];
    goto loc_1001e0e04;

loc_1001e0e04:
    [*(var_A8 + 0x28) setIdentifier:[r27 bindObject:*(var_A8 + 0x28)]];
    goto loc_1001e0ec0;

loc_1001e0ec0:
    [r25 release];
    _Block_object_dispose(r29 - 0xb0, 0x8);
    [0x0 release];
    [r24 release];
    [r26 release];
    goto loc_1001e0eec;

loc_1001e0eec:
    [r22 release];
    goto loc_1001e0ef4;

loc_1001e0ef4:
    [r21 release];
    [r27 release];
    [r19 release];
    return;

loc_1001e0d04:
    r28 = r26;
    r0 = [ADCMessage numberValueFromMessage:r2 withKey:r3];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) goto loc_1001e0e38;

loc_1001e0d34:
    r0 = [ADCMessage numberValueFromMessage:r2 withKey:r3];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1001e0e78;

loc_1001e0d60:
    r27 = [r26 integerValue];
    r0 = [r23 integerValue];
    if ((r0 | r27) != 0x0) {
            dispatch_async(*__dispatch_main_q, &var_1A0);
    }
    [r22 setCustomizableContainer:*(var_A8 + 0x28)];
    [r23 release];
    [r26 release];
    r27 = var_1A8;
    r26 = r28;
    goto loc_1001e0e04;

loc_1001e0e78:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPAPI create:]" line:0xbb withFormat:@"Height value not supplied"];
    [r23 release];
    goto loc_1001e0eb4;

loc_1001e0eb4:
    [r26 release];
    r26 = r28;
    goto loc_1001e0ec0;

loc_1001e0e38:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPAPI create:]" line:0xb6 withFormat:@"Width value not supplied"];
    goto loc_1001e0eb4;

loc_1001e0ac8:
    dispatch_sync(*__dispatch_main_q, &var_E8);
    goto loc_1001e0c30;

loc_1001e0a74:
    r0 = [r19 dict];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r23 = [r0 retain];
    [r20 release];
    if (r23 == 0x0) goto loc_1001e0b18;

loc_1001e0ab4:
    [r23 intValue];
    goto loc_1001e0b68;

loc_1001e0b68:
    asm { sxtw       x20, w0 };
    goto loc_1001e0b6c;

loc_1001e0b6c:
    if ([NSThread isMainThread] != 0x0) {
            sub_1001e119c(&var_128);
    }
    else {
            dispatch_sync(*__dispatch_main_q, &var_168);
    }
    r0 = r23;
    goto loc_1001e0c2c;

loc_1001e0b18:
    r0 = [r19 dict];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r23 = [r0 retain];
    [r20 release];
    if (r23 == 0x0) goto loc_1001e0f2c;

loc_1001e0b58:
    [r23 intValue];
    goto loc_1001e0b68;

loc_1001e0f2c:
    r20 = 0x1;
    goto loc_1001e0b6c;

loc_1001e08b4:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPAPI create:]" line:0x76 withFormat:@"A session with the provided id: %@ has not been registered"];
    goto loc_1001e0eec;

loc_1001e087c:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPAPI create:]" line:0x71 withFormat:@"Tried to create a container with an invalid session id"];
    goto loc_1001e0ef4;
}

-(void)destroy:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    r20 = [r3 retain];
    r0 = [ADCContainerMPContext alloc];
    r0 = [r0 initWithMessage:r19];
    r21 = r0;
    if ([r0 isValid] != 0x0) {
            r0 = [r21 container];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 isFullscreen];
            [r0 release];
            if (r24 != 0x0) {
                    if (([NSThread isMainThread] & 0x1) != 0x0) {
                            var_38 = [r21 retain];
                            sub_1001e15bc(&var_58);
                            r0 = [r23 session];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setFullscreenContainer:0x0];
                            [r0 release];
                            r0 = var_38;
                    }
                    else {
                            var_60 = [r21 retain];
                            dispatch_sync(*__dispatch_main_q, &var_80);
                            r0 = [r23 session];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setFullscreenContainer:0x0];
                            [r0 release];
                            r0 = var_60;
                    }
                    r2 = 0x0;
                    [r0 release];
            }
            r0 = [r21 container];
            r0 = [r0 retain];
            r22 = r0;
            [r0 identifier];
            asm { sxtw       x2, w0 };
            [r20 unbindObjectForIdentifier:r2];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)moveViewToIndex:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r19 = [r2 retain];
    r0 = [ADCContainerMPContext alloc];
    r0 = [r0 initWithMessage:r19];
    r20 = r0;
    if ([r0 isValid] == 0x0) goto loc_1001e1a84;

loc_1001e1728:
    r0 = [ADCMessage numberValueFromMessage:r2 withKey:r3];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1001e1810;

loc_1001e175c:
    r24 = [[r20 container] retain];
    r0 = [r24 objectForIdentifier:[r21 unsignedIntegerValue]];
    r29 = r29;
    r22 = [r0 retain];
    [r24 release];
    if (r22 == 0x0) goto loc_1001e1a20;

loc_1001e17b8:
    [ADCWebViewModule class];
    if ([r22 isKindOfClass:r2] == 0x0) goto loc_1001e1878;

loc_1001e17ec:
    r0 = [r22 view];
    r29 = r29;
    r24 = [r0 retain];
    goto loc_1001e18b0;

loc_1001e18b0:
    r27 = [[r24 superview] retain];
    r0 = [r20 container];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 view];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    [r27 release];
    if (r27 != r0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPAPI moveViewToIndex:]" line:0x102 withFormat:@"View %@ isn't a child of container's view"];
    }
    else {
            r23 = [[ADCMessage numberValueFromMessage:r2 withKey:r3] retain];
            if (r23 != 0x0) {
                    var_68 = [r20 retain];
                    var_60 = [r24 retain];
                    var_58 = [r23 retain];
                    dispatch_async(*__dispatch_main_q, &var_88);
                    [var_58 release];
                    [var_60 release];
                    [var_68 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPAPI moveViewToIndex:]" line:0x108 withFormat:@"Index not supplied"];
            }
            [r23 release];
    }
    [r24 release];
    goto loc_1001e1a74;

loc_1001e1a74:
    [r22 release];
    goto loc_1001e1a7c;

loc_1001e1a7c:
    [r21 release];
    goto loc_1001e1a84;

loc_1001e1a84:
    [r20 release];
    [r19 release];
    return;

loc_1001e1878:
    r26 = @selector(isKindOfClass:);
    [UIView class];
    if (objc_msgSend(r22, r26) == 0x0) goto loc_1001e1a20;

loc_1001e189c:
    r24 = [r22 retain];
    goto loc_1001e18b0;

loc_1001e1a20:
    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    goto loc_1001e1a74;

loc_1001e1810:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPAPI moveViewToIndex:]" line:0xed withFormat:@"View id not supplied"];
    goto loc_1001e1a7c;
}

-(void)moveViewToFront:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
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
    r19 = [r2 retain];
    r0 = [ADCContainerMPContext alloc];
    r0 = [r0 initWithMessage:r19];
    r20 = r0;
    if ([r0 isValid] == 0x0) goto loc_1001e1ee0;

loc_1001e1c00:
    r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"view_id"];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1001e1ce4;

loc_1001e1c30:
    r24 = [[r20 container] retain];
    r0 = [r24 objectForIdentifier:[r21 unsignedIntegerValue]];
    r29 = r29;
    r22 = [r0 retain];
    [r24 release];
    if (r22 == 0x0) goto loc_1001e1ec4;

loc_1001e1c8c:
    [ADCWebViewModule class];
    if ([r22 isKindOfClass:r2] == 0x0) goto loc_1001e1d4c;

loc_1001e1cc0:
    r0 = [r22 view];
    r29 = r29;
    r24 = [r0 retain];
    goto loc_1001e1d84;

loc_1001e1d84:
    r26 = [[r24 superview] retain];
    r0 = [r20 container];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 view];
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    [r26 release];
    if (r26 != r0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPAPI moveViewToFront:]" line:0x12f withFormat:@"View %@ isn't a child of container's view"];
            r0 = r24;
    }
    else {
            var_50 = [r20 retain];
            [r24 retain];
            dispatch_async(*__dispatch_main_q, &var_70);
            [r24 release];
            [var_50 release];
            r0 = r23;
    }
    [r0 release];
    goto loc_1001e1ed0;

loc_1001e1ed0:
    [r22 release];
    goto loc_1001e1ed8;

loc_1001e1ed8:
    [r21 release];
    goto loc_1001e1ee0;

loc_1001e1ee0:
    [r20 release];
    [r19 release];
    return;

loc_1001e1d4c:
    r25 = @selector(isKindOfClass:);
    [UIView class];
    if (objc_msgSend(r22, r25) == 0x0) goto loc_1001e1ec4;

loc_1001e1d70:
    r24 = [r22 retain];
    goto loc_1001e1d84;

loc_1001e1ec4:
    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    goto loc_1001e1ed0;

loc_1001e1ce4:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerMPAPI moveViewToFront:]" line:0x11a withFormat:@"View id not supplied"];
    goto loc_1001e1ed8;
}

-(void)container:(void *)arg2 touchesBegan:(void *)arg3 inView:(void *)arg4 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [arg4 retain];
    [r0 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainerMPAPI container:touchesBegan:inView:]" line:0x13d withFormat:@"Touches began in view with id: %ld"];
    r23 = [[AdColony sharedInstance] retain];
    var_50 = r22;
    r22 = [r22 retain];
    r19 = [r21 retain];
    r20 = [r0 retain];
    [r23 performBlockOnWorkerThread:&var_70 mode:0x1];
    [r23 release];
    [r0 release];
    [r21 release];
    [var_50 release];
    [r20 release];
    [r19 release];
    [r22 release];
    return;
}

-(void)container:(void *)arg2 touchesMoved:(void *)arg3 inView:(void *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [arg4 retain];
    [r0 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainerMPAPI container:touchesMoved:inView:]" line:0x16b withFormat:@"Touches moved in view with id: %ld"];
    r22 = [[AdColony sharedInstance] retain];
    var_48 = r21;
    r21 = [r21 retain];
    var_40 = r20;
    r20 = [r20 retain];
    r19 = [r0 retain];
    [r22 performBlockOnWorkerThread:&var_68 mode:0x1];
    [r22 release];
    [r0 release];
    [var_40 release];
    [var_48 release];
    [r19 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)container:(void *)arg2 touchesEnded:(void *)arg3 inView:(void *)arg4 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [arg4 retain];
    [r0 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainerMPAPI container:touchesEnded:inView:]" line:0x196 withFormat:@"Touches ended in view with id: %ld"];
    r23 = [[AdColony sharedInstance] retain];
    var_50 = r22;
    r22 = [r22 retain];
    r19 = [r21 retain];
    r20 = [r0 retain];
    [r23 performBlockOnWorkerThread:&var_70 mode:0x1];
    [r23 release];
    [r0 release];
    [r21 release];
    [var_50 release];
    [r20 release];
    [r19 release];
    [r22 release];
    return;
}

-(void)container:(void *)arg2 touchesCancelled:(void *)arg3 inView:(void *)arg4 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [arg4 retain];
    [r0 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainerMPAPI container:touchesCancelled:inView:]" line:0x1c2 withFormat:@"Touches were cancelled in view with id: %ld"];
    r23 = [[AdColony sharedInstance] retain];
    var_50 = r22;
    r22 = [r22 retain];
    r19 = [r21 retain];
    r20 = [r0 retain];
    [r23 performBlockOnWorkerThread:&var_70 mode:0x1];
    [r23 release];
    [r0 release];
    [r21 release];
    [var_50 release];
    [r20 release];
    [r19 release];
    [r22 release];
    return;
}

-(void)containerResized:(void *)arg2 {
    r19 = [arg2 retain];
    r20 = [[AdColony sharedInstance] retain];
    var_28 = r19;
    r19 = [r19 retain];
    [r20 performBlockOnWorkerThread:&var_48 mode:0x1];
    [r20 release];
    [var_28 release];
    [r19 release];
    return;
}

+(void)registerHandlers {
    r19 = [ADCContainerMPAPI new];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(create:) forMessageType:@"AdContainer.create"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(destroy:) forMessageType:@"AdContainer.destroy"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(moveViewToIndex:) forMessageType:@"AdContainer.move_view_to_index"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(moveViewToFront:) forMessageType:@"AdContainer.move_view_to_front"];
    [r0 release];
    [r19 release];
    return;
}

+(void)load {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_trackedTouches, 0x0);
    return;
}

@end