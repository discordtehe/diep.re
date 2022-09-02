@implementation ADCContainerAPI

+(void *)privateAPI {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d2268 != -0x1) {
            dispatch_once(0x1011d2268, &var_28);
    }
    r0 = *0x1011d2270;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

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

+(bool)createWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
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
    r19 = [arg2 retain];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 moduleForIdentifier:arg3];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 == 0x0) goto loc_1001bf668;

loc_1001bf460:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1001bf670;

loc_1001bf48c:
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 sessionFromID];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r22 = [r0 retain];
    [r25 release];
    [r23 release];
    if (r22 == 0x0) goto loc_1001bf6ac;

loc_1001bf4f0:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r28 = [r0 retain];
    if (r28 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 boolValue];
            [r0 release];
            r0 = [r22 retain];
            objc_sync_enter(r0);
            r23 = r28;
            [r25 setShouldPollViewability:[r28 boolValue]];
            objc_sync_exit(r25);
            [r25 release];
            objc_initWeak(r29 - 0xb0, r25);
            [ADCViewabilityMonitor alloc];
            objc_copyWeak((r29 - 0x80) + 0x28, r29 - 0xb0);
            r0 = [r21 retain];
            r26 = [r28 initWithSessionID:r0 advancedMeasurementEnabled:r26 viewabilityUpdateHandler:r29 - 0x80];
            [r25 setViewabilityMonitor:r26];
            [r26 release];
            [r0 release];
            objc_destroyWeak((r29 - 0x80) + 0x28);
            objc_destroyWeak(r29 - 0xb0);
            r28 = r23;
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"+[ADCContainerAPI createWithDict:andModuleID:]" line:0x90 withFormat:@"No value supplied for configuring viewability. Will not poll visibility for ad session: %@"];
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r25 = [r0 retain];
            if (r25 != 0x0) {
                    r23 = @class(ADCUtil);
                    r26 = [r23 getOrientationMaskFromAdColonyOrientation:[r25 integerValue]];
            }
            else {
                    r26 = 0x18;
            }
    }
    else {
            r23 = @class(ADCUtil);
            r26 = [r23 getOrientationMaskFromAdColonyOrientation:[r25 integerValue]];
    }
    var_A8 = r29 - 0xb0;
    if ([ADCUtil appSupportedOrientations] != 0x1e) goto loc_1001bf840;

loc_1001bf7e4:
    if ([NSThread isMainThread] != 0x0) {
            sub_1001bfe48(r29 - 0xe0);
    }
    else {
            dispatch_sync(*__dispatch_main_q, &var_110);
    }
    goto loc_1001bf9a8;

loc_1001bf9a8:
    [*(var_A8 + 0x28) setAdSessionID:r21];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCContainerAPI createWithDict:andModuleID:]" line:0xc3 withFormat:@"Fullscreen flag not supplied"];
    }
    r27 = [r26 boolValue];
    [*(var_A8 + 0x28) setIsFullscreen:r27];
    if ((r27 & 0x1) == 0x0) goto loc_1001bfa64;

loc_1001bfa48:
    [r22 setFullscreenContainer:*(var_A8 + 0x28)];
    goto loc_1001bfb50;

loc_1001bfb50:
    [*(var_A8 + 0x28) setIdentifier:[r20 bindObject:*(var_A8 + 0x28)]];
    r24 = 0x1;
    goto loc_1001bfc0c;

loc_1001bfc0c:
    [r26 release];
    _Block_object_dispose(r29 - 0xb0, 0x8);
    [0x0 release];
    [r25 release];
    [r28 release];
    goto loc_1001bfc38;

loc_1001bfc38:
    [r22 release];
    goto loc_1001bfc40;

loc_1001bfc40:
    [r21 release];
    goto loc_1001bfc48;

loc_1001bfc48:
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;

loc_1001bfa64:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) goto loc_1001bfb88;

loc_1001bfa88:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_1001bfbcc;

loc_1001bfaac:
    var_1C0 = r28;
    r28 = [r27 integerValue];
    r0 = [r24 integerValue];
    if ((r0 | r28) != 0x0) {
            dispatch_async(*__dispatch_main_q, &var_1B8);
    }
    [r22 setCustomizableContainer:*(var_A8 + 0x28)];
    [r24 release];
    [r27 release];
    r28 = var_1C0;
    goto loc_1001bfb50;

loc_1001bfbcc:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCContainerAPI createWithDict:andModuleID:]" line:0xd0 withFormat:@"Height value not supplied"];
    [r27 release];
    r24 = 0x0;
    goto loc_1001bfc0c;

loc_1001bfb88:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCContainerAPI createWithDict:andModuleID:]" line:0xcb withFormat:@"Width value not supplied"];
    r24 = 0x0;
    goto loc_1001bfc0c;

loc_1001bf840:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) goto loc_1001bf8c4;

loc_1001bf864:
    [r27 intValue];
    goto loc_1001bf8f8;

loc_1001bf8f8:
    asm { sxtw       x23, w0 };
    goto loc_1001bf8fc;

loc_1001bf8fc:
    if ([NSThread isMainThread] != 0x0) {
            sub_1001bffa0(&var_148);
    }
    else {
            dispatch_sync(*__dispatch_main_q, &var_180);
    }
    [r27 release];
    goto loc_1001bf9a8;

loc_1001bf8c4:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) goto loc_1001bfc7c;

loc_1001bf8e8:
    [r27 intValue];
    goto loc_1001bf8f8;

loc_1001bfc7c:
    r23 = 0x1;
    goto loc_1001bf8fc;

