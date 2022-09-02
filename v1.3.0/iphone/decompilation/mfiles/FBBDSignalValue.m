@implementation FBBDSignalValue

-(int)intValue:(void * *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0 && r19->_type != 0x1) {
            *r2 = objc_retainAutorelease(r19->_error);
    }
    r0 = *(int32_t *)(int64_t *)&r19->_scalarValue;
    return r0;
}

-(bool)boolValue:(void * *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0 && r19->_type != 0x4) {
            *r2 = objc_retainAutorelease(r19->_error);
    }
    r0 = *(int8_t *)(int64_t *)&r19->_scalarValue;
    return r0;
}

-(float)floatValue:(void * *)arg2 {
    r2 = arg2;
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r0;
    if (r2 != 0x0 && r19->_type != 0x2) {
            r0 = r19->_error;
            r0 = objc_retainAutorelease(r0);
            *r2 = r0;
    }
    return r0;
}

-(void *)stringValue:(void * *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0 && r19->_type != 0x3) {
            *r2 = objc_retainAutorelease(r19->_error);
    }
    r0 = r19->_stringValue;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)arrayValue:(void * *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0 && r19->_type != 0x6) {
            *r2 = objc_retainAutorelease(r19->_error);
    }
    r0 = r19->_arrayValue;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)dictValue:(void * *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0 && r19->_type != 0x5) {
            *r2 = objc_retainAutorelease(r19->_error);
    }
    r0 = r19->_dictValue;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)touchValue:(void * *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0 && r19->_type != 0x7) {
            *r2 = objc_retainAutorelease(r19->_error);
    }
    r0 = r19->_touchValue;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)serializedTouchValue:(void * *)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r2 != 0x0 && r19->_type != 0x7) {
            *r2 = objc_retainAutorelease(r19->_error);
    }
    r0 = r19->_touchValue;
    r0 = [r0 touchValueDict];
    return r0;
}

-(void *)initWithIntValue:(int)arg2 {
    r20 = self;
    self->_type = 0x1;
    [self initError];
    asm { sxtw       x2, w19 };
    r0 = [r20 initWithLongLong:r2];
    return r0;
}

-(void *)initWithBoolValue:(bool)arg2 {
    self->_type = 0x4;
    [self initError];
    r0 = [self initWithLongLong:arg2];
    return r0;
}

-(void *)initWithFloatValue:(float)arg2 {
    self->_type = 0x2;
    *(int32_t *)(int64_t *)&self->_scalarValue = s0;
    [self initError];
    r0 = self;
    return r0;
}

-(void *)initWithStringValue:(void *)arg2 {
    self->_type = 0x3;
    objc_storeStrong((int64_t *)&self->_stringValue, arg2);
    r19 = [arg2 retain];
    [self initError];
    [r19 release];
    r0 = self;
    return r0;
}

-(void *)initWithArrayValue:(void *)arg2 {
    self->_type = 0x6;
    objc_storeStrong((int64_t *)&self->_arrayValue, arg2);
    r19 = [arg2 retain];
    [self initError];
    [r19 release];
    r0 = self;
    return r0;
}

-(void *)initWithDictValue:(void *)arg2 {
    self->_type = 0x5;
    objc_storeStrong((int64_t *)&self->_dictValue, arg2);
    r19 = [arg2 retain];
    [self initError];
    [r19 release];
    r0 = self;
    return r0;
}

-(void *)initWithTouchValue:(void *)arg2 {
    self->_type = 0x7;
    objc_storeStrong((int64_t *)&self->_touchValue, arg2);
    r19 = [arg2 retain];
    [self initError];
    [r19 release];
    r0 = self;
    return r0;
}

-(void)initError {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1] retain];
    r0 = [NSError errorWithDomain:@"FBBDErrorDomain" code:0x1 userInfo:r21];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_error));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    [r21 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void *)initWithLongLong:(long long)arg2 {
    r0 = self;
    r0->_scalarValue = arg2;
    return r0;
}

