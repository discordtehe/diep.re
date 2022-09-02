@implementation APMDataTypeValidator

+(bool)hasReservedPrefixes:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 hasPrefix:r2] & 0x1) == 0x0 && ([r19 hasPrefix:r2] & 0x1) == 0x0) {
            r20 = [r19 hasPrefix:r2];
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)initialize {
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
    if ([APMDataTypeValidator class] == self) {
            r0 = @class(NSCharacterSet);
            r0 = [r0 letterCharacterSet];
            r0 = [r0 retain];
            r19 = [r0 mutableCopy];
            [r0 release];
            r0 = @class(NSCharacterSet);
            r0 = [r0 nonBaseCharacterSet];
            r0 = [r0 retain];
            r20 = [[r0 invertedSet] retain];
            [r0 release];
            [r19 formIntersectionWithCharacterSet:r20];
            r0 = [r19 copy];
            r8 = *0x1011d1fd8;
            *0x1011d1fd8 = r0;
            [r8 release];
            r0 = *0x1011d1fd8;
            r0 = [r0 invertedSet];
            r0 = [r0 retain];
            r8 = *0x1011d1fe0;
            *0x1011d1fe0 = r0;
            [r8 release];
            r22 = [*0x1011d1fd8 mutableCopy];
            r24 = [[NSCharacterSet decimalDigitCharacterSet] retain];
            [r22 formUnionWithCharacterSet:r24];
            [r24 release];
            [r22 addCharactersInString:@"_"];
            r0 = [r22 copy];
            r8 = *0x1011d1fe8;
            *0x1011d1fe8 = r0;
            [r8 release];
            r0 = *0x1011d1fe8;
            r0 = [r0 invertedSet];
            r0 = [r0 retain];
            r8 = *0x1011d1ff0;
            *0x1011d1ff0 = r0;
            [r8 release];
            [r22 release];
            [r20 release];
            [r19 release];
    }
    return;
}

+(bool)isValidInternalName:(void *)arg2 maxLength:(long long)arg3 type:(long long)arg4 failureCode:(long long *)arg5 {
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
    r21 = arg5;
    r20 = arg4;
    r19 = [arg2 retain];
    if ([self isValidString:r19 minLength:0x1 maxLength:arg3 type:r20 failureCode:r21] == 0x0) goto loc_10017aa34;

loc_10017a994:
    if ([r19 rangeOfCharacterFromSet:*0x1011d1ff0] != 0x7fffffffffffffff) goto loc_10017a9c0;

loc_10017a9b8:
    r20 = 0x1;
    goto loc_10017aa38;

loc_10017aa38:
    [r19 release];
    r0 = r20;
    return r0;

loc_10017a9c0:
    if (r21 != 0x0) {
            *r21 = 0x3;
    }
    r20 = [sub_10017a2a8(r20, @" must contain only letters, numbers, or underscores") retain];
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x32ca message:r20 context:r19];
    [r0 release];
    [r20 release];
    goto loc_10017aa34;

loc_10017aa34:
    r20 = 0x0;
    goto loc_10017aa38;
}

+(bool)isValidPublicName:(void *)arg2 maxLength:(long long)arg3 type:(long long)arg4 failureCode:(long long *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg5;
    r20 = arg4;
    r19 = [arg2 retain];
    if ([self isValidInternalName:r19 maxLength:arg3 type:r20 failureCode:r21] == 0x0) goto loc_10017ab64;

loc_10017aab0:
    [r19 apm_getUTF32Bytes:&var_34 maxBytes:0x4];
    if (([*0x1011d1fd8 longCharacterIsMember:var_34] & 0x1) == 0x0) goto loc_10017aaf0;

loc_10017aae8:
    r20 = 0x1;
    goto loc_10017ab68;

loc_10017ab68:
    [r19 release];
    r0 = r20;
    return r0;

loc_10017aaf0:
    if (r21 != 0x0) {
            *r21 = 0x3;
    }
    r20 = [sub_10017a2a8(r20, @" must start with a letter") retain];
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x32cb message:r20 context:r19];
    [r0 release];
    [r20 release];
    goto loc_10017ab64;

