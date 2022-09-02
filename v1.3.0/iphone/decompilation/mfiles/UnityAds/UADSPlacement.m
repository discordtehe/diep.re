@implementation UADSPlacement

+(bool)isReady:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self getPlacementState:arg2];
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(bool)isReady {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [self getPlacementState];
    if (r0 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

+(void)setDefaultPlacement:(void *)arg2 {
    objc_storeStrong(0x1011d1a58, arg2);
    return;
}

+(void *)getDefaultPlacement {
    r0 = *0x1011d1a58;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setDefaultBannerPlacement:(void *)arg2 {
    objc_storeStrong(0x1011d1a60, arg2);
    return;
}

+(void *)getDefaultBannerPlacement {
    r0 = *0x1011d1a60;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(long long)getPlacementState {
    r0 = self;
    if (*0x1011d1a58 != 0x0) {
            r0 = [r0 currentState:r2];
    }
    else {
            r0 = 0x1;
    }
    return r0;
}

+(void)setPlacementState:(void *)arg2 placementState:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (*0x1011d1a68 == 0x0) {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            r8 = *0x1011d1a68;
            *0x1011d1a68 = r0;
            [r8 release];
    }
    [*0x1011d1a68 setObject:r2 forKey:r3];
    [r20 release];
    [r19 release];
    return;
}

+(long long)getPlacementState:(void *)arg2 {
    r0 = [self currentState:arg2];
    return r0;
}

+(void)reset {
    r0 = *0x1011d1a58;
    *0x1011d1a58 = 0x0;
    [r0 release];
    r0 = *0x1011d1a60;
    *0x1011d1a60 = 0x0;
    [r0 release];
    r0 = *0x1011d1a68;
    *0x1011d1a68 = 0x0;
    [r0 release];
    return;
}

+(long long)currentState:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (*0x1011d1a68 != 0x0) {
            r0 = *0x1011d1a68;
            r0 = [r0 valueForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r21 = [[*0x1011d1a68 valueForKey:r2] retain];
                    r20 = [r20 formatStringToPlacementState:r21];
                    [r21 release];
            }
            else {
                    r20 = 0x1;
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(long long)formatStringToPlacementState:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x0;
    }
    else {
            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                            r20 = 0x2;
                    }
                    else {
                            if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                    r20 = 0x3;
                            }
                            else {
                                    r20 = @selector(isEqualToString:);
                                    if (objc_msgSend(r19, r20) != 0x0) {
                                            asm { csinc      x20, x8, xzr, ne };
                                    }
                            }
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

@end