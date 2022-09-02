@implementation SkeletonAnimation

-(void *)animationList {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [NSMutableArray arrayWithCapacity:0xa];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_skeleton));
    r8 = *(r19 + r23);
    if (r8 != 0x0) {
            r8 = *r8;
            if (r8 != 0x0 && *(int32_t *)(r8 + 0x60) >= 0x1) {
                    r24 = 0x0;
                    do {
                            [NSString stringWithUTF8String:r2];
                            objc_msgSend(r20, r22);
                            r24 = r24 + 0x1;
                            r8 = *(r19 + r23);
                            r8 = *r8;
                    } while (r24 < sign_extend_64(*(int32_t *)(r8 + 0x60)));
            }
    }
    r0 = r20;
    return r0;
}

-(void *)slotList {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [NSMutableArray arrayWithCapacity:0xa];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_skeleton));
    r9 = *(r19 + r23);
    if (r9 != 0x0) {
            r8 = *r9;
            if (r8 != 0x0 && *(int32_t *)(r9 + 0x20) >= 0x1) {
                    r24 = 0x0;
                    do {
                            [NSString stringWithUTF8String:r2];
                            objc_msgSend(r20, r22);
                            r24 = r24 + 0x1;
                            r8 = *(r19 + r23);
                            if (r24 >= sign_extend_64(*(int32_t *)(r8 + 0x20))) {
                                break;
                            }
                            r8 = *r8;
                    } while (true);
            }
    }
    r0 = r20;
    return r0;
}

-(void *)boneList {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [NSMutableArray arrayWithCapacity:0xa];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_skeleton));
    r9 = *(r19 + r23);
    if (r9 != 0x0) {
            r8 = *r9;
            if (r8 != 0x0 && *(int32_t *)(r9 + 0x8) >= 0x1) {
                    r24 = 0x0;
                    do {
                            [NSString stringWithUTF8String:r2];
                            objc_msgSend(r20, r22);
                            r24 = r24 + 0x1;
                            r8 = *(r19 + r23);
                            if (r24 >= sign_extend_64(*(int32_t *)(r8 + 0x8))) {
                                break;
                            }
                            r8 = *r8;
                    } while (true);
            }
    }
    r0 = r20;
    return r0;
}

+(void *)skeletonWithData:(struct spSkeletonData *)arg2 ownsSkeletonData:(bool)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithData:arg2 ownsSkeletonData:arg3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)skeletonWithFile:(void *)arg2 atlas:(struct spAtlas *)arg3 scale:(float)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithFile:arg2 atlas:arg3 scale:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void)initialize {
    *(int8_t *)(int64_t *)&self->_ownsAnimationStateData = 0x1;
    *(int32_t *)(int64_t *)&self->_timeScale = 0x3f800000;
    r0 = *(int64_t *)self->_skeleton;
    r0 = sub_100363db8(r0);
    r0 = sub_100361ed8(r0);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    *(self + r8) = r0;
    *(r0 + 0x28) = self;
    *(*(self + r8) + 0x10) = 0x10035df60;
    *(*(self + r8) + 0x40) = 0x10035dd70;
    return;
}

+(void *)skeletonWithFile:(void *)arg2 atlasFile:(void *)arg3 scale:(float)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithFile:arg2 atlasFile:arg3 scale:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithData:(struct spSkeletonData *)arg2 ownsSkeletonData:(bool)arg3 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithData:arg2 ownsSkeletonData:arg3];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 initialize];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFile:(void *)arg2 atlasFile:(void *)arg3 scale:(float)arg4 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFile:arg2 atlasFile:arg3 scale:arg4];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 initialize];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithFile:(void *)arg2 atlas:(struct spAtlas *)arg3 scale:(float)arg4 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFile:arg2 atlas:arg3 scale:arg4];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 initialize];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_ownsAnimationStateData));
    r8 = *(int8_t *)(self + r8);
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (r8 != 0x0) {
            sub_100363df0(**(r19 + r20));
    }
    sub_100361f54(*(r19 + r20));
    [r19->_startListener release];
    [r19->_endListener release];
    [r19->_completeListener release];
    [r19->_eventListener release];
    [[&var_20 super] dealloc];
    return;
}

-(void)update:(double)arg2 {
    r0 = self;
    asm { fcvt       d1, s1 };
    r0 = *(r0 + sign_extend_64(*(int32_t *)ivar_offset(_skeleton)));
    asm { fcvt       s8, d0 };
    sub_10036e4cc(r0);
    sub_100361fcc(*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_state))));
    sub_1003622b4(*(r19 + r21), *(r19 + r20));
    sub_10036e000(*(r19 + r20));
    return;
}

-(void)setMixFrom:(void *)arg2 to:(void *)arg3 duration:(float)arg4 {
    r20 = *(int64_t *)self->_state;
    r21 = @selector(UTF8String);
    sub_100363e4c(r20, objc_msgSend(arg2, r21), objc_msgSend(arg3, r21));
    return;
}

-(void)setAnimationStateData:(struct spAnimationStateData *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_ownsAnimationStateData));
    r8 = *(int8_t *)(self + r22);
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_state));
    if (r8 != 0x0) {
            sub_100363df0(**(r19 + r21));
    }
    sub_100361f54(*(r19 + r21));
    *(int8_t *)(r19 + r22) = 0x0;
    r0 = sub_100361ed8(r20);
    *(r19 + r21) = r0;
    *(r0 + 0x28) = r19;
    *(*(r19 + r21) + 0x10) = 0x10035df60;
    return;
}

