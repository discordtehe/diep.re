@implementation GADApplicationVolumeMonitor

-(void *)initWithWebAdView:(void *)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_webAdView, r19);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r21);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            objc_initWeak(&stack[-88], r20);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
            [r21 addObserverForName:*0x100e9bff0 object:0x0 queue:r23 usingBlock:&var_70];
            [r23 release];
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(&stack[-88]);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_destroyWeak((int64_t *)&self->_webAdView);
    return;
}

-(void)reportCurrentAudioState {
    r31 = r31 - 0x120;
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
    r22 = self;
    r20 = [[NSThread currentThread] retain];
    r0 = @class(NSThread);
    r0 = [r0 mainThread];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r20 != r0) {
            var_C8 = [r22 retain];
            dispatch_async(*__dispatch_main_q, &var_E8);
            r0 = var_C8;
    }
    else {
            var_F0 = r22;
            r20 = [[GADDeviceAudioSignals alloc] init];
            r0 = @class(GADMobileAds);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            [r0 applicationVolume];
            v9 = v0;
            [r0 release];
            r0 = @class(GADMobileAds);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r25 = [r0 applicationMuted];
            [r0 release];
            [r20 audioVolume];
            v8 = v0;
            r0 = [r20 audioRoutePortNames];
            r29 = r29;
            r19 = [r0 retain];
            r26 = [r20 isOtherAudioPlaying];
            if (r19 == 0x0) {
                    r0 = [NSArray arrayWithObjects:&stack[-208] count:0x0];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r19 release];
                    r19 = r23;
            }
            r24 = [NSMutableDictionary alloc];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:r2];
            r29 = r29;
            r23 = [r0 retain];
            if (r25 != 0x0) {
                    r0 = @class(NSNumber);
                    var_FC = 0x1;
                    r2 = 0x1;
                    r0 = [r0 numberWithInt:r2];
                    r29 = r29;
                    r25 = [r0 retain];
                    var_100 = 0x0;
            }
            else {
                    r0 = @class(NSNumber);
                    r2 = 0x0;
                    r0 = [r0 numberWithInt:r2];
                    r29 = r29;
                    r25 = [r0 retain];
                    var_100 = 0x1;
                    var_FC = 0x0;
            }
            r0 = @class(NSNumber);
            r0 = [r0 numberWithFloat:r2];
            r29 = r29;
            r27 = [r0 retain];
            var_F8 = r19;
            if (r26 != 0x0) {
                    r0 = @class(NSNumber);
                    r21 = 0x1;
                    r0 = [r0 numberWithInt:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    r19 = 0x0;
            }
            else {
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithInt:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    r21 = 0x0;
                    r19 = 0x1;
            }
            r0 = [NSDictionary dictionaryWithObjects:&var_90 forKeys:&var_B8 count:0x5];
            r29 = r29;
            r28 = [r0 retain];
            r24 = [r24 initWithDictionary:r28];
            [r28 release];
            if (r19 != 0x0) {
                    [r26 release];
            }
            if (r21 != 0x0) {
                    [r26 release];
            }
            [r27 release];
            if (var_100 != 0x0) {
                    [r25 release];
            }
            if (var_FC != 0x0) {
                    [r25 release];
            }
            [r23 release];
            r0 = [r20 shouldSilenceAudioValue];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    if (([r23 boolValue] & 0x1) != 0x0) {
                            r0 = @class(NSNumber);
                            r0 = [r0 numberWithInt:r2];
                    }
                    else {
                            r0 = @class(NSNumber);
                            r0 = [r0 numberWithInt:r2];
                    }
                    sub_100822058(r24, @"should_silence_audio", [r0 retain]);
                    [r22 release];
            }
            r0 = objc_loadWeakRetained((int64_t *)&var_F0->_webAdView);
            [r0 asyncEvaluateFunction:@"volume" parameters:r24];
            [r0 release];
            [r23 release];
            [r24 release];
            [var_F8 release];
            r0 = r20;
    }
    var_68 = **___stack_chk_guard;
    [r0 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;
}

@end