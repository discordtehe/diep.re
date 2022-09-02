@implementation ADCVideoViewAPI

+(bool)createWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x110;
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
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCVideoView class] viewExists:0x0];
    r20 = r0;
    if (([r0 isValid:0x0] & 0x1) == 0x0) goto loc_1001cc298;

loc_1001cc1d4:
    r0 = [r20 filepath];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1001cc230;

loc_1001cc1f8:
    r0 = [r20 filepath];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) goto loc_1001cc304;

loc_1001cc228:
    [r24 release];
    goto loc_1001cc230;

loc_1001cc230:
    [r21 release];
    goto loc_1001cc238;

loc_1001cc238:
    r22 = [[r20 filepath] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCVideoViewAPI createWithDict:andModuleID:]" line:0x34 withFormat:@"Invalid filepath: %@ supplied to VideoView.create"];
    [r22 release];
    goto loc_1001cc2cc;

loc_1001cc2cc:
    r22 = 0x0;
    goto loc_1001cc2d0;

loc_1001cc2d0:
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_1001cc304:
    r25 = [[NSFileManager defaultManager] retain];
    r0 = [r20 filepath];
    r29 = r29;
    r26 = [r0 retain];
    r27 = [r25 fileExistsAtPath:r26];
    [r26 release];
    [r25 release];
    [r24 release];
    [r21 release];
    if ((r27 & 0x1) == 0x0) goto loc_1001cc238;

loc_1001cc378:
    r24 = [[r20 filepath] retain];
    r0 = [NSURL fileURLWithPath:r24 isDirectory:0x0];
    r29 = r29;
    r21 = [r0 retain];
    [r24 release];
    if (r21 == 0x0) goto loc_1001cc4d8;

loc_1001cc3c8:
    r24 = [[ADCDevice sharedDevice] retain];
    r0 = [r20 filepath];
    r29 = r29;
    r25 = [r0 retain];
    r26 = [r24 pathIsAllowable:r25];
    [r25 release];
    [r24 release];
    if ((r26 & 0x1) == 0x0) goto loc_1001cc520;

loc_1001cc42c:
    r23 = [[r19 objectForKeyedSubscript:@"enable_timer"] retain];
    r24 = [[r20 session] retain];
    [ADCInterstitialAdSession class];
    if ([r24 isKindOfClass:r2] != 0x0) {
            [r24 release];
            if (r23 == 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCVideoViewAPI createWithDict:andModuleID:]" line:0x43 withFormat:@"No enable_timer parameter present. Timer will not be enabled"];
            }
    }
    else {
            [r24 release];
    }
    var_D8 = [r21 retain];
    var_D0 = [r20 retain];
    [r23 retain];
    dispatch_async(*__dispatch_main_q, &var_F8);
    [r23 release];
    [var_D0 release];
    [var_D8 release];
    _Block_object_dispose(&var_B0, 0x8);
    [0x0 release];
    _Block_object_dispose(&var_80, 0x8);
    [0x0 release];
    [r22 release];
    r22 = 0x1;
    goto loc_1001cc684;

loc_1001cc684:
    [r21 release];
    goto loc_1001cc2d0;

loc_1001cc520:
    r23 = [[r20 filepath] retain];
    goto loc_1001cc564;

loc_1001cc564:
    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    [r23 release];
    r22 = 0x0;
    goto loc_1001cc684;

loc_1001cc4d8:
    r23 = [[r20 filepath] retain];
    goto loc_1001cc564;

loc_1001cc298:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCVideoViewAPI createWithDict:andModuleID:]" line:0x2f withFormat:@"ADCViewContext triggered a failure in create method of ADCVideoView"];
    goto loc_1001cc2cc;
}

+(bool)setBoundsWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
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
    r19 = [arg2 retain];
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCVideoView class] viewExists:0x1];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"x"];
            r0 = [r0 retain];
            [r0 intValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"y"];
            r0 = [r0 retain];
            [r0 intValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"width"];
            r0 = [r0 retain];
            [r0 unsignedIntegerValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"height"];
            r0 = [r0 retain];
            [r0 unsignedIntegerValue];
            [r0 release];
            [[[r20 view] retain] retain];
            dispatch_async(*__dispatch_main_q, &var_80);
            [r0 release];
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

+(bool)setVisibleWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCVideoView class] viewExists:0x1];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r21 = [[r19 objectForKeyedSubscript:@"visible"] retain];
            r22 = [[r20 view] retain];
            var_38 = [r20 retain];
            var_30 = r22;
            [r22 retain];
            var_28 = r21;
            [r21 retain];
            dispatch_async(*__dispatch_main_q, &var_58);
            [var_28 release];
            [var_30 release];
            [var_38 release];
            [r21 release];
            [r22 release];
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

