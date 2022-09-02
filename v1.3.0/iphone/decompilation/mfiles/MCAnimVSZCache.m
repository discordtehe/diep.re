@implementation MCAnimVSZCache

+(void *)sharedInstance {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    objc_sync_enter(self);
    if (*0x1011d2768 == 0x0) {
            *0x1011d2768 = [objc_alloc() init];
    }
    objc_sync_exit(r19);
    return *0x1011d2768;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = self;
    return r0;
}

+(void *)allocWithZone:(struct _NSZone *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = self;
    objc_sync_enter(self);
    if (*0x1011d2768 != 0x0) {
            objc_sync_exit(r19);
            r20 = 0x0;
    }
    else {
            r0 = [[&var_30 super] allocWithZone:r20];
            r20 = r0;
            *0x1011d2768 = r0;
            objc_sync_exit(r19);
    }
    r0 = r20;
    return r0;
}

-(void *)retain {
    r0 = self;
    return r0;
}

-(unsigned long long)retainCount {
    return 0xffffffffffffffff;
}

-(void)release {
    return;
}

-(void *)autorelease {
    r0 = self;
    return r0;
}

+(bool)isInitialized {
    r0 = self;
    if (*qword_1011d2768 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void *)getPlaceholderVSZData {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d2778;
    if (r0 == 0x0) {
            r0 = [MCAnimVSZData vszAnimationDataFromFile:@"VSZ/_placeholder.vsz"];
            r0 = [r0 retain];
            *0x1011d2778 = r0;
    }
    return r0;
}

+(void *)getPlaceholderTexture {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d2770;
    if (r0 == 0x0) {
            r0 = [MCAnimVSZUtils getVSZTexture:@"SingleTextures/_placeholder.png"];
            r0 = [r0 retain];
            *0x1011d2770 = r0;
    }
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[NSMutableDictionary dictionaryWithCapacity:0xa] retain];
            *(int32_t *)(r19 + 0x10) = 0x3f800000;
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
    [self unloadAnimations];
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)loadAnimationFromDictionary:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x0) {
            r21 = r2;
            r19 = r0;
            if ([r2 count] != 0x0) {
                    r0 = [r21 objectForKey:r2];
                    if (r0 != 0x0) {
                            r20 = r0;
                            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                                    r0 = [r21 objectForKey:r2];
                                    if (r0 != 0x0) {
                                            [r0 floatValue];
                                            r0 = [MCAnimVSZData vszAnimationDataFromFile:r20 withFps:r3];
                                    }
                                    else {
                                            r0 = [MCAnimVSZData vszAnimationDataFromFile:r20];
                                    }
                                    [r19 addAnimationData:r0 withName:[r20 stringByDeletingPathExtension]];
                            }
                    }
            }
    }
    return;
}

-(void)unloadAnimations {
    [*(self + 0x8) removeAllObjects];
    return;
}

-(void *)getAnimationDataForName:(void *)arg2 {
    r0 = [self getAnimationDataForName:arg2 withFps:r3];
    return r0;
}

-(void)addAnimationData:(void *)arg2 withName:(void *)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r3 != 0x0) {
            r19 = r3;
            r20 = r2;
            r21 = r0;
            r0 = [r3 isEqualToString:r2];
            if (r20 != 0x0 && (r0 & 0x1) == 0x0) {
                    [*(r21 + 0x8) setObject:r2 forKey:r3];
            }
    }
    return;
}

