@implementation ISOrientationPolicy

-(void *)initWithStringOrientation:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setAllowedOrientations:[ISOrientationUtillis convertControllerStringOrientationToISOrientation:r19]];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithWithOrientation:(int)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setAllowedOrientations:r19];
    }
    r0 = r20;
    return r0;
}

-(bool)isEqualToOrientationPolicy:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            if ([r20 allowedOrientations] == 0x0 && [r19 allowedOrientations] == 0x0) {
                    r20 = 0x1;
            }
            else {
                    r20 = [r20 allowedOrientations];
                    if (r20 == [r19 allowedOrientations]) {
                            if (CPU_FLAGS & E) {
                                    r20 = 0x1;
                            }
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
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
            [ISOrientationPolicy class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r20 isEqualToOrientationPolicy:r19];
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

-(int)allowedOrientations {
    r0 = *(int32_t *)(int64_t *)&self->_allowedOrientations;
    return r0;
}

+(void *)convertOrientationToString:(int)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    asm { ror        w8, w2, #0x1 };
    r8 = r8 - 0x1;
    if (r8 > 0xe) goto loc_100706720;

loc_1007066dc:
    goto *0x100706764[sign_extend_64(*(int32_t *)(0x100706764 + r8 * 0x4)) + 0x100706764];

loc_1007066f0:
    r19 = @"ISOrientationPortraitFront";
    goto loc_10070674c;

loc_10070674c:
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;

loc_1007066fc:
    r19 = @"ISOrientationPortraitUpsideDown";
    goto loc_10070674c;

loc_100706708:
    r19 = @"ISOrientationPortraitAll";
    goto loc_10070674c;

loc_100706714:
    r19 = @"ISOrientationLandscapeRight";
    goto loc_10070674c;

loc_100706720:
    r19 = @"ISOrientationUnknown";
    goto loc_10070674c;

loc_100706744:
    r19 = @"ISOrientationLandscapeLeft";
    goto loc_10070674c;

loc_10070672c:
    r19 = @"ISOrientationLandscapeAll";
    goto loc_10070674c;

loc_100706738:
    r19 = @"ISOrientationAll";
    goto loc_10070674c;
}

-(void)setAllowedOrientations:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_allowedOrientations = arg2;
    return;
}

@end