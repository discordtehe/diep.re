@implementation GADDeviceAudioSignals

+(void *)sharedVolumeView {
    if (*qword_1011db878 != -0x1) {
            dispatch_once(0x1011db878, 0x100e92d08);
    }
    r0 = *0x1011db880;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)signalSource {
    r0 = [GADBlockSignalSource alloc];
    r0 = [r0 initWithQueue:*__dispatch_main_q signalBlock:0x100e92d48];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)shouldSilenceAudioValue {
    r0 = self->_shouldSilenceAudioValue;
    return r0;
}

-(bool)isOtherAudioPlaying {
    r0 = *(int8_t *)(int64_t *)&self->_isOtherAudioPlaying;
    return r0;
}

-(float)audioVolume {
    r0 = self;
    return r0;
}

-(void *)audioRoutePortNames {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_audioRoutePortNames)), 0x0);
    return r0;
}

-(void)addSignalEntriesToMutableDictionary:(void *)arg2 {
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    r19 = [arg2 retain];
    r0 = [r20 audioRoutePortNames];
    r0 = [r0 retain];
    sub_100822058(r19, *0x100e95c08, [r0 copy]);
    [r23 release];
    [r22 release];
    r21 = *0x100e95c20;
    [r20 audioVolume];
    asm { fcvt       d0, s0 };
    r0 = sub_1007da734();
    r29 = r29;
    sub_100822058(r19, r21, [r0 retain]);
    [r22 release];
    if (*(int8_t *)(r20 + sign_extend_64(*(int32_t *)ivar_offset(_isOtherAudioPlaying))) != 0x0) {
            r2 = 0x1;
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    else {
            r2 = 0x0;
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    sub_100822058(r19, *0x100e95c28, [r0 retain]);
    [r23 release];
    r0 = [GADMobileAds sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    [r0 applicationVolume];
    [r0 release];
    asm { fmin       s0, s8, s0 };
    if (s8 < 0x0) {
            asm { fcsel      s0, s1, s0, mi };
    }
    sub_100822058(r19, *0x100e95c10, [[NSNumber numberWithFloat:r2] retain]);
    [r24 release];
    r0 = @class(GADMobileAds);
    r0 = [r0 sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 applicationMuted];
    [r0 release];
    if ((r23 & 0x1) != 0x0) {
            r0 = @class(NSNumber);
            r0 = [r0 numberWithInt:r2];
            r29 = r29;
    }
    else {
            r0 = @class(NSNumber);
            r0 = [r0 numberWithInt:r2];
            r29 = r29;
    }
    sub_100822058(r19, *0x100e95c18, [r0 retain]);
    [r23 release];
    r0 = r20->_shouldSilenceAudioValue;
    if (r0 != 0x0) {
            if (([r0 boolValue] & 0x1) != 0x0) {
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithInt:r2];
            }
            else {
                    r0 = @class(NSNumber);
                    r0 = [r0 numberWithInt:r2];
            }
            sub_100822058(r19, *0x100e95c30, [r0 retain]);
            [r21 release];
    }
    [r19 release];
    return;
}

-(void *)init {
    r31 = r31 - 0x1e0;
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
    r0 = [[&var_1A0 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            sub_1008080d0();
            *(int32_t *)(int64_t *)&r21->_audioVolume = s0;
            if (sub_100818960() != 0x0) {
                    r0 = [NSArray arrayWithObjects:&stack[-352] count:0x0];
                    r29 = r29;
                    r23 = [r0 retain];
                    r22 = @selector(sharedInstance);
            }
            else {
                    r23 = @selector(init);
                    var_1B0 = r21;
                    r21 = [[NSDictionary dictionaryWithObjects:r29 - 0x90 forKeys:r29 - 0xc8 count:0x7] retain];
                    r0 = [AVAudioSession sharedInstance];
                    r0 = [r0 retain];
                    var_1C0 = r0;
                    r0 = [r0 currentRoute];
                    r0 = [r0 retain];
                    r19 = r0;
                    r0 = [r0 outputs];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = [r0 copy];
                    [r0 release];
                    [r19 release];
                    r23 = objc_msgSend([NSMutableArray alloc], r23);
                    r0 = [r22 retain];
                    r24 = r0;
                    r1 = @selector(countByEnumeratingWithState:objects:count:);
                    var_1A8 = r1;
                    r26 = objc_msgSend(r0, r1);
                    if (r26 != 0x0) {
                            do {
                                    r27 = 0x0;
                                    do {
                                            if (*0x0 != *0x0) {
                                                    objc_enumerationMutation(r24);
                                            }
                                            r0 = *(0x0 + r27 * 0x8);
                                            r0 = [r0 portName];
                                            r29 = r29;
                                            r20 = [r0 retain];
                                            if (r20 == 0x0) {
                                                    [@"gma_invalid" retain];
                                                    [r20 release];
                                                    r20 = @"gma_invalid";
                                            }
                                            r0 = [r21 objectForKeyedSubscript:r2];
                                            r29 = r29;
                                            r19 = [r0 retain];
                                            if (r19 == 0x0) {
                                                    r19 = [r20 retain];
                                            }
                                            sub_100822370(r23, r19);
                                            [r19 release];
                                            [r20 release];
                                            r27 = r27 + 0x1;
                                    } while (r27 < r26);
                                    r26 = objc_msgSend(r24, var_1A8);
                            } while (r26 != 0x0);
                    }
                    [r24 release];
                    [r24 release];
                    [var_1C0 release];
                    [r21 release];
                    r22 = @selector(sharedInstance);
                    r21 = var_1B0;
            }
            [r23 autorelease];
            objc_storeStrong((int64_t *)&r21->_audioRoutePortNames, r23);
            r0 = objc_msgSend(@class(AVAudioSession), r22);
            r29 = r29;
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r21->_isOtherAudioPlaying = [r0 isOtherAudioPlaying];
            [r0 release];
            if ((sub_100818960() & 0x1) == 0x0) {
                    r0 = objc_msgSend(@class(AVAudioSession), r22);
                    r0 = [r0 retain];
                    r20 = r0;
                    r0 = [NSNumber numberWithBool:[r0 secondaryAudioShouldBeSilencedHint]];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_shouldSilenceAudioValue));
                    r8 = *(r21 + r9);
                    *(r21 + r9) = r0;
                    [r8 release];
                    [r20 release];
            }
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_audioRoutePortNames, 0x0);
    objc_storeStrong((int64_t *)&self->_shouldSilenceAudioValue, 0x0);
    return;
}

@end