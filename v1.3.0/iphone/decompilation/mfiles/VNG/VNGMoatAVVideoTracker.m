@implementation VNGMoatAVVideoTracker

-(double)trackedPlayheadMS {
    r31 = r31 - 0x50;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self player] retain];
    if (r19 != 0x0) {
            [r19 currentTime];
    }
    CMTimeGetSeconds(&var_38);
    r0 = [r19 release];
    return r0;
}

-(double)adDurationMS {
    r31 = r31 - 0x90;
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
    r20 = self;
    r0 = [self player];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 currentItem];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 asset] retain];
    r0 = NSStringFromSelector(@selector(duration));
    r29 = &saved_fp;
    r27 = [r0 retain];
    r28 = [r26 statusOfValueForKey:r27 error:0x0];
    [r27 release];
    [r26 release];
    [r25 release];
    r0 = [r24 release];
    if (r28 == 0x2) {
            r0 = [r20 player];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 currentItem];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 asset] retain];
            if (r22 != 0x0) {
                    [r22 duration];
            }
            CMTimeGetSeconds(&var_78);
            [r22 release];
            [r21 release];
            r0 = [r20 release];
    }
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
    [r0 rate];
    if (s0 == 0x3ff0000000000000) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(float)playerVolume {
    r0 = [self player];
    r0 = [r0 retain];
    [r0 volume];
    r0 = [r0 release];
    return r0;
}

+(void *)classTag {
    objc_retainAutorelease(@"MoatAVVideoTracker");
    return @"MoatAVVideoTracker";
}

-(bool)isMuted {
    r0 = [self player];
    r0 = [r0 retain];
    r20 = [r0 isMuted];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)playbackError {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self player];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 error];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r20 = 0x1;
            }
    }
    [r0 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)trackVideoAd:(void *)arg2 player:(void *)arg3 layer:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([VNGMoatOnOff getStatus] == 0x0 || ([r22 initialized] & 0x1) == 0x0) goto loc_10067c3f4;

loc_10067c2e8:
    r0 = [VNGMoatVideoUtil adIdsToJSONString:r19];
    r29 = r29;
    r25 = [r0 retain];
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r9 = r20;
            }
            else {
                    r9 = @"nil";
            }
    }
    r8 = @"nil";
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r21;
            }
            else {
                    r8 = @"nil";
            }
    }
    [VNGMoatLogging reportDevLogWithObject:r2 format:r3];
    [r25 release];
    if ([r22 trackPlayer:r20 adIds:r19 targetLayer:r21] == 0x0) goto loc_10067c5b8;

loc_10067c384:
    [VNGMoatLogging reportDevLogWithObject:r2 format:r3];
    [r22 registerForEvents];
    r23 = @class(VNGMoatLogging);
    r22 = [[r22 trackerID] retain];
    [r23 reportClientLog:0x0 trackerID:r22 format:@"trackVideoAd succeeded"];
    [r22 release];
    goto loc_10067c578;

loc_10067c578:
    r22 = 0x1;
    goto loc_10067c57c;

loc_10067c57c:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_10067c5b8:
    [VNGMoatLogging reportDevLogWithObject:r2 format:r3];
    r23 = @class(VNGMoatLogging);
    r22 = [[r22 trackerID] retain];
    [r23 reportClientLog:0x1 trackerID:r22 format:@"trackVideoAd failed"];
    [r22 release];
    r22 = 0x0;
    goto loc_10067c57c;

loc_10067c3f4:
    objc_initWeak(r29 - 0x58, r22);
    objc_initWeak(&stack[-112], r20);
    objc_initWeak(&stack[-120], r21);
    [[NSDictionary dictionaryWithDictionary:r19] retain];
    r0 = objc_loadWeakRetained(&stack[-112]);
    [[NSValue valueWithNonretainedObject:r0] retain];
    [r0 release];
    objc_copyWeak(&var_A8 + 0x28, r29 - 0x58);
    [r27 retain];
    objc_copyWeak(&var_A8 + 0x30, &stack[-112]);
    objc_copyWeak(&var_A8 + 0x38, &stack[-120]);
    r22 = [[r22 classTag] retain];
    [r28 onResurrectionDo:&var_A8 withQueue:r22 withKey:r24];
    [r22 release];
    objc_destroyWeak(&var_A8 + 0x38);
    objc_destroyWeak(&var_A8 + 0x30);
    [r27 release];
    objc_destroyWeak(&var_A8 + 0x28);
    [r24 release];
    [r27 release];
    objc_destroyWeak(&stack[-120]);
    objc_destroyWeak(&stack[-112]);
    objc_destroyWeak(r29 - 0x58);
    goto loc_10067c578;
}

-(void)changeTargetLayer:(void *)arg2 {
    r20 = @class(VNGMoatLogging);
    r22 = [arg2 retain];
    [r20 reportDevLogWithObject:self format:@"changeTargetLayer: %@"];
    r20 = @class(VNGMoatLogging);
    r21 = [[self trackerID] retain];
    [r20 reportClientLog:0x0 trackerID:r21 format:@"changeTargetLayer succeeded"];
    [r21 release];
    [self setTrackedLayer:r22];
    [r22 release];
    return;
}

-(void)registerForEvents {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self player];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r21 = [[NSNotificationCenter defaultCenter] retain];
            [[r19 currentItem] retain];
            [r21 addObserver:r2 selector:r3 name:r4 object:r5];
            [r24 release];
            [r21 release];
    }
    else {
            [VNGMoatLogging reportDevLogWithObject:r20 format:@"uh-oh, player reference became nil before we kicked off the interval."];
            [r20 destroy];
    }
    [r19 release];
    return;
}

-(void)playerFinishedNotification {
    [self playbackCompletionUpdate];
    return;
}

-(void *)player {
    r0 = objc_loadWeakRetained((int64_t *)&self->_player);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPlayer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_player, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_player);
    return;
}

@end