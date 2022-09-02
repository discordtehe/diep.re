@implementation ADCVideoViewMPAPI

-(void)create:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xe0;
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
    r22 = self;
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCMPVideoView class] viewExists:0x0];
    [r21 release];
    if ([r20 isValid:0x0] == 0x0) goto loc_1001f7480;

loc_1001f7298:
    r0 = [r20 filepath];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0 || ([r21 isEqualToString:r2] & 0x1) != 0x0) goto loc_1001f743c;

loc_1001f72d4:
    r0 = [NSFileManager defaultManager];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 fileExistsAtPath:r21];
    [r0 release];
    if ((r25 & 0x1) == 0x0) goto loc_1001f743c;

loc_1001f7314:
    r0 = [NSURL fileURLWithPath:r21 isDirectory:0x0];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1001f74ac;

loc_1001f7340:
    r0 = [ADCDevice sharedDevice];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 pathIsAllowable:r21];
    [r0 release];
    if ((r26 & 0x1) == 0x0) goto loc_1001f74dc;

loc_1001f7380:
    r25 = [[ADCMessage numberValueFromMessage:r19 withKey:@"enable_timer"] retain];
    r26 = [[r20 session] retain];
    [ADCInterstitialAdSession class];
    if ([r26 isKindOfClass:r2] != 0x0) {
            [r26 release];
            if (r25 == 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCVideoViewMPAPI create:]" line:0x3e withFormat:0x0];
            }
    }
    else {
            [r26 release];
    }
    if (([NSThread isMainThread] & 0x1) != 0x0) {
            var_60 = [r23 retain];
            var_58 = [r20 retain];
            r22 = [r25 retain];
            sub_1001f7640(&var_80);
            [r25 release];
            [var_58 release];
            r0 = var_60;
    }
    else {
            var_A0 = [r23 retain];
            var_98 = [r20 retain];
            r22 = [r25 retain];
            dispatch_sync(*__dispatch_main_q, &var_C0);
            [r25 release];
            [var_98 release];
            r0 = var_A0;
    }
    [r0 release];
    [r22 release];
    goto loc_1001f7634;

loc_1001f7634:
    [r23 release];
    goto loc_1001f7478;

loc_1001f7478:
    [r21 release];
    goto loc_1001f7480;

loc_1001f7480:
    [r20 release];
    [r19 release];
    return;

loc_1001f74dc:
    r6 = 0x38;
    goto loc_1001f7508;

loc_1001f7508:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCVideoViewMPAPI create:]" line:r6 withFormat:0x0];
    goto loc_1001f7634;

loc_1001f74ac:
    r6 = 0x34;
    goto loc_1001f7508;

loc_1001f743c:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCVideoViewMPAPI create:]" line:0x2f withFormat:0x0];
    goto loc_1001f7478;
}

-(void)destroy:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCMPVideoView class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            r21 = [[r20 container] retain];
            r0 = [r20 viewID];
            r0 = [r0 retain];
            [r21 unbindObjectWithIdentifier:[r0 unsignedIntegerValue]];
            [r0 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)play:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = r2;
    if (([ADCSystemAPI isShowingBrowser] & 0x1) == 0x0 && ([ADCSystemAPI isShowingStoreView] & 0x1) == 0x0) {
            r19 = [r19 retain];
            r20 = [ADCMPViewContext alloc];
            r0 = [NSNumber numberWithInt:[r19 origin]];
            r29 = r29;
            r21 = [r0 retain];
            r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCMPVideoView class] viewExists:0x1];
            [r21 release];
            if ([r20 isValid:0x1] != 0x0) {
                    r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"replay"];
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
            }
            [r20 release];
            [r19 release];
    }
    return;
}

-(void)pause:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCMPVideoView class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            [[[r20 view] retain] retain];
            dispatch_async(*__dispatch_main_q, &var_48);
            [r0 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)seekToTime:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCMPVideoView class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"time"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [[[r20 view] retain] retain];
                    var_38 = [r21 retain];
                    var_30 = [r19 retain];
                    var_28 = [r20 retain];
                    dispatch_async(*__dispatch_main_q, &var_60);
                    [var_28 release];
                    [var_30 release];
                    [var_38 release];
                    [r0 release];
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCVideoViewMPAPI seekToTime:]" line:0x84 withFormat:@"Invalid time supplied"];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setBounds:(union ?)arg2 {
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
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCMPVideoView class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKeyedSubscript:@"x"];
            r0 = [r0 retain];
            [r0 intValue];
            [r0 release];
            [r24 release];
            r0 = [r19 dict];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 objectForKeyedSubscript:@"y"];
            r0 = [r0 retain];
            [r0 intValue];
            [r0 release];
            [r25 release];
            r0 = [r19 dict];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 objectForKeyedSubscript:@"width"];
            r0 = [r0 retain];
            [r0 unsignedIntegerValue];
            [r0 release];
            [r26 release];
            r0 = [r19 dict];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForKeyedSubscript:@"height"];
            r0 = [r0 retain];
            [r0 unsignedIntegerValue];
            [r0 release];
            [r22 release];
            [[[r20 view] retain] retain];
            dispatch_async(*__dispatch_main_q, &var_90);
            [r0 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setVisible:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
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
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCMPVideoView class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            r22 = [[ADCMessage numberValueFromMessage:r19 withKey:@"visible"] retain];
            r21 = [[r20 view] retain];
            var_70 = [r20 retain];
            var_68 = r21;
            [r21 retain];
            var_60 = r22;
            [r22 retain];
            dispatch_async(*__dispatch_main_q, &var_90);
            r23 = [[ADCNativeLayer sharedLayer] retain];
            r24 = [@(NO) retain];
            r25 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
            r26 = [[r19 messageReplyWithDict:r25] retain];
            [r23 sendMessage:r26];
            [r26 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [var_60 release];
            [var_68 release];
            [var_70 release];
            [r22 release];
            [r21 release];
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)setVolume:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCMPVideoView class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"volume"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [[[r20 view] retain] retain];
                    var_28 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_50);
                    [var_28 release];
                    [r0 release];
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCVideoViewMPAPI setVolume:]" line:0xc5 withFormat:@"Invalid volume parameter supplied"];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)onVideoViewReady:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_38);
    [r0 release];
    [r19 release];
    return;
}

