@implementation GADOMIDVideoEvents

-(void *)initWithAdSession:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x90;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x20, arg2);
    var_28 = arg3;
    r0 = [[r29 - 0x38 super] init];
    var_10 = r0;
    objc_storeStrong(r29 - 0x10, r0);
    if (var_10 == 0x0) goto loc_1008e1f18;

loc_1008e1d9c:
    r0 = [0x0 eventFilter];
    r29 = r29;
    r0 = [r0 retain];
    var_5C = [r0 acceptEventWithCode:0x8 blockingEventCodes:0x1] ^ 0x1;
    [r0 release];
    if ((var_5C & 0x1) == 0x0) goto loc_1008e1e50;

loc_1008e1e04:
    [GADOMIDError setGADOMIDErrorFor:var_28 code:0x5e1 message:@"Event filter does not accept."];
    var_8 = 0x0;
    goto loc_1008e1f30;

loc_1008e1f30:
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = var_8;
    return r0;

loc_1008e1e50:
    r0 = [0x0 configuration];
    r29 = r29;
    r0 = [r0 retain];
    var_70 = [r0 videoEventsOwner];
    [r0 release];
    if (var_70 == 0x2) goto loc_1008e1ef4;

loc_1008e1ea8:
    [GADOMIDError setGADOMIDErrorFor:var_28 code:0x5e0 message:@"Video events owner should be NATIVE."];
    var_8 = 0x0;
    goto loc_1008e1f30;

loc_1008e1ef4:
    objc_storeStrong((int64_t *)&var_10->_adSession, 0x0);
    goto loc_1008e1f18;

loc_1008e1f18:
    var_8 = [var_10 retain];
    goto loc_1008e1f30;
}

