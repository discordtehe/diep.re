@implementation GADAudioVideoManager

-(void *)init {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = @class(NSMutableSet);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerIDsPlayingVideo));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableSet);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerIDsPlayingSound));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableSet);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerIDsPlayingUserInitiatedSound));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMapTable strongToWeakObjectsMapTable];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_playerIDsToPlayer));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            var_38 = [r19 retain];
            sub_100860a80();
            [var_38 release];
    }
    r0 = r19;
    return r0;
}

-(void)setAudioSessionIsApplicationManaged:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    *(int8_t *)(int64_t *)&self->_audioSessionIsApplicationManaged = arg2;
    r19 = [[GADAudioSession sharedInstance] retain];
    if (arg2 != 0x0) {
            r1 = @selector(disable);
    }
    else {
            r1 = @selector(enable);
    }
    objc_msgSend(r19, r1);
    [r19 release];
    return;
}

-(void)updateAudioSessionAfterAllVideoStopPlayingSound {
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
    r20 = self;
    if (*(int8_t *)(int64_t *)&r20->_audioSessionIsApplicationManaged == 0x0) goto loc_10088eb84;

loc_10088eb24:
    r0 = @class(GADAudioSession);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 restoreState];
    [r0 release];
    r0 = @class(GADAudioSession);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    [r0 disable];
    goto loc_10088ece8;

loc_10088ece8:
    [r19 release];
    return;

.l1:
    return;

loc_10088eb84:
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_playerIDsPlayingVideo));
    if ([*(r20 + r22) count] != 0x0) {
            r0 = [GADAudioSession sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setMixable:0x1 userInitiated:0x0 queue:0x0 completionBlock:0x0];
            [r0 release];
    }
    if ([*(r20 + r22) count] > 0x1) goto .l1;

loc_10088ebfc:
    r19 = [[*(r20 + r22) anyObject] retain];
    r0 = r20->_playerIDsToPlayer;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            [r20 momentarilyPauseAndExecuteBlock:0x100e9b0c8];
    }
    else {
            r0 = @class(GADAudioSession);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            [r0 resumeBackgroundAppAudioIfInterruptedWithQueue:0x0 completionBlock:0x0];
            [r0 release];
            r0 = @class(GADAudioSession);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            [r0 restoreState];
            [r0 release];
    }
    [r20 release];
    goto loc_10088ece8;
}

-(void)player:(void *)arg2 willChangeStateToPlaying:(bool)arg3 muted:(bool)arg4 userInitiated:(bool)arg5 queue:(void *)arg6 completionBlock:(void *)arg7 {
    r25 = [arg2 retain];
    r21 = [arg6 retain];
    r26 = [arg7 retain];
    r27 = [[NSString alloc] initWithFormat:@"%p"];
    var_80 = [self retain];
    [r25 retain];
    [r27 retain];
    var_68 = r21;
    [r21 retain];
    [r26 retain];
    dispatch_async(*__dispatch_main_q, &var_A0);
    [r26 release];
    [var_68 release];
    [r27 release];
    [r25 release];
    [var_80 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)playerWithID:(void *)arg2 didChangeStateToPlaying:(bool)arg3 muted:(bool)arg4 userInitiated:(bool)arg5 {
    r31 = r31 - 0x70;
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
    r26 = arg5;
    r27 = arg4;
    r24 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r23 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_playerIDsPlayingSound));
    r25 = [*(r20 + r21) count];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_playerIDsPlayingVideo));
    var_58 = [*(r20 + r28) count];
    r0 = *(r20 + r21);
    if (r24 == 0x1 && r27 == 0x0) {
            sub_100822430(r0, r19);
            if (r26 != 0x0) {
                    sub_100822430(r20->_playerIDsPlayingUserInitiatedSound, r19);
            }
    }
    else {
            sub_100822490(r0, r19);
            sub_100822490(r20->_playerIDsPlayingUserInitiatedSound, r19);
    }
    r0 = *(r20 + r28);
    r1 = r19;
    if ((r24 & 0x1) != 0x0) {
            sub_100822430(r0, r1);
            if (r25 != 0x0) {
                    if ([*(r20 + r21) count] == 0x0) {
                            [r20 updateAudioSessionAfterAllVideoStopPlayingSound];
                            if ([r23 respondsToSelector:@selector(audioVideoManagerDidStopPlayingAudio:)] != 0x0) {
                                    [r23 audioVideoManagerDidStopPlayingAudio:r20];
                            }
                    }
            }
    }
    else {
            sub_100822490(r0, r1);
            if (r25 != 0x0) {
                    if ([*(r20 + r21) count] == 0x0) {
                            [r20 updateAudioSessionAfterAllVideoStopPlayingSound];
                            if ([r23 respondsToSelector:@selector(audioVideoManagerDidStopPlayingAudio:)] != 0x0) {
                                    [r23 audioVideoManagerDidStopPlayingAudio:r20];
                            }
                    }
            }
    }
    if (var_58 != 0x0 && [*(r20 + r28) count] == 0x0) {
            r0 = [GADAudioSession sharedInstance];
            r0 = [r0 retain];
            [r0 restoreState];
            [r0 release];
            if ([r23 respondsToSelector:@selector(audioVideoManagerDidPauseAllVideo:)] != 0x0) {
                    [r23 audioVideoManagerDidPauseAllVideo:r20];
            }
    }
    [r23 release];
    [r19 release];
    return;
}