loc_1001bf6ac:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCContainerAPI createWithDict:andModuleID:]" line:0x8a withFormat:@"A session with the provided id: %@ has not been registered"];
    r24 = 0x0;
    goto loc_1001bfc38;

loc_1001bf670:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCContainerAPI createWithDict:andModuleID:]" line:0x85 withFormat:@"Tried to create a container with an invalid session id"];
    r24 = 0x0;
    goto loc_1001bfc40;

loc_1001bf668:
    r24 = 0x0;
    goto loc_1001bfc48;
}

+(bool)destroyWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 moduleForIdentifier:arg3];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    r20 = [[ADCContainerContext alloc] initWithDict:r22];
    [r22 release];
    if ([r20 isValid] != 0x0) {
            r0 = [r20 container];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isFullscreen];
            [r0 release];
            if (r23 != 0x0) {
                    if (([NSThread isMainThread] & 0x1) != 0x0) {
                            var_38 = [r20 retain];
                            sub_1001c0404(&var_58);
                            r0 = [r22 session];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setFullscreenContainer:0x0];
                            [r0 release];
                            r0 = var_38;
                    }
                    else {
                            var_60 = [r20 retain];
                            dispatch_sync(*__dispatch_main_q, &var_80);
                            r0 = [r22 session];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setFullscreenContainer:0x0];
                            [r0 release];
                            r0 = var_60;
                    }
                    r2 = 0x0;
                    [r0 release];
            }
            r0 = [r20 container];
            r0 = [r0 retain];
            r21 = r0;
            [r0 identifier];
            asm { sxtw       x2, w0 };
            [r19 unbindObjectForIdentifier:r2];
            [r21 release];
            r21 = 0x1;
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)moveViewToIndexWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
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
    r19 = [arg2 retain];
    r0 = [ADCContainerContext alloc];
    r0 = [r0 initWithDict:r19];
    r20 = r0;
    if ([r0 isValid] == 0x0) goto loc_1001c0650;

loc_1001c0570:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1001c0658;

loc_1001c059c:
    r23 = [[r20 container] retain];
    r0 = [r23 objectForIdentifier:[r21 unsignedIntegerValue]];
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    if (r22 == 0x0) goto loc_1001c0874;

loc_1001c05f8:
    [ADCWebViewModule class];
    if ([r22 isKindOfClass:r2] == 0x0) goto loc_1001c06c4;

loc_1001c062c:
    r0 = [r22 view];
    r29 = r29;
    r23 = [r0 retain];
    goto loc_1001c06fc;

loc_1001c06fc:
    r27 = [[r23 superview] retain];
    r0 = [r20 container];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 view];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r25 release];
    [r27 release];
    if (r27 == r0) goto loc_1001c07a4;

loc_1001c0760:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCContainerAPI moveViewToIndexWithDict:andModuleID:]" line:0x119 withFormat:@"View %@ isn't a child of container's view"];
    [r23 release];
    goto loc_1001c0880;

loc_1001c0880:
    r25 = 0x0;
    goto loc_1001c0884;

loc_1001c0884:
    [r22 release];
    goto loc_1001c088c;

loc_1001c088c:
    [r21 release];
    goto loc_1001c0894;

loc_1001c0894:
    [r20 release];
    [r19 release];
    r0 = r25;
    return r0;

loc_1001c07a4:
    r24 = [[r19 objectForKeyedSubscript:r2] retain];
    if (r24 != 0x0) {
            var_68 = [r20 retain];
            var_60 = [r23 retain];
            var_58 = [r24 retain];
            dispatch_async(*__dispatch_main_q, &var_88);
            [var_58 release];
            [var_60 release];
            [var_68 release];
            r25 = 0x1;
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCContainerAPI moveViewToIndexWithDict:andModuleID:]" line:0x11f withFormat:@"Index not supplied"];
            r25 = 0x0;
    }
    [r24 release];
    [r23 release];
    goto loc_1001c0884;

loc_1001c06c4:
    r26 = @selector(isKindOfClass:);
    [UIView class];
    if (objc_msgSend(r22, r26) == 0x0) goto loc_1001c0874;

loc_1001c06e8:
    r23 = [r22 retain];
    goto loc_1001c06fc;

loc_1001c0874:
    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    goto loc_1001c0880;

loc_1001c0658:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCContainerAPI moveViewToIndexWithDict:andModuleID:]" line:0x104 withFormat:@"View id not supplied"];
    r25 = 0x0;
    goto loc_1001c088c;

loc_1001c0650:
    r25 = 0x0;
    goto loc_1001c0894;
}

+(bool)moveViewToFrontWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0xe0;
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
    r0 = [ADCContainerContext alloc];
    r0 = [r0 initWithDict:r19];
    r20 = r0;
    if ([r0 isValid] == 0x0) goto loc_1001c0b2c;

loc_1001c0a5c:
    r0 = [r19 objectForKeyedSubscript:@"view_id"];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1001c0b34;

loc_1001c0a84:
    r23 = [[r20 container] retain];
    r0 = [r23 objectForIdentifier:[r21 unsignedIntegerValue]];
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    if (r22 == 0x0) goto loc_1001c0d30;

loc_1001c0adc:
    [ADCWebViewModule class];
    if ([r22 isKindOfClass:r2] == 0x0) goto loc_1001c0ba0;

loc_1001c0b10:
    r0 = [r22 view];
    r29 = r29;
    r0 = [r0 retain];
    goto loc_1001c0bcc;

