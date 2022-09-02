@implementation MCSpineNode

+(void *)spineWithAnimationFile:(void *)arg2 animationName:(void *)arg3 loop:(bool)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithAnimationFile:arg2 animationName:arg3 loop:arg4];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)spineWithAnimationFile:(void *)arg2 animationName:(void *)arg3 loop:(bool)arg4 centerInSize:(bool)arg5 autoplay:(bool)arg6 {
    r0 = [self alloc];
    r0 = [r0 initWithAnimationFile:arg2 animationName:arg3 loop:arg4 centerInSize:arg5 autoplay:arg6];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithAnimationFile:(void *)arg2 animationName:(void *)arg3 loop:(bool)arg4 {
    r0 = [self initWithAnimationFile:arg2 animationName:arg3 loop:arg4 centerInSize:0x0 autoplay:0x1];
    return r0;
}

-(void *)initWithAnimationFile:(void *)arg2 animationName:(void *)arg3 loop:(bool)arg4 centerInSize:(bool)arg5 autoplay:(bool)arg6 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg6;
    r24 = arg5;
    r19 = arg4;
    r20 = arg3;
    r22 = arg2;
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r21->isPlaying = 0x0;
            *(int8_t *)(int64_t *)&r21->_centerInSize = r24;
            *(int8_t *)(int64_t *)&r21->_autoplay = r23;
            [r21 setAnimationFile:r22];
            [r21 setAnimationName:r20];
            [r21 setLoop:r19];
    }
    r0 = r21;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_autoplay = 0x1;
            *(int8_t *)(int64_t *)&r0->isPlaying = 0x0;
    }
    return r0;
}

-(struct spTrackEntry *)setAnimationForTrack:(int)arg2 name:(void *)arg3 loop:(bool)arg4 {
    r0 = [self getSkeletonAnimation];
    r0 = [r0 setAnimationForTrack:arg2 name:arg3 loop:arg4];
    return r0;
}

-(struct spTrackEntry *)addAnimationForTrack:(int)arg2 name:(void *)arg3 loop:(bool)arg4 afterDelay:(int)arg5 {
    r0 = [self getSkeletonAnimation];
    r0 = [r0 addAnimationForTrack:arg2 name:arg3 loop:arg4 afterDelay:arg5];
    return r0;
}

-(void)clearTrack:(int)arg2 {
    [[self getSkeletonAnimation] clearTrack:arg2];
    return;
}

-(void)clearTracks {
    [[self getSkeletonAnimation] clearTracks];
    return;
}

-(void)setToSetupPose {
    [[self getSkeletonAnimation] setToSetupPose];
    return;
}

-(void)setStartListener:(void *)arg2 {
    [[self getSkeletonAnimation] setStartListener:arg2];
    return;
}

-(void)setEndListener:(void *)arg2 {
    [[self getSkeletonAnimation] setEndListener:arg2];
    return;
}

-(void)setCompleteListener:(void *)arg2 {
    [[self getSkeletonAnimation] setCompleteListener:arg2];
    return;
}

-(void)setEventListener:(void *)arg2 {
    [[self getSkeletonAnimation] setEventListener:arg2];
    return;
}

-(void)setAnimationFile:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r2;
            r20 = r0;
            if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
                    sub_10029f42c(&var_68, [r19 UTF8String]);
                    r0 = sub_10042ccfc(&var_68);
                    r0 = sub_10098f4f4(&var_50);
                    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_50);
                    }
                    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_68);
                    }
                    sub_10029f42c(&var_68, "atlas");
                    r22 = &var_50;
                    r0 = sub_10098f2e8(&var_38, &var_68);
                    r9 = var_50;
                    if (sign_extend_64(var_39) < 0x0) {
                            if (!CPU_FLAGS & L) {
                                    r2 = r22;
                            }
                            else {
                                    r2 = r9;
                            }
                    }
                    r21 = [NSString stringWithUTF8String:r2];
                    if ((sign_extend_64(var_39) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_50);
                    }
                    if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_68);
                    }
                    if ((sign_extend_64(var_21) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_38);
                    }
            }
            else {
                    r21 = [[r19 stringByDeletingPathExtension] stringByAppendingPathExtension:@"atlas"];
            }
            [r20 setAnimationFile:r19 atlasFile:r21];
    }
    return;
}