loc_10017ab64:
    r20 = 0x0;
    goto loc_10017ab68;
}

+(bool)isValidValue:(void *)arg2 minLength:(long long)arg3 maxLength:(long long)arg4 type:(long long)arg5 failureCode:(long long *)arg6 {
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
    r20 = arg6;
    r21 = arg5;
    r22 = arg4;
    r23 = arg3;
    r24 = self;
    r19 = [arg2 retain];
    if (r20 != 0x0) {
            *r20 = 0x0;
    }
    if (sub_10017a120(r19, r21, r20) != 0x0) {
            if ([r19 isString] != 0x0) {
                    r25 = [[r19 stringValue] retain];
                    r20 = [r24 isValidString:r25 minLength:r23 maxLength:r22 type:r21 failureCode:r20];
                    [r25 release];
            }
            else {
                    r20 = 0x1;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)isValidString:(void *)arg2 minLength:(long long)arg3 maxLength:(long long)arg4 type:(long long)arg5 failureCode:(long long *)arg6 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg6;
    r20 = arg5;
    r23 = arg4;
    r22 = arg3;
    r19 = [arg2 retain];
    if (r21 != 0x0) {
            *r21 = 0x0;
    }
    if (r19 == 0x0) goto loc_10017a758;

loc_10017a6d8:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_10017a78c;

loc_10017a704:
    r0 = [r19 length];
    if (r22 < 0x1 || r0 != 0x0) goto loc_10017a7b8;

loc_10017a720:
    if (r21 != 0x0) {
            *r21 = 0x1;
    }
    r21 = 0x0;
    if (r20 == 0x3) goto loc_10017a918;

loc_10017a738:
    r21 = 0x0;
    if (r20 == 0x5) goto loc_10017a918;

loc_10017a740:
    r0 = sub_10017a2a8(r20, @" is required and can't be empty");
    r29 = r29;
    goto loc_10017a778;

loc_10017a778:
    r21 = [r0 retain];
    r23 = 0x0;
    if (r21 == 0x0) {
            r21 = 0x1;
    }
    else {
            if (r20 != 0x5) {
                    asm { ccmp       x20, #0x3, #0x4, ne };
            }
            if (CPU_FLAGS & E) {
                    asm { csinc      x20, x8, xzr, eq };
            }
            r22 = [[APMMeasurement monitor] retain];
            if (r23 != 0x0) {
                    [r22 logWithLevel:r20 messageCode:0x32c8 message:r21 context:r19];
            }
            else {
                    [r22 logWithLevel:r20 messageCode:0x32c9 message:r21];
            }
            [r22 release];
            [r21 release];
            r21 = 0x0;
    }
    goto loc_10017a918;

loc_10017a918:
    [r19 release];
    r0 = r21;
    return r0;

loc_10017a7b8:
    r0 = [r19 apm_UTF32Length];
    if (r0 <= r23) goto loc_10017a824;

loc_10017a7d0:
    if (r21 != 0x0) {
            *r21 = 0x2;
    }
    r22 = [sub_10017a2a8(r20, @" is too long. The maximum supported length is %d") retain];
    r0 = @class(NSString);
    r0 = [r0 stringWithFormat:r2];
    r29 = r29;
    r21 = [r0 retain];
    r0 = r22;
    goto loc_10017a87c;

loc_10017a87c:
    [r0 release];
    goto loc_10017a880;

loc_10017a880:
    r23 = 0x1;
    if (r21 != 0x0) {
            if (r20 != 0x5) {
                    asm { ccmp       x20, #0x3, #0x4, ne };
            }
            if (CPU_FLAGS & E) {
                    asm { csinc      x20, x8, xzr, eq };
            }
            r22 = [[APMMeasurement monitor] retain];
            if (r23 != 0x0) {
                    [r22 logWithLevel:r20 messageCode:0x32c8 message:r21 context:r19];
            }
            else {
                    [r22 logWithLevel:r20 messageCode:0x32c9 message:r21];
            }
            [r22 release];
            [r21 release];
            r21 = 0x0;
    }
    else {
            r21 = 0x1;
    }
    goto loc_10017a918;

loc_10017a824:
    if (r0 >= r22) goto loc_10017a8e0;

loc_10017a82c:
    if (r21 != 0x0) {
            *r21 = 0x7;
    }
    r23 = [sub_10017a2a8(r20, @" is too short. The minimum supported length is %d") retain];
    r0 = @class(NSString);
    r0 = [r0 stringWithFormat:r2];
    r29 = r29;
    r21 = [r0 retain];
    r0 = r23;
    goto loc_10017a87c;

loc_10017a8e0:
    r21 = 0x1;
    goto loc_10017a918;

loc_10017a78c:
    if (r21 != 0x0) {
            *r21 = 0x5;
    }
    r0 = sub_10017a2a8(r20, @" must be of type NSString");
    r29 = r29;
    r21 = [r0 retain];
    goto loc_10017a880;

loc_10017a758:
    if (r21 != 0x0) {
            *r21 = 0x1;
    }
    r0 = sub_10017a2a8(r20, @" is required and can't be nil");
    r29 = r29;
    goto loc_10017a778;
}

+(bool)isValidPublicEventName:(void *)arg2 failureCode:(long long *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if ([self isValidPublicName:r19 maxLength:sign_extend_64(*(int32_t *)0x100ba2010) type:0x0 failureCode:r20] == 0x0) goto loc_10017adbc;

loc_10017acc4:
    r0 = sub_10018cef8();
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:r19];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) goto loc_10017ad48;

loc_10017ad00:
    if (r20 != 0x0) {
            *r20 = 0x4;
    }
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10017ada8;

loc_10017ada8:
    [r20 logWithLevel:r2 messageCode:r3 message:r4 context:r5];
    [r20 release];
    goto loc_10017adbc;

loc_10017adbc:
    r20 = 0x0;
    goto loc_10017adc0;

loc_10017adc0:
    [r19 release];
    r0 = r20;
    return r0;

loc_10017ad48:
    if ([APMDataTypeValidator hasReservedPrefixes:r19] == 0x0) goto loc_10017addc;

loc_10017ad64:
    if (r20 != 0x0) {
            *r20 = 0x4;
    }
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10017ada8;

loc_10017addc:
    r20 = 0x1;
    goto loc_10017adc0;
}

+(bool)isValidPublicEventParameterName:(void *)arg2 failureCode:(long long *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if ([self isValidPublicName:r19 maxLength:sign_extend_64(*(int32_t *)0x100ba2020) type:0x2 failureCode:r20] == 0x0) goto loc_10017aea4;

loc_10017ae34:
    if ([APMDataTypeValidator hasReservedPrefixes:r19] == 0x0) goto loc_10017aeac;

loc_10017ae50:
    if (r20 != 0x0) {
            *r20 = 0x4;
    }
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x32d0 message:@"Parameter name uses reserved prefix. Ignoring parameter" context:r19];
    [r0 release];
    goto loc_10017aea4;

loc_10017aea4:
    r20 = 0x0;
    goto loc_10017aeb0;

loc_10017aeb0:
    [r19 release];
    r0 = r20;
    return r0;

loc_10017aeac:
    r20 = 0x1;
    goto loc_10017aeb0;
}

