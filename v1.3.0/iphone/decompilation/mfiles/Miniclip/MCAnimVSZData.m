@implementation MCAnimVSZData

+(void *)vszAnimationDataFromFile:(void *)arg2 withFps:(float)arg3 {
    r0 = objc_alloc();
    r0 = [r0 initFromFile:arg2 withFps:arg3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)vszAnimationDataFromFile:(void *)arg2 {
    r0 = objc_alloc();
    r0 = [r0 initFromFile:arg2 withFps:r3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initFromFile:(void *)arg2 {
    r0 = [self initFromFile:arg2 withFps:r3];
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x18);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x18) = 0x0;
    }
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            sub_10028dacc(r0);
            *(r19 + 0x8) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(float)animationTimeAtNormalSpeed {
    r0 = self;
    r8 = *(r0 + 0x8);
    r8 = *(r8 + 0x8);
    asm { scvtf      s0, w8 };
    return r0;
}

-(void *)initFromFile:(void *)arg2 withFps:(float)arg3 {
    r31 = r31 - 0xb0;
    var_50 = d11;
    stack[-88] = d10;
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
    r20 = arg2;
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            if ([[UIDevice currentDevice] respondsToSelector:r2] != 0x0) {
                    if ([[UIDevice currentDevice] userInterfaceIdiom] == 0x1) {
                            asm { fcsel      s9, s1, s0, eq };
                    }
            }
            else {
                    s9 = 0x3fee000000000000;
            }
            asm { fcvt       d0, s9 };
            asm { fcvt       s10, d0 };
            if ([[CCConfiguration sharedConfiguration] useNewResourceManagement] != 0x0) {
                    sub_1009d0950(&var_80);
                    if (r20 != 0x0) {
                            r1 = [r20 UTF8String];
                    }
                    else {
                            r1 = "";
                    }
                    sub_1002925c4(&var_98, r1);
                    r0 = sub_10042b6e0(&var_98, &var_80);
                    if (r0 != 0x0) {
                            r0 = var_78;
                            if (r0 != 0x0 && var_70 != 0x0) {
                                    r0 = sub_100290e50(r0);
                                    r21 = 0x0;
                                    *(r19 + 0x8) = r0;
                            }
                            else {
                                    r21 = 0x1;
                            }
                    }
                    else {
                            r21 = 0x1;
                    }
                    if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_98);
                    }
                    sub_1009d0b44(&var_80);
                    if (r21 != 0x0) {
                            r19 = 0x0;
                    }
                    else {
                            s0 = 0x3ff0000000000000;
                            asm { fdiv       s0, s0, s8 };
                            *(int32_t *)(r19 + 0x10) = s0;
                            *(r19 + 0x18) = [r20 retain];
                    }
            }
            else {
                    r0 = [CCFileUtils sharedFileUtils];
                    r0 = [r0 fullPathFromRelativePath:r20 resolutionType:&var_98 andResourcePack:&var_80];
                    r21 = r0;
                    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                            [r19 release];
                            r19 = 0x0;
                    }
                    else {
                            [r21 UTF8String];
                            *(r19 + 0x8) = sub_100291280();
                            r20 = r21;
                            s0 = 0x3ff0000000000000;
                            asm { fdiv       s0, s0, s8 };
                            *(int32_t *)(r19 + 0x10) = s0;
                            *(r19 + 0x18) = [r20 retain];
                    }
            }
    }
    r0 = r19;
    return r0;
}

-(float)calculateSpeedToPlayDuringSeconds:(float)arg2 {
    r0 = [self animationTimeAtNormalSpeed];
    asm { fdiv       s0, s8, s0 };
    return r0;
}

-(void *)name {
    r0 = *(self + 0x18);
    return r0;
}

@end