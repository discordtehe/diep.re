@implementation CDXPropertyModifierAction

+(void *)actionWithDuration:(double)arg2 modifier:(void *)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 modifier:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 modifier:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_30 super] initWithDuration:r2];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(modifier));
            r0 = *(r20 + r21);
            if (r0 != 0x0) {
                    [r0 release];
            }
            *(r20 + r21) = r19;
            [r19 retain];
    }
    r0 = r20;
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    [self->modifier _getTargetProperty];
    *(int32_t *)(int64_t *)&self->lastSetValue = s0;
    return;
}

-(void)dealloc {
    [self->modifier release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:self->modifier modifier:r3];
    return r0;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(modifier));
    [*(self + r21) _getTargetProperty];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(lastSetValue));
    if (s0 != *(int32_t *)(r19 + r22)) {
            [[[CCDirector sharedDirector] actionManager] removeAction:r19];
    }
    else {
            r20 = @selector(_getTargetProperty);
            r0 = *(r19 + r21);
            asm { fcvt       s0, d8 };
            [r0 modify:r2];
            objc_msgSend(*(r19 + r21), r20);
            *(int32_t *)(r19 + r22) = s0;
    }
    return;
}

+(void)fadeSoundEffect:(double)arg2 finalVolume:(float)arg3 curveType:(int)arg4 shouldStop:(bool)arg5 effect:(void *)arg6 {
    r22 = [CDSoundSourceFader alloc];
    [arg4 gain];
    r0 = [r22 init:arg4 interpolationType:arg2 startVal:r4 endVal:arg5];
    [r0 setStopTargetWhenComplete:arg3];
    r20 = [CDXPropertyModifierAction actionWithDuration:r0 modifier:arg2];
    [r0 release];
    [[[CCDirector sharedDirector] actionManager] addAction:r20 target:arg4 paused:0x0];
    return;
}

+(void)fadeSoundEffects:(double)arg2 finalVolume:(float)arg3 curveType:(int)arg4 shouldStop:(bool)arg5 {
    r19 = [[CDAudioManager sharedManager] soundEngine];
    r22 = [CDSoundEngineFader alloc];
    [r19 masterGain];
    r0 = [r22 init:r19 interpolationType:arg2 startVal:arg4 endVal:arg5];
    [r0 setStopTargetWhenComplete:arg3];
    r20 = [CDXPropertyModifierAction actionWithDuration:r0 modifier:arg2];
    [r0 release];
    [[[CCDirector sharedDirector] actionManager] addAction:r20 target:r19 paused:0x0];
    return;
}

+(void)fadeBackgroundMusic:(double)arg2 finalVolume:(float)arg3 curveType:(int)arg4 shouldStop:(bool)arg5 {
    r19 = [[CDAudioManager sharedManager] audioSourceForChannel:0x0];
    r22 = [CDLongAudioSourceFader alloc];
    [r19 volume];
    r0 = [r22 init:r19 interpolationType:arg2 startVal:arg4 endVal:arg5];
    [r0 setStopTargetWhenComplete:arg3];
    r20 = [CDXPropertyModifierAction actionWithDuration:r0 modifier:arg2];
    [r0 release];
    [[[CCDirector sharedDirector] actionManager] addAction:r20 target:r19 paused:0x0];
    return;
}

@end