-(struct spTrackEntry *)setAnimationForTrack:(int)arg2 name:(void *)arg3 loop:(bool)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = arg2;
    r21 = self;
    r22 = *(int64_t *)self->_skeleton;
    r0 = [arg3 UTF8String];
    r0 = sub_10037850c(r22, r0);
    if (r0 != 0x0) {
            r2 = r0;
            r0 = r21->_state;
            r0 = sub_1003625fc(r0, r20, r2, r19);
    }
    return r0;
}

-(void)clearTracks {
    sub_100362530(self->_state);
    return;
}

-(struct spTrackEntry *)getCurrentForTrack:(int)arg2 {
    r1 = arg2;
    r0 = self->_state;
    if (*(int32_t *)(r0 + 0x18) > r1) {
            r0 = *(*(r0 + 0x20) + r1 * 0x8);
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(struct spTrackEntry *)addAnimationForTrack:(int)arg2 name:(void *)arg3 loop:(bool)arg4 afterDelay:(int)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r21 = arg2;
    r22 = self;
    r23 = *(int64_t *)self->_skeleton;
    r0 = [arg3 UTF8String];
    r0 = sub_10037850c(r23, r0);
    if (r0 != 0x0) {
            r2 = r0;
            r0 = r22->_state;
            asm { scvtf      s0, w20 };
            r0 = sub_10036268c(r0, r21, r2, r19);
    }
    return r0;
}

-(void)clearTrack:(int)arg2 {
    sub_100362210(self->_state, arg2);
    return;
}

-(void)onAnimationStateEvent:(int)arg2 type:(int)arg3 event:(struct spEvent *)arg4 loopCount:(int)arg5 {
    r3 = arg3;
    if (r3 <= 0x3) {
            (0x10035e438 + *(int8_t *)(0x100bd17bc + r3) * 0x4)();
    }
    return;
}

-(void)onTrackEntryEvent:(int)arg2 type:(int)arg3 event:(struct spEvent *)arg4 loopCount:(int)arg5 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    if (*(loc_100362758(self->_state, arg2, arg2) + 0x50) != 0x0) {
            asm { ccmp       w22, #0x3, #0x2, ne };
    }
    if (!CPU_FLAGS & A) {
            (0x10035e504 + *(int8_t *)(0x100bd17c0 + r22) * 0x4)();
    }
    return;
}

-(void)setListenerForEntry:(struct spTrackEntry *)arg2 onStart:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg3 copy];
    r0 = *(r19 + 0x50);
    if (r0 == 0x0) {
            r0 = sub_10036ad38(0x1, 0x20, "/Users/pedro.geraldes/Repositories/diep.io.mobile.client/game/libs/Submodules/MCCocos2D/external/spine-runtimes/spine-cocos2d-iphone/2/src/spine/SkeletonAnimation.mm", 0x35);
            *(r19 + 0x50) = r0;
            *(r19 + 0x38) = 0x10035dd50;
    }
    *r0 = r20;
    return;
}

-(void)setListenerForEntry:(struct spTrackEntry *)arg2 onEnd:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg3 copy];
    r0 = *(r19 + 0x50);
    if (r0 == 0x0) {
            r0 = sub_10036ad38(0x1, 0x20, "/Users/pedro.geraldes/Repositories/diep.io.mobile.client/game/libs/Submodules/MCCocos2D/external/spine-runtimes/spine-cocos2d-iphone/2/src/spine/SkeletonAnimation.mm", 0x35);
            *(r19 + 0x50) = r0;
            *(r19 + 0x38) = 0x10035dd50;
    }
    *(r0 + 0x8) = r20;
    return;
}

-(void)setListenerForEntry:(struct spTrackEntry *)arg2 onComplete:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg3 copy];
    r0 = *(r19 + 0x50);
    if (r0 == 0x0) {
            r0 = sub_10036ad38(0x1, 0x20, "/Users/pedro.geraldes/Repositories/diep.io.mobile.client/game/libs/Submodules/MCCocos2D/external/spine-runtimes/spine-cocos2d-iphone/2/src/spine/SkeletonAnimation.mm", 0x35);
            *(r19 + 0x50) = r0;
            *(r19 + 0x38) = 0x10035dd50;
    }
    *(r0 + 0x10) = r20;
    return;
}

-(struct spAnimationState *)state {
    r0 = self->_state;
    return r0;
}

-(void)setListenerForEntry:(struct spTrackEntry *)arg2 onEvent:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [arg3 copy];
    r0 = *(r19 + 0x50);
    if (r0 == 0x0) {
            r0 = sub_10036ad38(0x1, 0x20, "/Users/pedro.geraldes/Repositories/diep.io.mobile.client/game/libs/Submodules/MCCocos2D/external/spine-runtimes/spine-cocos2d-iphone/2/src/spine/SkeletonAnimation.mm", 0x35);
            *(r19 + 0x50) = r0;
            *(r19 + 0x38) = 0x10035dd50;
    }
    *(r0 + 0x18) = r20;
    return;
}

-(float)timeScale {
    r0 = self;
    return r0;
}

-(void)setTimeScale:(float)arg2 {
    *(int32_t *)(int64_t *)&self->_timeScale = s0;
    return;
}

-(void *)startListener {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_startListener)), 0x0);
    return r0;
}

-(void)setStartListener:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)endListener {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_endListener)), 0x0);
    return r0;
}

-(void)setEndListener:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)completeListener {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completeListener)), 0x0);
    return r0;
}

-(void)setCompleteListener:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)eventListener {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_eventListener)), 0x0);
    return r0;
}

-(void)setEventListener:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

@end