-(void)playerWithID:(void *)arg2 willChangeStateToPlaying:(bool)arg3 muted:(bool)arg4 userInitiated:(bool)arg5 queue:(void *)arg6 completionBlock:(void *)arg7 {
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
    r29 = &saved_fp;
    r22 = arg5;
    r26 = arg4;
    r25 = self;
    r19 = [arg2 retain];
    r23 = [arg6 retain];
    r21 = [arg7 retain];
    if ((arg3 & 0x1) != 0x0) {
            var_88 = r21;
            var_80 = r23;
            r20 = r19;
            r19 = r22;
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_playerIDsPlayingVideo));
            r21 = [*(r25 + r22) count];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_playerIDsPlayingSound));
            if ([*(r25 + r23) count] != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r27 = 0x1;
                    }
            }
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_playerIDsPlayingUserInitiatedSound));
            r0 = *(r25 + r28);
            r0 = [r0 count];
            r27 = r27 | r26;
            if (r21 != 0x0) {
                    asm { ccmp       w27, #0x0, #0x4, ne };
            }
            if (!CPU_FLAGS & E && ((r26 & 0x1) != 0x0 || r0 != 0x0 || ((r19 ^ 0x1) & 0x1) != 0x0)) {
                    r21 = var_88;
                    r23 = var_80;
                    dispatch_async(r23, r21);
                    r19 = r20;
            }
            else {
                    r0 = *(r25 + r22);
                    r22 = r20;
                    sub_100822430(r0, r22);
                    r0 = *(r25 + r23);
                    var_8C = r19;
                    r23 = r26;
                    if ((r26 & 0x1) != 0x0) {
                            sub_100822490(r0, r22);
                            sub_100822490(*(r25 + r28), r22);
                    }
                    else {
                            sub_100822430(r0, r22);
                            if (r19 != 0x0) {
                                    sub_100822430(*(r25 + r28), r20);
                            }
                    }
                    r24 = objc_loadWeakRetained((int64_t *)&r25->_delegate);
                    if (r21 == 0x0) {
                            if ([r24 respondsToSelector:@selector(audioVideoManagerWillPlayVideo:)] != 0x0) {
                                    [r24 audioVideoManagerWillPlayVideo:r25];
                            }
                    }
                    r19 = r20;
                    if ((r27 & 0x1) == 0x0 && [r24 respondsToSelector:@selector(audioVideoManagerWillPlayAudio:)] != 0x0) {
                            [r24 audioVideoManagerWillPlayAudio:r25];
                    }
                    r22 = *(int8_t *)(int64_t *)&r25->_audioSessionIsApplicationManaged;
                    r0 = [GADSettings sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 boolForKey:*0x100e9b798];
                    [r0 release];
                    r21 = var_88;
                    if (r22 == 0x1 && ((r26 | r23) ^ 0x1) == 0x0) {
                            r23 = var_80;
                            dispatch_async(r23, r21);
                    }
                    else {
                            r0 = @class(GADAudioSession);
                            r0 = [r0 sharedInstance];
                            r0 = [r0 retain];
                            [r0 enable];
                            [r0 release];
                            r25 = [[GADAudioSession sharedInstance] retain];
                            var_58 = [r21 retain];
                            r2 = r23;
                            r23 = var_80;
                            [r25 setMixable:r2 userInitiated:var_8C queue:r23 completionBlock:&var_78];
                            [r25 release];
                            [var_58 release];
                    }
                    [r24 release];
            }
    }
    else {
            dispatch_async(r23, r21);
    }
    [r21 release];
    [r23 release];
    [r19 release];
    return;
}

-(void)player:(void *)arg2 didChangeStateToPlaying:(bool)arg3 muted:(bool)arg4 userInitiated:(bool)arg5 {
    r23 = [arg2 retain];
    r24 = [[NSString alloc] initWithFormat:@"%p"];
    var_50 = [self retain];
    [r23 retain];
    [r24 retain];
    dispatch_async(*__dispatch_main_q, &var_70);
    [r24 release];
    [r23 release];
    [var_50 release];
    [r19 release];
    [r22 release];
    return;
}

-(void)playerWillDealloc:(void *)arg2 {
    r19 = [[NSString alloc] initWithFormat:@"%p"];
    var_20 = [self retain];
    var_18 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [var_18 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)audioSessionIsApplicationManaged {
    r0 = *(int8_t *)(int64_t *)&self->_audioSessionIsApplicationManaged;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_playerIDsToPlayer, 0x0);
    objc_storeStrong((int64_t *)&self->_playerIDsPlayingUserInitiatedSound, 0x0);
    objc_storeStrong((int64_t *)&self->_playerIDsPlayingSound, 0x0);
    objc_storeStrong((int64_t *)&self->_playerIDsPlayingVideo, 0x0);
    return;
}

@end