-(unsigned long long)dataSize {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [NSMutableData new];
    r22 = r21->_type;
    if (r22 > 0x3) goto loc_100b7aec4;

loc_100b7aeac:
    if (r22 > 0x1) goto loc_100b7af08;

loc_100b7aeb4:
    r20 = 0x0;
    if (r22 == 0x0) goto loc_100b7b048;

loc_100b7aeb8:
    if (r22 == 0x1) goto loc_100b7af80;

loc_100b7aec0:
    r20 = 0x0;
    goto loc_100b7afdc;

loc_100b7afdc:
    r0 = [NSKeyedArchiver alloc];
    r0 = [r0 initForWritingWithMutableData:r19];
    [r0 encodeObject:r20 forKey:@"signalValueKey"];
    [r0 finishEncoding];
    r22 = [r19 length];
    [r0 release];
    goto loc_100b7b048;

loc_100b7b048:
    r21 = 0x0;
    goto loc_100b7b04c;

loc_100b7b04c:
    [r19 release];
    [r20 release];
    [r21 release];
    r0 = r22;
    return r0;

loc_100b7af80:
    r20 = 0x0;
    r21 = 0x0;
    r22 = 0x4;
    goto loc_100b7b04c;

loc_100b7af08:
    if (r22 == 0x2) goto loc_100b7af80;

loc_100b7af10:
    r20 = 0x0;
    if (r22 != 0x3) goto loc_100b7afdc;

loc_100b7af18:
    r0 = [r21 stringValue:&var_28];
    r20 = [r0 retain];
    r0 = var_28;
    goto loc_100b7afc8;

loc_100b7afc8:
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100b7afdc;

loc_100b7afd0:
    r21 = r0;
    r22 = 0x0;
    goto loc_100b7b04c;

loc_100b7aec4:
    if (r22 > 0x5) goto loc_100b7af44;

loc_100b7aecc:
    if (r22 == 0x4) goto loc_100b7af90;

loc_100b7aed4:
    r20 = 0x0;
    if (r22 != 0x5) goto loc_100b7afdc;

loc_100b7aedc:
    r0 = [r21 dictValue:&var_30];
    r20 = [r0 retain];
    r0 = var_30;
    goto loc_100b7afc8;

loc_100b7af90:
    r20 = 0x0;
    r21 = 0x0;
    r22 = 0x1;
    goto loc_100b7b04c;

loc_100b7af44:
    if (r22 == 0x6) goto loc_100b7afa0;

loc_100b7af4c:
    r20 = 0x0;
    if (r22 != 0x7) goto loc_100b7afdc;

loc_100b7af54:
    r0 = [r21 serializedTouchValue:&var_40];
    r20 = [r0 retain];
    r0 = var_40;
    goto loc_100b7afc8;

loc_100b7afa0:
    r0 = [r21 arrayValue:&var_38];
    r20 = [r0 retain];
    r0 = var_38;
    goto loc_100b7afc8;
}

-(bool)isEqualToSignalValue:(void *)arg2 {
    r31 = r31 - 0xc0;
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 type] != [r20 type]) goto loc_100b7ab4c;

loc_100b7aaa8:
    r0 = [r20 type];
    if (r0 <= 0x3) goto loc_100b7ab54;

loc_100b7aac0:
    if (r0 > 0x5) goto loc_100b7abe0;

loc_100b7aac8:
    if (r0 == 0x4) goto loc_100b7ac64;

loc_100b7aad0:
    r21 = 0x0;
    if (r0 != 0x5) goto loc_100b7adc8;

loc_100b7aad8:
    var_88 = 0x0;
    r20 = [[r20 dictValue:&var_88] retain];
    r22 = [var_88 retain];
    r0 = [r19 dictValue:&var_90];
    r23 = [r0 retain];
    r24 = [var_90 retain];
    [r22 release];
    r1 = @selector(isEqualToDictionary:);
    goto loc_100b7ada0;