+(bool)isValidPublicEventParameterValue:(void *)arg2 failureCode:(long long *)arg3 {
    r0 = [self isValidValue:arg2 minLength:0x0 maxLength:sign_extend_64(*(int32_t *)0x100ba2028) type:0x3 failureCode:arg3];
    return r0;
}

+(bool)isValidInternalEventOrigin:(void *)arg2 failureCode:(long long *)arg3 {
    r0 = [self isValidInternalName:arg2 maxLength:sign_extend_64(*(int32_t *)0x100ba2014) type:0x1 failureCode:arg3];
    return r0;
}

+(bool)isValidInternalEventName:(void *)arg2 failureCode:(long long *)arg3 {
    r0 = [self isValidInternalName:arg2 maxLength:sign_extend_64(*(int32_t *)0x100ba2010) type:0x0 failureCode:arg3];
    return r0;
}

+(bool)isValidForwardedEventOrigin:(void *)arg2 failureCode:(long long *)arg3 {
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
    r20 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] == 0x0) goto loc_10017afec;

loc_10017af54:
    if (([r19 hasSuffix:r2] & 0x1) == 0x0) goto loc_10017affc;

loc_10017af70:
    r22 = @selector(length);
    r22 = [[r19 substringToIndex:objc_msgSend(r19, r22) - objc_msgSend(@"+gtm", r22)] retain];
    [r19 release];
    r21 = [r21 isValidInternalName:r22 maxLength:sign_extend_64(*(int32_t *)0x100ba2014) type:0x1 failureCode:r20];
    r19 = r22;
    goto loc_10017b014;

