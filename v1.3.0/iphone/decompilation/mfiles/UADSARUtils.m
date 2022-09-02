@implementation UADSARUtils

+(bool)isFrameworkPresent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_getClass("ARSession");
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

+(void *)sessionCreate {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r1 = @selector(getLogLevel);
    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: CREATING ARSESSION", r1, r2, r3);
    }
    if (([UADSARUtils loadFramework] & 0x1) != 0x0) {
            r20 = [objc_getClass("ARSession") retain];
            if (r20 != 0x0) {
                    r21 = [[r20 alloc] init];
                    if (r21 != 0x0) {
                            r1 = @selector(getLogLevel);
                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Succesfully created object for ARSession", r1, r2, r3);
                            }
                    }
            }
            else {
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            r1 = @selector(getLogLevel);
            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x2) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Can't load ARKit", r1, r2, r3);
            }
            r21 = 0x0;
    }
    r0 = [r21 autorelease];
    return r0;
}

+(void)sessionPause:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r20 = NSSelectorFromString(@"pause");
            if ([r19 respondsToSelector:r2] != 0x0) {
                    [r19 performSelector:r2];
            }
    }
    [r19 release];
    return;
}

+(void)arSessionRestart:(void *)arg2 withConfiguration:(void *)arg3 withOptions:(int)arg4 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x70;
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
    r21 = arg4;
    r19 = [r2 retain];
    r20 = [r3 retain];
    if (r19 != 0x0 && r20 != 0x0) {
            r22 = NSSelectorFromString(@"runWithConfiguration:options:");
            r2 = r22;
            if ([r19 respondsToSelector:r2] != 0x0) {
                    r1 = @selector(getLogLevel);
                    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: session responds to runWithConfiguration", r1, r2, r3);
                    }
                    r2 = r22;
                    r24 = [r19 methodForSelector:r2];
                    if (r24 != 0x0) {
                            r1 = @selector(getLogLevel);
                            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Got runWithConfiguration implementation", r1, r2, r3);
                            }
                            (r24)(r19, r22, r20, r21);
                    }
            }
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Session or configuration is null", @selector(getLogLevel), r2, r3);
            }
    }
    [r20 release];
    [r19 release];
    return;
}

+(bool)loadFramework {
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
    r21 = [UADSARUtils isFrameworkPresent];
    r1 = @selector(getLogLevel);
    CMP(objc_msgSend(@class(USRVDeviceLog), r1), 0x4);
    if ((r21 & 0x1) == 0x0) goto loc_1000eb84c;

loc_1000eb818:
    if (!CPU_FLAGS & L) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: ARKit framework already present", r1, r2, r3);
    }
    r21 = 0x0;
    goto loc_1000eba1c;

loc_1000eba1c:
    r19 = 0x1;
    goto loc_1000eba58;

loc_1000eba58:
    var_48 = **___stack_chk_guard;
    [r21 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1000eb84c:
    if (!CPU_FLAGS & L) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: ARKit Framework is not present, trying to load it.", r1, r2, r3);
    }
    if ([USRVDevice isSimulator] != 0x0) {
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 environment];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:@"DYLD_FALLBACK_FRAMEWORK_PATH"];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            [r22 release];
            if (r21 != 0x0) {
                    r3 = 0x3;
                    r23 = [[NSArray arrayWithObjects:&var_60 count:r3] retain];
                    r22 = [[NSString pathWithComponents:r23] retain];
                    [r23 release];
            }
            else {
                    r22 = 0x0;
            }
            [r21 release];
    }
    else {
            r22 = [[NSString stringWithFormat:r2] retain];
    }
    r0 = objc_retainAutorelease(r22);
    r21 = r0;
    dlopen([r0 cStringUsingEncoding:0x4], 0x1);
    r19 = [UADSARUtils isFrameworkPresent];
    r0 = @class(USRVDeviceLog);
    r1 = @selector(getLogLevel);
    r0 = objc_msgSend(r0, r1);
    if ((r19 & 0x1) == 0x0) goto loc_1000eba24;

