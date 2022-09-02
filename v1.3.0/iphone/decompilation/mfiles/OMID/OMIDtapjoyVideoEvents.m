@implementation OMIDtapjoyVideoEvents

-(void)loadedWithVastProperties:(void *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 != 0x0) {
            r20 = [[r2 toJSON] retain];
            [r19 publishEventWithName:@"loaded" parameters:r20 requireImpression:0x0];
            [r20 release];
    }
    return;
}

-(void *)initWithAdSession:(void *)arg2 error:(void * *)arg3 {
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
    r21 = arg3;
    r22 = arg2;
    r19 = [r22 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 == 0x0) goto loc_100964350;

loc_1009642c0:
    r0 = [r19 eventFilter];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 acceptEventWithCode:0x8 blockingEventCodes:0x1];
    [r0 release];
    if ((r24 & 0x1) == 0x0) goto loc_10096439c;

loc_100964300:
    r0 = [r19 configuration];
    r0 = [r0 retain];
    r24 = [r0 videoEventsOwner];
    [r0 release];
    if (r24 != 0x2) goto loc_10096439c;

loc_10096433c:
    objc_storeStrong((int64_t *)&r20->_adSession, r22);
    goto loc_100964350;

loc_100964350:
    r21 = [r20 retain];
    goto loc_1009643a8;

loc_1009643a8:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_10096439c:
    [OMIDtapjoyError setOMIDErrorFor:r2 code:r3 message:r4];
    r21 = 0x0;
    goto loc_1009643a8;
}

-(void)firstQuartile {
    [self publishEventWithName:@"firstQuartile" parameters:0x0];
    return;
}

-(void)startWithDuration:(double)arg2 videoPlayerVolume:(double)arg3 {
    r2 = arg2;
    r31 = r31 - 0x90;
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
    r29 = &saved_fp;
    v8 = v1;
    r19 = self;
    if (d8 <= 0x3ff0000000000000 && d0 > 0x0) {
            if (d8 >= 0x0) {
                    r19->_playerVolume = d8;
                    r20 = [[NSNumber numberWithDouble:r2] retain];
                    r21 = [[NSNumber numberWithDouble:r2] retain];
                    r23 = @class(NSNumber);
                    [r19 deviceVolume];
                    r22 = [[r23 numberWithDouble:r2] retain];
                    r0 = [NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_78 count:0x3];
                    r23 = [r0 retain];
                    [r19 publishEventWithName:@"start" parameters:r23];
                    [r23 release];
                    [r22 release];
                    [r21 release];
                    [r20 release];
                    [r19 startListeningForDeviceVolumeChanges];
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)midpoint {
    [self publishEventWithName:@"midpoint" parameters:0x0];
    return;
}

-(void)thirdQuartile {
    [self publishEventWithName:@"thirdQuartile" parameters:0x0];
    return;
}

-(void)complete {
    [self publishEventWithName:@"complete" parameters:0x0];
    [self stopListeningForDeviceVolumeChanges];
    return;
}

-(void)pause {
    [self publishEventWithName:@"pause" parameters:0x0];
    return;
}

-(void)resume {
    [self publishEventWithName:@"resume" parameters:0x0];
    return;
}

-(void)skipped {
    [self publishEventWithName:@"skipped" parameters:0x0];
    [self stopListeningForDeviceVolumeChanges];
    return;
}

-(void)bufferStart {
    [self publishEventWithName:@"bufferStart" parameters:0x0];
    return;
}

-(void)bufferFinish {
    [self publishEventWithName:@"bufferFinish" parameters:0x0];
    return;
}

-(void)volumeChangeTo:(double)arg2 {
    r2 = arg2;
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (d0 >= 0x0) {
            asm { fccmp      d0, d1, #0x2, ge };
    }
    if (!CPU_FLAGS & A) {
            r19->_playerVolume = d0;
            r20 = [[NSNumber numberWithDouble:r2] retain];
            r22 = @class(NSNumber);
            [r19 deviceVolume];
            r21 = [[r22 numberWithDouble:r2] retain];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&var_48 count:0x2];
            r22 = [r0 retain];
            [r19 publishEventWithName:@"volumeChange" parameters:r22];
            [r22 release];
            [r21 release];
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)playerStateChangeTo:(unsigned long long)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self stringFromPlayerState:arg2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1];
            r21 = [r0 retain];
            [r19 publishEventWithName:@"playerStateChange" parameters:r21];
            [r21 release];
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)adUserInteractionWithType:(unsigned long long)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self stringFromInteractionType:arg2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1];
            r21 = [r0 retain];
            [r19 publishEventWithName:@"adUserInteraction" parameters:r21];
            [r21 release];
    }
    var_28 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)publishEventWithName:(void *)arg2 parameters:(void *)arg3 {
    r21 = [arg2 retain];
    [self publishEventWithName:r21 parameters:arg3 requireImpression:0x1];
    [r21 release];
    return;
}