-(void)loadedWithVastProperties:(void *)arg2 {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    r0 = objc_storeStrong(&var_18, arg2);
    if (var_18 != 0x0) {
            var_28 = [[var_18 toJSON] retain];
            [var_8 publishEventWithName:@"loaded" parameters:var_28 requireStart:0x0 & 0x1];
            [var_28 release];
    }
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(void)firstQuartile {
    [self publishEventWithName:@"firstQuartile" parameters:0x0];
    return;
}

-(void)startWithDuration:(double)arg2 videoPlayerVolume:(double)arg3 {
    r2 = arg2;
    r31 = r31 - 0xa0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r8 = *___stack_chk_guard;
    var_40 = self;
    var_50 = d0;
    var_58 = d1;
    if (var_50 > 0x0 && var_58 >= 0x0) {
            if (var_58 <= 0x3ff0000000000000) {
                    var_40->_playerVolume = var_58;
                    var_70 = [[NSNumber numberWithDouble:r2] retain];
                    var_78 = [[NSNumber numberWithDouble:r2] retain];
                    [var_40 deviceVolume];
                    var_88 = [[NSNumber numberWithDouble:r2] retain];
                    var_90 = [[NSDictionary dictionaryWithObjects:r29 - 0x20 forKeys:r29 - 0x38 count:0x3] retain];
                    [var_40 publishEventWithName:@"start" parameters:var_90];
                    [var_90 release];
                    [var_88 release];
                    [var_78 release];
                    [var_70 release];
                    [var_40 startListeningForDeviceVolumeChanges];
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
    r31 = r31 - 0x80;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r8 = *___stack_chk_guard;
    var_30 = self;
    var_40 = d0;
    if (var_40 >= 0x0 && var_40 <= 0x3ff0000000000000) {
            var_30->_playerVolume = var_40;
            var_58 = [[NSNumber numberWithDouble:r2] retain];
            [var_30 deviceVolume];
            var_68 = [[NSNumber numberWithDouble:r2] retain];
            var_70 = [[NSDictionary dictionaryWithObjects:r29 - 0x18 forKeys:r29 - 0x28 count:0x2] retain];
            [var_30 publishEventWithName:@"volumeChange" parameters:var_70];
            [var_70 release];
            [var_68 release];
            [var_58 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)playerStateChangeTo:(unsigned long long)arg2 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r9 = *___stack_chk_guard;
    var_20 = self;
    r0 = [var_20 stringFromPlayerState:arg2];
    r29 = &saved_fp;
    var_38 = [r0 retain];
    if (var_38 != 0x0) {
            var_50 = [[NSDictionary dictionaryWithObjects:r29 - 0x10 forKeys:r29 - 0x18 count:0x1] retain];
            [var_20 publishEventWithName:@"playerStateChange" parameters:var_50];
            [var_50 release];
    }
    var_8 = **___stack_chk_guard;
    objc_storeStrong(&var_38, 0x0);
    if (**___stack_chk_guard != var_8) {
            __stack_chk_fail();
    }
    return;
}

-(void)adUserInteractionWithType:(unsigned long long)arg2 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r9 = *___stack_chk_guard;
    var_20 = self;
    r0 = [var_20 stringFromInteractionType:arg2];
    r29 = &saved_fp;
    var_38 = [r0 retain];
    if (var_38 != 0x0) {
            var_50 = [[NSDictionary dictionaryWithObjects:r29 - 0x10 forKeys:r29 - 0x18 count:0x1] retain];
            [var_20 publishEventWithName:@"adUserInteraction" parameters:var_50];
            [var_50 release];
    }
    var_8 = **___stack_chk_guard;
    objc_storeStrong(&var_38, 0x0);
    if (**___stack_chk_guard != var_8) {
            __stack_chk_fail();
    }
    return;
}

-(void)publishEventWithName:(void *)arg2 parameters:(void *)arg3 {
    objc_storeStrong(&var_18, arg2);
    objc_storeStrong(&var_20, arg3);
    [self publishEventWithName:var_18 parameters:var_20 requireStart:0x1];
    objc_storeStrong(&var_20, 0x0);
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(void)publishEventWithName:(void *)arg2 parameters:(void *)arg3 requireStart:(bool)arg4 {
    r31 = r31 - 0x70;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    objc_storeStrong(r29 - 0x18, arg2);
    objc_storeStrong(r29 - 0x20, arg3);
    r0 = 0x1;
    if ((arg4 & 0x1) != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = 0x0;
            }
            else {
                    r0 = 0x1;
            }
    }
    var_30 = r0;
    r0 = [var_8->_adSession eventFilter];
    r29 = r29;
    r0 = [r0 retain];
    var_4C = [r0 acceptAnyEventWithRequiredEventCodes:var_30];
    [r0 release];
    if ((var_4C & 0x1) != 0x0) {
            r0 = [var_8->_adSession videoEventsPublisher];
            r29 = r29;
            r0 = [r0 retain];
            [r0 publishVideoEventWithName:0x0 parameters:0x0];
            [r0 release];
    }
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x18, 0x0);
    return;
}

-(void *)stringFromPlayerState:(unsigned long long)arg2 {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = arg2 - 0x4;
    var_28 = arg2;
    if (r0 <= 0x0) {
            r0 = (sign_extend_64(*(int32_t *)(0x1008e2c20 + var_28 * 0x4)) + 0x1008e2c20)();
    }
    else {
            r0 = [0x0 autorelease];
    }
    return r0;
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

-(void *)stringFromInteractionType:(unsigned long long)arg2 {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = arg2;
    if (arg2 != 0x0) {
            if (r9 != 0x0) {
                    var_8 = 0x0;
            }
            else {
                    var_8 = [@"invitationAccept" retain];
            }
    }
    else {
            var_8 = [@"click" retain];
    }
    r0 = [var_8 autorelease];
    return r0;
}

-(void)startListeningForDeviceVolumeChanges {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    if ((*(int8_t *)(int64_t *)&var_8->_observerIsRegistered & 0x1) == 0x0) {
            r0 = [AVAudioSession sharedInstance];
            r0 = [r0 retain];
            [r0 addObserver:var_8 forKeyPath:@"outputVolume" options:0x0 context:0x0];
            [r0 release];
            *(int8_t *)(int64_t *)&var_8->_observerIsRegistered = 0x1;
    }
    return;
}

-(void)stopListeningForDeviceVolumeChanges {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_8 = self;
    if ((*(int8_t *)(int64_t *)&var_8->_observerIsRegistered & 0x1) != 0x0) {
            r0 = [AVAudioSession sharedInstance];
            r0 = [r0 retain];
            [r0 removeObserver:var_8 forKeyPath:@"outputVolume"];
            [r0 release];
            *(int8_t *)(int64_t *)&var_8->_observerIsRegistered = 0x0;
    }
    return;
}

-(void)dealloc {
    [self stopListeningForDeviceVolumeChanges];
    [[&var_20 super] dealloc];
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    objc_storeStrong(&saved_fp - 0x18, arg2);
    objc_storeStrong(&saved_fp - 0x20, arg3);
    objc_storeStrong(&var_28, arg4);
    [self volumeChangeTo:r2];
    objc_storeStrong(&var_28, 0x0);
    objc_storeStrong(&saved_fp - 0x20, 0x0);
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_adSession, 0x0);
    return;
}

@end