loc_1000eb9ec:
    if (r0 >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Succesfully loaded ARKit framework", r1, 0x4, r3);
    }
    goto loc_1000eba1c;

loc_1000eba24:
    if (r0 >= 0x1) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: ARKit still not present!", r1, 0x4, r3);
    }
    r19 = 0x0;
    goto loc_1000eba58;
}

+(void)sessionAddAnchor:(void *)arg2 anchor:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && r20 != 0x0) {
            if (*0x1011d1be0 == 0x0) {
                    *0x1011d1be8 = NSSelectorFromString(@"addAnchor:");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1be8];
                            if (r0 != 0x0) {
                                    *0x1011d1be0 = r0;
                            }
                    }
            }
            (*0x1011d1be0)(r19, *0x1011d1be8, r20);
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)sessionRemoveAnchor:(void *)arg2 anchor:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && r20 != 0x0) {
            if (*0x1011d1bf0 == 0x0) {
                    *0x1011d1bf8 = NSSelectorFromString(@"removeAnchor:");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1bf8];
                            if (r0 != 0x0) {
                                    *0x1011d1bf0 = r0;
                            }
                    }
            }
            (*0x1011d1bf0)(r19, *0x1011d1bf8, r20);
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)session:(void *)arg2 setDelegate:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r3;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            [r19 setValue:r20 forKey:@"delegate"];
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Session is null", @selector(getLogLevel), r2, r3);
            }
    }
    [r19 release];
    return;
}

+(void)setConfigurationProperty:(void *)arg2 name:(void *)arg3 value:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r22 = [r19 class];
    r0 = objc_retainAutorelease(r21);
    r21 = r0;
    if (class_getProperty(r22, [r0 cStringUsingEncoding:0x4]) != 0x0) {
            [r19 setValue:r20 forKey:r21];
    }
    [r20 release];
    [r21 release];
    [r19 release];
    return;
}

+(void *)sessionGetCurrentFrame:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1c00 == 0x0) {
                    *0x1011d1c08 = NSSelectorFromString(@"currentFrame");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1c08];
                            if (r0 != 0x0) {
                                    *0x1011d1c00 = r0;
                            }
                    }
            }
            r20 = [(*0x1011d1c00)(r19, *0x1011d1c08) retain];
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Session is null", @selector(getLogLevel), r2, r3);
            }
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)createConfiguration:(char *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = r2;
    if (([UADSARUtils loadFramework] & 0x1) != 0x0) {
            r19 = [objc_getClass(r20) retain];
            if (r19 != 0x0) {
                    r21 = [r19 new];
                    if (r21 != 0x0) {
                            r20 = [r21 retain];
                    }
                    else {
                            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Error - can't instantiate %s", @selector(getLogLevel), r2, r3, r4);
                            }
                            r20 = 0x0;
                    }
                    [r21 release];
            }
            else {
                    if ([USRVDeviceLog getLogLevel] >= 0x1) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Error - can't find class %s", @selector(getLogLevel), r2, r3, r4);
                    }
                    r20 = 0x0;
            }
            [r19 release];
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x2) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Can't load ARKit", @selector(getLogLevel), r2, r3);
            }
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getArConfigurationVideoFormats:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r19 = [objc_retainAutorelease(arg2) cStringUsingEncoding:0x4];
    [r20 release];
    r0 = objc_getClass(r19);
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            NSSelectorFromString(@"supportedVideoFormats");
            if ([r19 respondsToSelector:r2] != 0x0) {
                    r20 = [[r19 valueForKey:@"supportedVideoFormats"] retain];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(bool)arConfigurationIsSupported:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if ([UADSARUtils loadFramework] != 0x0) {
                    r0 = objc_retainAutorelease(r19);
                    r0 = [r0 cStringUsingEncoding:0x4];
                    r0 = objc_getClass(r0);
                    r29 = r29;
                    r20 = [r0 retain];
                    if (r20 != 0x0) {
                            NSSelectorFromString(@"isSupported");
                            if ([r20 respondsToSelector:r2] != 0x0) {
                                    r0 = [r20 valueForKey:@"isSupported"];
                                    r0 = [r0 retain];
                                    r21 = [r0 boolValue];
                                    [r0 release];
                            }
                            else {
                                    r21 = 0x0;
                            }
                    }
                    else {
                            r21 = 0x0;
                    }
                    [r20 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Configuration is null", @selector(getLogLevel), r2, r3);
            }
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)createConfigurationFromProperties:(void *)arg2 {
    r31 = r31 - 0x80;
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
    if (r19 == 0x0) goto loc_1000ec574;

loc_1000ec2bc:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0 || [r20 respondsToSelector:@selector(cStringUsingEncoding:)] == 0x0) goto loc_1000ec5c0;

loc_1000ec308:
    r2 = [objc_retainAutorelease(r20) cStringUsingEncoding:0x4];
    r0 = [UADSARUtils createConfiguration:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1000ec57c;

loc_1000ec348:
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            [NSNumber class];
            if ([r22 isKindOfClass:r2] != 0x0) {
                    [UADSARUtils setConfigurationProperty:r21 name:@"lightEstimationEnabled" value:r22];
            }
    }
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            [NSNumber class];
            if ([r24 isKindOfClass:r2] != 0x0) {
                    [UADSARUtils setConfigurationProperty:r21 name:@"worldAlignment" value:r24];
            }
    }
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) {
            [NSNumber class];
            if ([r25 isKindOfClass:r2] != 0x0) {
                    [UADSARUtils setConfigurationProperty:r21 name:@"planeDetection" value:r25];
            }
    }
    r0 = [r19 valueForKey:r2];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            [NSNumber class];
            if ([r23 isKindOfClass:r2] != 0x0) {
                    [UADSARUtils setConfigurationProperty:r21 name:@"autoFocusEnabled" value:r23];
            }
    }
    r26 = [[r19 objectForKey:r2] retain];
    if (r26 != 0x0) {
            [UADSARUtils arConfigurationSetVideoFormat:r21 format:r26];
    }
    [r26 release];
    [r23 release];
    [r25 release];
    [r24 release];
    [r22 release];
    goto loc_1000ec5c4;