-(void)onVideoViewDidFail:(void *)arg2 {
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

-(void)onVideoViewDidMakeProgress:(void *)arg2 finished:(bool)arg3 {
    r31 = r31 - 0x170;
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 view];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    [r0 duration];
    if (d0 == 0x0) goto loc_1001f9b8c;

loc_1001f96e8:
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    var_F0 = [r0 nextNativeMessageID];
    [r0 release];
    r0 = [r19 moduleID];
    r29 = r29;
    r0 = [r0 retain];
    var_F8 = r0;
    if (r0 == 0x0) goto loc_1001f97c0;

loc_1001f9750:
    r0 = [r19 moduleID];
    r29 = r29;
    r22 = [r0 retain];
    [NSNumber class];
    var_138 = r22;
    if ([r22 isKindOfClass:r2] == 0x0) goto loc_1001f97c8;

loc_1001f9798:
    r0 = [r19 moduleID];
    r29 = r29;
    r0 = [r0 retain];
    var_FC = 0x1;
    var_110 = 0x0;
    var_10C = 0x1;
    goto loc_1001f97f8;

loc_1001f97f8:
    var_108 = r0;
    var_118 = [[NSNumber numberWithInteger:[r20 tag]] retain];
    r0 = [r19 session];
    r0 = [r0 retain];
    var_120 = r0;
    r0 = [r0 identifier];
    r29 = r29;
    r0 = [r0 retain];
    var_128 = r0;
    if (r0 != 0x0) {
            r0 = [r19 session];
            r0 = [r0 retain];
            var_140 = r0;
            r0 = [r0 identifier];
            r29 = r29;
            r22 = [r0 retain];
            [NSString class];
            var_148 = r22;
            if ([r22 isKindOfClass:r2] != 0x0) {
                    r0 = [r19 session];
                    r0 = [r0 retain];
                    var_150 = r0;
                    r0 = [r0 identifier];
                    r29 = r29;
                    r22 = [r0 retain];
                    var_12C = 0x1;
                    var_130 = 0x1;
            }
            else {
                    r22 = @"";
                    var_130 = 0x0;
                    var_12C = 0x1;
            }
    }
    else {
            var_130 = 0x0;
            r22 = @"";
    }
    r25 = @class(NSNumber);
    r0 = [r19 container];
    r0 = [r0 retain];
    r2 = [r0 identifier];
    [[r25 numberWithInt:r2] retain];
    r23 = @class(NSNumber);
    [r20 elapsed];
    [[r23 numberWithDouble:r2] retain];
    [r20 duration];
    r24 = [[r23 numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:r29 - 0x88 forKeys:&var_B8 count:0x6];
    r29 = r29;
    r23 = [r0 retain];
    [r24 release];
    [r27 release];
    [r25 release];
    [r21 release];
    if (var_130 != 0x0) {
            [r22 release];
            [var_150 release];
    }
    r21 = var_108;
    if (var_12C != 0x0) {
            [var_148 release];
            [var_140 release];
    }
    [var_128 release];
    [var_120 release];
    [var_118 release];
    if (var_110 != 0x0) {
            [r21 release];
    }
    if (var_10C != 0x0) {
            [r21 release];
    }
    if (var_FC != 0x0) {
            [var_138 release];
    }
    [var_F8 release];
    r21 = [[AdColony sharedInstance] retain];
    var_C8 = r23;
    r23 = [r23 retain];
    [r21 performBlockOnWorkerThread:&var_E8 mode:0x1];
    [r21 release];
    [var_C8 release];
    [r23 release];
    goto loc_1001f9b8c;

loc_1001f9b8c:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1001f97c8:
    var_FC = 0x1;
    goto loc_1001f97d0;

loc_1001f97d0:
    r0 = @(0xffffffffffffffff);
    r29 = r29;
    r0 = [r0 retain];
    var_110 = 0x1;
    var_10C = 0x0;
    goto loc_1001f97f8;

loc_1001f97c0:
    var_FC = 0x0;
    goto loc_1001f97d0;
}

+(void)load {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

+(void)registerHandlers {
    r19 = [ADCVideoViewMPAPI new];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(create:) forMessageType:@"VideoView.create"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(destroy:) forMessageType:@"VideoView.destroy"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(setBounds:) forMessageType:@"VideoView.set_bounds"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(setVisible:) forMessageType:@"VideoView.set_visible"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(play:) forMessageType:@"VideoView.play"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(pause:) forMessageType:@"VideoView.pause"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(play:) forMessageType:@"VideoView.resume"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(seekToTime:) forMessageType:@"VideoView.seek_to_time"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(setVolume:) forMessageType:@"VideoView.set_volume"];
    [r0 release];
    [r19 release];
    return;
}

@end