loc_1001c0bcc:
    r23 = r0;
    var_48 = r29 - 0x50;
    if ([NSThread isMainThread] != 0x0) {
            r23 = [r23 retain];
            var_60 = [r20 retain];
            sub_1001c0d94(&var_88);
            r24 = *(int8_t *)(var_48 + 0x18);
            [var_60 release];
            r0 = r23;
    }
    else {
            r23 = [r23 retain];
            var_98 = [r20 retain];
            dispatch_sync(*__dispatch_main_q, &var_C0);
            r24 = *(int8_t *)(var_48 + 0x18);
            [var_98 release];
            r0 = r23;
    }
    [r0 release];
    if (r24 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r24 = 0x1;
            }
    }
    _Block_object_dispose(r29 - 0x50, 0x8);
    [r23 release];
    goto loc_1001c0d40;

loc_1001c0d40:
    [r22 release];
    goto loc_1001c0d48;

loc_1001c0d48:
    [r21 release];
    goto loc_1001c0d50;

loc_1001c0d50:
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;

loc_1001c0ba0:
    r24 = @selector(isKindOfClass:);
    [UIView class];
    if (objc_msgSend(r22, r24) == 0x0) goto loc_1001c0d30;

loc_1001c0bc4:
    r0 = [r22 retain];
    goto loc_1001c0bcc;

loc_1001c0d30:
    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    r24 = 0x0;
    goto loc_1001c0d40;

loc_1001c0b34:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCContainerAPI moveViewToFrontWithDict:andModuleID:]" line:0x132 withFormat:@"View id not supplied"];
    r24 = 0x0;
    goto loc_1001c0d48;

loc_1001c0b2c:
    r24 = 0x0;
    goto loc_1001c0d50;
}

-(void)container:(void *)arg2 touchesBegan:(void *)arg3 inView:(void *)arg4 {
    var_80 = d13;
    stack[-136] = d12;
    var_70 = d11;
    stack[-120] = d10;
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
    r31 = r31 + 0xffffffffffffff70 - 0x280;
    var_278 = self;
    r24 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = [arg4 retain];
    r27 = r0;
    [r0 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainerAPI container:touchesBegan:inView:]" line:0x159 withFormat:@"Touches began in view with id: %ld"];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 sessionFromID] retain];
    r22 = [[r24 adSessionID] retain];
    r0 = [r21 objectForKeyedSubscript:r22];
    r29 = &saved_fp;
    r28 = [r0 retain];
    [r22 release];
    [r21 release];
    [r20 release];
    if (r28 == 0x0) goto loc_1001c12bc;

loc_1001c1254:
    [ADCInterstitialAdSession class];
    r20 = @selector(isKindOfClass:);
    r0 = objc_msgSend(r28, r20);
    var_2D0 = r20;
    if (r0 == 0x0) goto loc_1001c12ec;

loc_1001c128c:
    r0 = [r28 fullscreenModule];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 originNumber];
    goto loc_1001c13a4;

loc_1001c13a4:
    [r19 release];
    goto loc_1001c13ac;

loc_1001c13ac:
    v0 = 0x0;
    *(int128_t *)(&stack[-679] + 0xff) = q0;
    *(int128_t *)(&stack[-695] + 0xff) = q0;
    *(int128_t *)(&stack[-711] + 0xff) = q0;
    *(int128_t *)(&stack[-727] + 0xff) = q0;
    var_2E8 = r25;
    r0 = [r25 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2E0 = r1;
    var_2D8 = r0;
    r0 = objc_msgSend(r0, r1);
    var_218 = r0;
    if (r0 == 0x0) goto loc_1001c18b8;

loc_1001c1400:
    var_2B0 = *var_1B8;
    var_2B8 = sign_extend_64(*(int32_t *)ivar_offset(_trackedTouches));
    var_2A8 = r21;
    var_2A0 = r28;
    var_298 = r27;
    stack[-672] = r24;
    goto loc_1001c1428;

loc_1001c1428:
    r26 = 0x0;
    r23 = @selector(identifier);
    var_240 = r23;
    goto loc_1001c14b0;

loc_1001c14b0:
    if (*var_1B8 != var_2B0) {
            objc_enumerationMutation(var_2D8);
    }
    r20 = *(var_1C0 + r26 * 0x8);
    [*(var_278 + var_2B8) addObject:r20];
    r22 = [[r24 view] retain];
    [r20 locationInView:r22];
    v11 = v0;
    v10 = v1;
    [r22 release];
    [r20 locationInView:r27];
    v9 = v0;
    v8 = v1;
    r20 = [[NSNumber numberWithUnsignedInteger:r21] retain];
    r0 = objc_msgSend(r28, r23);
    r29 = r29;
    r22 = [r0 retain];
    var_200 = r20;
    if (r22 == 0x0) goto loc_1001c160c;

loc_1001c159c:
    r0 = objc_msgSend(r28, r23);
    r29 = r29;
    [r0 retain];
    [NSString class];
    var_210 = r19;
    if (objc_msgSend(r19, var_2D0) == 0x0) goto loc_1001c1614;

loc_1001c15dc:
    r0 = objc_msgSend(r28, r23);
    r29 = r29;
    r0 = [r0 retain];
    var_204 = 0x1;
    var_208 = 0x1;
    var_2C0 = r0;
    r8 = r0;
    goto loc_1001c1624;

loc_1001c1624:
    r20 = @class(NSNumber);
    r2 = [r27 tag];
    r23 = [[r20 numberWithInteger:r2] retain];
    r0 = [r28 fullscreenContainer];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == r24) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    r28 = [[NSNumber numberWithInt:r2] retain];
    r27 = [[NSNumber numberWithDouble:r2] retain];
    r19 = [[NSNumber numberWithDouble:r2] retain];
    r24 = [[NSNumber numberWithDouble:r2] retain];
    v0 = v8;
    r21 = [[NSNumber numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_148 forKeys:&var_188 count:0x8];
    r29 = r29;
    r25 = [r0 retain];
    [r21 release];
    [r24 release];
    [r19 release];
    [r27 release];
    [r28 release];
    [r20 release];
    [r23 release];
    if (var_208 != 0x0) {
            [var_2C0 release];
    }
    r21 = var_2A8;
    r19 = var_200;
    if (var_204 != 0x0) {
            [var_210 release];
    }
    [r22 release];
    [r19 release];
    r0 = [AdColony sharedInstance];
    r29 = r29;
    r19 = [r0 retain];
    [r25 retain];
    [r19 performBlockOnWorkerThread:r2 mode:r3];
    [r19 release];
    [r25 release];
    [r20 release];
    r26 = r26 + 0x1;
    r27 = var_298;
    r24 = stack[-672];
    r28 = var_2A0;
    r23 = var_240;
    if (r26 < var_218) goto loc_1001c14b0;

loc_1001c189c:
    r0 = objc_msgSend(var_2D8, var_2E0);
    var_218 = r0;
    if (r0 != 0x0) goto loc_1001c1428;

loc_1001c18b8:
    [var_2D8 release];
    r25 = var_2E8;
    goto loc_1001c18c4;

loc_1001c18c4:
    var_88 = **___stack_chk_guard;
    [r28 release];
    [r27 release];
    [r25 release];
    [r24 release];
    if (**___stack_chk_guard != var_88) {
            __stack_chk_fail();
    }
    return;

loc_1001c1614:
    var_208 = 0x0;
    var_204 = 0x1;
    goto loc_1001c161c;

loc_1001c161c:
    r8 = @"";
    goto loc_1001c1624;

loc_1001c160c:
    var_208 = 0x0;
    goto loc_1001c161c;

loc_1001c12ec:
    r20 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r28, r20) == 0x0) goto loc_1001c1368;

