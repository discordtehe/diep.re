@implementation ISBannerProductSettings

-(bool)isEqualToproductSettings:(void *)arg2 {
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
    r29 = &saved_fp;
    r24 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [r24 placements];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r23 = 0x0;
                    r25 = r23;
                    r24 = [[r24 placements] retain];
                    r22 = [[r19 placements] retain];
                    r23 = [r24 isEqualToArray:r22];
                    [r22 release];
                    [r24 release];
                    if (r25 != 0x0) {
                            [r21 release];
                    }
            }
            else {
                    r0 = [r19 placements];
                    r29 = r29;
                    r21 = [r0 retain];
                    r23 = 0x1;
                    if (r21 != 0x0) {
                            r25 = r23;
                            r24 = [[r24 placements] retain];
                            r22 = [[r19 placements] retain];
                            r23 = [r24 isEqualToArray:r22];
                            [r22 release];
                            [r24 release];
                            if (r25 != 0x0) {
                                    [r21 release];
                            }
                    }
                    else {
                            [r21 release];
                    }
            }
            [r20 release];
    }
    else {
            r23 = 0x0;
    }
    [r19 release];
    r0 = r23;
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != r20) {
            [ISBannerProductSettings class];
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

-(void *)description {
    r20 = [[self placements] retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

@end