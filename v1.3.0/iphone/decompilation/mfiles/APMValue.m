@implementation APMValue

-(void *)initWithDouble:(double)arg2 {
    r20 = [[NSNumber numberWithDouble:arg2] retain];
    r19 = [self initWithValueType:0x0 value:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)initWithInt64:(long long)arg2 {
    r20 = [[NSNumber numberWithLongLong:arg2] retain];
    r19 = [self initWithValueType:0x1 value:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

+(void *)valueFromObject:(void *)arg2 {
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
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_10017e828;

loc_10017e7e8:
    [APMValue class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10017e874;

loc_10017e81c:
    r0 = [r19 retain];
    goto loc_10017e8b8;

loc_10017e8b8:
    r21 = r0;
    goto loc_10017e8bc;

loc_10017e8bc:
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_10017e874:
    r21 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_10017e8dc;

loc_10017e898:
    r0 = [APMValue alloc];
    r0 = [r0 initWithString:r19];
    goto loc_10017e8b8;

loc_10017e8dc:
    r21 = @selector(isKindOfClass:);
    r2 = [NSNumber class];
    if (objc_msgSend(r19, r21) == 0x0) goto loc_10017e950;

loc_10017e900:
    r0 = [r19 retain];
    r20 = r0;
    r22 = CFNumberIsFloatType(r0);
    r21 = [APMValue alloc];
    if (r22 != 0x0) {
            [r20 doubleValue];
            r0 = [r21 initWithDouble:r2];
    }
    else {
            r0 = [r21 initWithInt64:[r20 longLongValue]];
    }
    r21 = r0;
    [r20 release];
    goto loc_10017e8bc;

loc_10017e950:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r20 = r0;
    [r0 logWithLevel:0x0 messageCode:0x88b9 message:@"Cannot create Value type with unsupported value. The Value has to be NSNumber or NSString. Value" context:r19];
    goto loc_10017e864;

loc_10017e864:
    [r20 release];
    r21 = 0x0;
    goto loc_10017e8bc;

loc_10017e828:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r20 = r0;
    [r0 logWithLevel:0x0 messageCode:0x88b8 message:@"Cannot create Value type with nil value"];
    goto loc_10017e864;
}

-(bool)isDouble {
    r0 = self;
    if (r0->_valueType == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)initWithString:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_10017eb28;

loc_10017eab4:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_10017eb68;

loc_10017eae0:
    r21 = [r19 copy];
    r20 = [[r20 initWithValueType:0x2 value:r21] retain];
    [r21 release];
    r21 = r20;
    goto loc_10017ebb4;

loc_10017ebb4:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_10017eb68:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r21 = r0;
    [r0 logWithLevel:0x0 messageCode:0x88bb message:@"Cannot create String value with non-string value. Value" context:r19];
    goto loc_10017eba8;

loc_10017eba8:
    [r21 release];
    r21 = 0x0;
    goto loc_10017ebb4;

loc_10017eb28:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r21 = r0;
    [r0 logWithLevel:0x0 messageCode:0x88ba message:@"Cannot create String value with nil"];
    goto loc_10017eba8;
}

-(void *)initWithValueType:(long long)arg2 value:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = arg2;
    r20 = [r21 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_value, r21);
            r22->_valueType = r19;
    }
    [r20 release];
    r0 = r22;
    return r0;
}

-(bool)isInt64 {
    r0 = self;
    if (r0->_valueType == 0x1) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(long long)int64Value {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isInt64] != 0x0) {
            r0 = r19->_value;
            r0 = [r0 longLongValue];
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(double)doubleValue {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self isDouble];
    if (r0 != 0x0) {
            r0 = r19->_value;
            r0 = [r0 doubleValue];
    }
    return r0;
}

-(bool)isString {
    r0 = self;
    if (r0->_valueType == 0x2) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)stringValue {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isString] != 0x0) {
            r19 = [r19->_value autorelease];
    }
    else {
            r19 = 0x0;
    }
    [r19 retain];
    r0 = r19;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self isString] != 0x0) {
            r0 = [APMValue alloc];
    }
    else {
            r20 = [r19 isDouble];
            r0 = [APMValue alloc];
    }
    r0 = [r0 initWithValueType:r2 value:r3];
    return r0;
}

-(void *)description {
    r0 = self->_value;
    r0 = [r0 description];
    return r0;
}

-(long long)valueType {
    r0 = self->_valueType;
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 class] != [APMValue class]) {
            r20 = 0x0;
    }
    else {
            r0 = [r19 retain];
            r21 = r0;
            if (r20->_valueType == [r0 valueType]) {
                    r20 = [*(r20 + sign_extend_64(*(int32_t *)ivar_offset(_value))) isEqual:r2];
            }
            else {
                    r20 = 0x0;
            }
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)hash {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_valueType));
    r8 = *(self + r8);
    r0 = self->_value;
    r0 = [r0 hash];
    r0 = r0 ^ (r8 << 0x5) - r8;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_value, 0x0);
    return;
}

@end