loc_1001c1310:
    r0 = [r28 retain];
    r19 = r0;
    r0 = [r0 nativeAd];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 opened];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 fullscreenModule];
            r29 = r29;
    }
    else {
            r0 = [r19 nativeModule];
            r29 = r29;
    }
    r0 = [r0 retain];
    r21 = [r0 originNumber];
    [r0 release];
    goto loc_1001c13a4;

loc_1001c1368:
    r21 = 0x0;
    goto loc_1001c13ac;

loc_1001c12bc:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerAPI container:touchesBegan:inView:]" line:0x15d withFormat:@"No session has been registered"];
    goto loc_1001c18c4;
}

-(void)container:(void *)arg2 touchesMoved:(void *)arg3 inView:(void *)arg4 {
    var_80 = d13;
    stack[-136] = d12;
    var_70 = d11;
    stack[-120] = d10;
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
    r31 = r31 + 0xffffffffffffff70 - 0x260;
    r25 = [arg2 retain];
    var_2D0 = [arg3 retain];
    r0 = [arg4 retain];
    r26 = r0;
    [r0 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainerAPI container:touchesMoved:inView:]" line:0x188 withFormat:@"Touches moved in view with id: %ld"];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 sessionFromID] retain];
    r22 = [[r25 adSessionID] retain];
    r0 = [r21 objectForKeyedSubscript:r22];
    r29 = &saved_fp;
    r27 = [r0 retain];
    [r22 release];
    [r21 release];
    [r20 release];
    if (r27 == 0x0) goto loc_1001c1c34;

loc_1001c1bcc:
    [ADCInterstitialAdSession class];
    r22 = @selector(isKindOfClass:);
    r0 = objc_msgSend(r27, r22);
    var_2B8 = r22;
    if (r0 == 0x0) goto loc_1001c1c64;

loc_1001c1c04:
    r0 = [r27 fullscreenModule];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 originNumber];
    goto loc_1001c1d1c;

loc_1001c1d1c:
    [r19 release];
    goto loc_1001c1d24;