-(void *)getSkeletonAnimation {
    r0 = self->_spineNode;
    return r0;
}

-(void)setAnimationName:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r19 = r0;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_animationName));
            [*(r0 + r21) release];
            *(r19 + r21) = r2;
            [r2 retain];
            if (*(r19 + r21) != 0x0) {
                    [[r19 getSkeletonAnimation] setAnimationForTrack:0x0 name:*(r19 + r21) loop:*(int8_t *)(int64_t *)&r19->_loop];
            }
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_spineNode));
            [*(r19 + r22) setPosition:r2];
            [r19 update:r2];
            [*(r19 + r22) boundingBox];
            r23 = (int64_t *)&r19->_offset;
            *r23 = 0x0;
            *(r23 + 0x8) = 0x0;
            [r19 setContentSize:r2];
            if (*(int8_t *)(int64_t *)&r19->_centerInSize != 0x0) {
                    [*(r19 + r22) position];
                    objc_msgSend(*(r19 + r22), r21);
                    [*(r19 + r22) setPosition:r2];
            }
    }
    return;
}

-(void)setCenterInSize:(bool)arg2 {
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
    *(int8_t *)(int64_t *)&self->_centerInSize = arg2;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_spineNode));
    r0 = *(self + r21);
    if (arg2 != 0x0) {
            [r0 position];
            [*(r19 + r21) position];
            r0 = *(r19 + r21);
    }
    [r0 setPosition:r2];
    return;
}

-(void *)animationNameValues {
    r0 = [self getSkeletonAnimation];
    r0 = [r0 animationList];
    return r0;
}

-(void *)slotNameValues {
    r0 = [self getSkeletonAnimation];
    r0 = [r0 slotList];
    return r0;
}

-(void *)boneNameValues {
    r0 = [self getSkeletonAnimation];
    r0 = [r0 boneList];
    return r0;
}

-(void)setLoop:(bool)arg2 {
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_loop));
    *(int8_t *)(r0 + r20) = arg2;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_animationName));
    if (*(r0 + r21) != 0x0) {
            [[r0 getSkeletonAnimation] setAnimationForTrack:0x0 name:*(r0 + r21) loop:*(int8_t *)(r0 + r20)];
    }
    return;
}

-(void)setOpacity:(unsigned char)arg2 {
    [[&var_30 super] setOpacity:r2];
    [self->_spineNode setOpacity:arg2];
    return;
}

-(void)updateDisplayedOpacity:(unsigned char)arg2 {
    [[&var_20 super] updateDisplayedOpacity:r2];
    [self->_spineNode setOpacity:r2];
    return;
}

