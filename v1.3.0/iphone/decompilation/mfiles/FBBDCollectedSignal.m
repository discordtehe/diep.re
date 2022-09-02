@implementation FBBDCollectedSignal

-(void *)initWithTime:(double)arg2 withContext:(void *)arg3 withValueOrError:(void *)arg4 withIsOffsiteFlag:(bool)arg5 {
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
    r19 = arg4;
    r21 = arg3;
    r23 = arg2;
    r20 = [arg2 retain];
    r22 = [r21 retain];
    r0 = [[&var_50 super] init];
    r24 = r0;
    if (r0 != 0x0) {
            d0 = *double_value_1000;
            asm { frinta     d1, d1 };
            asm { fdiv       d0, d1, d0 };
            r24->_time = d0;
            objc_storeStrong((int64_t *)&r24->_context, r23);
            objc_storeStrong((int64_t *)&r24->_valueOrError, r21);
            *(int8_t *)(int64_t *)&r24->_isOffsite = r19;
    }
    [r22 release];
    [r20 release];
    r0 = r24;
    return r0;
}

-(unsigned long long)dataSize {
    r0 = self->_valueOrError;
    r0 = [r0 dataSize];
    r0 = r0 + 0x10;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_valueOrError, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

-(double)time {
    r0 = self;
    return r0;
}

-(void *)context {
    r0 = self->_context;
    return r0;
}

-(void *)collectedSignalDict {
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
    r21 = self;
    r19 = [NSMutableDictionary new];
    r0 = [NSNumber numberWithDouble:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r19 setObject:r22 forKeyedSubscript:@"t"];
    [r22 release];
    if (*(int8_t *)(int64_t *)&r21->_isOffsite == 0x0) {
            [r19 setObject:r21->_context forKeyedSubscript:@"ctx"];
    }
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_valueOrError));
    r8 = [*(r21 + r22) isSignalValue];
    r0 = *(r21 + r22);
    if (r8 == 0x0) goto loc_100b6e390;

loc_100b6e300:
    r0 = [r0 signalValue:&var_58];
    r29 = r29;
    r21 = [r0 retain];
    r22 = [var_58 retain];
    if (r21 == 0x0) goto loc_100b6e604;

loc_100b6e330:
    r0 = [r21 type];
    if (r0 <= 0x3) goto loc_100b6e424;

loc_100b6e34c:
    if (r0 > 0x5) goto loc_100b6e468;

loc_100b6e354:
    if (r0 == 0x4) goto loc_100b6e4a4;

loc_100b6e35c:
    r23 = 0x0;
    if (r0 != 0x5) goto loc_100b6e5e4;

loc_100b6e364:
    r0 = [r21 dictValue:&var_80];
    r23 = [r0 retain];
    r0 = var_80;
    goto loc_100b6e5d0;

loc_100b6e5d0:
    r24 = [r0 retain];
    [r22 release];
    goto loc_100b6e5e0;

loc_100b6e5e0:
    r22 = r24;
    goto loc_100b6e5e4;

loc_100b6e5e4:
    [r19 setObject:r23 forKeyedSubscript:@"v"];
    [r23 release];
    goto loc_100b6e604;

loc_100b6e604:
    [r21 release];
    r0 = r22;
    goto loc_100b6e610;

loc_100b6e610:
    r0 = [r0 release];
    goto loc_100b6e614;

loc_100b6e614:
    if (r22 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = 0x0;
            }
            else {
                    r0 = r19;
            }
    }
    r20 = objc_retainAutoreleaseReturnValue(r0);
    [r19 release];
    r0 = r20;
    return r0;

loc_100b6e4a4:
    [r21 boolValue:&var_78];
    r25 = [var_78 retain];
    [r22 release];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_100b6e540;

loc_100b6e540:
    r23 = [r0 retain];
    r22 = r25;
    goto loc_100b6e5e4;

loc_100b6e468:
    if (r0 == 0x6) goto loc_100b6e5a8;

loc_100b6e470:
    r23 = 0x0;
    if (r0 != 0x7) goto loc_100b6e5e4;

loc_100b6e478:
    r0 = [r21 serializedTouchValue:&var_90];
    r23 = [r0 retain];
    r0 = var_90;
    goto loc_100b6e5d0;

loc_100b6e5a8:
    r0 = [r21 arrayValue:&var_88];
    r23 = [r0 retain];
    r0 = var_88;
    goto loc_100b6e5d0;

loc_100b6e424:
    if (r0 == 0x1) goto loc_100b6e4f4;

loc_100b6e42c:
    if (r0 == 0x2) goto loc_100b6e550;

loc_100b6e434:
    r23 = 0x0;
    if (r0 != 0x3) goto loc_100b6e5e4;

loc_100b6e43c:
    r0 = [r21 stringValue:&var_70];
    r23 = [r0 retain];
    r0 = var_70;
    goto loc_100b6e5d0;

loc_100b6e550:
    [r21 floatValue:&var_68];
    r24 = [var_68 retain];
    [r22 release];
    r23 = [[NSNumber numberWithFloat:r2] retain];
    goto loc_100b6e5e0;