loc_1000ec5c4:
    [r20 release];
    goto loc_1000ec5cc;

loc_1000ec5cc:
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_1000ec57c:
    if ([USRVDeviceLog getLogLevel] >= 0x1) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Can't create configuration: %@", @selector(getLogLevel), r2, r3, r4);
    }
    goto loc_1000ec5c0;

loc_1000ec5c0:
    r21 = 0x0;
    goto loc_1000ec5c4;

loc_1000ec574:
    r21 = 0x0;
    goto loc_1000ec5cc;
}

+(struct __CVBuffer *)arFrameCapturedImage:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1c10 == 0x0) {
                    *0x1011d1c18 = NSSelectorFromString(@"capturedImage");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1c18];
                            if (r0 != 0x0) {
                                    *0x1011d1c10 = r0;
                            }
                    }
            }
            r20 = (*0x1011d1c10)(r19, *0x1011d1c18);
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Frame is null", @selector(getLogLevel), r2, r3);
            }
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)arConfigurationSupportedVideoFormats:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x1f0;
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
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r0 = [UADSARUtils getArConfigurationVideoFormats:r2];
            r29 = r29;
            r19 = [r0 retain];
            if (r19 != 0x0) {
                    var_1A0 = [[NSMutableArray alloc] init];
                    var_1C0 = r19;
                    r0 = [r19 retain];
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_1B8 = r1;
                    var_1B0 = r0;
                    r0 = objc_msgSend(r0, r1);
                    var_170 = r0;
                    if (r0 != 0x0) {
                            do {
                                    r20 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(var_1B0);
                                            }
                                            var_198 = @selector(addObject:);
                                            var_190 = @selector(numberWithInteger:);
                                            r26 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                                            r22 = @selector(dictionaryWithObjects:forKeys:count:);
                                            r19 = @selector(numberWithFloat:);
                                            r24 = *(0x0 + r20 * 0x8);
                                            r0 = [r24 valueForKey:@"imageResolution"];
                                            r0 = [r0 retain];
                                            [r0 CGSizeValue];
                                            [r0 release];
                                            r0 = [r24 valueForKey:@"framesPerSecond"];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 integerValue];
                                            [r0 release];
                                            asm { fcvt       s0, d8 };
                                            r0 = *(r26 + 0xfc0);
                                            r0 = objc_msgSend(r0, r19);
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            r0 = *(r26 + 0xfc0);
                                            asm { fcvt       s0, d9 };
                                            r23 = [objc_msgSend(r0, r19) retain];
                                            r27 = [objc_msgSend(@class(NSDictionary), r22) retain];
                                            r25 = [objc_msgSend(*(r26 + 0xfc0), var_190) retain];
                                            r0 = @class(NSDictionary);
                                            r0 = objc_msgSend(r0, r22);
                                            r29 = r29;
                                            [r0 retain];
                                            [r25 release];
                                            [r27 release];
                                            [r23 release];
                                            [r24 release];
                                            objc_msgSend(var_1A0, var_198);
                                            [r28 release];
                                            r20 = r20 + 0x1;
                                    } while (r20 < var_170);
                                    r0 = objc_msgSend(var_1B0, var_1B8);
                                    var_170 = r0;
                            } while (r0 != 0x0);
                    }
                    [var_1B0 release];
                    r19 = var_1C0;
            }
            else {
                    var_1A0 = 0x0;
            }
            [r19 release];
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Configuration is null", @selector(getLogLevel), r2, r3);
            }
            var_1A0 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [var_1A0 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(struct CGAffineTransform)arFrame:(void *)arg2 displayTransformForOrientation:(long long)arg3 viewSize:(struct CGSize)arg4 {
    memcpy(&r4, &arg4, 0x8);
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x70;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v1;
    v9 = v0;
    r21 = r3;
    r20 = r8;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1c20 == 0x0) {
                    *0x1011d1c28 = NSSelectorFromString(@"displayTransformForOrientation:viewportSize:");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1c28];
                            if (r0 != 0x0) {
                                    *0x1011d1c20 = r0;
                            }
                    }
            }
            (*0x1011d1c20)(r19, *0x1011d1c28, r21);
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Frame is null", @selector(getLogLevel), r2, r3);
            }
            r8 = *_CGAffineTransformIdentity;
            q2 = *(int128_t *)(r8 + 0x10);
            q0 = *(int128_t *)(r8 + 0x20);
            q1 = *(int128_t *)r8;
            *(int128_t *)(r20 + 0x10) = q2;
            *(int128_t *)(r20 + 0x20) = q0;
            *(int128_t *)r20 = q1;
    }
    r0 = [r19 release];
    return r0;
}

