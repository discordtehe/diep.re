@implementation MCPromoCyclicTableArrowNode

+(void *)nodeWithAnimationFile:(void *)arg2 flipHorizontally:(bool)arg3 animationModel:(void *)arg4 finishedAnimationNotificationName:(void *)arg5 {
    r0 = [MCPromoCyclicTableArrowNode alloc];
    r0 = [r0 initWithAnimationFile:arg2 flipHorizontally:arg3 loop:0x0 spineNodeAnchorPoint:arg4 animationModel:arg5 finishedAnimationNotificationName:r7];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)nodeWithAnimationFile:(void *)arg2 flipHorizontally:(bool)arg3 spineNodeAnchorPoint:(struct CGPoint)arg4 animationModel:(void *)arg5 finishedAnimationNotificationName:(void *)arg6 {
    memcpy(&r4, &arg4, 0x8);
    r0 = [MCPromoCyclicTableArrowNode alloc];
    r0 = [r0 initWithAnimationFile:arg2 flipHorizontally:arg3 loop:0x0 spineNodeAnchorPoint:r4 animationModel:r5 finishedAnimationNotificationName:r7];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)nodeWithAnimationFile:(void *)arg2 flipHorizontally:(bool)arg3 animationModel:(void *)arg4 {
    r0 = [MCPromoCyclicTableArrowNode alloc];
    r0 = [r0 initWithAnimationFile:arg2 flipHorizontally:arg3 loop:0x0 spineNodeAnchorPoint:arg4 animationModel:@"CyclicTableArrowFinishedAnimationAfterClick" finishedAnimationNotificationName:r7];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)nodeWithAnimationFile:(void *)arg2 flipHorizontally:(bool)arg3 spineNodeAnchorPoint:(struct CGPoint)arg4 animationModel:(void *)arg5 {
    memcpy(&r4, &arg4, 0x8);
    r0 = [MCPromoCyclicTableArrowNode alloc];
    r0 = [r0 initWithAnimationFile:arg2 flipHorizontally:arg3 loop:0x0 spineNodeAnchorPoint:r4 animationModel:@"CyclicTableArrowFinishedAnimationAfterClick" finishedAnimationNotificationName:r7];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)nodeWithAnimationFileInLoop:(void *)arg2 flipHorizontally:(bool)arg3 spineNodeAnchorPoint:(struct CGPoint)arg4 animationModel:(void *)arg5 finishedAnimationNotificationName:(void *)arg6 {
    memcpy(&r4, &arg4, 0x8);
    r0 = [MCPromoCyclicTableArrowNode alloc];
    r0 = [r0 initWithAnimationFile:arg2 flipHorizontally:arg3 loop:0x1 spineNodeAnchorPoint:r4 animationModel:r5 finishedAnimationNotificationName:r7];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)nodeWithAnimationFileInLoop:(void *)arg2 flipHorizontally:(bool)arg3 spineNodeAnchorPoint:(struct CGPoint)arg4 animationModel:(void *)arg5 {
    memcpy(&r4, &arg4, 0x8);
    r0 = [MCPromoCyclicTableArrowNode alloc];
    r0 = [r0 initWithAnimationFile:arg2 flipHorizontally:arg3 loop:0x1 spineNodeAnchorPoint:r4 animationModel:@"CyclicTableArrowFinishedAnimationAfterClick" finishedAnimationNotificationName:r7];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)nodeWithAnimationFileInLoop:(void *)arg2 flipHorizontally:(bool)arg3 animationModel:(void *)arg4 {
    r0 = [MCPromoCyclicTableArrowNode alloc];
    r0 = [r0 initWithAnimationFile:arg2 flipHorizontally:arg3 loop:0x1 spineNodeAnchorPoint:arg4 animationModel:@"CyclicTableArrowFinishedAnimationAfterClick" finishedAnimationNotificationName:r7];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)nodeWithAnimationFileInLoop:(void *)arg2 flipHorizontally:(bool)arg3 animationModel:(void *)arg4 finishedAnimationNotificationName:(void *)arg5 {
    r0 = [MCPromoCyclicTableArrowNode alloc];
    r0 = [r0 initWithAnimationFile:arg2 flipHorizontally:arg3 loop:0x1 spineNodeAnchorPoint:arg4 animationModel:arg5 finishedAnimationNotificationName:r7];
    r0 = [r0 autorelease];
    return r0;
}

-(void)pressed {
    r0 = self->_view;
    if (r0 != 0x0) {
            [r0 pressed];
    }
    return;
}

-(void)stopAnimations {
    r0 = self->_view;
    if (r0 != 0x0) {
            [r0 stopAnimation];
    }
    return;
}

-(void *)initWithAnimationFile:(void *)arg2 flipHorizontally:(bool)arg3 loop:(bool)arg4 spineNodeAnchorPoint:(struct CGPoint)arg5 animationModel:(void *)arg6 finishedAnimationNotificationName:(void *)arg7 {
    memcpy(&r5, &arg5, 0x8);
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = r6;
    r22 = r5;
    v8 = v1;
    v9 = v0;
    r20 = arg3;
    r23 = arg2;
    r0 = [[&var_50 super] init];
    r19 = r0;
    r0 = 0x0;
    if (r22 != 0x0) {
            r0 = 0x0;
            if (r19 != 0x0) {
                    if (r21 != 0x0) {
                            r2 = @"";
                            if ([r21 isEqualToString:r2] != 0x0) {
                                    r21 = @"CyclicTableArrowFinishedAnimationAfterClick";
                            }
                    }
                    else {
                            r21 = @"CyclicTableArrowFinishedAnimationAfterClick";
                    }
                    r0 = [MCPromoCyclicTableArrowViewNode nodeWithAnimationFile:r23 animationModel:r22 finishedAnimationNotificationName:r21];
                    r22 = sign_extend_64(*(int32_t *)ivar_offset(_view));
                    *(r19 + r22) = r0;
                    if (r0 != 0x0) {
                            r21 = r0;
                            if (r20 != 0x0) {
                                    [r21 scaleX];
                                    [r21 setScaleX:r2];
                                    r21 = *(r19 + r22);
                            }
                            [r19 addChild:r21];
                            [*(r19 + r22) contentSize];
                            [r19 setContentSize:r21];
                            [*(r19 + r22) setAnchorPoint:r2];
                            r0 = r19;
                    }
            }
    }
    return r0;
}

-(void)dealloc {
    self->_view = 0x0;
    [[&var_10 super] dealloc];
    return;
}

@end