loc_10017b014:
    [r19 release];
    r0 = r21;
    return r0;

loc_10017affc:
    if (r20 == 0x0) goto loc_10017b010;

loc_10017b000:
    r8 = 0x6;
    goto loc_10017b008;

loc_10017b008:
    r21 = 0x0;
    *r20 = r8;
    goto loc_10017b014;

loc_10017b010:
    r21 = 0x0;
    goto loc_10017b014;

loc_10017afec:
    if (r20 == 0x0) goto loc_10017b010;

loc_10017aff0:
    r8 = 0x1;
    goto loc_10017b008;
}

+(bool)isValidInternalEventParameterName:(void *)arg2 failureCode:(long long *)arg3 {
    r0 = [self isValidInternalName:arg2 maxLength:sign_extend_64(*(int32_t *)0x100ba2020) type:0x2 failureCode:arg3];
    return r0;
}

+(bool)isValidInternalEventParameterValue:(void *)arg2 failureCode:(long long *)arg3 {
    r0 = [self isValidValue:arg2 minLength:0x0 maxLength:sign_extend_64(*(int32_t *)0x100ba202c) type:0x3 failureCode:arg3];
    return r0;
}

+(bool)isValidPublicUserAttributeValue:(void *)arg2 failureCode:(long long *)arg3 {
    r0 = [self isValidValue:arg2 minLength:0x1 maxLength:sign_extend_64(*(int32_t *)0x100ba2034) type:0x5 failureCode:arg3];
    return r0;
}

+(bool)isValidInternalUserAttributeName:(void *)arg2 failureCode:(long long *)arg3 {
    r0 = [self isValidInternalName:arg2 maxLength:sign_extend_64(*(int32_t *)0x100ba2030) type:0x4 failureCode:arg3];
    return r0;
}

+(bool)isValidPublicUserAttributeName:(void *)arg2 failureCode:(long long *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if ([self isValidPublicName:r19 maxLength:sign_extend_64(*(int32_t *)0x100ba2030) type:0x4 failureCode:r20] == 0x0) goto loc_10017b1ec;

loc_10017b0f4:
    r0 = sub_10018d6e8();
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:r19];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r21 release];
    if (r0 == 0x0) goto loc_10017b178;

loc_10017b130:
    if (r20 != 0x0) {
            *r20 = 0x4;
    }
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10017b1d8;

loc_10017b1d8:
    [r20 logWithLevel:r2 messageCode:r3 message:r4 context:r5];
    [r20 release];
    goto loc_10017b1ec;

loc_10017b1ec:
    r20 = 0x0;
    goto loc_10017b1f0;

loc_10017b1f0:
    [r19 release];
    r0 = r20;
    return r0;

loc_10017b178:
    if ([APMDataTypeValidator hasReservedPrefixes:r19] == 0x0) goto loc_10017b20c;

loc_10017b194:
    if (r20 != 0x0) {
            *r20 = 0x4;
    }
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10017b1d8;

loc_10017b20c:
    r20 = 0x1;
    goto loc_10017b1f0;
}

+(bool)isValidInternalUserAttributeValue:(void *)arg2 name:(void *)arg3 failureCode:(long long *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r21 = self;
    r22 = [arg2 retain];
    r8 = 0x100ba2038;
    if ([arg3 isEqual:@"_id"] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x100ba2034;
            }
            else {
                    r8 = 0x100ba2038;
            }
    }
    r19 = [r21 isValidValue:r22 minLength:0x1 maxLength:sign_extend_64(*(int32_t *)r8) type:0x5 failureCode:r19];
    [r22 release];
    r0 = r19;
    return r0;
}

