@implementation ISRewardedVideoProductSettings

-(bool)isEqual:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != r20) {
            [ISRewardedVideoProductSettings class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r20 isEqualToRVProductSettings:r19];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)description {
    r0 = [self placements];
    [r0 retain];
    [self maxNumOfAdaptersToLoadOnStart];
    objc_msgSend(self, *(&@selector(bannerDidLoad:) + 0x1d8));
    asm { fcvtzu     x8, d0 };
    r19 = [[r20 stringWithFormat:r2] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)isEqualToRVProductSettings:(void *)arg2 {
    var_60 = d9;
    stack[-104] = d8;
    r31 = r31 + 0xffffffffffffff90;
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [r20 placements];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r21 = 0x0;
                    r26 = r21;
                    r25 = [[r20 placements] retain];
                    r0 = [r19 placements];
                    r29 = r29;
                    r24 = [r0 retain];
                    r21 = [r25 isEqualToArray:r24];
                    [r24 release];
                    [r25 release];
                    if (r26 != 0x0) {
                            [r23 release];
                    }
            }
            else {
                    r0 = [r19 placements];
                    r29 = r29;
                    r23 = [r0 retain];
                    r21 = 0x1;
                    if (r23 != 0x0) {
                            r26 = r21;
                            r25 = [[r20 placements] retain];
                            r0 = [r19 placements];
                            r29 = r29;
                            r24 = [r0 retain];
                            r21 = [r25 isEqualToArray:r24];
                            [r24 release];
                            [r25 release];
                            if (r26 != 0x0) {
                                    [r23 release];
                            }
                    }
                    else {
                            [r23 release];
                    }
            }
            [r22 release];
            r22 = [r20 maxNumOfAdaptersToLoadOnStart];
            r23 = [r19 maxNumOfAdaptersToLoadOnStart];
            [r20 adapterTimeOutInSeconds];
            [r19 adapterTimeOutInSeconds];
            r0 = [r20 algo];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    r27 = 0x0;
                    r28 = r27;
                    r20 = [[r20 algo] retain];
                    r26 = [[r19 algo] retain];
                    r27 = [r20 isEqualToString:r2];
                    [r26 release];
                    [r20 release];
                    if (r28 != 0x0) {
                            [r25 release];
                    }
            }
            else {
                    r0 = [r19 algo];
                    r29 = r29;
                    r25 = [r0 retain];
                    r27 = 0x1;
                    if (r25 != 0x0) {
                            r28 = r27;
                            r20 = [[r20 algo] retain];
                            r26 = [[r19 algo] retain];
                            r27 = [r20 isEqualToString:r2];
                            [r26 release];
                            [r20 release];
                            if (r28 != 0x0) {
                                    [r25 release];
                            }
                    }
                    else {
                            [r25 release];
                    }
            }
            if (d8 == d9) {
                    if (CPU_FLAGS & E) {
                            r20 = 0x1;
                    }
            }
            if (r22 == r23) {
                    if (CPU_FLAGS & E) {
                            r22 = 0x1;
                    }
            }
            [r24 release];
            r20 = r27 & r22 & r21 & r20;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

@end