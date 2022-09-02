@implementation MCPromoCyclicTableArrowViewNode

+(void *)nodeWithAnimationFile:(void *)arg2 animationModel:(void *)arg3 finishedAnimationNotificationName:(void *)arg4 {
    r0 = [MCPromoCyclicTableArrowViewNode alloc];
    r0 = [r0 initWithAnimationFile:arg2 loop:0x0 animationModel:arg3 finishedAnimationNotificationName:arg4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)nodeWithAnimationFileInLoop:(void *)arg2 animationModel:(void *)arg3 finishedAnimationNotificationName:(void *)arg4 {
    r0 = [MCPromoCyclicTableArrowViewNode alloc];
    r0 = [r0 initWithAnimationFile:arg2 loop:0x1 animationModel:arg3 finishedAnimationNotificationName:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void)stopAnimation {
    [self clearTracks];
    return;
}

-(void *)initWithAnimationFile:(void *)arg2 loop:(bool)arg3 animationModel:(void *)arg4 finishedAnimationNotificationName:(void *)arg5 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg5;
    r20 = arg4;
    r0 = [[&var_30 super] initWithAnimationFile:arg2 animationName:0x0 loop:0x1 centerInSize:0x0 autoplay:0x1];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r21 retain];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_finishedAnimationNotificationName));
            *(r19 + r21) = r0;
            [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(animationFinished:) name:*(r19 + r21) object:0x0];
            r0 = [r20 retain];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_animationModel));
            *(r19 + r20) = r0;
            [r0 setTransitionAnimationListeners:r19];
            [*(r19 + r20) startFirstAnimationFromSequenceOnNode:r19];
    }
    r0 = r19;
    return r0;
}

-(void)setSpineAnimationInNodeAnimationName:(void *)arg2 toTrack:(int)arg3 onLoop:(bool)arg4 {
    [self addAnimationForTrack:arg3 name:arg2 loop:arg4 afterDelay:0x0];
    return;
}

-(void)update:(double)arg2 {
    [[&var_30 super] update:arg2];
    [self->_animationModel animationNodeUpdate:self delta:r3];
    return;
}

-(void)pressed {
    [self->_animationModel startAnimationClickOnNode:self];
    return;
}

-(void)animationFinished:(void *)arg2 {
    [self->_animationModel animationFinishedForNode:self withNotification:arg2];
    return;
}

-(void)postNotificationAnimationFinished {
    [[NSNotificationCenter defaultCenter] postNotificationName:r2 object:r3];
    return;
}

-(void)dealloc {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_finishedAnimationNotificationName));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_animationModel));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    [[&var_30 super] dealloc];
    return;
}

@end