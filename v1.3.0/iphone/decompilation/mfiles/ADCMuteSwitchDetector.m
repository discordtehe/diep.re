@implementation ADCMuteSwitchDetector

-(void *)init {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[&saved_fp - 0x20 super] init];
    if (r19 != 0x0) {
            r20 = dispatch_queue_create("com.adcolony.sdk-sc", 0x0);
            [r19 setQueue:r20];
            [r20 release];
            r0 = [r19 retain];
            [r0 runOnQueue:&var_48];
            [r0 release];
    }
    r0 = r19;
    return r0;
}

-(void)setSilentNotify:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [arg2 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_silentNotify));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    if (arg2 != 0x0) {
            [r19 setForceEmit:0x1];
    }
    return;
}

-(void)runOnQueue:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self queue];
    r0 = [r0 retain];
    dispatch_async(r0, r21);
    [r21 release];
    [r19 release];
    return;
}

-(void)initialize {
    r31 = r31 - 0x60;
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
    r19 = self;
    [self setIsMute:0x1];
    [r19 setPossibleChange:0x0];
    r0 = [r19 getSoundFilename];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if ([r19 createSoundFile:r20] != 0x0) {
            r0 = [NSURL fileURLWithPath:r20];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            r0 = AudioServicesCreateSystemSoundID(r0, &var_44);
            if (r0 != 0x0) {
                    r1 = @selector(setSoundId:);
            }
            else {
                    r0 = [UIDevice currentDevice];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 systemVersion];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 compare:@"9.0" options:0x40];
                    [r0 release];
                    [r22 release];
                    if (r24 == -0x1) {
                            AudioServicesAddSystemSoundCompletion([r19 soundId], CFRunLoopGetMain(), **_kCFRunLoopDefaultMode, 0x1001a9c58, r19);
                            r0 = AudioServicesSetProperty(0x69737569, 0x4, &var_44, 0x4, &var_48);
                    }
                    [r19 setSoundId:var_44];
                    r1 = @selector(setForceEmit:);
            }
            objc_msgSend(r19, r1);
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(didEnterBackground) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r19 selector:@selector(bacameActive) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
            [r0 release];
            [r19 setInitialized:0x1];
            [r21 release];
    }
    else {
            [r19 setInitialized:0x0];
    }
    [r20 release];
    return;
}

-(void)jobFinished:(bool)arg2 isMuted:(bool)arg3 {
    [self runOnQueue:&var_30];
    return;
}

-(void)scheduleCheck {
    r31 = r31 - 0x60;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self started] != 0x0 && ([r19 isPaused] & 0x1) == 0x0) {
            r0 = [r19 job];
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    if ([r19 possibleChange] != 0x0) {
                            if ([r19 isMute] != 0x0) {
                                    asm { fcsel      s8, s0, s1, ne };
                            }
                    }
                    r20 = [ADCMuteSwitchDetectorJob alloc];
                    r20 = [r20 initWithSoundId:[r19 soundId] andDelay:&var_48 completion:r4];
                    [r19 setJob:r20];
                    [r20 release];
            }
    }
    return;
}

-(void)didEnterBackground {
    [self runOnQueue:&var_28];
    return;
}

-(void)bacameActive {
    [self runOnQueue:&var_28];
    return;
}

-(void)start {
    [self runOnQueue:&var_28];
    return;
}

-(void)stop {
    [self runOnQueue:&var_28];
    return;
}

-(bool)createSoundFile:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r0 = objc_retainAutorelease(r0);
    r19 = r0;
    r20 = sub_1001a9308([r0 UTF8String]);
    if ((r20 & 0x1) == 0x0) {
            r22 = @"";
            if (r19 != 0x0) {
                    r22 = @"";
                    [NSString class];
                    if ([r19 isKindOfClass:r2] != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r22 = @"";
                            }
                            else {
                                    r22 = r19;
                            }
                    }
            }
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCMuteSwitchDetector createSoundFile:]" line:0xfd withFormat:@"Unable to create switch detector file: (%@), %0.3f"];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isSoundFileAvailable {
    r19 = [[self getSoundFilename] retain];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r21 = [r0 fileExistsAtPath:r19];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)getSoundFilename {
    r0 = NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1);
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r21 = [[r0 stringByAppendingPathComponent:@"adcolony_mute_sound_check.wav"] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)completeJob {
    [NSDate timeIntervalSinceReferenceDate];
    [self runOnQueue:&var_40];
    return;
}

+(void *)sharedInstance {
    if (*qword_1011d2110 != -0x1) {
            dispatch_once(0x1011d2110, 0x100e700d0);
    }
    r0 = *0x1011d2118;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)isMute {
    r0 = *(int8_t *)(int64_t *)&self->_isMute;
    return r0;
}

-(void)setIsMute:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isMute = arg2;
    return;
}

-(bool)started {
    r0 = *(int8_t *)(int64_t *)&self->_started;
    return r0;
}

-(void)setStarted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_started = arg2;
    return;
}

-(void *)silentNotify {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_silentNotify)), 0x0);
    return r0;
}

-(void)setSoundId:(unsigned int)arg2 {
    *(int32_t *)(int64_t *)&self->_soundId = arg2;
    return;
}

-(unsigned int)soundId {
    r0 = *(int32_t *)(int64_t *)&self->_soundId;
    return r0;
}

-(bool)isPaused {
    r0 = *(int8_t *)(int64_t *)&self->_isPaused & 0x1;
    return r0;
}

-(void)setIsPaused:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isPaused = arg2;
    return;
}

-(bool)forceEmit {
    r0 = *(int8_t *)(int64_t *)&self->_forceEmit & 0x1;
    return r0;
}

-(void)setForceEmit:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_forceEmit = arg2;
    return;
}

-(bool)initialized {
    r0 = *(int8_t *)(int64_t *)&self->_initialized;
    return r0;
}

-(void)setPossibleChange:(unsigned long long)arg2 {
    self->_possibleChange = arg2;
    return;
}

-(unsigned long long)possibleChange {
    r0 = self->_possibleChange;
    return r0;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialized = arg2;
    return;
}

-(void *)queue {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_queue)), 0x1);
    return r0;
}

-(void)setQueue:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)job {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_job)), 0x1);
    return r0;
}

-(void)setJob:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_job, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_silentNotify, 0x0);
    return;
}

@end