+(bool)setVolumeWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCVideoView class] viewExists:0x1];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"volume"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [[[r20 view] retain] retain];
                    var_28 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_50);
                    [var_28 release];
                    [r0 release];
                    [r22 release];
                    r22 = 0x1;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCVideoViewAPI setVolumeWithDict:andModuleID:]" line:0xb1 withFormat:@"Invalid volume parameter supplied"];
                    r22 = 0x0;
            }
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(bool)playWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if (([ADCSystemAPI isShowingBrowser] & 0x1) == 0x0 && ([ADCSystemAPI isShowingStoreView] & 0x1) == 0x0) {
            r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:r20 andType:[ADCVideoView class] viewExists:0x1];
            r20 = r0;
            if ([r0 isValid:0x1] != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:@"replay"];
                    r29 = r29;
                    r21 = [r0 retain];
                    if (r21 != 0x0) {
                            r22 = [r21 boolValue];
                    }
                    else {
                            r22 = 0x0;
                    }
                    [[[r20 view] retain] retain];
                    dispatch_async(*__dispatch_main_q, &var_50);
                    [r0 release];
                    [r22 release];
                    [r21 release];
                    r21 = 0x1;
            }
            else {
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)pauseWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = [arg2 retain];
    r19 = [[ADCViewContext alloc] initWithDict:r22 moduleID:arg3 andType:[ADCVideoView class] viewExists:0x1];
    [r22 release];
    if ([r19 isValid:0x1] != 0x0) {
            [[[r19 view] retain] retain];
            dispatch_async(*__dispatch_main_q, &var_48);
            [r0 release];
            [r20 release];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)seekWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0xd0;
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
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCVideoView class] viewExists:0x1];
    r20 = r0;
    if ([r0 isValid:0x1] == 0x0) goto loc_1001ce360;

loc_1001ce22c:
    r0 = [r19 objectForKeyedSubscript:@"time"];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1001ce368;

loc_1001ce254:
    r0 = [r20 view];
    r0 = [r0 retain];
    r0 = [r0 retain];
    var_B0 = r0;
    var_88 = r0;
    var_80 = [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_A8);
    r0 = [r20 viewID];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1001ce3a4;

loc_1001ce2f4:
    r0 = [r20 viewID];
    r29 = r29;
    r22 = [r0 retain];
    [NSNumber class];
    var_B8 = r22;
    if ([r22 isKindOfClass:r2] == 0x0) goto loc_1001ce3ac;

loc_1001ce338:
    r0 = [r20 viewID];
    r29 = r29;
    r25 = [r0 retain];
    r22 = 0x0;
    r28 = 0x1;
    r24 = 0x1;
    goto loc_1001ce3dc;

loc_1001ce3dc:
    r27 = [@(YES) retain];
    r26 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r27 release];
    if (r22 == 0x0) {
            if (r24 == 0x0) {
                    if (r28 != 0x0) {
                            [var_B8 release];
                    }
            }
            else {
                    [r25 release];
                    if (r28 != 0x0) {
                            [var_B8 release];
                    }
            }
    }
    else {
            [r25 release];
            if (r24 != 0x0) {
                    [r25 release];
                    if (r28 != 0x0) {
                            [var_B8 release];
                    }
            }
            else {
                    if (r28 != 0x0) {
                            [var_B8 release];
                    }
            }
    }
    [r23 release];
    [var_80 release];
    [var_88 release];
    [var_B0 release];
    goto loc_1001ce478;

loc_1001ce478:
    [r21 release];
    goto loc_1001ce480;

loc_1001ce480:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r26 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001ce3ac:
    r28 = 0x1;
    goto loc_1001ce3b0;

loc_1001ce3b0:
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    r25 = [r0 retain];
    r24 = 0x0;
    r22 = 0x1;
    goto loc_1001ce3dc;

loc_1001ce3a4:
    r28 = 0x0;
    goto loc_1001ce3b0;

loc_1001ce368:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCVideoViewAPI seekWithDict:andModuleID:]" line:0xec withFormat:@"Invalid time supplied"];
    r26 = 0x0;
    goto loc_1001ce478;

loc_1001ce360:
    r26 = 0x0;
    goto loc_1001ce480;
}

+(bool)destroyWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = [arg2 retain];
    r19 = [[ADCViewContext alloc] initWithDict:r22 moduleID:arg3 andType:[ADCVideoView class] viewExists:0x1];
    [r22 release];
    if ([r19 isValid:0x1] != 0x0) {
            r20 = [[r19 container] retain];
            r0 = [r19 viewID];
            r0 = [r0 retain];
            [r20 unbindObjectWithIdentifier:[r0 unsignedIntegerValue]];
            [r0 release];
            [r20 release];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

@end