loc_1001c1d24:
    v0 = 0x0;
    *(int128_t *)(&stack[-679] + 0xff) = q0;
    *(int128_t *)(&stack[-695] + 0xff) = q0;
    *(int128_t *)(&stack[-711] + 0xff) = q0;
    *(int128_t *)(&stack[-727] + 0xff) = q0;
    r0 = [var_2D0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2C8 = r1;
    var_2C0 = r0;
    r0 = objc_msgSend(r0, r1);
    var_218 = r0;
    if (r0 == 0x0) goto loc_1001c21fc;

loc_1001c1d74:
    var_2A0 = *var_1B8;
    var_298 = r21;
    var_290 = r27;
    var_288 = r26;
    stack[-656] = r25;
    goto loc_1001c1d90;

loc_1001c1d90:
    r22 = 0x0;
    r24 = @selector(identifier);
    var_238 = r24;
    goto loc_1001c1e0c;

loc_1001c1e0c:
    if (*var_1B8 != var_2A0) {
            objc_enumerationMutation(var_2C0);
    }
    r19 = *(var_1C0 + r22 * 0x8);
    r23 = [[r25 view] retain];
    [r19 locationInView:r23];
    v11 = v0;
    v10 = v1;
    [r23 release];
    [r19 locationInView:r26];
    v9 = v0;
    v8 = v1;
    r23 = [[NSNumber numberWithUnsignedInteger:r21] retain];
    r0 = objc_msgSend(r27, r24);
    r29 = r29;
    r19 = [r0 retain];
    var_200 = r22;
    if (r19 == 0x0) goto loc_1001c1f50;

loc_1001c1ee0:
    r0 = objc_msgSend(r27, r24);
    r29 = r29;
    [r0 retain];
    [NSString class];
    var_210 = r20;
    if (objc_msgSend(r20, var_2B8) == 0x0) goto loc_1001c1f58;

loc_1001c1f20:
    r0 = objc_msgSend(r27, r24);
    r29 = r29;
    r0 = [r0 retain];
    var_204 = 0x1;
    var_208 = 0x1;
    var_2A8 = r0;
    r8 = r0;
    goto loc_1001c1f68;

loc_1001c1f68:
    r24 = @class(NSNumber);
    r2 = [r26 tag];
    r28 = [[r24 numberWithInteger:r2] retain];
    r0 = [r27 fullscreenContainer];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == r25) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    r27 = [[NSNumber numberWithInt:r2] retain];
    r25 = [[NSNumber numberWithDouble:r2] retain];
    r20 = [[NSNumber numberWithDouble:r2] retain];
    r22 = [[NSNumber numberWithDouble:r2] retain];
    v0 = v8;
    r21 = [[NSNumber numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_148 forKeys:&var_188 count:0x8];
    r29 = r29;
    r24 = [r0 retain];
    [r21 release];
    [r22 release];
    [r20 release];
    [r25 release];
    [r27 release];
    [r26 release];
    [r28 release];
    if (var_208 != 0x0) {
            [var_2A8 release];
    }
    r21 = var_298;
    r22 = var_200;
    if (var_204 != 0x0) {
            [var_210 release];
    }
    [r19 release];
    [r23 release];
    r0 = [AdColony sharedInstance];
    r29 = r29;
    r19 = [r0 retain];
    [r24 retain];
    [r19 performBlockOnWorkerThread:r2 mode:r3];
    [r19 release];
    [r24 release];
    [r20 release];
    r22 = r22 + 0x1;
    r26 = var_288;
    r25 = stack[-656];
    r27 = var_290;
    r24 = var_238;
    if (r22 < var_218) goto loc_1001c1e0c;

loc_1001c21e0:
    r0 = objc_msgSend(var_2C0, var_2C8);
    var_218 = r0;
    if (r0 != 0x0) goto loc_1001c1d90;

loc_1001c21fc:
    [var_2C0 release];
    goto loc_1001c2204;

loc_1001c2204:
    var_88 = **___stack_chk_guard;
    [r27 release];
    [r26 release];
    [var_2D0 release];
    [r25 release];
    if (**___stack_chk_guard != var_88) {
            __stack_chk_fail();
    }
    return;

loc_1001c1f58:
    var_208 = 0x0;
    var_204 = 0x1;
    goto loc_1001c1f60;

loc_1001c1f60:
    r8 = @"";
    goto loc_1001c1f68;

loc_1001c1f50:
    var_208 = 0x0;
    goto loc_1001c1f60;

loc_1001c1c64:
    r22 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r27, r22) == 0x0) goto loc_1001c1ce0;

loc_1001c1c88:
    r0 = [r27 retain];
    r19 = r0;
    r0 = [r0 nativeAd];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 opened];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 fullscreenModule];
            r29 = r29;
    }
    else {
            r0 = [r19 nativeModule];
            r29 = r29;
    }
    r0 = [r0 retain];
    r21 = [r0 originNumber];
    [r0 release];
    goto loc_1001c1d1c;

loc_1001c1ce0:
    r21 = 0x0;
    goto loc_1001c1d24;

loc_1001c1c34:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerAPI container:touchesMoved:inView:]" line:0x18c withFormat:@"No session has been registered"];
    goto loc_1001c2204;
}

-(void)container:(void *)arg2 touchesEnded:(void *)arg3 inView:(void *)arg4 {
    var_80 = d13;
    stack[-136] = d12;
    var_70 = d11;
    stack[-120] = d10;
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
    r31 = r31 + 0xffffffffffffff70 - 0x280;
    var_278 = self;
    r24 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = [arg4 retain];
    r27 = r0;
    [r0 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainerAPI container:touchesEnded:inView:]" line:0x1b6 withFormat:@"Touches ended in view with id: %ld"];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 sessionFromID] retain];
    r22 = [[r24 adSessionID] retain];
    r0 = [r21 objectForKeyedSubscript:r22];
    r29 = &saved_fp;
    r28 = [r0 retain];
    [r22 release];
    [r21 release];
    [r20 release];
    if (r28 == 0x0) goto loc_1001c2578;

loc_1001c2510:
    [ADCInterstitialAdSession class];
    r20 = @selector(isKindOfClass:);
    r0 = objc_msgSend(r28, r20);
    var_2D0 = r20;
    if (r0 == 0x0) goto loc_1001c25a8;

loc_1001c2548:
    r0 = [r28 fullscreenModule];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 originNumber];
    goto loc_1001c2660;

loc_1001c2660:
    [r19 release];
    goto loc_1001c2668;