-(void)setAnimationFile:(void *)arg2 atlasFile:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x100;
    var_50 = d9;
    stack[-88] = d8;
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
    if (r2 != 0x0) {
            r20 = r3;
            r19 = r0;
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_animationFile));
            [*(r0 + r25) release];
            *(r19 + r25) = r2;
            [r2 retain];
            [r19 setAnimationName:0x0];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_spineNode));
            [*(r19 + r24) release];
            *(r19 + r24) = 0x0;
            if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
                    sub_1009d0950(r29 - 0x70);
                    r0 = *(r19 + r25);
                    if (r0 != 0x0) {
                            r1 = [r0 UTF8String];
                    }
                    else {
                            r1 = "";
                    }
                    sub_10029f42c(&var_F0, r1);
                    r0 = sub_10042ccfc(&var_F0);
                    r0 = sub_10098f4f4(&var_D8);
                    if ((sign_extend_64(var_C1) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_D8);
                    }
                    if ((sign_extend_64(var_D9) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_F0);
                    }
                    sub_10029f42c(&var_F0, "json");
                    r0 = sub_10098f2e8(&var_C0, &var_F0);
                    if ((sign_extend_64(var_D9) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_F0);
                    }
                    r0 = sub_10042cbe8(&var_D8, &var_A8, &var_88);
                    if ((r0 & 0x1) != 0x0) {
                            sub_10042cc50(&var_88);
                            v8 = v0;
                            [[CCDirector sharedDirector] contentScaleFactor];
                            r0 = sub_10032c03c();
                            asm { fcvt       d0, s8 };
                            asm { fdiv       d0, d0, d9 };
                            asm { fcvt       s8, d0 };
                            if (r0 != 0x0) {
                                    sub_10042cc74();
                                    asm { fdiv       s0, s8, s0 };
                            }
                            sub_10029f42c(&var_F0, [r20 UTF8String]);
                            r0 = sub_10042cbe8(&var_F0, &var_A8, &var_88);
                            r22 = r0;
                            if ((sign_extend_64(var_D9) & 0xffffffff80000000) == 0x0) {
                                    if ((r22 & 0x1) != 0x0) {
                                            r9 = var_D8;
                                            r8 = &var_D8;
                                            r22 = [NSString stringWithUTF8String:r2];
                                            r23 = 0x1;
                                    }
                                    else {
                                            r23 = 0x0;
                                            r22 = 0x0;
                                    }
                            }
                            else {
                                    operator delete(var_F0);
                                    if ((r22 & 0x1) == 0x0) {
                                            r23 = 0x0;
                                            r22 = 0x0;
                                    }
                                    else {
                                            r9 = var_D8;
                                            r8 = &var_D8;
                                            r22 = [NSString stringWithUTF8String:r2];
                                            r23 = 0x1;
                                    }
                            }
                    }
                    else {
                            r23 = 0x0;
                            r22 = 0x0;
                    }
                    if ((sign_extend_64(var_C1) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_D8);
                    }
                    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_C0);
                    }
                    if ((sign_extend_64(var_89) & 0xffffffff80000000) != 0x0) {
                            operator delete(0x0);
                    }
                    if ((sign_extend_64(var_71) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_88);
                    }
                    sub_1009d0b44(r29 - 0x70);
                    if ((r23 & 0x1) != 0x0) {
                            r0 = [SkeletonAnimation skeletonWithFile:r22 atlasFile:r20 scale:r4];
                            *(r19 + r24) = r0;
                            [r0 retain];
                            r2 = *(int8_t *)(int64_t *)&r19->_loop;
                            [r19 setLoop:r2];
                            [r19 update:r2];
                            [*(r19 + r24) boundingBox];
                            r21 = (int64_t *)&r19->_offset;
                            *(int128_t *)r21 = 0x0;
                            *(int128_t *)(r21 + 0x8) = d1;
                            [r19 setContentSize:r2];
                            if (*(int8_t *)(int64_t *)&r19->_centerInSize != 0x0) {
                                    [*(r19 + r24) position];
                                    [*(r19 + r24) position];
                                    [*(r19 + r24) setPosition:r2];
                            }
                            if (*(int8_t *)(int64_t *)&r19->_autoplay != 0x0 || *(int8_t *)(int64_t *)&r19->isPlaying != 0x0) {
                                    [r19 resumeAnimation];
                            }
                    }
            }
            else {
                    r0 = *(r19 + r25);
                    r0 = [r0 stringByDeletingPathExtension];
                    r0 = [r0 stringByAppendingPathExtension:@"json"];
                    r0 = sub_10029ecb4(r0, r29 - 0x70, &var_A8);
                    if (r0 != 0x0) {
                            r22 = r0;
                            [[CCResourcePackManager sharedInstance] scaleForAssetOfPack:0x0];
                            v8 = v0;
                            [[CCDirector sharedDirector] contentScaleFactor];
                            r0 = sub_10029ecb4(r20, r29 - 0x70, &var_A8);
                            if (r0 != 0x0) {
                                    r20 = r0;
                                    asm { fcvt       d0, s8 };
                                    asm { fdiv       d0, d0, d9 };
                                    asm { fcvt       s8, d0 };
                                    r0 = [SkeletonAnimation skeletonWithFile:r22 atlasFile:r20 scale:r4];
                                    *(r19 + r24) = r0;
                                    [r0 retain];
                                    r2 = *(int8_t *)(int64_t *)&r19->_loop;
                                    [r19 setLoop:r2];
                                    [r19 update:r2];
                                    [*(r19 + r24) boundingBox];
                                    r21 = (int64_t *)&r19->_offset;
                                    *(int128_t *)r21 = 0x0;
                                    *(int128_t *)(r21 + 0x8) = d1;
                                    [r19 setContentSize:r2];
                                    if (*(int8_t *)(int64_t *)&r19->_centerInSize != 0x0) {
                                            [*(r19 + r24) position];
                                            [*(r19 + r24) position];
                                            [*(r19 + r24) setPosition:r2];
                                    }
                                    if (*(int8_t *)(int64_t *)&r19->_autoplay != 0x0 || *(int8_t *)(int64_t *)&r19->isPlaying != 0x0) {
                                            [r19 resumeAnimation];
                                    }
                            }
                    }
            }
    }
    return;
}