+(bool)isValidConditionalUserPropertyOrigin:(void *)arg2 failureCode:(long long *)arg3 {
    r0 = [self isValidInternalName:arg2 maxLength:sign_extend_64(*(int32_t *)0x100ba2014) type:0x7 failureCode:arg3];
    return r0;
}

+(bool)isValidScreenParameterValue:(void *)arg2 failureCode:(long long *)arg3 {
    r0 = [self isValidString:arg2 minLength:0x1 maxLength:sign_extend_64(*(int32_t *)0x100ba2028) type:0x6 failureCode:arg3];
    return r0;
}

+(bool)isValidConditionalUserPropertyName:(void *)arg2 failureCode:(long long *)arg3 {
    r0 = [self isValidInternalName:arg2 maxLength:sign_extend_64(*(int32_t *)0x100ba2030) type:0x8 failureCode:arg3];
    return r0;
}

+(bool)isValidConditionalUserPropertyValue:(void *)arg2 failureCode:(long long *)arg3 {
    r0 = [self isValidValue:arg2 minLength:0x1 maxLength:sign_extend_64(*(int32_t *)0x100ba2034) type:0x9 failureCode:arg3];
    return r0;
}

+(bool)isValidNumericValue:(void *)arg2 failureCode:(long long *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if (r20 != 0x0) {
            *r20 = 0x0;
    }
    if (sub_10017a120(r19, 0x3, r20) == 0x0) goto loc_10017b49c;

loc_10017b3d0:
    if (([r19 isInt64] & 0x1) != 0x0 || ([r19 isDouble] & 0x1) != 0x0) goto loc_10017b3f8;

loc_10017b400:
    if (r20 != 0x0) {
            *r20 = 0x8;
    }
    r20 = [sub_10017a2a8(0x3, @" must be specified with a numeric type. value") retain];
    r21 = [[APMMeasurement monitor] retain];
    r22 = [[r19 stringValue] retain];
    [r21 logWithLevel:0x3 messageCode:0x32d3 message:r20 context:r22];
    [r22 release];
    [r21 release];
    [r20 release];
    goto loc_10017b49c;

loc_10017b49c:
    r20 = 0x0;
    goto loc_10017b4a0;

loc_10017b4a0:
    [r19 release];
    r0 = r20;
    return r0;

loc_10017b3f8:
    r20 = 0x1;
    goto loc_10017b4a0;
}

+(bool)isValidCurrencyCode:(void *)arg2 failureCode:(long long *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    if (r20 != 0x0) {
            *r20 = 0x0;
    }
    if (sub_10017a120(r19, 0x3, r20) == 0x0) goto loc_10017b648;

loc_10017b500:
    if ([r19 isString] == 0x0) goto loc_10017b5a0;

loc_10017b514:
    r0 = [r19 stringValue];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 length];
    [r0 release];
    if (r23 != 0x3) goto loc_10017b5a0;

loc_10017b554:
    r0 = [r19 stringValue];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 rangeOfCharacterFromSet:*0x1011d1fe0];
    [r0 release];
    if (r22 != 0x7fffffffffffffff) goto loc_10017b5a0;

loc_10017b598:
    r20 = 0x1;
    goto loc_10017b64c;

loc_10017b64c:
    [r19 release];
    r0 = r20;
    return r0;

loc_10017b5a0:
    if (r20 != 0x0) {
            *r20 = 0x9;
    }
    r20 = [[NSString stringWithFormat:@" must contain a %d-letter ISO_4217 currency code. value"] retain];
    r21 = [sub_10017a2a8(0x3, r20) retain];
    [r20 release];
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x3 messageCode:0x32d4 message:r21 context:r19];
    [r0 release];
    [r21 release];
    goto loc_10017b648;

loc_10017b648:
    r20 = 0x0;
    goto loc_10017b64c;
}

@end