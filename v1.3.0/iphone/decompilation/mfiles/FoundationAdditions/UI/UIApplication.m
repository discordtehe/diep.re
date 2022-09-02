@implementation UIApplication

-(bool)mp_supportsOrientationMask:(unsigned long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r0 release];
    [r21 release];
    if ((r19 & 0x10) != 0x0 && ([r20 containsObject:r2] & 0x1) != 0x0) {
            r19 = 0x1;
    }
    else {
            if ((r19 & 0x8) != 0x0 && ([r20 containsObject:r2] & 0x1) != 0x0) {
                    r19 = 0x1;
            }
            else {
                    if ((r19 & 0x2) != 0x0 && ([r20 containsObject:r2] & 0x1) != 0x0) {
                            r19 = 0x1;
                    }
                    else {
                            if ((r19 & 0x4) != 0x0) {
                                    if (([r20 containsObject:r2] & 0x1) != 0x0) {
                                            r19 = 0x1;
                                    }
                                    else {
                                            r19 = 0x0;
                                    }
                            }
                            else {
                                    r19 = 0x0;
                            }
                    }
            }
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)mp_doesOrientation:(long long)arg2 matchOrientationMask:(unsigned long long)arg3 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    if (r2 == 0x4 && (r3 & 0x10) != 0x0) {
            r0 = 0x1;
    }
    else {
            asm { ubfx       x8, x3, #0x1, #0x1 };
            asm { ubfx       x9, x3, #0x3, #0x1 };
            if (r2 == 0x3) {
                    if (CPU_FLAGS & E) {
                            r10 = 0x1;
                    }
            }
            r9 = r10 & r9;
            if (r2 == 0x1) {
                    if (CPU_FLAGS & E) {
                            r10 = 0x1;
                    }
            }
            r8 = r10 & r8;
            asm { ubfx       x11, x3, #0x2, #0x1 };
            if (r2 == 0x2) {
                    if (CPU_FLAGS & E) {
                            r12 = 0x1;
                    }
            }
            r11 = r12 & r11;
            if ((r8 & 0x1) != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = r11;
                    }
                    else {
                            r8 = 0x1;
                    }
            }
            if ((r9 & 0x1) != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r0 = r8;
                    }
                    else {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

+(void)load {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d8608 != -0x1) {
            dispatch_once(0x1011d8608, &var_28);
    }
    return;
}

-(void)mcAds_openURL:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [self mcAds_openURL:r19];
    if (*0x1011e4b58 != 0x0) {
            (*(**0x1011e4b58 + 0x30))();
    }
    [r19 release];
    return;
}

-(void)mcAds_OpenURL:(void *)arg2 options:(void *)arg3 completionHandler:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    [self mcAds_OpenURL:r19 options:r20 completionHandler:r21];
    if (*0x1011e4b58 != 0x0) {
            (*(**0x1011e4b58 + 0x30))();
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end