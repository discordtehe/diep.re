@implementation ADCAudioPlayerAPI

-(void)destroy:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    r0 = [ADCAudioPlayerContext alloc];
    r0 = [r0 initWithMessage:r19];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r20 player];
            r0 = [r0 retain];
            [r0 stop];
            [r0 release];
            r21 = [[r20 session] retain];
            r0 = [r20 playerID];
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
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    r0 = [ADCAudioPlayerContext alloc];
    r0 = [r0 initWithMessage:r19];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r20 player];
            r0 = [r0 retain];
            [r0 play];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)pause:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    r0 = [ADCAudioPlayerContext alloc];
    r0 = [r0 initWithMessage:r19];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r20 player];
            r0 = [r0 retain];
            [r0 pause];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)stop:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    r0 = [ADCAudioPlayerContext alloc];
    r0 = [r0 initWithMessage:r19];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r20 player];
            r0 = [r0 retain];
            [r0 pause];
            [r0 release];
            r0 = [r20 player];
            r0 = [r0 retain];
            [r0 setCurrentTime:0x1];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)create:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
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
    r21 = self;
    r19 = [r2 retain];
    r0 = [ADCAudioPlayerContext alloc];
    r0 = [r0 initWithMessage:r19];
    r20 = r0;
    if ([r0 isValid:0x0] == 0x0) goto loc_1001de54c;

loc_1001de1c8:
    var_68 = r21;
    r22 = [ADCAudioPlayer alloc];
    r27 = [[r20 filepath] retain];
    r28 = [[NSURL fileURLWithPath:r27 isDirectory:0x0] retain];
    r0 = [r20 playerID];
    r0 = [r0 retain];
    r21 = r0;
    r23 = [r0 unsignedIntegerValue];
    r0 = [r20 session];
    r29 = r29;
    r24 = [r0 retain];
    r22 = [r22 initWithContentsOfURL:r28 error:&var_58 identifier:r23 adSession:r24];
    r23 = [var_58 retain];
    [r24 release];
    [r21 release];
    [r28 release];
    [r27 release];
    if (r22 == 0x0 || r23 != 0x0) goto loc_1001de440;

loc_1001de2d8:
    r0 = [r19 dict];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:@"repeats"];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 boolValue];
    [r0 release];
    [r21 release];
    if (r27 != 0x0) {
            [r22 setNumberOfLoops:0xffffffffffffffff];
    }
    r28 = @selector(session);
    r21 = [objc_msgSend(r20, r28) retain];
    r0 = [r20 playerID];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r21 bindObject:r22 withIdentifier:[r0 unsignedIntegerValue]];
    [r0 release];
    [r21 release];
    if ((r27 & 0x1) == 0x0) goto loc_1001de508;

loc_1001de3b8:
    r27 = var_68;
    [r22 setDelegate:r27];
    if ([r22 prepareToPlay] == 0x0) goto loc_1001de53c;

loc_1001de3e4:
    r0 = [r20 playerID];
    r0 = [r0 retain];
    r21 = r0;
    r24 = [r0 unsignedIntegerValue];
    r25 = [objc_msgSend(r20, r28) retain];
    [r27 onAudioPlayerReady:0x1 playerID:r24 session:r25];
    goto loc_1001de4f4;

loc_1001de4f4:
    [r25 release];
    [r21 release];
    goto loc_1001de53c;

loc_1001de53c:
    [r22 release];
    [r23 release];
    goto loc_1001de54c;

loc_1001de54c:
    [r20 release];
    [r19 release];
    return;

loc_1001de508:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAudioPlayerAPI create:]" line:0x73 withFormat:@"Could not bind audio player to ad session"];
    goto loc_1001de53c;

loc_1001de440:
    r24 = [[r23 localizedDescription] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAudioPlayerAPI create:]" line:0x67 withFormat:@"Error while creating AVAudioPlayer: %@"];
    [r24 release];
    r0 = [r20 playerID];
    r0 = [r0 retain];
    r21 = r0;
    r24 = [r0 unsignedIntegerValue];
    r25 = [[r20 session] retain];
    [var_68 onAudioPlayerError:r24 session:r25];
    goto loc_1001de4f4;
}

-(void)onAudioPlayerError:(unsigned long long)arg2 session:(void *)arg3 {
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
    r21 = arg2;
    r19 = [arg3 retain];
    r0 = [ADCNativeLayer sharedLayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 nextNativeMessageID];
    [r0 release];
    [ADCInterstitialAdSession class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_1001de96c;

loc_1001de954:
    r0 = [r19 fullscreenModule];
    r29 = r29;
    goto loc_1001de9a4;

loc_1001de9a4:
    r0 = [r0 retain];
    r23 = [r0 originNumber];
    [r0 release];
    goto loc_1001de9cc;

loc_1001de9cc:
    var_48 = **___stack_chk_guard;
    r22 = [[ADCNativeLayer sharedLayer] retain];
    r23 = [[NSNumber numberWithUnsignedInteger:r23] retain];
    r21 = [[NSNumber numberWithUnsignedInteger:r21] retain];
    r25 = [[r19 identifier] retain];
    r26 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_78 count:0x3] retain];
    r20 = [[ADCMessage nativeMessageWithType:@"AudioPlayer.on_error" identifier:r20 contents:r26] retain];
    [r22 sendMessage:r20];
    [r20 release];
    [r26 release];
    [r25 release];
    [r21 release];
    [r23 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_1001de96c:
    r24 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r19, r24) == 0x0) goto loc_1001de9c8;

