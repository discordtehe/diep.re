@implementation ADCAvidViewabilityMonitor

-(void *)initWithDictionary:(void *)arg2 session:(void *)arg3 interstitialAd:(void *)arg4 {
    r31 = r31 - 0xb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [r19 objectForKey:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r23 = [[r29 - 0x40 super] init];
            if (r23 != 0x0) {
                    [r23 setAd:r21];
                    [r23 setSession:r20];
                    if (([NSThread isMainThread] & 0x1) != 0x0) {
                            var_50 = [r19 retain];
                            [r23 retain];
                            sub_100235420(&var_70);
                            [r24 release];
                            r0 = var_50;
                    }
                    else {
                            var_80 = [r19 retain];
                            var_78 = [r23 retain];
                            dispatch_sync(*__dispatch_main_q, &var_A0);
                            [var_78 release];
                            r0 = var_80;
                    }
                    [r0 release];
            }
            r23 = [r23 retain];
            r24 = r23;
    }
    else {
            r24 = 0x0;
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r23 release];
    r0 = r24;
    return r0;
}

-(void)registerFriendlyObstruction:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 avidAdSessionType] == 0x2) {
            r0 = [r20 avidAdSession];
            r0 = [r0 retain];
            [r0 registerFriendlyObstruction:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)registerIAS {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([NSThread isMainThread] & 0x1) != 0x0) {
            sub_10023607c(&var_38);
    }
    else {
            dispatch_sync(*__dispatch_main_q, &var_60);
    }
    return;
}

-(void)sendIasCustomMessage:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    var_48 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r21 = [[NSNumber numberWithUnsignedInteger:[self avidAdSessionType]] retain];
    r0 = [self avidAdSession];
    r0 = [r0 retain];
    r24 = [[r0 avidAdSessionId] retain];
    r20 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_78 count:0x3] retain];
    [r24 release];
    [r0 release];
    [r21 release];
    r21 = [[ADCUtil JSONStringFromJSONObject:r20] retain];
    r22 = [[NSDictionary dictionaryWithObjects:&stack[-152] forKeys:&var_98 count:0x2] retain];
    [r21 release];
    r0 = [ADCMessage controllerMessageWithType:@"CustomMessage.controller_send" contents:r22];
    r0 = [r0 retain];
    [r0 send];
    [r19 release];
    [r0 release];
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)onApplicationWillResignActive:(void *)arg2 {
    [self recordIASAdEvent:@"pause"];
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
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
    r19 = self;
    r21 = [arg2 retain];
    r20 = [arg2 isEqualToString:r2];
    [r21 release];
    if (r20 != 0x0) {
            r0 = [r19 session];
            r29 = r29;
            r0 = [r0 retain];
            r21 = [r0 isAudioPlaying];
            [r0 release];
            if (r21 != 0x0) {
                    r0 = [r19 avidAdSession];
                    r0 = [r0 retain];
                    r20 = r0;
                    r21 = [[r0 avidVideoPlaybackListener] retain];
                    r0 = [AVAudioSession sharedInstance];
                    r0 = [r0 retain];
                    r22 = r0;
                    [r0 outputVolume];
                    asm { fcvtzs     x23, s0 };
                    [r22 release];
                    [r21 recordAdVolumeChangeEvent:r23];
                    [r19 sendIasCustomMessage:@"volume_change"];
                    [r21 release];
                    [r20 release];
            }
    }
    return;
}

-(void)onApplicationDidBecomeActive:(void *)arg2 {
    [self recordIASAdEvent:@"resume"];
    return;
}

-(void)unregisterIAS {
    r31 = r31 - 0x70;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self avidAdSession];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            if (([NSThread isMainThread] & 0x1) != 0x0) {
                    sub_100236fc4(&var_38);
            }
            else {
                    dispatch_sync(*__dispatch_main_q, &var_60);
            }
    }
    return;
}

-(void)registerIASAdEventListeners {
    [AdColony registerHandler:&var_28 forCustomMessagesOfType:@"ias_ad_event"];
    return;
}

-(void)unregisterIASAdEventListeners {
    [AdColony unregisterHandlerForCustomMessagesOfType:@"ias_ad_event"];
    return;
}

-(void)recordIASAdEvent:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (([NSThread isMainThread] & 0x1) != 0x0) {
            var_18 = r19;
            r19 = [r19 retain];
            sub_1002376b4(&var_40);
            r0 = var_18;
    }
    else {
            var_48 = r19;
            r19 = [r19 retain];
            dispatch_sync(*__dispatch_main_q, &var_70);
            r0 = var_48;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void *)ad {
    r0 = self->_ad;
    return r0;
}

-(void)setAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_ad, arg2);
    return;
}

-(unsigned long long)avidAdSessionType {
    r0 = self->_avidAdSessionType;
    return r0;
}

-(void)setAvidAdSession:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_avidAdSession, arg2);
    return;
}

-(void)setAvidAdSessionType:(unsigned long long)arg2 {
    self->_avidAdSessionType = arg2;
    return;
}

-(void *)avidAdSession {
    r0 = self->_avidAdSession;
    return r0;
}

-(unsigned long long)adUnitType {
    r0 = self->_adUnitType;
    return r0;
}

-(void)setSession:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_session, arg2);
    return;
}

-(void *)session {
    r0 = objc_loadWeakRetained((int64_t *)&self->_session);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdUnitType:(unsigned long long)arg2 {
    self->_adUnitType = arg2;
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_session);
    objc_storeStrong((int64_t *)&self->_avidAdSession, 0x0);
    objc_storeStrong((int64_t *)&self->_ad, 0x0);
    return;
}

@end