loc_1001c2668:
    v0 = 0x0;
    *(int128_t *)(&stack[-679] + 0xff) = q0;
    *(int128_t *)(&stack[-695] + 0xff) = q0;
    *(int128_t *)(&stack[-711] + 0xff) = q0;
    *(int128_t *)(&stack[-727] + 0xff) = q0;
    var_2E8 = r25;
    r0 = [r25 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2E0 = r1;
    var_2D8 = r0;
    r0 = objc_msgSend(r0, r1);
    var_218 = r0;
    if (r0 == 0x0) goto loc_1001c2b74;

loc_1001c26bc:
    var_2B0 = *var_1B8;
    var_2B8 = sign_extend_64(*(int32_t *)ivar_offset(_trackedTouches));
    var_2A8 = r21;
    var_2A0 = r28;
    var_298 = r27;
    stack[-672] = r24;
    goto loc_1001c26e4;

loc_1001c26e4:
    r26 = 0x0;
    r23 = @selector(identifier);
    var_240 = r23;
    goto loc_1001c276c;

loc_1001c276c:
    if (*var_1B8 != var_2B0) {
            objc_enumerationMutation(var_2D8);
    }
    r20 = *(var_1C0 + r26 * 0x8);
    [*(var_278 + var_2B8) removeObject:r20];
    r22 = [[r24 view] retain];
    [r20 locationInView:r22];
    v11 = v0;
    v10 = v1;
    [r22 release];
    [r20 locationInView:r27];
    v9 = v0;
    v8 = v1;
    r20 = [[NSNumber numberWithUnsignedInteger:r21] retain];
    r0 = objc_msgSend(r28, r23);
    r29 = r29;
    r22 = [r0 retain];
    var_200 = r20;
    if (r22 == 0x0) goto loc_1001c28c8;

loc_1001c2858:
    r0 = objc_msgSend(r28, r23);
    r29 = r29;
    [r0 retain];
    [NSString class];
    var_210 = r19;
    if (objc_msgSend(r19, var_2D0) == 0x0) goto loc_1001c28d0;

loc_1001c2898:
    r0 = objc_msgSend(r28, r23);
    r29 = r29;
    r0 = [r0 retain];
    var_204 = 0x1;
    var_208 = 0x1;
    var_2C0 = r0;
    r8 = r0;
    goto loc_1001c28e0;

loc_1001c28e0:
    r20 = @class(NSNumber);
    r2 = [r27 tag];
    r23 = [[r20 numberWithInteger:r2] retain];
    r0 = [r28 fullscreenContainer];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == r24) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    r28 = [[NSNumber numberWithInt:r2] retain];
    r27 = [[NSNumber numberWithDouble:r2] retain];
    r19 = [[NSNumber numberWithDouble:r2] retain];
    r24 = [[NSNumber numberWithDouble:r2] retain];
    v0 = v8;
    r21 = [[NSNumber numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_148 forKeys:&var_188 count:0x8];
    r29 = r29;
    r25 = [r0 retain];
    [r21 release];
    [r24 release];
    [r19 release];
    [r27 release];
    [r28 release];
    [r20 release];
    [r23 release];
    if (var_208 != 0x0) {
            [var_2C0 release];
    }
    r21 = var_2A8;
    r19 = var_200;
    if (var_204 != 0x0) {
            [var_210 release];
    }
    [r22 release];
    [r19 release];
    r0 = [AdColony sharedInstance];
    r29 = r29;
    r19 = [r0 retain];
    [r25 retain];
    [r19 performBlockOnWorkerThread:r2 mode:r3];
    [r19 release];
    [r25 release];
    [r20 release];
    r26 = r26 + 0x1;
    r27 = var_298;
    r24 = stack[-672];
    r28 = var_2A0;
    r23 = var_240;
    if (r26 < var_218) goto loc_1001c276c;

loc_1001c2b58:
    r0 = objc_msgSend(var_2D8, var_2E0);
    var_218 = r0;
    if (r0 != 0x0) goto loc_1001c26e4;

loc_1001c2b74:
    [var_2D8 release];
    r25 = var_2E8;
    goto loc_1001c2b80;

loc_1001c2b80:
    var_88 = **___stack_chk_guard;
    [r28 release];
    [r27 release];
    [r25 release];
    [r24 release];
    if (**___stack_chk_guard != var_88) {
            __stack_chk_fail();
    }
    return;

loc_1001c28d0:
    var_208 = 0x0;
    var_204 = 0x1;
    goto loc_1001c28d8;

loc_1001c28d8:
    r8 = @"";
    goto loc_1001c28e0;

loc_1001c28c8:
    var_208 = 0x0;
    goto loc_1001c28d8;

loc_1001c25a8:
    r20 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r28, r20) == 0x0) goto loc_1001c2624;

loc_1001c25cc:
    r0 = [r28 retain];
    r19 = r0;
    r0 = [r0 nativeAd];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 opened];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 fullscreenModule];
            r29 = r29;
    }
    else {
            r0 = [r19 nativeModule];
            r29 = r29;
    }
    r0 = [r0 retain];
    r21 = [r0 originNumber];
    [r0 release];
    goto loc_1001c2660;

loc_1001c2624:
    r21 = 0x0;
    goto loc_1001c2668;

loc_1001c2578:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerAPI container:touchesEnded:inView:]" line:0x1ba withFormat:@"No session has been registered"];
    goto loc_1001c2b80;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_trackedTouches, 0x0);
    return;
}