+(void *)arFrameCamera:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1c30 == 0x0) {
                    *0x1011d1c38 = NSSelectorFromString(@"camera");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1c38];
                            if (r0 != 0x0) {
                                    *0x1011d1c30 = r0;
                            }
                    }
            }
            r20 = [(*0x1011d1c30)(r19, *0x1011d1c38) retain];
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Frame is null", @selector(getLogLevel), r2, r3);
            }
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)arFrameLightEstimate:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1c40 == 0x0) {
                    *0x1011d1c48 = NSSelectorFromString(@"lightEstimate");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1c48];
                            if (r0 != 0x0) {
                                    *0x1011d1c40 = r0;
                            }
                    }
            }
            r20 = [(*0x1011d1c40)(r19, *0x1011d1c48) retain];
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Frame is null", @selector(getLogLevel), r2, r3);
            }
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)arPlaneAnchorClass {
    r0 = objc_getClass("ARPlaneAnchor");
    return r0;
}

+(void)arConfigurationSetVideoFormat:(void *)arg2 format:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x1c0;
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
    r29 = &saved_fp;
    r20 = [r2 retain];
    var_140 = [r3 retain];
    if (r20 == 0x0) goto loc_1000ecf34;

loc_1000ecc9c:
    r21 = [NSStringFromClass([r20 class]) retain];
    r0 = [UADSARUtils getArConfigurationVideoFormats:r21];
    r29 = r29;
    r19 = [r0 retain];
    [r21 release];
    if (r19 == 0x0) goto loc_1000ecf7c;

