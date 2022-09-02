@implementation ADCLog

-(void *)initWithLogLevel:(long long)arg2 andMessage:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            r22->_level = r20;
            r1 = r21;
            objc_storeStrong((int64_t *)&r22->_message, r1);
            if (r20 == -0x1) {
                    if (!CPU_FLAGS & E) {
                            r1 = @"adcolony_ios_sdk";
                    }
                    else {
                            r1 = @"adcolony_fatal_reports";
                    }
            }
            objc_storeStrong((int64_t *)&r22->_index, r1);
    }
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)getDict:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[ADCDevice sharedDevice] retain];
    var_28 = r20;
    r20 = [r20 retain];
    [r21 getInfo:&var_50];
    [r21 release];
    [var_28 release];
    [r20 release];
    return;
}

-(void *)initFromDict:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [[&var_50 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r23 = [r0 retain];
                    [NSString class];
                    if ([r23 isKindOfClass:r2] != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r24 = [r0 retain];
                            r25 = 0x1;
                            r26 = 0x1;
                    }
                    else {
                            r26 = 0x0;
                            r24 = @"";
                            r25 = 0x1;
                    }
            }
            else {
                    r25 = 0x0;
                    r26 = 0x0;
                    r24 = @"";
            }
            objc_storeStrong((int64_t *)&r20->_index, r24);
            if (r26 != 0x0) {
                    [r24 release];
            }
            if (r25 != 0x0) {
                    [r23 release];
            }
            [r22 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r23 = [r0 retain];
                    [NSString class];
                    if ([r23 isKindOfClass:r2] != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r24 = [r0 retain];
                            r25 = 0x1;
                            r26 = 0x1;
                    }
                    else {
                            r26 = 0x0;
                            r24 = @"";
                            r25 = 0x1;
                    }
            }
            else {
                    r25 = 0x0;
                    r26 = 0x0;
                    r24 = @"";
            }
            objc_storeStrong((int64_t *)&r20->_message, r24);
            if (r26 != 0x0) {
                    [r24 release];
            }
            if (r25 != 0x0) {
                    [r23 release];
            }
            [r22 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r22 = [r0 integerValue];
            [r0 release];
            r8 = 0x4;
            if (r22 < 0x4) {
                    if (!CPU_FLAGS & B) {
                            r8 = 0x4;
                    }
                    else {
                            r8 = r22;
                    }
            }
            r20->_level = r8;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)getLogLevelString {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_level));
    r8 = *(self + r8);
    r8 = r8 + 0x1;
    switch (sign_extend_64(*(int32_t *)(0x1001b3968 + r8 * 0x4)) + 0x1001b3968) {
        case 0:
            r19 = @"Fatal";
            break;
        case 1:
            r19 = @"Error";
            break;
        case 2:
            r19 = @"Warn";
            break;
        case 3:
            r19 = @"Info";
            break;
        case 4:
            r19 = @"Trace";
            break;
        default:
            r19 = @"";

    }
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)remappedKeysFromDeviceInfo {
    r31 = r31 - 0xd0;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_B8 count:0xb];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)index {
    r0 = self->_index;
    return r0;
}

-(void)setIndex:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_index, arg2);
    return;
}

-(long long)level {
    r0 = self->_level;
    return r0;
}

-(void)setLevel:(long long)arg2 {
    self->_level = arg2;
    return;
}

-(void *)message {
    r0 = self->_message;
    return r0;
}

-(void)setMessage:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_message, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_message, 0x0);
    objc_storeStrong((int64_t *)&self->_index, 0x0);
    return;
}