loc_100b6e4f4:
    [r21 intValue:&var_60];
    r25 = [var_60 retain];
    [r22 release];
    r0 = [NSNumber numberWithInt:r2];
    goto loc_100b6e540;

loc_100b6e390:
    r0 = [r0 isSignalError];
    if (r0 == 0x0) goto loc_100b6e41c;

loc_100b6e3a0:
    var_98 = 0x0;
    r21 = [[*(r21 + r22) signalError:&var_98] retain];
    r22 = [var_98 retain];
    r23 = [[r21 errorDict] retain];
    [r19 setObject:r23 forKeyedSubscript:@"e"];
    [r22 release];
    [r23 release];
    r0 = r21;
    goto loc_100b6e610;

loc_100b6e41c:
    r22 = 0x0;
    goto loc_100b6e614;
}

-(void *)valueOrError {
    r0 = self->_valueOrError;
    return r0;
}

-(bool)isEqualToCollectedSignal:(void *)arg2 withFlags:(unsigned long long)arg3 {
    r31 = r31 - 0x90;
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
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_valueOrError));
    if (([*(r20 + r26) isSignalError] & 0x1) == 0x0) goto loc_100b6e6e0;

loc_100b6e6a8:
    r0 = [r19 valueOrError];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 isSignalValue] == 0x0) goto loc_100b6e6f0;

loc_100b6e6d8:
    r0 = r23;
    goto loc_100b6e950;

loc_100b6e950:
    [r0 release];
    goto loc_100b6e954;

loc_100b6e954:
    r21 = 0x0;
    goto loc_100b6e958;

loc_100b6e958:
    [r19 release];
    r0 = r21;
    return r0;

loc_100b6e6f0:
    r27 = 0x1;
    goto loc_100b6e6f4;

loc_100b6e6f4:
    if (([*(r20 + r26) isSignalValue] & 0x1) == 0x0) goto loc_100b6e748;

loc_100b6e704:
    r0 = [r19 valueOrError];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 isSignalError];
    [r0 release];
    if (r27 != 0x0) {
            [r23 release];
    }
    if ((r24 & 0x1) == 0x0) goto loc_100b6e754;
    goto loc_100b6e954;

loc_100b6e754:
    if ([*(r20 + r26) isSignalError] == 0x0) goto loc_100b6e82c;

loc_100b6e764:
    r0 = [r19 valueOrError];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 isSignalError];
    [r0 release];
    if (r22 == 0x0) goto loc_100b6e82c;

loc_100b6e79c:
    var_68 = 0x0;
    r20 = [[*(r20 + r26) signalError:&var_68] retain];
    r24 = [var_68 retain];
    r0 = [r19 valueOrError];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 signalError:&var_70];
    r23 = [r0 retain];
    r22 = [var_70 retain];
    [r24 release];
    [r25 release];
    if (r22 != 0x0) {
            r21 = 0x0;
    }
    else {
            r21 = [r20 isEqual:r2];
    }
    [r23 release];
    [r20 release];
    [r22 release];
    goto loc_100b6e958;

loc_100b6e82c:
    if ((r21 & 0x200) == 0x0) goto loc_100b6e854;

loc_100b6e830:
    d8 = r20->_time;
    [r19 time];
    if (d8 != d0) goto loc_100b6e954;

loc_100b6e854:
    if ((r21 & 0x100) == 0x0) goto loc_100b6e8a4;

loc_100b6e858:
    r22 = r20->_context;
    r0 = [r19 context];
    r29 = r29;
    r23 = [r0 retain];
    r22 = [r22 isEqualToDictionary:r23];
    [r23 release];
    if (r22 == 0x0) goto loc_100b6e954;

loc_100b6e8a4:
    if ((r21 & 0x80) != 0x0) goto loc_100b6e8b0;

loc_100b6e8a8:
    r21 = 0x1;
    goto loc_100b6e958;

loc_100b6e8b0:
    var_78 = 0x0;
    r20 = [[*(r20 + r26) signalValue:&var_78] retain];
    r23 = [var_78 retain];
    r0 = [r19 valueOrError];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 signalValue:&var_80];
    r21 = [r0 retain];
    r22 = [var_80 retain];
    [r23 release];
    [r24 release];
    if (r22 == 0x0) goto loc_100b6e9bc;

loc_100b6e93c:
    [r21 release];
    [r20 release];
    r0 = r22;
    goto loc_100b6e950;

loc_100b6e9bc:
    r22 = [r20 isEqualToSignalValue:r21];
    [r21 release];
    [r20 release];
    if (r22 == 0x0) {
            r21 = 0x0;
    }
    else {
            r21 = 0x1;
    }
    goto loc_100b6e958;

loc_100b6e748:
    if (r27 != 0x0) {
            [r23 release];
    }
    goto loc_100b6e754;

loc_100b6e6e0:
    r27 = 0x0;
    goto loc_100b6e6f4;
}

@end