-(void)setColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_30 super] setColor:r2 & 0xffffffff];
    [self->_spineNode setColor:r2 & 0xffffffff];
    return;
}

-(void)updateDisplayedColor:(struct _ccColorThreeB)arg2 {
    memcpy(&r2, &arg2, 0x4);
    [[&var_20 super] updateDisplayedColor:r2 & 0xffffffff];
    [self->_spineNode setColor:r2];
    return;
}

-(void)pauseAnimation {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(isPlaying));
    if (*(int8_t *)(r0 + r20) != 0x0) {
            [r0 unscheduleUpdate];
            *(int8_t *)(r0 + r20) = 0x0;
    }
    return;
}

-(void)resumeAnimation {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(isPlaying));
    if (*(int8_t *)(r0 + r20) == 0x0) {
            [r0 scheduleUpdate];
            *(int8_t *)(r0 + r20) = 0x1;
    }
    return;
}

-(void)setAutoplay:(bool)arg2 {
    r0 = self;
    *(int8_t *)(int64_t *)&r0->_autoplay = arg2;
    if ((arg2 & 0x1) == 0x0 && *(int8_t *)(int64_t *)&r0->_isBeingLoadedFromCCB != 0x0) {
            [r0 pauseAnimation];
    }
    return;
}

-(void)visit {
    r0 = self;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_visible != 0x0) {
            sub_1003575dc();
            [[&var_30 super] transform];
            loc_100357620([r19->_spineNode visit], @selector(visit));
            [[&var_40 super] visit];
    }
    return;
}

-(void *)getChildForSlotName:(void *)arg2 {
    r0 = [self getChildForName:arg2 type:@"slot"];
    return r0;
}

-(void *)getChildForBoneName:(void *)arg2 {
    r0 = [self getChildForName:arg2 type:@"bone"];
    return r0;
}

-(void)addChild:(void *)arg2 toSlotName:(void *)arg3 {
    [[self getChildForSlotName:arg3] addChild:r2];
    return;
}

-(void *)getChildForName:(void *)arg2 type:(void *)arg3 {
    r31 = r31 - 0x160;
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
    var_138 = arg2;
    var_130 = arg3;
    var_110 = q0;
    var_148 = self;
    r0 = [self children];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1002a063c;

loc_1002a0540:
    r24 = r0;
    r21 = *var_110;
    goto loc_1002a054c;

loc_1002a054c:
    r23 = 0x0;
    goto loc_1002a057c;

loc_1002a057c:
    if (*var_110 != r21) {
            objc_enumerationMutation(r22);
    }
    r25 = *(var_118 + r23 * 0x8);
    if ([r25 isKindOfClass:[MCSpineNodeChild class]] == 0x0 || ([[r25 spineName] isEqualToString:r2] & 0x1) == 0x0 || [[r25 spineType] isEqualToString:r2] == 0x0 || [r25 spineType] == 0x0 || [r25 spineName] == 0x0) goto loc_1002a0610;

loc_1002a0688:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r25;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1002a0610:
    r23 = r23 + 0x1;
    if (r23 < r24) goto loc_1002a057c;

loc_1002a061c:
    r0 = objc_msgSend(r22, var_140);
    r24 = r0;
    if (r0 != 0x0) goto loc_1002a054c;

loc_1002a063c:
    r0 = [MCSpineNodeChild node];
    r25 = r0;
    [r0 setSpineType:var_130];
    [r25 setSpineName:var_138];
    [var_148 addChild:r2];
    goto loc_1002a0688;
}