-(void *)getDictWithDeviceInfo:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x3d0;
    r27 = self;
    r19 = [arg2 retain];
    r25 = @selector(sharedInstance);
    r22 = [objc_msgSend(@class(AdColony), r25) retain];
    r0 = [ADCUtil appBundleInfo];
    r29 = &saved_fp;
    r23 = [r0 retain];
    var_210 = [NSMutableDictionary new];
    var_208 = r19;
    var_240 = r23;
    stack[-584] = r22;
    if (r19 != 0x0) {
            var_250 = r27;
            r0 = [r27 remappedKeysFromDeviceInfo];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 allKeys];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_220 = r0;
            var_230 = r1;
            r27 = objc_msgSend(r0, r1);
            if (r27 != 0x0) {
                    do {
                            r26 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_220);
                                    }
                                    r19 = *(0x0 + r26 * 0x8);
                                    r22 = [[r21 objectForKeyedSubscript:r19] retain];
                                    r24 = [[var_208 objectForKeyedSubscript:r19] retain];
                                    [var_210 setObject:r24 forKeyedSubscript:r22];
                                    [r24 release];
                                    [r22 release];
                                    r0 = [r21 objectForKeyedSubscript:r19];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    r24 = [r22 isKindOfClass:[NSNumber class]];
                                    [r22 release];
                                    if (r24 != 0x0) {
                                            r22 = [[r21 objectForKeyedSubscript:r19] retain];
                                            r0 = [var_208 objectForKeyedSubscript:r19];
                                            r0 = [r0 retain];
                                            r19 = r0;
                                            r0 = [r0 stringValue];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            [var_210 setObject:r24 forKeyedSubscript:r22];
                                            [r24 release];
                                            [r19 release];
                                            [r22 release];
                                    }
                                    r26 = r26 + 0x1;
                            } while (r26 < r27);
                            r27 = objc_msgSend(var_220, var_230);
                    } while (r27 != 0x0);
            }
            [var_220 release];
            [r21 release];
            r23 = var_240;
            r22 = stack[-584];
            r27 = var_250;
            r25 = @selector(sharedInstance);
    }
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    var_218 = r0;
    r0 = [r0 bundleIdentifier];
    r29 = r29;
    r0 = [r0 retain];
    var_220 = r0;
    if (r0 != 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            var_368 = r0;
            r0 = [r0 bundleIdentifier];
            r29 = r29;
            r24 = [r0 retain];
            [NSString class];
            var_370 = r24;
            if ([r24 isKindOfClass:r2] != 0x0) {
                    r0 = [NSBundle mainBundle];
                    r0 = [r0 retain];
                    var_3E8 = r0;
                    r0 = [r0 bundleIdentifier];
                    r29 = r29;
                    r9 = [r0 retain];
                    var_228 = 0x1;
                    var_230 = 0x1;
            }
            else {
                    var_230 = 0x0;
                    r9 = @"";
                    var_228 = 0x1;
            }
    }
    else {
            var_228 = 0x0;
            var_230 = 0x0;
            r9 = @"";
    }
    var_320 = r9;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_message));
    r19 = *(r27 + r20);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r27 + r20);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r0 = [r22 appSessionID];
    r29 = r29;
    r0 = [r0 retain];
    var_248 = r0;
    if (r0 != 0x0) {
            r0 = [r22 appSessionID];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_378 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r22 appSessionID];
                    r29 = r29;
                    r8 = [r0 retain];
                    var_250 = 0x1;
                    var_254 = 0x1;
            }
            else {
                    var_254 = 0x0;
                    r8 = @"";
                    var_250 = 0x1;
            }
    }
    else {
            var_250 = 0x0;
            var_254 = 0x0;
            r8 = @"";
    }
    var_328 = r8;
    r0 = [r22 appID];
    r29 = r29;
    r0 = [r0 retain];
    var_260 = r0;
    if (r0 != 0x0) {
            r0 = [r22 appID];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_380 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r22 appID];
                    r29 = r29;
                    r8 = [r0 retain];
                    var_264 = 0x1;
                    var_268 = 0x1;
            }
            else {
                    var_268 = 0x0;
                    r8 = @"";
                    var_264 = 0x1;
            }
    }
    else {
            var_268 = 0x0;
            r8 = @"";
    }
    var_330 = r8;
    r0 = [r27 getLogLevelString];
    r29 = r29;
    r0 = [r0 retain];
    var_270 = r0;
    if (r0 != 0x0) {
            r0 = [r27 getLogLevelString];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_388 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r27 getLogLevelString];
                    r29 = r29;
                    r8 = [r0 retain];
                    var_274 = 0x1;
                    var_278 = 0x1;
            }
            else {
                    var_278 = 0x0;
                    r8 = @"";
                    var_274 = 0x1;
            }
    }
    else {
            var_278 = 0x0;
            r8 = @"";
    }
    var_338 = r8;
    r0 = [r22 zoneIDs];
    r29 = r29;
    r0 = [r0 retain];
    var_280 = r0;
    if (r0 == 0x0) goto loc_1001b2e48;

loc_1001b2dd4:
    r0 = [r22 zoneIDs];
    r29 = r29;
    r20 = [r0 retain];
    [NSArray class];
    var_390 = r20;
    if ([r20 isKindOfClass:r2] == 0x0) goto loc_1001b2e50;

loc_1001b2e1c:
    r0 = [r22 zoneIDs];
    r29 = r29;
    r0 = [r0 retain];
    var_294 = 0x0;
    var_284 = 0x1;
    var_298 = 0x1;
    goto loc_1001b2e88;