-(void)loadAnimationsFromValue:(struct Value *)arg2 {
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x90;
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
    if (*(int32_t *)(r2 + 0x8) == 0x5) {
            r8 = *r2;
            r22 = *(int128_t *)r8;
            r21 = *(int128_t *)(r8 + 0x8);
            if (r22 != r21) {
                    r19 = r0;
                    do {
                            if (*(int32_t *)(r22 + 0x8) == 0x6) {
                                    r27 = *r22;
                                    sub_1002925c4(&var_68, "name");
                                    r0 = sub_1002c1520(r27, &var_68);
                                    r26 = r0;
                                    if ((sign_extend_64(var_51) & 0xffffffff80000000) == 0x0) {
                                            if (r26 != 0x0) {
                                                    if (*(int32_t *)(r26 + 0x30) == 0x4) {
                                                            r26 = *(r26 + 0x28);
                                                            r8 = sign_extend_64(*(int8_t *)(r26 + 0x17));
                                                            if ((r8 & 0xffffffff80000000) == 0x0) {
                                                                    if ((r8 & 0xff) != 0x0) {
                                                                            sub_1002925c4(&var_68, "fps");
                                                                            r0 = sub_1002c1520(r27, &var_68);
                                                                            r27 = r0;
                                                                            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                                                                    operator delete(var_68);
                                                                            }
                                                                            if ((sign_extend_64(*(int8_t *)(r26 + 0x17)) & 0xffffffff80000000) == 0x0) {
                                                                                    r2 = r26;
                                                                            }
                                                                            else {
                                                                                    r2 = *r26;
                                                                            }
                                                                            r28 = [NSString stringWithUTF8String:r2];
                                                                            if (r27 != 0x0) {
                                                                                    sub_1009cafd0(r27 + 0x28);
                                                                                    r0 = [MCAnimVSZData vszAnimationDataFromFile:r28 withFps:r3];
                                                                            }
                                                                            else {
                                                                                    r0 = [MCAnimVSZData vszAnimationDataFromFile:r28];
                                                                            }
                                                                            r27 = r0;
                                                                            sub_10098f4f4(r26);
                                                                            r9 = var_68;
                                                                            r8 = &var_68;
                                                                            if (sign_extend_64(var_51) < 0x0) {
                                                                                    if (!CPU_FLAGS & L) {
                                                                                            r2 = r8;
                                                                                    }
                                                                                    else {
                                                                                            r2 = r9;
                                                                                    }
                                                                            }
                                                                            r3 = [NSString stringWithUTF8String:r2];
                                                                            [r19 addAnimationData:r2 withName:r3];
                                                                            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                                                                    operator delete(var_68);
                                                                            }
                                                                    }
                                                            }
                                                            else {
                                                                    if (*(r26 + 0x8) != 0x0) {
                                                                            sub_1002925c4(&var_68, "fps");
                                                                            r0 = sub_1002c1520(r27, &var_68);
                                                                            r27 = r0;
                                                                            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                                                                    operator delete(var_68);
                                                                            }
                                                                            if ((sign_extend_64(*(int8_t *)(r26 + 0x17)) & 0xffffffff80000000) == 0x0) {
                                                                                    r2 = r26;
                                                                            }
                                                                            else {
                                                                                    r2 = *r26;
                                                                            }
                                                                            r28 = [NSString stringWithUTF8String:r2];
                                                                            if (r27 != 0x0) {
                                                                                    sub_1009cafd0(r27 + 0x28);
                                                                                    r0 = [MCAnimVSZData vszAnimationDataFromFile:r28 withFps:r3];
                                                                            }
                                                                            else {
                                                                                    r0 = [MCAnimVSZData vszAnimationDataFromFile:r28];
                                                                            }
                                                                            r27 = r0;
                                                                            sub_10098f4f4(r26);
                                                                            r9 = var_68;
                                                                            r8 = &var_68;
                                                                            if (sign_extend_64(var_51) < 0x0) {
                                                                                    if (!CPU_FLAGS & L) {
                                                                                            r2 = r8;
                                                                                    }
                                                                                    else {
                                                                                            r2 = r9;
                                                                                    }
                                                                            }
                                                                            r3 = [NSString stringWithUTF8String:r2];
                                                                            [r19 addAnimationData:r2 withName:r3];
                                                                            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                                                                    operator delete(var_68);
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                                    else {
                                            operator delete(var_68);
                                            if (r26 != 0x0) {
                                                    if (*(int32_t *)(r26 + 0x30) == 0x4) {
                                                            r26 = *(r26 + 0x28);
                                                            r8 = sign_extend_64(*(int8_t *)(r26 + 0x17));
                                                            if ((r8 & 0xffffffff80000000) == 0x0) {
                                                                    if ((r8 & 0xff) != 0x0) {
                                                                            sub_1002925c4(&var_68, "fps");
                                                                            r0 = sub_1002c1520(r27, &var_68);
                                                                            r27 = r0;
                                                                            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                                                                    operator delete(var_68);
                                                                            }
                                                                            if ((sign_extend_64(*(int8_t *)(r26 + 0x17)) & 0xffffffff80000000) == 0x0) {
                                                                                    r2 = r26;
                                                                            }
                                                                            else {
                                                                                    r2 = *r26;
                                                                            }
                                                                            r28 = [NSString stringWithUTF8String:r2];
                                                                            if (r27 != 0x0) {
                                                                                    sub_1009cafd0(r27 + 0x28);
                                                                                    r0 = [MCAnimVSZData vszAnimationDataFromFile:r28 withFps:r3];
                                                                            }
                                                                            else {
                                                                                    r0 = [MCAnimVSZData vszAnimationDataFromFile:r28];
                                                                            }
                                                                            r27 = r0;
                                                                            sub_10098f4f4(r26);
                                                                            r9 = var_68;
                                                                            r8 = &var_68;
                                                                            if (sign_extend_64(var_51) < 0x0) {
                                                                                    if (!CPU_FLAGS & L) {
                                                                                            r2 = r8;
                                                                                    }
                                                                                    else {
                                                                                            r2 = r9;
                                                                                    }
                                                                            }
                                                                            r3 = [NSString stringWithUTF8String:r2];
                                                                            [r19 addAnimationData:r2 withName:r3];
                                                                            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                                                                    operator delete(var_68);
                                                                            }
                                                                    }
                                                            }
                                                            else {
                                                                    if (*(r26 + 0x8) != 0x0) {
                                                                            sub_1002925c4(&var_68, "fps");
                                                                            r0 = sub_1002c1520(r27, &var_68);
                                                                            r27 = r0;
                                                                            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                                                                    operator delete(var_68);
                                                                            }
                                                                            if ((sign_extend_64(*(int8_t *)(r26 + 0x17)) & 0xffffffff80000000) == 0x0) {
                                                                                    r2 = r26;
                                                                            }
                                                                            else {
                                                                                    r2 = *r26;
                                                                            }
                                                                            r28 = [NSString stringWithUTF8String:r2];
                                                                            if (r27 != 0x0) {
                                                                                    sub_1009cafd0(r27 + 0x28);
                                                                                    r0 = [MCAnimVSZData vszAnimationDataFromFile:r28 withFps:r3];
                                                                            }
                                                                            else {
                                                                                    r0 = [MCAnimVSZData vszAnimationDataFromFile:r28];
                                                                            }
                                                                            r27 = r0;
                                                                            sub_10098f4f4(r26);
                                                                            r9 = var_68;
                                                                            r8 = &var_68;
                                                                            if (sign_extend_64(var_51) < 0x0) {
                                                                                    if (!CPU_FLAGS & L) {
                                                                                            r2 = r8;
                                                                                    }
                                                                                    else {
                                                                                            r2 = r9;
                                                                                    }
                                                                            }
                                                                            r3 = [NSString stringWithUTF8String:r2];
                                                                            [r19 addAnimationData:r2 withName:r3];
                                                                            if ((sign_extend_64(var_51) & 0xffffffff80000000) != 0x0) {
                                                                                    operator delete(var_68);
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                            r22 = r22 + 0x10;
                    } while (r21 != r22);
            }
    }
    return;
}

-(void *)getAnimationDataForName:(void *)arg2 withFps:(float)arg3 {
    r3 = arg3;
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
    v8 = v0;
    r20 = arg2;
    r19 = self;
    r0 = [@"VSZ/" stringByAppendingString:r2];
    r23 = r0;
    [r0 stringByDeletingPathExtension];
    r0 = *(r19 + 0x8);
    r0 = [r0 objectForKey:r2];
    if (r0 == 0x0) {
            r24 = @selector(objectForKey:);
            [r20 stringByDeletingPathExtension];
            r0 = *(r19 + 0x8);
            r0 = objc_msgSend(r0, r24);
            if (r0 != 0x0) {
                    r22 = r0;
            }
            else {
                    r0 = [MCAnimVSZData vszAnimationDataFromFile:r23 withFps:r3];
                    if (r0 != 0x0) {
                            r22 = r0;
                            r0 = [r23 stringByDeletingPathExtension];
                            [r19 addAnimationData:r22 withName:r0];
                    }
                    else {
                            r22 = [MCAnimVSZData vszAnimationDataFromFile:r20];
                            r0 = [r20 stringByDeletingPathExtension];
                            if (r22 != 0x0) {
                                    [r19 addAnimationData:r22 withName:r0];
                            }
                    }
            }
    }
    else {
            r22 = r0;
    }
    r0 = r22;
    return r0;
}

-(void)dumpCachedVSZInfo {
    r31 = r31 - 0x110;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_F0 = q0;
    r0 = *(self + 0x8);
    r0 = [r0 allValues];
    r19 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r22 = *var_F0;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_F0 != r22) {
                                    objc_enumerationMutation(r19);
                            }
                            r8 = *(var_F8 + r23 * 0x8);
                            r8 = *(r8 + 0x8);
                            r8 = *(int32_t *)r8;
                            if (r8 != 0x0) {
                                    do {
                                            r8 = r8 - 0x1;
                                    } while (r8 != 0x0);
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadAnimationsFromFile:(void *)arg2 {
    r31 = r31 - 0x180;
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
    r20 = arg2;
    r19 = self;
    if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
            if (r20 != 0x0) {
                    r1 = [r20 UTF8String];
            }
            else {
                    r1 = "";
            }
            sub_1002925c4(&var_108, r1);
            r0 = sub_10042ccfc(&var_108);
            if ((sign_extend_64(var_F1) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_108);
            }
            if ([[CCConfiguration sharedConfiguration] useNewPlistSerialization] != 0x0) {
                    sub_1002925c4(&var_130, "VSZ");
                    r0 = sub_10098f860(&var_130, &var_F0);
                    r0 = sub_1003167cc(&var_108, 0x0);
                    [r19 loadAnimationsFromValue:&stack[-296]];
                    sub_1009ca77c(&stack[-296]);
                    if ((sign_extend_64(var_F1) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_108);
                    }
                    if ((sign_extend_64(var_119) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_130);
                    }
                    r21 = 0x0;
                    r20 = 0x0;
            }
            else {
                    sub_1002925c4(&var_130, "VSZ");
                    r0 = sub_10098f860(&var_130, &var_F0);
                    r0 = sub_100316658(&var_108, 0x0);
                    r20 = r0;
                    if ((sign_extend_64(var_F1) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_108);
                    }
                    if ((sign_extend_64(var_119) & 0xffffffff80000000) == 0x0) {
                            if (r20 == 0x0) {
                                    r0 = sub_100316658(&var_F0, 0x0);
                                    r20 = r0;
                            }
                            else {
                                    if ([r20 count] == 0x0) {
                                            r0 = sub_100316658(&var_F0, 0x0);
                                            r20 = r0;
                                    }
                            }
                    }
                    else {
                            operator delete(var_130);
                            if (r20 != 0x0) {
                                    if ([r20 count] == 0x0) {
                                            r0 = sub_100316658(&var_F0, 0x0);
                                            r20 = r0;
                                    }
                            }
                            else {
                                    r0 = sub_100316658(&var_F0, 0x0);
                                    r20 = r0;
                            }
                    }
                    r21 = 0x1;
            }
            if ((sign_extend_64(var_D9) & 0xffffffff80000000) == 0x0) {
                    if ((r21 & 0x1) != 0x0) {
                            if (r20 != 0x0 && [r20 count] != 0x0) {
                                    var_160 = q0;
                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    if (r0 != 0x0) {
                                            r22 = r0;
                                            r24 = *var_160;
                                            do {
                                                    r26 = 0x0;
                                                    do {
                                                            if (*var_160 != r24) {
                                                                    objc_enumerationMutation(r20);
                                                            }
                                                            [r19 loadAnimationFromDictionary:r2];
                                                            r26 = r26 + 0x1;
                                                    } while (r26 < r22);
                                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r22 = r0;
                                            } while (r0 != 0x0);
                                    }
                            }
                    }
            }
            else {
                    operator delete(var_F0);
                    if ((r21 & 0x1) != 0x0) {
                            if (r20 != 0x0 && [r20 count] != 0x0) {
                                    var_160 = q0;
                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                    if (r0 != 0x0) {
                                            r22 = r0;
                                            r24 = *var_160;
                                            do {
                                                    r26 = 0x0;
                                                    do {
                                                            if (*var_160 != r24) {
                                                                    objc_enumerationMutation(r20);
                                                            }
                                                            [r19 loadAnimationFromDictionary:r2];
                                                            r26 = r26 + 0x1;
                                                    } while (r26 < r22);
                                                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                    r22 = r0;
                                            } while (r0 != 0x0);
                                    }
                            }
                    }
            }
    }
    else {
            r25 = [@"VSZ/" stringByAppendingString:r20];
            r0 = [CCFileUtils sharedFileUtils];
            r0 = [r0 fullPathFromRelativePath:r25];
            r21 = r0;
            if ([r0 isEqualToString:r2] != 0x0) {
                    r0 = [CCFileUtils sharedFileUtils];
                    r0 = [r0 fullPathFromRelativePath:r20];
                    if (r0 != 0x0) {
                            r21 = r0;
                            if (([r0 isEqualToString:r2] & 0x1) == 0x0) {
                                    r20 = [NSArray arrayWithContentsOfFile:r21];
                                    if (r20 != 0x0 && [r20 count] != 0x0) {
                                            var_160 = q0;
                                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            if (r0 != 0x0) {
                                                    r22 = r0;
                                                    r24 = *var_160;
                                                    do {
                                                            r26 = 0x0;
                                                            do {
                                                                    if (*var_160 != r24) {
                                                                            objc_enumerationMutation(r20);
                                                                    }
                                                                    [r19 loadAnimationFromDictionary:r2];
                                                                    r26 = r26 + 0x1;
                                                            } while (r26 < r22);
                                                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                                            r22 = r0;
                                                    } while (r0 != 0x0);
                                            }
                                    }
                            }
                    }
            }
            else {
                    r20 = [NSArray arrayWithContentsOfFile:r21];
                    if (r20 != 0x0 && [r20 count] != 0x0) {
                            var_160 = q0;
                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                            if (r0 != 0x0) {
                                    r22 = r0;
                                    r24 = *var_160;
                                    do {
                                            r26 = 0x0;
                                            do {
                                                    if (*var_160 != r24) {
                                                            objc_enumerationMutation(r20);
                                                    }
                                                    [r19 loadAnimationFromDictionary:r2];
                                                    r26 = r26 + 0x1;
                                            } while (r26 < r22);
                                            r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                                            r22 = r0;
                                    } while (r0 != 0x0);
                            }
                    }
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)removeUnusedVSZs {
    r31 = r31 - 0x130;
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
    r19 = self;
    r0 = *(self + 0x8);
    r0 = [r0 allKeys];
    r20 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r27 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r27) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = *(var_118 + r28 * 0x8);
                            if ([[*(r19 + 0x8) objectForKey:r26] retainCount] == 0x1) {
                                    [*(r19 + 0x8) removeObjectForKey:r2];
                            }
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(float)conversionRatio {
    r0 = self;
    return r0;
}

-(void)setConversionRatio:(float)arg2 {
    *(int32_t *)(self + 0x10) = s0;
    return;
}

@end