-(void)update:(double)arg2 {
    r31 = r31 - 0x1b0;
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
    r25 = self;
    [self->_spineNode update:arg2];
    v0 = 0x0;
    var_120 = q0;
    r0 = [r25 children];
    r24 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1A0 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1002a0300;

loc_10029ffe0:
    r22 = r0;
    r20 = *var_120;
    asm { dup        v8.2s, w8 };
    var_198 = r25;
    var_180 = r24;
    goto loc_1002a0008;

loc_1002a0008:
    r21 = 0x0;
    goto loc_1002a009c;

loc_1002a009c:
    if (*var_120 != r20) {
            objc_enumerationMutation(r24);
    }
    r23 = *(var_128 + r21 * 0x8);
    if ([r23 isKindOfClass:[MCSpineNodeChild class]] == 0x0 || [r23 spineType] == 0x0 || [r23 spineName] == 0x0) goto loc_1002a02d4;

loc_1002a00fc:
    [r23 setCascadeColorEnabled:0x1];
    [r23 setCascadeOpacityEnabled:0x1];
    if ([[r23 spineType] isEqualToString:@"slot"] == 0x0) goto loc_1002a024c;

loc_1002a013c:
    r19 = [[r25 getSkeletonAnimation] skeleton];
    r0 = [[r25 getSkeletonAnimation] findSlot:[r23 spineName]];
    if (r0 == 0x0) goto loc_1002a02cc;

loc_1002a0188:
    var_188 = @selector(setColor:);
    var_190 = @selector(setOpacity:);
    s0 = *(int32_t *)(r19 + 0x6c);
    r8 = 0x437f0000;
    s1 = r8;
    asm { fcvtzs     w25, s0 };
    asm { fcvtzs     w8, s0 };
    v0 = v8 * v0 * v1;
    asm { fcvtzs     v0.2s, v0.2s };
    asm { ushl       v1.2s, v0.2s, v9.2s };
    var_170 = var_170 & 0xffffffff00000000 | s1 | r8 | v1 | v0 * 0x1000000;
    objc_msgSend(r23, var_188);
    r25 = var_198;
    objc_msgSend(r23, var_190);
    sub_1002a0340(r23, *(r24 + 0x8));
    r24 = var_180;
    goto loc_1002a024c;

loc_1002a024c:
    if ([[r23 spineType] isEqualToString:@"bone"] != 0x0) {
            [r25 getSkeletonAnimation];
            [r23 spineName];
            r0 = [r19 findBone:r2];
            if (r0 != 0x0) {
                    sub_1002a0340(r23, r0);
            }
    }
    goto loc_1002a02d4;

loc_1002a02d4:
    r21 = r21 + 0x1;
    if (r21 < r22) goto loc_1002a009c;

loc_1002a02e0:
    r0 = objc_msgSend(r24, var_1A0);
    r22 = r0;
    if (r0 != 0x0) goto loc_1002a0008;

loc_1002a0300:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;

loc_1002a02cc:
    r24 = var_180;
    goto loc_1002a02d4;
}

-(void)addChild:(void *)arg2 toBoneName:(void *)arg3 {
    [[self getChildForBoneName:arg3] addChild:r2];
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
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_animationFile));
    r0 = *(self + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_animationName));
    r0 = *(r19 + r21);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r21) = 0x0;
    }
    [*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_spineNode))) release];
    *(r19 + r21) = 0x0;
    [[&var_30 super] dealloc];
    return;
}

-(void)didLoadFromCCB {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_spineNode));
    [*(self + r21) setColor:[self color] & 0xffffffff];
    r20 = *(self + r21);
    [self opacity];
    [r20 setOpacity:r2];
    return;
}

-(void *)animationFile {
    r0 = self->_animationFile;
    return r0;
}

-(bool)loop {
    r0 = *(int8_t *)(int64_t *)&self->_loop;
    return r0;
}

-(void *)animationName {
    r0 = self->_animationName;
    return r0;
}

-(bool)centerInSize {
    r0 = *(int8_t *)(int64_t *)&self->_centerInSize;
    return r0;
}

-(bool)autoplay {
    r0 = *(int8_t *)(int64_t *)&self->_autoplay;
    return r0;
}

@end