loc_1000eccf0:
    var_180 = r19;
    var_178 = r20;
    var_128 = q0;
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_170 = r0;
    var_188 = r1;
    r0 = objc_msgSend(r0, r1);
    var_160 = r0;
    if (r0 == 0x0) goto loc_1000ecf28;

loc_1000ecd38:
    var_168 = *var_128;
    r21 = var_140;
    goto loc_1000ecd58;

loc_1000ecd58:
    r24 = 0x0;
    goto loc_1000ecd78;

loc_1000ecd78:
    if (*var_128 != var_168) {
            objc_enumerationMutation(var_170);
    }
    r28 = *(var_130 + r24 * 0x8);
    r0 = [r28 valueForKey:r2];
    r0 = [r0 retain];
    [r0 CGSizeValue];
    [r22 release];
    [[objc_msgSend(r28, r23) retain] integerValue];
    [r0 release];
    r0 = objc_msgSend(r21, r23);
    r0 = [r0 retain];
    r25 = r0;
    r0 = objc_msgSend(r0, r23);
    r0 = [r0 retain];
    [r0 floatValue];
    asm { fcvt       d11, s0 };
    r0 = objc_msgSend(r25, r23);
    r0 = [r0 retain];
    objc_msgSend(r0, r19);
    [r20 release];
    [r26 release];
    r0 = objc_msgSend(r21, r23);
    r29 = r29;
    objc_msgSend([r0 retain], r27);
    [r0 release];
    COND = d9 == d11;
    asm { fcvt       d0, s10 };
    if (COND) {
            asm { fccmp      d8, d0, #0x0, eq };
    }
    if (CPU_FLAGS & E) {
            asm { ccmp       x22, x26, #0x0, eq };
    }
    if (CPU_FLAGS & E) goto loc_1000ecfc0;

loc_1000ecee0:
    [r25 release];
    r24 = r24 + 0x1;
    if (r24 < var_160) goto loc_1000ecd78;

loc_1000ecef8:
    r0 = objc_msgSend(var_170, var_188);
    var_160 = r0;
    if (r0 != 0x0) goto loc_1000ecd58;

loc_1000ecf28:
    [var_170 release];
    goto loc_1000ed010;

loc_1000ed010:
    r0 = [USRVDeviceLog getLogLevel];
    r19 = var_180;
    r20 = var_178;
    if (r0 < 0x2) goto loc_1000ed058;

loc_1000ed030:
    r0 = @"%@/UnityAds: %s (line:%d) :: Failed to set video format for configuration";
    goto loc_1000ed054;

loc_1000ed054:
    NSLog(r0);
    goto loc_1000ed058;

loc_1000ed058:
    [r19 release];
    goto loc_1000ed060;

loc_1000ed060:
    var_78 = **___stack_chk_guard;
    [var_140 release];
    [r20 release];
    if (**___stack_chk_guard != var_78) {
            __stack_chk_fail();
    }
    return;

loc_1000ecfc0:
    r19 = [r28 retain];
    [r25 release];
    [var_170 release];
    if (r19 == 0x0) goto loc_1000ed010;

loc_1000ecfe0:
    r20 = var_178;
    [r20 setValue:r19 forKey:@"videoFormat"];
    [r19 release];
    r19 = var_180;
    goto loc_1000ed058;

loc_1000ecf7c:
    if ([USRVDeviceLog getLogLevel] < 0x2) goto loc_1000ed058;

loc_1000ecf98:
    r0 = @"%@/UnityAds: %s (line:%d) :: Configuration doesn't support format selection";
    goto loc_1000ed054;

loc_1000ecf34:
    if ([USRVDeviceLog getLogLevel] >= 0x1) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Configuration is null", @selector(getLogLevel), r2, r3);
    }
    goto loc_1000ed060;
}

+(void *)arFaceAnchorClass {
    r0 = objc_getClass("ARFaceAnchor");
    return r0;
}