-(void)containerResized:(void *)arg2 {
    r31 = r31 - 0x1a0;
    var_90 = d13;
    stack[-136] = d12;
    var_80 = d11;
    stack[-120] = d10;
    var_70 = d9;
    stack[-104] = d8;
    var_60 = r28;
    stack[-88] = r27;
    var_50 = r26;
    stack[-72] = r25;
    var_40 = r24;
    stack[-56] = r23;
    var_30 = r22;
    stack[-40] = r21;
    var_20 = r20;
    stack[-24] = r19;
    var_10 = r29;
    stack[-8] = r30;
    *(&var_10 + 0xffffffffffffff78) = **___stack_chk_guard;
    r27 = [arg2 retain];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r22 = [[r0 sessionFromID] retain];
    r23 = [[r27 adSessionID] retain];
    r0 = [r22 objectForKeyedSubscript:r23];
    r29 = &var_10;
    r20 = [r0 retain];
    [r23 release];
    [r22 release];
    [r21 release];
    if (r20 == 0x0) goto loc_1001c37f8;

loc_1001c3794:
    [ADCInterstitialAdSession class];
    if ([r20 isKindOfClass:r2] == 0x0) goto loc_1001c3830;

loc_1001c37c8:
    r0 = [r20 fullscreenModule];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    r28 = [r0 originNumber];
    goto loc_1001c38e8;

loc_1001c38e8:
    [r21 release];
    goto loc_1001c38f0;

loc_1001c38f0:
    r0 = [r27 view];
    r0 = [r0 retain];
    [r0 bounds];
    v8 = v2;
    [r0 release];
    r0 = [r27 view];
    r0 = [r0 retain];
    [r0 bounds];
    v9 = v3;
    [r0 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 compare:@"11.0" options:0x40];
    [r0 release];
    [r22 release];
    if (r26 != -0x1) {
            r0 = [r27 view];
            r29 = r29;
            r0 = [r0 retain];
            [r0 safeAreaInsets];
            v13 = v0;
            v12 = v1;
            v11 = v2;
            v10 = v3;
            [r0 release];
    }
    r2 = @"11.0";
    var_178 = [[NSNumber numberWithUnsignedInteger:r28] retain];
    r0 = [r20 identifier];
    r29 = r29;
    r0 = [r0 retain];
    var_180 = r0;
    var_170 = r28;
    if (r0 != 0x0) {
            r24 = @selector(isKindOfClass:);
            r0 = [r20 identifier];
            r29 = r29;
            r22 = [r0 retain];
            r2 = [NSString class];
            var_198 = r22;
            if (objc_msgSend(r22, r24) != 0x0) {
                    r0 = [r20 identifier];
                    r29 = r29;
                    r9 = [r0 retain];
                    var_184 = 0x1;
                    var_188 = 0x1;
            }
            else {
                    r9 = @"";
                    var_188 = 0x0;
                    var_184 = 0x1;
            }
    }
    else {
            var_188 = 0x0;
            r9 = @"";
    }
    var_190 = r9;
    r0 = [r20 fullscreenContainer];
    r29 = r29;
    r24 = [r0 retain];
    var_160 = r27;
    if (r24 == r27) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    r28 = [[NSNumber numberWithInt:r2] retain];
    r22 = [[NSNumber numberWithDouble:r2] retain];
    r21 = [[NSNumber numberWithDouble:r2] retain];
    r27 = [[NSNumber numberWithDouble:r2] retain];
    r26 = [[NSNumber numberWithDouble:r2] retain];
    r23 = [[NSNumber numberWithDouble:r2] retain];
    r19 = [[NSNumber numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_E0 forKeys:&var_128 count:0x9];
    r29 = r29;
    r25 = [r0 retain];
    [r19 release];
    [r23 release];
    [r26 release];
    [r27 release];
    [r21 release];
    [r22 release];
    [r28 release];
    [r24 release];
    if (var_188 != 0x0) {
            [var_190 release];
    }
    r21 = var_170;
    if (var_184 != 0x0) {
            [var_198 release];
    }
    [var_180 release];
    [var_178 release];
    r0 = @class(AdColony);
    r0 = [r0 sharedInstance];
    r29 = r29;
    r19 = [r0 retain];
    r22 = [r25 retain];
    [r19 performBlockOnWorkerThread:&var_158 mode:0x1];
    [r19 release];
    [r25 release];
    [r22 release];
    r27 = var_160;
    goto loc_1001c3dac;

loc_1001c3dac:
    [r20 release];
    [r27 release];
    if (**___stack_chk_guard != *(r29 + 0xffffffffffffff78)) {
            __stack_chk_fail();
    }
    return;

loc_1001c3830:
    r24 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r20, r24) == 0x0) goto loc_1001c38ac;

loc_1001c3854:
    r0 = [r20 retain];
    r21 = r0;
    r0 = [r0 nativeAd];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 opened];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [r21 fullscreenModule];
            r29 = r29;
    }
    else {
            r0 = [r21 nativeModule];
            r29 = r29;
    }
    r0 = [r0 retain];
    r28 = [r0 originNumber];
    [r0 release];
    goto loc_1001c38e8;

loc_1001c38ac:
    r28 = 0x0;
    goto loc_1001c38f0;

loc_1001c37f8:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerAPI containerResized:]" line:0x216 withFormat:@"No session has been registered"];
    goto loc_1001c3dac;
}