-(void *)stringFromPlayerState:(unsigned long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 > 0x4) goto loc_100964b68;

loc_100964b48:
    switch (sign_extend_64(*(int32_t *)(0x100964bb4 + r2 * 0x4)) + 0x100964bb4) {
        case 0:
            r19 = @"minimized";
            break;
        case 1:
            r19 = @"collapsed";
            break;
        case 2:
            r19 = @"normal";
            break;
        case 3:
            r19 = @"expanded";
            break;
        case 4:
            r19 = @"fullscreen";
            break;
    }
    [r19 retain];
    goto loc_100964ba4;

loc_100964ba4:
    r0 = [r19 autorelease];
    return r0;

loc_100964b68:
    r19 = 0x0;
    goto loc_100964ba4;
}

-(void *)stringFromInteractionType:(unsigned long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x1) goto loc_100964bec;

loc_100964bdc:
    if (r2 != 0x0) goto loc_100964c00;

loc_100964be0:
    r19 = @"click";
    goto loc_100964bf4;

loc_100964bf4:
    [r19 retain];
    goto loc_100964c04;

loc_100964c04:
    r0 = [r19 autorelease];
    return r0;

loc_100964c00:
    r19 = 0x0;
    goto loc_100964c04;

loc_100964bec:
    r19 = @"invitationAccept";
    goto loc_100964bf4;
}

-(void)publishEventWithName:(void *)arg2 parameters:(void *)arg3 requireImpression:(bool)arg4 {
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
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r22 = 0x0;
            }
            else {
                    r22 = 0x3;
            }
    }
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adSession));
    r0 = *(r21 + r24);
    r0 = [r0 eventFilter];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 acceptAnyEventWithRequiredEventCodes:r22];
    [r0 release];
    if (r22 != 0x0) {
            r0 = *(r21 + r24);
            r0 = [r0 videoEventsPublisher];
            r0 = [r0 retain];
            [r0 publishVideoEventWithName:r19 parameters:r20];
            [r0 release];
    }
    [r20 release];
    [r19 release];
    return;
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

-(void)startListeningForDeviceVolumeChanges {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_observerIsRegistered));
    if (*(int8_t *)(r19 + r21) == 0x0) {
            r0 = [AVAudioSession sharedInstance];
            r0 = [r0 retain];
            [r0 addObserver:r19 forKeyPath:@"outputVolume" options:0x0 context:0x0];
            [r0 release];
            *(int8_t *)(r19 + r21) = 0x1;
    }
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    [self volumeChangeTo:arg2];
    return;
}

-(void)stopListeningForDeviceVolumeChanges {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_observerIsRegistered));
    if (*(int8_t *)(r19 + r21) != 0x0) {
            r0 = [AVAudioSession sharedInstance];
            r0 = [r0 retain];
            [r0 removeObserver:r19 forKeyPath:@"outputVolume"];
            [r0 release];
            *(int8_t *)(r19 + r21) = 0x0;
    }
    return;
}

-(void)dealloc {
    [self stopListeningForDeviceVolumeChanges];
    [[&var_20 super] dealloc];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adSession, 0x0);
    return;
}

@end