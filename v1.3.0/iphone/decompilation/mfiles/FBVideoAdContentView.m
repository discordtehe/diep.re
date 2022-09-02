@implementation FBVideoAdContentView

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r19->_countdownFormat, @"{{REMAINING_TIME}}");
    }
    r0 = r19;
    return r0;
}

-(union ?)currentTime {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    if (*qword_1011dd128 != -0x1) {
            r0 = dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    r8 = *qword_1011dd130;
    q0 = *(int128_t *)r8;
    *(r19 + 0x10) = *(r8 + 0x10);
    *(int128_t *)r19 = q0;
    return r0;
}

-(union ?)duration {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    if (*qword_1011dd128 != -0x1) {
            r0 = dispatch_once_f(0x1011dd128, 0x1011c61d8, 0x100a3d91c);
    }
    r8 = *qword_1011dd130;
    q0 = *(int128_t *)r8;
    *(r19 + 0x10) = *(r8 + 0x10);
    *(int128_t *)r19 = q0;
    return r0;
}

-(void *)formattedCountdownFromRemainingSeconds:(unsigned long long)arg2 {
    r2 = arg2;
    r19 = self;
    asm { ucvtf      d8, x2 };
    r20 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:r2];
    r21 = [[[r19 class] timeStringFromDate:r20 duration:r3] retain];
    r0 = [r19 countdownFormat];
    r0 = [r0 retain];
    r22 = [[r0 stringByReplacingOccurrencesOfString:@"{{REMAINING_TIME}}" withString:r21] retain];
    [r0 release];
    [r21 release];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

-(bool)isAutoplay {
    return 0x0;
}

-(bool)skippable {
    return 0x0;
}

-(float)volume {
    r0 = self;
    return r0;
}

-(union ?)skipRemainingTime {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    if (*qword_1011dd158 != -0x1) {
            r0 = dispatch_once_f(0x1011dd158, 0x1011c6208, 0x100a3d91c);
    }
    r8 = *qword_1011dd160;
    q0 = *(int128_t *)r8;
    *(r19 + 0x10) = *(r8 + 0x10);
    *(int128_t *)r19 = q0;
    return r0;
}

-(void)loadAdFromDataModel:(void *)arg2 placementDefinition:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    [r21 setDataModel:r19];
    [r21 setCountdownEnabled:[r19 countdownEnabled]];
    r0 = [r19 countdownFormat];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r22 = [[r19 countdownFormat] retain];
            [r21 setCountdownFormat:r22];
            [r22 release];
    }
    [r20 videoTimePollingInterval];
    sub_100a3e550(&var_48);
    *((int64_t *)&r21->_videoTimePollingFrequency + 0x10) = var_38;
    *(int128_t *)(int64_t *)&r21->_videoTimePollingFrequency = var_48;
    [r20 release];
    [r19 release];
    return;
}

-(void)startFromRootViewController:(void *)arg2 {
    return;
}

-(void)pause {
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dataModel, 0x0);
    objc_storeStrong((int64_t *)&self->_countdownFormat, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void)resume {
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(bool)countdownEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_countdownEnabled;
    return r0;
}

-(void)setCountdownEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_countdownEnabled = arg2;
    return;
}

-(void *)countdownFormat {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_countdownFormat)), 0x0);
    return r0;
}

-(void)setCountdownFormat:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)dataModel {
    r0 = self->_dataModel;
    return r0;
}

-(void)setDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dataModel, arg2);
    return;
}

-(union ?)videoTimePollingFrequency {
    r0 = self;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoTimePollingFrequency));
    r10 = *(0x10 + r0 + r9);
    *(int128_t *)r8 = *(int128_t *)(r0 + r9);
    *(r8 + 0x10) = r10;
    return r0;
}

+(void *)dateFormatter {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100eae8c8);
    if (*qword_1011ddcf0 != -0x1) {
            dispatch_once(0x1011ddcf0, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddcf8);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)timeStringFromDate:(void *)arg2 duration:(double)arg3 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self dateFormatter];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (d8 < *0x100ba1fb0) {
    }
    [r20 setDateFormat:r2];
    r21 = [[r20 stringFromDate:r19] retain];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

@end