loc_1001de990:
    r0 = [r19 nativeModule];
    r29 = r29;
    goto loc_1001de9a4;

loc_1001de9c8:
    r23 = 0x0;
    goto loc_1001de9cc;
}

-(void)audioPlayerEndInterruption:(void *)arg2 withOptions:(unsigned long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    [ADCAudioPlayer class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r21 = [r19 retain];
            if (r21 != 0x0 && r22 == 0x1) {
                    [r21 identifier];
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCAudioPlayerAPI audioPlayerEndInterruption:withOptions:]" line:0xe4 withFormat:@"AudioPlayer with id: %lu interruption ended - resuming"];
                    [r20 handleAudioPlayerEvent:r21 event:@"AudioPlayer.on_ready_to_resume"];
            }
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)audioPlayerBeginInterruption:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [ADCAudioPlayer class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r23 = [r19 retain];
            [r19 identifier];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAudioPlayerAPI audioPlayerBeginInterruption:]" line:0xd9 withFormat:@"AudioPlayer with id: %lu has been interrupted"];
            [r20 handleAudioPlayerEvent:r19 event:@"AudioPlayer.on_interrupted"];
            [r23 release];
    }
    [r19 release];
    return;
}

-(void)onAudioPlayerReady:(bool)arg2 playerID:(unsigned long long)arg3 session:(void *)arg4 {
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
    r21 = arg3;
    r19 = [arg4 retain];
    r0 = [ADCNativeLayer sharedLayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 nextNativeMessageID];
    [r0 release];
    [ADCInterstitialAdSession class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_1001dec1c;

loc_1001dec04:
    r0 = [r19 fullscreenModule];
    r29 = r29;
    goto loc_1001dec54;

loc_1001dec54:
    r0 = [r0 retain];
    r23 = [r0 originNumber];
    [r0 release];
    goto loc_1001dec7c;

loc_1001dec7c:
    var_48 = **___stack_chk_guard;
    r22 = [[ADCNativeLayer sharedLayer] retain];
    r23 = [[NSNumber numberWithUnsignedInteger:r23] retain];
    r21 = [[NSNumber numberWithUnsignedInteger:r21] retain];
    r25 = [[r19 identifier] retain];
    r26 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_78 count:0x3] retain];
    r20 = [[ADCMessage nativeMessageWithType:@"AudioPlayer.on_ready" identifier:r20 contents:r26] retain];
    [r22 sendMessage:r20];
    [r20 release];
    [r26 release];
    [r25 release];
    [r21 release];
    [r23 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_1001dec1c:
    r24 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    if (objc_msgSend(r19, r24) == 0x0) goto loc_1001dec78;

loc_1001dec40:
    r0 = [r19 nativeModule];
    r29 = r29;
    goto loc_1001dec54;

loc_1001dec78:
    r23 = 0x0;
    goto loc_1001dec7c;
}

+(void)load {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

+(void)registerHandlers {
    r19 = [ADCAudioPlayerAPI new];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(create:) forMessageType:@"AudioPlayer.create"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(destroy:) forMessageType:@"AudioPlayer.destroy"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(play:) forMessageType:@"AudioPlayer.play"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(pause:) forMessageType:@"AudioPlayer.pause"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(stop:) forMessageType:@"AudioPlayer.stop"];
    [r0 release];
    [r19 release];
    return;
}

-(void)handleAudioPlayerEvent:(void *)arg2 event:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    r21 = [r0 nextNativeMessageID];
    [r0 release];
    r24 = [[r19 session] retain];
    [ADCInterstitialAdSession class];
    r27 = [r24 isKindOfClass:r2];
    [r24 release];
    r0 = [r19 session];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r27 == 0x0) goto loc_1001df108;

loc_1001df0f0:
    r0 = [r24 fullscreenModule];
    r29 = r29;
    goto loc_1001df160;

loc_1001df160:
    r0 = [r0 retain];
    r25 = [r0 originNumber];
    [r0 release];
    [r24 release];
    goto loc_1001df190;

loc_1001df190:
    var_58 = **___stack_chk_guard;
    r23 = [[ADCNativeLayer sharedLayer] retain];
    r24 = [[NSNumber numberWithUnsignedInteger:r25] retain];
    r25 = @class(NSNumber);
    r25 = [[r25 numberWithUnsignedInteger:[r19 identifier]] retain];
    r0 = [r19 session];
    r0 = [r0 retain];
    r27 = [[r0 identifier] retain];
    r28 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3] retain];
    r21 = [[ADCMessage nativeMessageWithType:r20 identifier:r21 contents:r28] retain];
    [r20 release];
    [r23 sendMessage:r21];
    [r21 release];
    [r28 release];
    [r27 release];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1001df108:
    r26 = @selector(isKindOfClass:);
    [ADCNativeAdSession class];
    r25 = objc_msgSend(r24, r26);
    [r24 release];
    if (r25 == 0x0) goto loc_1001df18c;

loc_1001df138:
    r0 = [r19 session];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 nativeModule];
    r29 = r29;
    goto loc_1001df160;

loc_1001df18c:
    r25 = 0x0;
    goto loc_1001df190;
}

@end