loc_100b7ada0:
    r21 = objc_msgSend(r20, r1);
    [r24 release];
    [r23 release];
    r0 = r20;
    goto loc_100b7adc4;

loc_100b7adc4:
    [r0 release];
    goto loc_100b7adc8;

loc_100b7adc8:
    [r19 release];
    r0 = r21;
    return r0;

loc_100b7ac64:
    r20 = [r20 boolValue:&var_78];
    r0 = [var_78 retain];
    r21 = [r19 boolValue:&var_80];
    r23 = [var_80 retain];
    [r0 release];
    r21 = r20 ^ r21 ^ 0x1;
    goto loc_100b7ad28;

loc_100b7ad28:
    r0 = r23;
    goto loc_100b7adc4;

loc_100b7abe0:
    if (r0 == 0x6) goto loc_100b7ad30;

loc_100b7abe8:
    r21 = 0x0;
    if (r0 != 0x7) goto loc_100b7adc8;

loc_100b7abf0:
    var_A8 = 0x0;
    r20 = [[r20 touchValue:&var_A8] retain];
    r22 = [var_A8 retain];
    r0 = [r19 touchValue:&var_B0];
    r23 = [r0 retain];
    r24 = [var_B0 retain];
    [r22 release];
    r1 = @selector(isEqualToTouch:);
    goto loc_100b7ada0;

loc_100b7ad30:
    var_98 = 0x0;
    r20 = [[r20 arrayValue:&var_98] retain];
    r22 = [var_98 retain];
    r0 = [r19 arrayValue:&var_A0];
    r23 = [r0 retain];
    r24 = [var_A0 retain];
    [r22 release];
    r1 = @selector(isEqualToArray:);
    goto loc_100b7ada0;

loc_100b7ab54:
    if (r0 == 0x1) goto loc_100b7acc8;

loc_100b7ab5c:
    if (r0 == 0x2) goto loc_100b7adf0;

loc_100b7ab64:
    r21 = 0x0;
    if (r0 != 0x3) goto loc_100b7adc8;

loc_100b7ab6c:
    var_68 = 0x0;
    r20 = [[r20 stringValue:&var_68] retain];
    r22 = [var_68 retain];
    r0 = [r19 stringValue:&var_70];
    r23 = [r0 retain];
    r24 = [var_70 retain];
    [r22 release];
    r1 = @selector(isEqualToString:);
    goto loc_100b7ada0;

loc_100b7adf0:
    r21 = @selector(floatValue:);
    objc_msgSend(r20, r21);
    [0x0 retain];
    objc_msgSend(r19, r21);
    r22 = [r0 retain];
    [r20 release];
    asm { fabd       s0, s8, s9 };
    if (s0 < 0x34000000) {
            r21 = @selector(floatValue:);
            if (CPU_FLAGS & S) {
                    r21 = 0x1;
            }
    }
    r0 = r22;
    goto loc_100b7adc4;

loc_100b7acc8:
    r20 = [r20 intValue:r29 - 0x48];
    r0 = [0x0 retain];
    r21 = [r19 intValue:r29 - 0x50];
    r23 = [r0 retain];
    [r0 release];
    if (r20 == r21) {
            if (CPU_FLAGS & E) {
                    r21 = 0x1;
            }
    }
    goto loc_100b7ad28;

loc_100b7ab4c:
    r21 = 0x0;
    goto loc_100b7adc8;
}

-(unsigned long long)type {
    r0 = self->_type;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    objc_storeStrong((int64_t *)&self->_touchValue, 0x0);
    objc_storeStrong((int64_t *)&self->_dictValue, 0x0);
    objc_storeStrong((int64_t *)&self->_arrayValue, 0x0);
    objc_storeStrong((int64_t *)&self->_stringValue, 0x0);
    return;
}

@end