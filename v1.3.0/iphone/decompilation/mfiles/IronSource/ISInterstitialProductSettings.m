@implementation ISInterstitialProductSettings

-(bool)isEqual:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != r20) {
            [ISInterstitialProductSettings class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r20 isEqualToproductSettings:r19];
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

-(bool)isEqualToproductSettings:(void *)arg2 {
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r22 = 0x0;
                    r26 = r22;
                    r25 = [[r20 placements] retain];
                    r24 = [[r19 placements] retain];
                    r22 = [r25 isEqualToArray:r24];
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
                    r22 = 0x1;
                    if (r23 != 0x0) {
                            r26 = r22;
                            r25 = [[r20 placements] retain];
                            r24 = [[r19 placements] retain];
                            r22 = [r25 isEqualToArray:r24];
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
            [r21 release];
            r23 = [r20 maxNumOfAdaptersToLoadOnStart];
            r21 = [r19 maxNumOfAdaptersToLoadOnStart];
            r8 = &@selector(bannerDidLoad:);
            objc_msgSend(r20, *(r8 + 0x1d8));
            objc_msgSend(r19, r24);
            if (d8 == d0) {
                    r8 = &@selector(bannerDidLoad:);
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            if (r23 == r21) {
                    if (CPU_FLAGS & E) {
                            r9 = 0x1;
                    }
            }
            r20 = r22 & r9 & r8;
    }
    else {
            r20 = 0x0;
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

@end