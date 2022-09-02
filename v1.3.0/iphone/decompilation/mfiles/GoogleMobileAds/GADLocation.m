@implementation GADLocation

-(void *)initWithLatitude:(double)arg2 longitude:(double)arg3 accuracy:(double)arg4 {
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r19->_latitude = d10;
            r19->_longitude = d9;
            r19->_accuracy = d8;
            CFAbsoluteTimeGetCurrent();
            r19->_timestamp = d0 + *0x100bf4860;
    }
    r0 = r19;
    return r0;
}

-(void *)initWithLocationDescription:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 copy];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_locationDescription));
            r8 = *(r20 + r23);
            *(r20 + r23) = r0;
            [r8 release];
            r21 = *(r20 + r23);
            if (r21 == 0x0) {
                    [@"" retain];
                    *(r20 + r23) = @"";
                    [r21 release];
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_50 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            [r0 doubleValue];
            asm { fdiv       d0, d0, d8 };
            r20->_latitude = d0;
            [r23 release];
            r0 = objc_msgSend(r19, r21);
            r0 = [r0 retain];
            objc_msgSend(r0, r22);
            asm { fdiv       d0, d0, d8 };
            r20->_longitude = d0;
            [r23 release];
            r0 = objc_msgSend(r19, r21);
            r0 = [r0 retain];
            objc_msgSend(r0, r22);
            asm { fdiv       d0, d0, d1 };
            r20->_accuracy = d0;
            [r23 release];
            r0 = objc_msgSend(r19, r21);
            r0 = [r0 retain];
            objc_msgSend(r0, r22);
            asm { fdiv       d0, d0, d1 };
            r20->_timestamp = d0;
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)locationDescription {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = r19->_locationDescription;
    if (r0 != 0x0) {
            r19 = [r0 retain];
    }
    else {
            if ([r19 precise] != 0x0) {
                    r20 = [NSString alloc];
                    [r19 latitude];
                    [r19 longitude];
                    r19 = [r20 initWithFormat:@"%f,%f"];
            }
            else {
                    r19 = @"";
                    [r19 retain];
            }
    }
    r0 = [r19 autorelease];
    return r0;
}

-(unsigned long long)hash {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self precise] != 0x0) {
            r0 = [r19 dictionaryRepresentation];
    }
    else {
            r0 = [r19 locationDescription];
    }
    r0 = [r0 retain];
    r20 = [r0 hash];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)isEqual:(void *)arg2 {
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
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    if (r19 != r21) {
            [GADLocation class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r19 retain];
                    if ([r21 precise] != [r20 precise]) {
                            r21 = 0x0;
                    }
                    else {
                            if ([r21 precise] != 0x0) {
                                    [r21 latitude];
                                    [r20 latitude];
                                    d0 = Abs(d8 - d0);
                                    if (d0 < *0x100b9efd8) {
                                            [r21 longitude];
                                            [r20 longitude];
                                            d0 = Abs(d8 - d0);
                                            if (d0 < *0x100b9efd8) {
                                                    [r21 accuracy];
                                                    [r20 accuracy];
                                                    if (Abs(d8 - d0) < *0x100b9efd8) {
                                                            if (CPU_FLAGS & S) {
                                                                    r21 = 0x1;
                                                            }
                                                    }
                                            }
                                            else {
                                                    r21 = 0x0;
                                            }
                                    }
                                    else {
                                            r21 = 0x0;
                                    }
                            }
                            else {
                                    r23 = [[r21 locationDescription] retain];
                                    r22 = [[r20 locationDescription] retain];
                                    r21 = [r23 isEqual:r2];
                                    [r22 release];
                                    [r23 release];
                            }
                    }
                    [r20 release];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x1;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r2 = arg2;
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
    r21 = [self precise];
    r20 = [[r19 class] alloc];
    if (r21 != 0x0) {
            [r19 latitude];
            [r19 longitude];
            [r19 accuracy];
            r0 = [r20 initWithLatitude:r2 longitude:r3 accuracy:r4];
    }
    else {
            r0 = [r20 initWithLocationDescription:r19->_locationDescription];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_timestamp));
    *(r0 + r8) = *(r19 + r8);
    return r0;
}

-(bool)precise {
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
    [self latitude];
    d0 = Abs(d0);
    if (d0 <= *0x100ba2d60) {
            [r19 longitude];
            d0 = Abs(d0);
            if (d0 <= *0x100bf4870) {
                    [r19 latitude];
                    d0 = Abs(d0);
                    if (d0 <= *0x100b9b5c0) {
                            [r19 longitude];
                            if (Abs(d0) > *0x100b9b5c0) {
                                    r0 = 0x1;
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x1;
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)dictionaryRepresentation {
    r31 = r31 - 0xb0;
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
    r19 = self;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_dictionaryRepresentation));
    r0 = *(r19 + r25);
    if (r0 != 0x0) goto loc_1008c701c;

loc_1008c6e7c:
    if ([r19 precise] == 0x0) goto loc_1008c7058;

loc_1008c6e90:
    d0 = r19->_timestamp;
    [r19 latitude];
    d9 = *0x100bf4868;
    d0 = d0 * d9;
    asm { fcvtzs     x21, d0 };
    [r19 longitude];
    asm { fcvtzs     x22, d0 };
    [r19 accuracy];
    r20 = [[NSNumber numberWithDouble:r2] retain];
    r21 = [[NSNumber numberWithInteger:r21] retain];
    r2 = r22;
    r22 = [[NSNumber numberWithInteger:r2] retain];
    r23 = [[NSNumber numberWithDouble:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_78 forKeys:&var_98 count:0x4];
    r0 = [r0 retain];
    r8 = *(r19 + r25);
    *(r19 + r25) = r0;
    [r8 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    r0 = *(r19 + r25);
    goto loc_1008c701c;

loc_1008c701c:
    r0 = [r0 retain];
    goto loc_1008c7020;

loc_1008c7020:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r0 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1008c7058:
    r0 = 0x0;
    goto loc_1008c7020;
}

-(double)latitude {
    r0 = self;
    return r0;
}

-(double)longitude {
    r0 = self;
    return r0;
}

-(double)accuracy {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_locationDescription, 0x0);
    objc_storeStrong((int64_t *)&self->_dictionaryRepresentation, 0x0);
    return;
}

@end