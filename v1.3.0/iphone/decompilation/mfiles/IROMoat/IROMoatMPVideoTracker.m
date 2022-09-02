@implementation IROMoatMPVideoTracker

-(double)adDurationMS {
    r0 = [self player];
    r0 = [r0 retain];
    [r0 duration];
    r0 = [r0 release];
    return r0;
}

-(double)trackedPlayheadMS {
    r0 = [self player];
    r0 = [r0 retain];
    [r0 currentPlaybackTime];
    r0 = [r0 release];
    return r0;
}

-(bool)isPlaying {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self player];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 playbackState] == 0x1) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)classTag {
    objc_retainAutorelease(@"MoatMPVideoTracker");
    return @"MoatMPVideoTracker";
}

-(bool)trackVideoAd:(void *)arg2 player:(void *)arg3 {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffb0 - 0x60;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([IROMoatOnOff getStatus] != 0x0 && ([r21 initialized] & 0x1) != 0x0) {
            r0 = [IROMoatVideoUtil adIdsToJSONString:r19];
            r29 = r29;
            r23 = [r0 retain];
            r8 = @"nil";
            if (r20 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = @"nil";
                    }
                    else {
                            r8 = r20;
                    }
            }
            var_A0 = r23;
            stack[-168] = r8;
            [IROMoatLogging reportDevLogWithObject:r2 format:r3];
            [r23 release];
            if ([r20 isFullscreen] != 0x0) {
                    r0 = [r20 backgroundView];
                    r29 = r29;
            }
            else {
                    r0 = [r20 view];
                    r29 = r29;
            }
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 layer];
            r29 = r29;
            r25 = [r0 retain];
            r23 = [r21 trackPlayer:r20 adIds:r19 targetLayer:r25];
            [r25 release];
            if (r23 != 0x0) {
                    [IROMoatLogging reportDevLogWithObject:r2 format:r3];
                    [r21 registerForEvents];
                    r0 = [r21 trackerID];
                    r29 = r29;
                    r21 = [r0 retain];
            }
            else {
                    [IROMoatLogging reportDevLogWithObject:r2 format:r3];
                    r0 = [r21 trackerID];
                    r29 = r29;
                    r21 = [r0 retain];
            }
            [IROMoatLogging reportClientLog:r2 trackerID:r3 format:r4];
            [r21 release];
            [r22 release];
    }
    else {
            objc_initWeak(r29 - 0x48, r21);
            objc_initWeak(&stack[-96], r20);
            [[NSDictionary dictionaryWithDictionary:r19] retain];
            r0 = objc_loadWeakRetained(&stack[-96]);
            [[NSValue valueWithNonretainedObject:r0] retain];
            [r0 release];
            var_80 = 0xffffffffc2000000;
            var_78 = 0x10074519c;
            var_70 = 0x100e8e770;
            objc_copyWeak(&var_88 + 0x28, r29 - 0x48);
            var_68 = [r25 retain];
            objc_copyWeak(&var_88 + 0x30, &stack[-96]);
            r0 = [r21 classTag];
            r29 = r29;
            r21 = [r0 retain];
            r0 = [r26 onResurrectionDo:&var_88 withQueue:r21 withKey:r22];
            [r21 release];
            objc_destroyWeak(&var_88 + 0x30);
            [var_68 release];
            objc_destroyWeak(&var_88 + 0x28);
            [r22 release];
            [r25 release];
            objc_destroyWeak(&stack[-96]);
            objc_destroyWeak(r29 - 0x48);
            r23 = 0x1;
    }
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)playerFinishedNotification {
    [self playbackCompletionUpdate];
    return;
}

-(void)screenModeNotification:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [arg2 retain];
    r0 = [r19 player];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [arg2 name];
    [r22 release];
    r0 = [r21 retain];
    r22 = [r0 isEqualToString:r2];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r20 backgroundView];
            r29 = r29;
    }
    else {
            r0 = [r20 view];
            r29 = r29;
    }
    r0 = [r0 retain];
    r22 = [[r0 layer] retain];
    [r19 setTrackedLayer:r22];
    [r22 release];
    [r0 release];
    [r20 release];
    return;
}

-(void)registerForEvents {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self player];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_100745410;

loc_1007452a4:
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r19 selector:@selector(screenModeNotification:) name:**_MPMoviePlayerDidEnterFullscreenNotification object:r20];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r19 selector:@selector(screenModeNotification:) name:**_MPMoviePlayerDidExitFullscreenNotification object:r20];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r19 selector:@selector(playerFinishedNotification) name:**_MPMoviePlayerPlaybackDidFinishNotification object:r20];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r19 selector:@selector(stateChangeNotification) name:**_MPMoviePlayerPlaybackStateDidChangeNotification object:r20];
    [r0 release];
    if ([r20 playbackState] != 0x1) goto loc_100745440;

loc_1007453e4:
    [IROMoatLogging reportDevLogWithObject:r19 format:@"player is already playing, start tracking right away."];
    r0 = r19;
    r1 = @selector(stateChangeNotification);
    goto loc_10074543c;

loc_10074543c:
    objc_msgSend(r0, r1);
    goto loc_100745440;

loc_100745440:
    [r20 release];
    return;

loc_100745410:
    [IROMoatLogging reportDevLogWithObject:r19 format:@"uh-oh, player reference became nil before we kicked off the interval."];
    r1 = @selector(destroy);
    r0 = r19;
    goto loc_10074543c;
}

-(void)stateChangeNotification {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self player];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 playbackState] != 0x0) {
            [r20 release];
            r1 = @selector(updatePlaybackStatus);
    }
    else {
            r21 = [r19 playerState];
            [r20 release];
            if (r21 == 0x2) {
                    r1 = @selector(updatePlaybackStatus);
            }
            else {
                    r1 = @selector(playbackCompletionUpdate);
            }
    }
    objc_msgSend(r19, r1);
    return;
}

-(void *)player {
    r0 = objc_loadWeakRetained((int64_t *)&self->_player);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_player);
    return;
}

-(void)setPlayer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_player, arg2);
    return;
}

@end