-(void)container:(void *)arg2 touchesCancelled:(void *)arg3 inView:(void *)arg4 {
    var_80 = d13;
    stack[-136] = d12;
    var_70 = d11;
    stack[-120] = d10;
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
    r31 = r31 + 0xffffffffffffff70 - 0x280;
    var_278 = self;
    r24 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = [arg4 retain];
    r27 = r0;
    [r0 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainerAPI container:touchesCancelled:inView:]" line:0x1e5 withFormat:@"Touches were cancelled in view with id: %ld"];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 sessionFromID] retain];
    r22 = [[r24 adSessionID] retain];
    r0 = [r21 objectForKeyedSubscript:r22];
    r29 = &saved_fp;
    r28 = [r0 retain];
    [r22 release];
    [r21 release];
    [r20 release];
    if (r28 == 0x0) goto loc_1001c2ef4;

loc_1001c2e8c:
    [ADCInterstitialAdSession class];
    r20 = @selector(isKindOfClass:);
    r0 = objc_msgSend(r28, r20);
    var_2D0 = r20;
    if (r0 == 0x0) goto loc_1001c2f24;

loc_1001c2ec4:
    r0 = [r28 fullscreenModule];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    r21 = [r0 originNumber];
    goto loc_1001c2fdc;

loc_1001c2fdc:
    [r19 release];
    goto loc_1001c2fe4;

loc_1001c2fe4:
    v0 = 0x0;
    *(int128_t *)(&stack[-679] + 0xff) = q0;
    *(int128_t *)(&stack[-695] + 0xff) = q0;
    *(int128_t *)(&stack[-711] + 0xff) = q0;
    *(int128_t *)(&stack[-727] + 0xff) = q0;
    var_2E8 = r25;
    r0 = [r25 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2E0 = r1;
    var_2D8 = r0;
    r0 = objc_msgSend(r0, r1);
    var_218 = r0;
    if (r0 == 0x0) goto loc_1001c34f0;

loc_1001c3038:
    var_2B0 = *var_1B8;
    var_2B8 = sign_extend_64(*(int32_t *)ivar_offset(_trackedTouches));
    var_2A8 = r21;
    var_2A0 = r28;
    var_298 = r27;
    stack[-672] = r24;
    goto loc_1001c3060;

loc_1001c3060:
    r26 = 0x0;
    r23 = @selector(identifier);
    var_240 = r23;
    goto loc_1001c30e8;

loc_1001c30e8:
    if (*var_1B8 != var_2B0) {
            objc_enumerationMutation(var_2D8);
    }
    r20 = *(var_1C0 + r26 * 0x8);
    [*(var_278 + var_2B8) removeObject:r20];
    r22 = [[r24 view] retain];
    [r20 locationInView:r22];
    v11 = v0;
    v10 = v1;
    [r22 release];
    [r20 locationInView:r27];
    v9 = v0;
    v8 = v1;
    r20 = [[NSNumber numberWithUnsignedInteger:r21] retain];
    r0 = objc_msgSend(r28, r23);
    r29 = r29;
    r22 = [r0 retain];
    var_200 = r20;
    if (r22 == 0x0) goto loc_1001c3244;

loc_1001c31d4:
    r0 = objc_msgSend(r28, r23);
    r29 = r29;
    [r0 retain];
    [NSString class];
    var_210 = r19;
    if (objc_msgSend(r19, var_2D0) == 0x0) goto loc_1001c324c;

loc_1001c3214:
    r0 = objc_msgSend(r28, r23);
    r29 = r29;
    r0 = [r0 retain];
    var_204 = 0x1;
    var_208 = 0x1;
    var_2C0 = r0;
    r8 = r0;
    goto loc_1001c325c;

loc_1001c325c:
    r20 = @class(NSNumber);
    r2 = [r27 tag];
    r23 = [[r20 numberWithInteger:r2] retain];
    r0 = [r28 fullscreenContainer];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == r24) {
            if (CPU_FLAGS & E) {
                    r2 = 0x1;
            }
    }
    r28 = [[NSNumber numberWithInt:r2] retain];
    r27 = [[NSNumber numberWithDouble:r2] retain];
    r19 = [[NSNumber numberWithDouble:r2] retain];
    r24 = [[NSNumber numberWithDouble:r2] retain];
    v0 = v8;
    r21 = [[NSNumber numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_148 forKeys:&var_188 count:0x8];
    r29 = r29;
    r25 = [r0 retain];
    [r21 release];
    [r24 release];
    [r19 release];
    [r27 release];
    [r28 release];
    [r20 release];
    [r23 release];
    if (var_208 != 0x0) {
            [var_2C0 release];
    }
    r21 = var_2A8;
    r19 = var_200;
    if (var_204 != 0x0) {
            [var_210 release];
    }
    [r22 release];
    [r19 release];
    r0 = [AdColony sharedInstance];
    r29 = r29;
    r19 = [r0 retain];
    [r25 retain];
    [r19 performBlockOnWorkerThread:r2 mode:r3];
    [r19 release];
    [r25 release];
    [r20 release];
    r26 = r26 + 0x1;
    r27 = var_298;
    r24 = stack[-672];
    r28 = var_2A0;
    r23 = var_240;
    if (r26 < var_218) goto loc_1001c30e8;

loc_1001c34d4:
    r0 = objc_msgSend(var_2D8, var_2E0);
    var_218 = r0;
    if (r0 != 0x0) goto loc_1001c3060;

loc_1001c34f0:
    [var_2D8 release];
    r25 = var_2E8;
    goto loc_1001c34fc;

loc_1001c34fc:
    var_88 = **___stack_chk_guard;
    [r28 release];
    [r27 release];
    [r25 release];
    [r24 release];
    if (**___stack_chk_guard != var_88) {
            __stack_chk_fail();
    }
    return;

loc_1001c324c:
    var_208 = 0x0;
    var_204 = 0x1;
    goto loc_1001c3254;

loc_1001c3254:
    r8 = @"";
    goto loc_1001c325c;

loc_1001c3244:
    var_208 = 0x0;
    goto loc_1001c3254;

loc_1001c2f24:
    r20 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r28, r20) == 0x0) goto loc_1001c2fa0;

loc_1001c2f48:
    r0 = [r28 retain];
    r19 = r0;
    r0 = [r0 nativeAd];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 opened];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [r19 fullscreenModule];
            r29 = r29;
    }
    else {
            r0 = [r19 nativeModule];
            r29 = r29;
    }
    r0 = [r0 retain];
    r21 = [r0 originNumber];
    [r0 release];
    goto loc_1001c2fdc;

loc_1001c2fa0:
    r21 = 0x0;
    goto loc_1001c2fe4;

loc_1001c2ef4:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainerAPI container:touchesCancelled:inView:]" line:0x1e9 withFormat:@"No session has been registered"];
    goto loc_1001c34fc;
}

@end