+(void *)anchorInitWithTransform:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_30 = q3;
    var_50 = q1;
    var_40 = q2;
    var_60 = q0;
    if (([UADSARUtils loadFramework] & 0x1) != 0x0) {
            r0 = objc_getClass("ARAnchor");
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            r20 = [r0 alloc];
            if (*0x1011d1c50 == 0x0) {
                    *0x1011d1c58 = NSSelectorFromString(@"initWithTransform:");
                    if ([r20 respondsToSelector:r2] != 0x0) {
                            r0 = [r20 methodForSelector:*0x1011d1c58];
                            if (r0 != 0x0) {
                                    *0x1011d1c50 = r0;
                            }
                    }
            }
            r21 = [(*0x1011d1c50)(r20, *0x1011d1c58) retain];
            [r20 release];
            [r19 release];
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: ARKit is not present", @selector(getLogLevel), r2, r3);
            }
            r21 = 0x0;
    }
    r0 = [r21 autorelease];
    return r0;
}

+(union ?)anchorTransform:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1c60 == 0x0) {
                    *0x1011d1c68 = NSSelectorFromString(@"transform");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1c68];
                            if (r0 != 0x0) {
                                    *0x1011d1c60 = r0;
                            }
                    }
            }
            (*0x1011d1c60)(r19, *0x1011d1c68);
            var_30 = q0;
            var_50 = q2;
            var_40 = q1;
            var_60 = q3;
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Anchor is null", @selector(getLogLevel), r2, r3);
            }
            r8 = *_matrix_identity_float4x4;
            var_30 = *(int128_t *)r8;
            var_40 = *(int128_t *)(r8 + 0x10);
            var_50 = *(int128_t *)(r8 + 0x20);
            var_60 = *(int128_t *)(r8 + 0x30);
    }
    r0 = [r19 release];
    return r0;
}

+(void)arAnchorCenter:(void *)arg2 center:(float[3])arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r3;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1c70 == 0x0) {
                    *0x1011d1c78 = NSSelectorFromString(@"center");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1c78];
                            if (r0 != 0x0) {
                                    *0x1011d1c70 = r0;
                            }
                    }
            }
            (*0x1011d1c70)(r19, *0x1011d1c78);
            *r20 = d0;
            asm { st1        {v0.s}[2], [x8] };
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Anchor is null", @selector(getLogLevel), r2, r3);
            }
    }
    [r19 release];
    return;
}

+(void)arAnchorExtent:(void *)arg2 extent:(float[3])arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r3;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1c80 == 0x0) {
                    *0x1011d1c88 = NSSelectorFromString(@"extent");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1c88];
                            if (r0 != 0x0) {
                                    *0x1011d1c80 = r0;
                            }
                    }
            }
            (*0x1011d1c80)(r19, *0x1011d1c88);
            *r20 = d0;
            asm { st1        {v0.s}[2], [x8] };
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Anchor is null", @selector(getLogLevel), r2, r3);
            }
    }
    [r19 release];
    return;
}

+(void *)arAnchorIdentifier:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1c90 == 0x0) {
                    *0x1011d1c98 = NSSelectorFromString(@"identifier");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1c98];
                            if (r0 != 0x0) {
                                    *0x1011d1c90 = r0;
                            }
                    }
            }
            r20 = [(*0x1011d1c90)(r19, *0x1011d1c98) retain];
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Anchor is null", @selector(getLogLevel), r2, r3);
            }
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(long long)arPlaneAnchorAlignment:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1ca0 == 0x0) {
                    *0x1011d1ca8 = NSSelectorFromString(@"alignment");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1ca8];
                            if (r0 != 0x0) {
                                    *0x1011d1ca0 = r0;
                            }
                    }
            }
            r20 = 0x1011d1000;
            (*(r20 + 0xca0))(r19, *0x1011d1ca8);
            asm { sxtw       x20, w0 };
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Anchor is null", @selector(getLogLevel), r2, r3);
            }
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(union ?)arCamera:(void *)arg2 projectionMatrixForOrientation:(long long)arg3 viewportSize:(struct CGSize)arg4 zNear:(double)arg5 zFar:(double)arg6 {
    memcpy(&r4, &arg4, 0x8);
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0xb0;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r20 = r3;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1cb0 == 0x0) {
                    *0x1011d1cb8 = NSSelectorFromString(@"projectionMatrixForOrientation:viewportSize:zNear:zFar:");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1cb8];
                            if (r0 != 0x0) {
                                    *0x1011d1cb0 = r0;
                            }
                    }
            }
            (*0x1011d1cb0)(r19, *0x1011d1cb8, r20);
            var_60 = q1;
            var_50 = q0;
            var_80 = q3;
            var_70 = q2;
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Camera is null", @selector(getLogLevel), r2, r3);
            }
            r8 = *_matrix_identity_float4x4;
            var_50 = *(int128_t *)r8;
            var_60 = *(int128_t *)(r8 + 0x10);
            var_70 = *(int128_t *)(r8 + 0x20);
            var_80 = *(int128_t *)(r8 + 0x30);
    }
    r0 = [r19 release];
    return r0;
}