loc_1001b2e88:
    var_290 = r0;
    r0 = objc_msgSend(@class(AdColony), r25);
    r0 = [r0 retain];
    var_2A0 = r0;
    r0 = [r0 controllerVersion];
    r29 = r29;
    r0 = [r0 retain];
    var_2A8 = r0;
    if (r0 != 0x0) {
            r0 = objc_msgSend(@class(AdColony), r25);
            r0 = [r0 retain];
            var_398 = r0;
            r0 = [r0 controllerVersion];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_3A0 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = objc_msgSend(@class(AdColony), r25);
                    r0 = [r0 retain];
                    var_3F0 = r0;
                    r0 = [r0 controllerVersion];
                    r29 = r29;
                    r9 = [r0 retain];
                    var_2AC = 0x1;
                    var_2B0 = 0x1;
            }
            else {
                    var_2B0 = 0x0;
                    r9 = @"";
                    var_2AC = 0x1;
            }
    }
    else {
            var_2B0 = 0x0;
            r9 = @"";
    }
    var_340 = r9;
    r0 = [r23 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_2B8 = r0;
    if (r0 != 0x0) {
            r0 = [r23 objectForKeyedSubscript:r2];
            r29 = r29;
            r19 = [r0 retain];
            [NSString class];
            var_3A8 = r19;
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r0 = [r23 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r9 = [r0 retain];
                    var_2BC = 0x1;
                    var_2C0 = 0x1;
            }
            else {
                    var_2C0 = 0x0;
                    r9 = @"";
                    var_2BC = 0x1;
            }
    }
    else {
            var_2C0 = 0x0;
            r9 = @"";
    }
    r21 = @selector(objectForKeyedSubscript:);
    var_348 = r9;
    r0 = objc_msgSend(r23, r21);
    r29 = r29;
    r0 = [r0 retain];
    var_2C8 = r0;
    if (r0 != 0x0) {
            r21 = @selector(objectForKeyedSubscript:);
            r0 = objc_msgSend(r23, r21);
            r29 = r29;
            r19 = [r0 retain];
            [NSString class];
            var_3B0 = r19;
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r21 = @selector(objectForKeyedSubscript:);
                    r0 = objc_msgSend(r23, r21);
                    r29 = r29;
                    r9 = [r0 retain];
                    var_2CC = 0x1;
                    var_2D0 = 0x1;
            }
            else {
                    var_2D0 = 0x0;
                    r9 = @"";
                    var_2CC = 0x1;
            }
    }
    else {
            var_2D0 = 0x0;
            r9 = @"";
    }
    var_350 = r9;
    r0 = [r22 options];
    r0 = [r0 retain];
    var_2D8 = r0;
    r0 = [r0 mediationNetwork];
    r29 = r29;
    r0 = [r0 retain];
    var_2E0 = r0;
    if (r0 != 0x0) {
            r0 = [r22 options];
            r0 = [r0 retain];
            var_3B8 = r0;
            r0 = [r0 mediationNetwork];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_3C0 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r22 options];
                    r0 = [r0 retain];
                    var_3F8 = r0;
                    r0 = [r0 mediationNetwork];
                    r29 = r29;
                    r9 = [r0 retain];
                    var_2E4 = 0x1;
                    var_2E8 = 0x1;
            }
            else {
                    var_2E8 = 0x0;
                    r9 = @"";
                    var_2E4 = 0x1;
            }
    }
    else {
            var_2E8 = 0x0;
            r9 = @"";
    }
    var_358 = r9;
    r0 = [r22 options];
    r0 = [r0 retain];
    var_2F0 = r0;
    r0 = [r0 mediationNetworkVersion];
    r29 = r29;
    r0 = [r0 retain];
    var_2F8 = r0;
    if (r0 != 0x0) {
            r0 = [r22 options];
            r0 = [r0 retain];
            var_3C8 = r0;
            r0 = [r0 mediationNetworkVersion];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_3D0 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r22 options];
                    r0 = [r0 retain];
                    var_400 = r0;
                    r0 = [r0 mediationNetworkVersion];
                    r29 = r29;
                    r9 = [r0 retain];
                    var_2FC = 0x1;
                    var_300 = 0x1;
            }
            else {
                    var_300 = 0x0;
                    r9 = @"";
                    var_2FC = 0x1;
            }
    }
    else {
            var_300 = 0x0;
            r9 = @"";
    }
    var_360 = r9;
    r0 = [r22 options];
    r0 = [r0 retain];
    var_308 = r0;
    r0 = [r0 plugin];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 != 0x0) {
            r0 = [r22 options];
            r0 = [r0 retain];
            var_3D8 = r0;
            r0 = [r0 plugin];
            r29 = r29;
            r20 = [r0 retain];
            [NSString class];
            var_3E0 = r20;
            if ([r20 isKindOfClass:r2] != 0x0) {
                    r0 = [r22 options];
                    r0 = [r0 retain];
                    var_408 = r0;
                    r0 = [r0 plugin];
                    r29 = r29;
                    r24 = [r0 retain];
                    var_314 = 0x1;
                    var_318 = 0x1;
            }
            else {
                    var_318 = 0x0;
                    r24 = @"";
                    var_314 = 0x1;
            }
    }
    else {
            var_318 = 0x0;
            r24 = @"";
    }
    r0 = [r22 options];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 pluginVersion];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            r0 = [r22 options];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 pluginVersion];
            r29 = r29;
            r25 = [r0 retain];
            [NSString class];
            if ([r25 isKindOfClass:r2] != 0x0) {
                    r0 = [r22 options];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 pluginVersion];
                    r29 = r29;
                    r19 = [r0 retain];
                    r22 = 0x1;
                    r28 = 0x1;
            }
            else {
                    r28 = 0x0;
                    r19 = @"";
                    r22 = 0x1;
            }
    }
    else {
            r22 = 0x0;
            r28 = 0x0;
            r19 = @"";
    }
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    var_310 = [r0 retain];
    if (r28 != 0x0) {
            [r19 release];
            [r21 release];
    }
    if (r22 != 0x0) {
            [r25 release];
            [r20 release];
    }
    [r26 release];
    [r23 release];
    r19 = var_290;
    if (var_318 != 0x0) {
            [r24 release];
            [var_408 release];
    }
    r21 = var_240;
    r20 = stack[-584];
    if (var_314 != 0x0) {
            [var_3E0 release];
            [var_3D8 release];
    }
    [r27 release];
    [var_308 release];
    if (var_300 != 0x0) {
            [var_360 release];
            [var_400 release];
    }
    if (var_2FC != 0x0) {
            [var_3D0 release];
            [var_3C8 release];
    }
    [var_2F8 release];
    [var_2F0 release];
    if (var_2E8 != 0x0) {
            [var_358 release];
            [var_3F8 release];
    }
    if (var_2E4 != 0x0) {
            [var_3C0 release];
            [var_3B8 release];
    }
    [var_2E0 release];
    [var_2D8 release];
    if (var_2D0 != 0x0) {
            [var_350 release];
    }
    if (var_2CC != 0x0) {
            [var_3B0 release];
    }
    [var_2C8 release];
    if (var_2C0 != 0x0) {
            [var_348 release];
    }
    if (var_2BC != 0x0) {
            [var_3A8 release];
    }
    [var_2B8 release];
    if (var_2B0 != 0x0) {
            [var_340 release];
            [var_3F0 release];
    }
    if (var_2AC != 0x0) {
            [var_3A0 release];
            [var_398 release];
    }
    [var_2A8 release];
    [var_2A0 release];
    if (var_294 != 0x0) {
            [r19 release];
    }
    if (var_298 != 0x0) {
            [r19 release];
    }
    if (var_284 != 0x0) {
            [var_390 release];
    }
    [var_280 release];
    if (var_278 != 0x0) {
            [var_338 release];
    }
    if (var_274 != 0x0) {
            [var_388 release];
    }
    [var_270 release];
    if (var_268 != 0x0) {
            [var_330 release];
    }
    if (var_264 != 0x0) {
            [var_380 release];
    }
    [var_260 release];
    if (var_254 != 0x0) {
            [var_328 release];
    }
    if (var_250 != 0x0) {
            [var_378 release];
    }
    [var_248 release];
    if (var_230 != 0x0) {
            [var_320 release];
            [var_3E8 release];
    }
    if (var_228 != 0x0) {
            [var_370 release];
            [var_368 release];
    }
    var_58 = **___stack_chk_guard;
    [var_220 release];
    [var_218 release];
    r0 = [ADCDataTransform mergeDictionaries:var_210];
    r0 = [r0 retain];
    r0 = objc_retainAutoreleaseReturnValue(r0);
    r19 = r0;
    [r0 release];
    [var_310 release];
    [var_210 release];
    [r21 release];
    [r20 release];
    [var_208 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001b2e50:
    var_284 = 0x1;
    goto loc_1001b2e58;

loc_1001b2e58:
    r0 = [NSArray arrayWithObjects:&stack[-464] count:0x0];
    r29 = r29;
    r0 = [r0 retain];
    var_298 = 0x0;
    var_294 = 0x1;
    goto loc_1001b2e88;

loc_1001b2e48:
    var_284 = 0x0;
    goto loc_1001b2e58;
}

@end