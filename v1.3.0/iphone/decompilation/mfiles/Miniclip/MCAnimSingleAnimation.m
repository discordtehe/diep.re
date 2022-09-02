@implementation MCAnimSingleAnimation

+(void *)animationWithTarget:(void *)arg2 action:(void *)arg3 andDescription:(void *)arg4 {
    r0 = [self animationWithTarget:arg2 action:arg3 description:arg4 andPlayDelayOffset:r5];
    return r0;
}

+(void *)animationWithTarget:(void *)arg2 action:(void *)arg3 description:(void *)arg4 andPlayDelayOffset:(float)arg5 {
    r5 = arg5;
    r4 = arg4;
    r3 = arg3;
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
    if (r2 != 0x0) {
            r20 = r3;
            if (r3 != 0x0) {
                    r0 = objc_alloc();
                    r0 = [r0 init:r2 andAction:r20 andDescription:r4 andDelay:r5];
                    r0 = [r0 autorelease];
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)init:(void *)arg2 andAction:(void *)arg3 andDescription:(void *)arg4 andDelay:(float)arg5 {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r21 = arg3;
    r22 = arg2;
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            *(int128_t *)(r20 + 0x20) = 0x0;
            *(int128_t *)(r20 + 0x28) = 0x0;
            *(r20 + 0x10) = [r22 retain];
            *(r20 + 0x18) = [r21 retain];
            *(r20 + 0x8) = [r19 retain];
            *(int32_t *)(r20 + 0x30) = s8;
            *(int8_t *)(r20 + 0x34) = 0x0;
    }
    r0 = r20;
    return r0;
}

-(bool)animationFinishedPlaying {
    r0 = *(int8_t *)(self + 0x34);
    return r0;
}

-(void)dealloc {
    [*(self + 0x10) release];
    [*(self + 0x18) release];
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)setTimeDelayOnPlay:(float)arg2 {
    *(int32_t *)(self + 0x30) = s0;
    return;
}

-(void *)getAction {
    r0 = *(self + 0x18);
    return r0;
}

-(void *)getTarget {
    r0 = *(self + 0x10);
    return r0;
}

-(void)insertActionBefore:(void *)arg2 {
    r20 = [CCSequence actions:r2];
    [*(self + 0x18) release];
    *(self + 0x18) = [r20 retain];
    return;
}

-(void)insertActionAfter:(void *)arg2 {
    r20 = [CCSequence actions:r2];
    [*(self + 0x18) release];
    *(self + 0x18) = [r20 retain];
    return;
}

-(void *)addConcurrentAnimation:(void *)arg2 {
    r2 = arg2;
    r8 = self;
    if (r2 != 0x0) {
            r0 = [MCAnimConcurrentAnimations withAnimations:r8];
    }
    else {
            r0 = r8;
    }
    return r0;
}

-(void)replaceActionWith:(void *)arg2 {
    [arg2 retain];
    [*(self + 0x18) release];
    *(self + 0x18) = [arg2 retain];
    [arg2 release];
    return;
}

-(void)insertActionBefore:(void *)arg2 andAfter:(void *)arg3 {
    r20 = [CCSequence actions:r2];
    [*(self + 0x18) release];
    *(self + 0x18) = [r20 retain];
    return;
}

-(void *)addConcurrentAnimation:(void *)arg2 withTimeOffset:(float)arg3 {
    [arg2 setTimeDelayOnPlay:r2];
    r0 = [self addConcurrentAnimation:arg2];
    return r0;
}

-(void *)getSingleAnimations {
    r0 = [NSArray arrayWithObject:r2];
    return r0;
}

-(void *)getSingleAnimationsWithTarget:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([*(self + 0x10) isEqual:r2] != 0x0) {
            r0 = [NSArray arrayWithObject:r2];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)playWithSelectorOnStart:(void *)arg2 andSelectorOnEnd:(void *)arg3 withData:(void *)arg4 onTarget:(void *)arg5 {
    r24 = [CCCallFuncND actionWithTarget:arg5 selector:arg2 data:r4];
    r26 = [CCCallBlock actionWithBlock:&var_78];
    [CCCallFuncND actionWithTarget:arg5 selector:arg3 data:arg4];
    [self insertActionBefore:r24 andAfter:[CCSequence actions:r26]];
    [self play];
    *(self + 0x28) = [[CCCallFuncND actionWithTarget:arg5 selector:arg3 data:arg4] retain];
    r20 = [[CCDirector sharedDirector] scheduler];
    [*(self + 0x18) duration];
    [r20 scheduleSelector:@selector(timeoutClean) forTarget:self interval:0x0 paused:r5];
    return;
}

-(void)delayedPlay {
    [*(int128_t *)(self + 0x10) runAction:r2];
    return;
}

-(void)play {
    r0 = self;
    if (*(int32_t *)(r0 + 0x30) > 0x0) {
            asm { fcvt       d0, s0 };
            [r0 performSelector:r2 withObject:r3 afterDelay:r4];
    }
    else {
            [*(int128_t *)(r0 + 0x10) runAction:r2];
    }
    return;
}

-(void)timeoutClean {
    [[[CCDirector sharedDirector] scheduler] unscheduleSelector:@selector(timeoutClean) forTarget:self];
    [*(int128_t *)(self + 0x10) stopAction:*(int128_t *)(self + 0x18)];
    *(int8_t *)(self + 0x34) = 0x1;
    [[[objc_alloc() init] autorelease] runAction:r2];
    [*(self + 0x28) release];
    *(self + 0x28) = 0x0;
    return;
}

-(void)stopAnimation {
    [*(self + 0x10) stopAction:*(self + 0x18)];
    [[[CCDirector sharedDirector] scheduler] unscheduleSelector:@selector(timeoutClean) forTarget:self];
    [*(self + 0x28) release];
    *(self + 0x28) = 0x0;
    return;
}

-(void *)toString {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)description {
    r0 = *(self + 0x8);
    return r0;
}

-(float)timeDelayOffsetOnPlay {
    r0 = self;
    return r0;
}

@end