+(double)arLightEstimateAmbientIntensity:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x60;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1cd0 == 0x0) {
                    *0x1011d1cd8 = NSSelectorFromString(@"ambientIntensity");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1cd8];
                            if (r0 != 0x0) {
                                    *0x1011d1cd0 = r0;
                            }
                    }
            }
            (*0x1011d1cd0)(r19, *0x1011d1cd8);
            v8 = v0;
    }
    else {
            r0 = [USRVDeviceLog getLogLevel];
            v8 = 0x0;
            if (r0 >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Light estimate is null", @selector(getLogLevel), r2, r3);
            }
    }
    r0 = [r19 release];
    return r0;
}

+(union ?)arCamera:(void *)arg2 viewMatrixForOrientation:(long long)arg3 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r3;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1cc0 == 0x0) {
                    *0x1011d1cc8 = NSSelectorFromString(@"viewMatrixForOrientation:");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1cc8];
                            if (r0 != 0x0) {
                                    *0x1011d1cc0 = r0;
                            }
                    }
            }
            (*0x1011d1cc0)(r19, *0x1011d1cc8, r20);
            var_30 = q0;
            var_50 = q2;
            var_40 = q1;
            var_60 = q3;
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Camera is null", @selector(getLogLevel), r2, r3);
            }
            r8 = *_matrix_identity_float4x4;
            var_30 = *(int128_t *)r8;
            var_40 = *(int128_t *)(r8 + 0x10);
            var_50 = *(int128_t *)(r8 + 0x20);
            var_60 = *(int128_t *)(r8 + 0x30);
    }
    r0 = [r19 release];
    return r0;
}

+(double)arLightEstimateAmbientColorTemperature:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x60;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    if (r19 != 0x0) {
            if (*0x1011d1ce0 == 0x0) {
                    *0x1011d1ce8 = NSSelectorFromString(@"ambientColorTemperature");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 methodForSelector:*0x1011d1ce8];
                            if (r0 != 0x0) {
                                    *0x1011d1ce0 = r0;
                            }
                    }
            }
            (*0x1011d1ce0)(r19, *0x1011d1ce8);
            v8 = v0;
    }
    else {
            r0 = [USRVDeviceLog getLogLevel];
            v8 = 0x0;
            if (r0 >= 0x1) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Light estimate is null", @selector(getLogLevel), r2, r3);
            }
    }
    r0 = [r19 release];
    return r0;
}

+(struct CGSize)sizeForOrientation:(long long)arg2 width:(unsigned long long)arg3 height:(unsigned long long)arg4 {
    r4 = arg4;
    r3 = arg3;
    r0 = self;
    r8 = arg2 - 0x3;
    if (r3 < r4) {
            if (!CPU_FLAGS & B) {
                    r9 = r3;
            }
            else {
                    r9 = r4;
            }
    }
    if (CPU_FLAGS & S) {
            if (!CPU_FLAGS & B) {
                    r10 = r4;
            }
            else {
                    r10 = r3;
            }
    }
    asm { ucvtf      d0, x8 };
    asm { ucvtf      d1, x9 };
    return r0;
}

@end