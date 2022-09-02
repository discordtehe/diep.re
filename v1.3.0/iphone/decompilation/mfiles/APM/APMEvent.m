@implementation APMEvent

+(bool)isValidParameterKey:(void *)arg2 isPublicEvent:(bool)arg3 errorParameters:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    if ((arg3 & 0x1) != 0x0 && [APMDataTypeValidator isValidPublicEventParameterName:r19 failureCode:&var_38] == 0x0) {
            if (0x0 != 0x0) {
                    r0 = [r20 objectForKeyedSubscript:@"_err"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 release];
                    if (r21 == 0x0) {
                            if (0x0 == 0x4) {
                                    if (!CPU_FLAGS & E) {
                                            r21 = 0x3;
                                    }
                                    else {
                                            r21 = 0xe;
                                    }
                            }
                            [NSString class];
                            if ([r19 isKindOfClass:r2] != 0x0) {
                                    r0 = [r19 retain];
                            }
                            else {
                                    r0 = [r19 class];
                                    r0 = NSStringFromClass(r0);
                                    r0 = [r0 retain];
                            }
                            r22 = r0;
                            r0 = [r0 apm_UTF32Length];
                            r23 = sign_extend_64(*(int32_t *)0x100ba2020);
                            if (r0 >= r23) {
                                    r24 = [r22 retain];
                            }
                            else {
                                    r24 = 0x0;
                            }
                            sub_1001954fc(r20, r21, r22, r23, r24);
                            [r24 release];
                            [r22 release];
                    }
            }
            r21 = 0x0;
    }
    else {
            if (([APMDataTypeValidator isValidInternalEventParameterName:r19 failureCode:&var_38] & 0x1) != 0x0) {
                    r21 = 0x1;
            }
            else {
                    if (0x0 != 0x0) {
                            r0 = [r20 objectForKeyedSubscript:@"_err"];
                            r29 = r29;
                            r0 = [r0 retain];
                            r21 = r0;
                            [r0 release];
                            if (r21 == 0x0) {
                                    if (0x0 == 0x4) {
                                            if (!CPU_FLAGS & E) {
                                                    r21 = 0x3;
                                            }
                                            else {
                                                    r21 = 0xe;
                                            }
                                    }
                                    [NSString class];
                                    if ([r19 isKindOfClass:r2] != 0x0) {
                                            r0 = [r19 retain];
                                    }
                                    else {
                                            r0 = [r19 class];
                                            r0 = NSStringFromClass(r0);
                                            r0 = [r0 retain];
                                    }
                                    r22 = r0;
                                    r0 = [r0 apm_UTF32Length];
                                    r23 = sign_extend_64(*(int32_t *)0x100ba2020);
                                    if (r0 >= r23) {
                                            r24 = [r22 retain];
                                    }
                                    else {
                                            r24 = 0x0;
                                    }
                                    sub_1001954fc(r20, r21, r22, r23, r24);
                                    [r24 release];
                                    [r22 release];
                            }
                    }
                    r21 = 0x0;
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)copyWithPreviousTimestamp:(double)arg2 {
    r0 = [APMEvent alloc];
    r0 = [r0 initWithOrigin:self->_origin isPublic:0x0 name:self->_name timestamp:self->_parameters previousTimestamp:r6 parameters:r7];
    return r0;
}

-(void *)copyWithParameters:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[APMEvent alloc] initWithOrigin:self->_origin isPublic:0x0 name:self->_name timestamp:r22 previousTimestamp:r6 parameters:r7];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void *)initWithOrigin:(void *)arg2 isPublic:(bool)arg3 name:(void *)arg4 timestamp:(double)arg5 previousTimestamp:(double)arg6 parameters:(void *)arg7 {
    r31 = r31 - 0x80;
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
    r22 = arg3;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    if (([APMDataTypeValidator isValidForwardedEventOrigin:r19 failureCode:&var_58] & 0x1) == 0x0) {
            if (var_58 == 0x6) {
                    r0 = [APMDataTypeValidator isValidInternalEventOrigin:r19 failureCode:0x0];
                    r24 = 0x0;
                    if (r0 != 0x0) {
                            if (r22 != 0x0) {
                                    r0 = [APMDataTypeValidator isValidPublicEventName:r20 failureCode:0x0];
                                    r24 = 0x0;
                                    if (r0 != 0x0) {
                                            r0 = [APMDataTypeValidator isValidInternalEventName:r20 failureCode:0x0];
                                            r24 = 0x0;
                                            if (r0 != 0x0) {
                                                    if (d8 > d9) {
                                                            r0 = [APMMeasurement monitor];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            [r0 logWithLevel:0x4 messageCode:0x3e82 message:@"Event created with previous timestamp after current timestamp"];
                                                            [r0 release];
                                                    }
                                                    r0 = [[&var_68 super] init];
                                                    r23 = r0;
                                                    if (r23 != 0x0) {
                                                            r0 = [r19 copy];
                                                            r26 = sign_extend_64(*(int32_t *)ivar_offset(_origin));
                                                            r8 = *(r23 + r26);
                                                            *(r23 + r26) = r0;
                                                            [r8 release];
                                                            r0 = [r20 copy];
                                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_name));
                                                            r8 = *(r23 + r9);
                                                            *(r23 + r9) = r0;
                                                            [r8 release];
                                                            r23->_timestamp = d9;
                                                            r23->_previousTimestamp = d8;
                                                            r22 = [[APMEvent normalizedParametersForParameters:r21 isPublicEvent:r22] retain];
                                                            r24 = [[NSMutableDictionary alloc] initWithDictionary:r22 copyItems:0x1];
                                                            r25 = [[APMValue alloc] initWithString:*(r23 + r26)];
                                                            [r24 setObject:r25 forKeyedSubscript:@"_o"];
                                                            [r25 release];
                                                            r25 = (int64_t *)&r23->_parameters;
                                                            objc_storeStrong(r25, r24);
                                                            if ([r23 isConversion] != 0x0 && (sub_1001974e8() & 0x1) == 0x0) {
                                                                    [*r25 removeObjectForKey:r2];
                                                            }
                                                            [r24 release];
                                                            [r22 release];
                                                    }
                                                    r23 = [r23 retain];
                                                    r24 = r23;
                                            }
                                    }
                            }
                            else {
                                    r0 = [APMDataTypeValidator isValidInternalEventName:r20 failureCode:0x0];
                                    r24 = 0x0;
                                    if (r0 != 0x0) {
                                            if (d8 > d9) {
                                                    r0 = [APMMeasurement monitor];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    [r0 logWithLevel:0x4 messageCode:0x3e82 message:@"Event created with previous timestamp after current timestamp"];
                                                    [r0 release];
                                            }
                                            r0 = [[&var_68 super] init];
                                            r23 = r0;
                                            if (r23 != 0x0) {
                                                    r0 = [r19 copy];
                                                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_origin));
                                                    r8 = *(r23 + r26);
                                                    *(r23 + r26) = r0;
                                                    [r8 release];
                                                    r0 = [r20 copy];
                                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_name));
                                                    r8 = *(r23 + r9);
                                                    *(r23 + r9) = r0;
                                                    [r8 release];
                                                    r23->_timestamp = d9;
                                                    r23->_previousTimestamp = d8;
                                                    r22 = [[APMEvent normalizedParametersForParameters:r21 isPublicEvent:r22] retain];
                                                    r24 = [[NSMutableDictionary alloc] initWithDictionary:r22 copyItems:0x1];
                                                    r25 = [[APMValue alloc] initWithString:*(r23 + r26)];
                                                    [r24 setObject:r25 forKeyedSubscript:@"_o"];
                                                    [r25 release];
                                                    r25 = (int64_t *)&r23->_parameters;
                                                    objc_storeStrong(r25, r24);
                                                    if ([r23 isConversion] != 0x0 && (sub_1001974e8() & 0x1) == 0x0) {
                                                            [*r25 removeObjectForKey:r2];
                                                    }
                                                    [r24 release];
                                                    [r22 release];
                                            }
                                            r23 = [r23 retain];
                                            r24 = r23;
                                    }
                            }
                    }
            }
            else {
                    r24 = 0x0;
            }
    }
    else {
            if (r22 != 0x0) {
                    r0 = [APMDataTypeValidator isValidPublicEventName:r20 failureCode:0x0];
                    r24 = 0x0;
                    if (r0 != 0x0) {
                            r0 = [APMDataTypeValidator isValidInternalEventName:r20 failureCode:0x0];
                            r24 = 0x0;
                            if (r0 != 0x0) {
                                    if (d8 > d9) {
                                            r0 = [APMMeasurement monitor];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 logWithLevel:0x4 messageCode:0x3e82 message:@"Event created with previous timestamp after current timestamp"];
                                            [r0 release];
                                    }
                                    r0 = [[&var_68 super] init];
                                    r23 = r0;
                                    if (r23 != 0x0) {
                                            r0 = [r19 copy];
                                            r26 = sign_extend_64(*(int32_t *)ivar_offset(_origin));
                                            r8 = *(r23 + r26);
                                            *(r23 + r26) = r0;
                                            [r8 release];
                                            r0 = [r20 copy];
                                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_name));
                                            r8 = *(r23 + r9);
                                            *(r23 + r9) = r0;
                                            [r8 release];
                                            r23->_timestamp = d9;
                                            r23->_previousTimestamp = d8;
                                            r22 = [[APMEvent normalizedParametersForParameters:r21 isPublicEvent:r22] retain];
                                            r24 = [[NSMutableDictionary alloc] initWithDictionary:r22 copyItems:0x1];
                                            r25 = [[APMValue alloc] initWithString:*(r23 + r26)];
                                            [r24 setObject:r25 forKeyedSubscript:@"_o"];
                                            [r25 release];
                                            r25 = (int64_t *)&r23->_parameters;
                                            objc_storeStrong(r25, r24);
                                            if ([r23 isConversion] != 0x0 && (sub_1001974e8() & 0x1) == 0x0) {
                                                    [*r25 removeObjectForKey:r2];
                                            }
                                            [r24 release];
                                            [r22 release];
                                    }
                                    r23 = [r23 retain];
                                    r24 = r23;
                            }
                    }
            }
            else {
                    r0 = [APMDataTypeValidator isValidInternalEventName:r20 failureCode:0x0];
                    r24 = 0x0;
                    if (r0 != 0x0) {
                            if (d8 > d9) {
                                    r0 = [APMMeasurement monitor];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 logWithLevel:0x4 messageCode:0x3e82 message:@"Event created with previous timestamp after current timestamp"];
                                    [r0 release];
                            }
                            r0 = [[&var_68 super] init];
                            r23 = r0;
                            if (r23 != 0x0) {
                                    r0 = [r19 copy];
                                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_origin));
                                    r8 = *(r23 + r26);
                                    *(r23 + r26) = r0;
                                    [r8 release];
                                    r0 = [r20 copy];
                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_name));
                                    r8 = *(r23 + r9);
                                    *(r23 + r9) = r0;
                                    [r8 release];
                                    r23->_timestamp = d9;
                                    r23->_previousTimestamp = d8;
                                    r22 = [[APMEvent normalizedParametersForParameters:r21 isPublicEvent:r22] retain];
                                    r24 = [[NSMutableDictionary alloc] initWithDictionary:r22 copyItems:0x1];
                                    r25 = [[APMValue alloc] initWithString:*(r23 + r26)];
                                    [r24 setObject:r25 forKeyedSubscript:@"_o"];
                                    [r25 release];
                                    r25 = (int64_t *)&r23->_parameters;
                                    objc_storeStrong(r25, r24);
                                    if ([r23 isConversion] != 0x0 && (sub_1001974e8() & 0x1) == 0x0) {
                                            [*r25 removeObjectForKey:r2];
                                    }
                                    [r24 release];
                                    [r22 release];
                            }
                            r23 = [r23 retain];
                            r24 = r23;
                    }
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    [r23 release];
    r0 = r24;
    return r0;
}

-(void *)initWithEventProto:(void *)arg2 {
    r31 = r31 - 0x1a0;
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
    var_160 = self;
    r0 = [arg2 retain];
    r19 = r0;
    var_120 = [sub_1001a7b3c(r0, 0x1) retain];
    var_170 = sub_1001a78e8(r19, 0x2);
    var_178 = sub_1001a78e8(r19, 0x3);
    var_130 = [[NSMutableDictionary alloc] init];
    r0 = [APMPBEventParam class];
    var_158 = r19;
    r0 = sub_1001a80d8(r19, 0x0, r0);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r25 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_180 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 == 0x0) goto loc_10017bad8;

loc_10017b778:
    var_128 = 0x0;
    goto loc_10017b7a0;

loc_10017b7a0:
    r21 = 0x0;
    goto loc_10017b7d0;

loc_10017b7d0:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r25);
    }
    r28 = *(0x0 + r21 * 0x8);
    r0 = sub_1001a7b3c(r28, 0x0);
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) goto loc_10017b864;

loc_10017b80c:
    r22 = [r26 isEqual:r2];
    r0 = sub_1001a7578(r28, 0x1);
    if (r22 == 0x0) goto loc_10017b8ac;

loc_10017b834:
    if ((r0 & 0x1) != 0x0) {
            r0 = sub_1001a7b3c(r28, 0x1);
            r29 = r29;
            r22 = [r0 retain];
            [var_128 release];
            r28 = 0x3;
            var_128 = r22;
    }
    else {
            r0 = [APMMeasurement monitor];
            r29 = r29;
            r0 = [r0 retain];
            r28 = 0x1;
            [r0 logWithLevel:r2 messageCode:r3 message:r4 context:r5];
            [r22 release];
    }
    goto loc_10017ba54;

loc_10017ba54:
    [r26 release];
    r8 = r28 & 0x3;
    if (r8 == 0x3 || r8 == 0x0) goto loc_10017ba6c;

loc_10017bab8:
    [r25 release];
    if (r28 != 0x0) {
            r19 = 0x0;
            r21 = var_160;
            r20 = var_158;
            r24 = var_128;
            r22 = var_120;
            r23 = var_130;
    }
    else {
            r0 = var_160;
            r20 = var_158;
            r24 = var_128;
            r22 = var_120;
            r23 = var_130;
            asm { scvtf      d0, x8 };
            asm { fdiv       d0, d0, d1 };
            asm { scvtf      d2, x8 };
            r1 = @selector(initWithOrigin:isPublic:name:timestamp:previousTimestamp:parameters:);
            asm { fdiv       d1, d2, d1 };
            r21 = [objc_msgSend(r0, r1) retain];
            r19 = r21;
    }
    goto loc_10017bb3c;

loc_10017bb3c:
    var_58 = **___stack_chk_guard;
    [r25 release];
    [r23 release];
    [r24 release];
    [r22 release];
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10017ba6c:
    r21 = r21 + 0x1;
    if (r21 < r23) goto loc_10017b7d0;

loc_10017ba78:
    r23 = objc_msgSend(r25, var_180);
    if (r23 != 0x0) goto loc_10017b7a0;

loc_10017badc:
    [r25 release];
    r0 = var_160;
    r20 = var_158;
    r24 = var_128;
    r22 = var_120;
    r23 = var_130;
    asm { scvtf      d0, x8 };
    asm { fdiv       d0, d0, d1 };
    asm { scvtf      d2, x8 };
    r1 = @selector(initWithOrigin:isPublic:name:timestamp:previousTimestamp:parameters:);
    asm { fdiv       d1, d2, d1 };
    r21 = [objc_msgSend(r0, r1) retain];
    r19 = r21;
    goto loc_10017bb3c;

loc_10017b8ac:
    if (r0 == 0x0) goto loc_10017b958;

loc_10017b8b0:
    r22 = [APMValue alloc];
    r0 = sub_1001a7b3c(r28, 0x1);
    r29 = r29;
    [r0 retain];
    [r22 initWithString:r2];
    [var_130 setObject:r2 forKeyedSubscript:r3];
    [r22 release];
    r0 = r28;
    goto loc_10017ba4c;

loc_10017ba4c:
    [r0 release];
    r28 = 0x0;
    goto loc_10017ba54;

loc_10017b958:
    if (sub_1001a7578(r28, 0x2) == 0x0) goto loc_10017b99c;

loc_10017b968:
    [APMValue alloc];
    sub_1001a78e8(r28, 0x2);
    r0 = [r22 initWithInt64:r2];
    goto loc_10017b9d8;

loc_10017b9d8:
    r22 = r0;
    [var_130 setObject:r2 forKeyedSubscript:r3];
    goto loc_10017ba48;

loc_10017ba48:
    r0 = r22;
    goto loc_10017ba4c;

loc_10017b99c:
    if (sub_1001a7578(r28, 0x4) == 0x0) goto loc_10017b9f0;

loc_10017b9ac:
    [APMValue alloc];
    sub_1001a7a10(r28, 0x4);
    r0 = [r22 initWithDouble:r2];
    goto loc_10017b9d8;

loc_10017b9f0:
    r22 = [[APMMeasurement monitor] retain];
    r0 = sub_100197f7c();
    r29 = r29;
    [r0 retain];
    [r22 logWithLevel:r2 messageCode:r3 message:r4 context:r5];
    [r28 release];
    goto loc_10017ba48;

loc_10017b864:
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 logWithLevel:r2 messageCode:r3 message:r4 context:r5];
    [r28 release];
    r28 = 0x3;
    goto loc_10017ba54;

loc_10017bad8:
    var_128 = 0x0;
    goto loc_10017badc;
}

-(bool)isConversion {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_parameters;
    r0 = [r0 objectForKeyedSubscript:@"_c"];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 isInt64] != 0x0) {
            if ([r19 int64Value] == 0x1) {
                    if (CPU_FLAGS & E) {
                            r20 = 0x1;
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

-(void)setConversion:(bool)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_parameters));
    r0 = *(r19 + r21);
    if (arg2 != 0x0) {
            if (sub_1001974e8() != 0x0) {
                    r20 = [[APMValue alloc] initWithInt64:0x1];
                    [*(r19 + r21) setObject:r20 forKeyedSubscript:@"_c"];
                    [r20 release];
                    r0 = *(r19 + r21);
                    r0 = [r0 objectForKeyedSubscript:@"_err"];
                    r0 = [r0 retain];
                    r20 = r0;
                    if ([r0 isInt64] != 0x0 && [r20 int64Value] == 0xa) {
                            [*(r19 + r21) removeObjectForKey:r2];
                    }
                    [r20 release];
            }
    }
    else {
            r0 = [r0 objectForKeyedSubscript:@"_c"];
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [*(r19 + r21) removeObjectForKey:r2];
                    sub_100195458(*(r19 + r21), 0xa);
            }
    }
    return;
}

-(void)setRealtime:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (arg2 != 0x0) {
            r20 = [[APMValue alloc] initWithInt64:0x1];
            [r19->_parameters setObject:r20 forKeyedSubscript:@"_r"];
            [r20 release];
    }
    else {
            [r19->_parameters removeObjectForKey:r2];
    }
    return;
}

-(bool)isRealtime {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = r20->_parameters;
    r0 = [r0 objectForKeyedSubscript:@"_r"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 == 0x0) goto loc_10017cdac;

loc_10017cd2c:
    if (([r19 isInt64] & 0x1) == 0x0) goto loc_10017cd5c;

loc_10017cd40:
    if ([r19 int64Value] == 0x1) {
            if (CPU_FLAGS & E) {
                    r20 = 0x1;
            }
    }
    goto loc_10017cdb0;

loc_10017cdb0:
    [r19 release];
    r0 = r20;
    return r0;

loc_10017cd5c:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x3e86 message:@"Realtime parameter must be an int64. Event name" context:r20->_name];
    [r0 release];
    goto loc_10017cdac;

loc_10017cdac:
    r20 = 0x0;
    goto loc_10017cdb0;
}

-(bool)isDebug {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_parameters;
    r0 = [r0 objectForKeyedSubscript:@"_dbg"];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 isInt64] != 0x0) {
            if ([r19 int64Value] == 0x1) {
                    if (CPU_FLAGS & E) {
                            r20 = 0x1;
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

+(void *)normalizedParametersForParameters:(void *)arg2 isPublicEvent:(bool)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1b0;
    var_128 = arg3;
    r0 = [arg2 retain];
    r22 = r0;
    if ([r0 count] == 0x0) goto loc_10017c150;

loc_10017bc00:
    var_1E8 = @selector(count);
    r21 = [[NSMutableArray alloc] init];
    r0 = [NSMutableDictionary alloc];
    r20 = r21;
    r28 = [r0 init];
    r0 = [r22 retain];
    r19 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1D8 = r1;
    r24 = objc_msgSend(r0, r1);
    var_160 = r20;
    var_140 = r19;
    var_138 = r28;
    if (r24 == 0x0) goto loc_10017c10c;

loc_10017bc98:
    var_198 = sign_extend_64(*(int32_t *)0x100ba202c);
    var_1C8 = sign_extend_64(*(int32_t *)0x100ba202c) + 0x3;
    r27 = &@class(MCConfigurationData);
    goto loc_10017bccc;

loc_10017bccc:
    r21 = 0x0;
    r25 = @selector(isValidParameterKey:isPublicEvent:errorParameters:);
    r23 = @selector(objectForKeyedSubscript:);
    var_150 = r25;
    var_148 = r24;
    goto loc_10017bd8c;

loc_10017bd8c:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r19);
    }
    r26 = *(0x0 + r21 * 0x8);
    if ((objc_msgSend(*(r27 + 0xc98), r25) & 0x1) == 0x0) goto loc_10017bee0;

loc_10017bdcc:
    r24 = r27;
    r27 = r19;
    r25 = r23;
    r28 = [objc_msgSend(r27, r25) retain];
    r0 = [APMValue valueFromObject:r28];
    r29 = r29;
    r19 = [r0 retain];
    [r28 release];
    if (r19 == 0x0) goto loc_10017bef4;

loc_10017be24:
    if (var_128 == 0x0 || ([APMDataTypeValidator isValidPublicEventParameterValue:r19 failureCode:&var_120] & 0x1) != 0x0) goto loc_10017be4c;

loc_10017c020:
    [r20 addObject:r26];
    r27 = r24;
    r25 = var_150;
    r24 = var_148;
    goto loc_10017c04c;

loc_10017c04c:
    if (0x0 == 0x2) {
            r0 = objc_msgSend(var_138, r23);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    if ([r19 isString] != 0x0) {
                            r0 = [r19 stringValue];
                            r29 = r29;
                            r28 = [r0 retain];
                    }
                    else {
                            r28 = 0x0;
                    }
                    sub_1001954fc(var_138, 0x4, r26, *(int32_t *)0x100ba2020, r28);
                    [r28 release];
            }
    }
    goto loc_10017c0d0;

loc_10017c0d0:
    [r19 release];
    r20 = var_160;
    r19 = var_140;
    r28 = var_138;
    goto loc_10017c0e0;

loc_10017c0e0:
    r21 = r21 + 0x1;
    if (r21 < r24) goto loc_10017bd8c;

loc_10017c0ec:
    r24 = objc_msgSend(r19, var_1D8);
    if (r24 != 0x0) goto loc_10017bccc;

loc_10017c10c:
    [r19 release];
    r24 = var_1E8;
    if (objc_msgSend(r20, r24) == objc_msgSend(r19, r24)) {
            r19 = [r28 retain];
    }
    else {
            if (objc_msgSend(r20, r24) == 0x0 && objc_msgSend(r28, r24) == 0x0) {
                    r21 = var_140;
            }
            else {
                    r0 = [var_140 mutableCopy];
                    r21 = r0;
                    [r0 removeObjectsForKeys:r20];
                    [r21 addEntriesFromDictionary:r28];
                    [var_140 release];
            }
            if (sub_10017c410() > *(int32_t *)0x100ba2024) {
                    r0 = [r21 mutableCopy];
                    r29 = r29;
                    r19 = [r0 retain];
                    r22 = sub_10017c410();
                    if (r22 > *(int32_t *)0x100ba2024) {
                            var_128 = r19;
                            r0 = [r19 allKeys];
                            r0 = [r0 retain];
                            r20 = r0;
                            r0 = [r0 sortedArrayUsingSelector:@selector(compare:)];
                            r29 = r29;
                            r23 = [r0 retain];
                            [r20 release];
                            if (objc_msgSend(r23, r24, @selector(compare:)) >= 0x1) {
                                    asm { sxtw       x26, w0 };
                                    do {
                                            r19 = r26 - 0x1;
                                            r0 = [r23 objectAtIndexedSubscript:r19];
                                            r29 = r29;
                                            r20 = [r0 retain];
                                            r27 = sub_100195640();
                                            [r20 release];
                                            if (r27 != 0x0) {
                                                    r25 = @selector(removeObjectForKey:);
                                                    r0 = [r23 objectAtIndexedSubscript:r19];
                                                    r29 = r29;
                                                    [r0 retain];
                                                    objc_msgSend(var_128, r25);
                                                    [r20 release];
                                                    r22 = r22 - 0x1;
                                            }
                                            if (r26 < 0x2) {
                                                break;
                                            }
                                            r26 = r19;
                                    } while (r22 > *(int32_t *)0x100ba2024);
                            }
                            [r23 release];
                            r19 = var_128;
                    }
                    [r19 release];
                    sub_100195458(r19, 0x5);
                    [r21 release];
                    r20 = [[NSString stringWithFormat:@"Event cannot contain more than %d parameters"] retain];
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x1 messageCode:0x3e81 message:r20];
                    [r0 release];
                    [r20 release];
                    r21 = r19;
                    r20 = var_160;
            }
            r19 = [r21 retain];
            var_140 = r19;
            r28 = var_138;
    }
    [r28 release];
    [r20 release];
    goto loc_10017c3c0;

loc_10017c3c0:
    var_58 = **___stack_chk_guard;
    [var_140 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10017be4c:
    r0 = [r26 isEqual:@"_ev"];
    r27 = r24;
    r25 = var_150;
    if (r0 == 0x0) goto loc_10017bf9c;

loc_10017be6c:
    r0 = [r19 stringValue];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 apm_UTF32Length];
    r24 = var_148;
    if (r0 > var_198) {
            if (r0 == var_1C8) {
                    if (([r28 hasSuffix:r2] & 0x1) == 0x0) {
                            sub_100194fb8(var_138, r28, var_198, r28);
                    }
            }
            else {
                    sub_100194fb8(var_138, r28, var_198, r28);
            }
    }
    [r28 release];
    goto loc_10017bfbc;

loc_10017bfbc:
    r0 = objc_msgSend(var_140, r23);
    r29 = r29;
    r20 = [r0 retain];
    r28 = [r20 isKindOfClass:[APMValue class]];
    [r20 release];
    if ((r28 & 0x1) == 0x0) {
            [var_138 setObject:r19 forKeyedSubscript:r26];
    }
    goto loc_10017c0d0;

loc_10017bf9c:
    r0 = [APMDataTypeValidator isValidInternalEventParameterValue:r19 failureCode:&var_120];
    r24 = var_148;
    if ((r0 & 0x1) == 0x0) goto loc_10017c03c;
    goto loc_10017bfbc;

loc_10017c03c:
    [r20 addObject:r26];
    goto loc_10017c04c;

loc_10017bef4:
    [r20 addObject:r26];
    r28 = [[APMMeasurement monitor] retain];
    r0 = objc_msgSend(r27, r25);
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 class];
    r0 = NSStringFromClass(r0);
    r29 = r29;
    r20 = [r0 retain];
    [r28 logWithLevel:0x4 messageCode:0x3e80 message:@"Event parameter value must be of type NSString or NSNumber. Type" context:r20];
    [r20 release];
    [r26 release];
    [r28 release];
    r27 = r24;
    r23 = r25;
    r25 = var_150;
    r24 = var_148;
    goto loc_10017c0d0;

loc_10017bee0:
    [r20 addObject:r26];
    goto loc_10017c0e0;

loc_10017c150:
    var_140 = r22;
    r19 = 0x0;
    goto loc_10017c3c0;
}

-(void)setDebug:(bool)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (arg2 != 0x0) {
            r20 = [[APMValue alloc] initWithInt64:0x1];
            [r19->_parameters setObject:r20 forKeyedSubscript:@"_dbg"];
            [r20 release];
    }
    else {
            [r19->_parameters removeObjectForKey:r2];
    }
    return;
}

-(void *)origin {
    r0 = self->_origin;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [APMEvent alloc];
    r0 = [r0 initWithOrigin:self->_origin isPublic:0x0 name:self->_name timestamp:self->_parameters previousTimestamp:r6 parameters:r7];
    return r0;
}

-(void *)name {
    r0 = self->_name;
    return r0;
}

-(double)timestamp {
    r0 = self;
    return r0;
}

-(void *)protoEvent {
    r31 = r31 - 0x1d0;
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
    r19 = self;
    r0 = [APMPBEvent alloc];
    r0 = [r0 initWithMessageInfo:0x0];
    r20 = r0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_name));
    var_178 = r8;
    r2 = *(r19 + r8);
    sub_1001a7bf8(r0, 0x1, r2);
    d0 = r19->_previousTimestamp;
    if (d0 > *0x100ba2078) {
            asm { fcvtzs     x2, d0 };
            sub_1001a7978(r20, 0x3, r2);
    }
    var_160 = @selector(alloc);
    asm { fcvtzs     x2, d0 };
    var_1B0 = r20;
    sub_1001a7978(r20, 0x2, r2);
    var_168 = [objc_msgSend(@class(NSMutableArray), var_160) init];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_parameters));
    r0 = *(r19 + r22);
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r0;
    var_1A8 = r1;
    r26 = objc_msgSend(r0, r1);
    if (r26 != 0x0) {
            r28 = *0x0;
            r20 = &@class(MCConfigurationData);
            do {
                    r23 = 0x0;
                    r25 = @selector(objectForKeyedSubscript:);
                    var_138 = r25;
                    do {
                            if (*0x0 != r28) {
                                    objc_enumerationMutation(var_130);
                            }
                            r21 = *(0x0 + r23 * 0x8);
                            r0 = *(r19 + r22);
                            r0 = objc_msgSend(r0, r25);
                            r29 = r29;
                            r24 = [r0 retain];
                            if (([r24 isKindOfClass:[*(r20 + 0xca8) class]] & 0x1) != 0x0) {
                                    r0 = [APMPBEventParam alloc];
                                    r0 = [r0 initWithMessageInfo:r2];
                                    r27 = r0;
                                    sub_1001a7bf8(r0, 0x0, r21);
                                    if ([r24 isDouble] != 0x0) {
                                            [r24 doubleValue];
                                            sub_1001a7a9c(r27, 0x4);
                                    }
                                    else {
                                            if ([r24 isInt64] != 0x0) {
                                                    sub_1001a7978(r27, 0x2, [r24 int64Value]);
                                            }
                                            else {
                                                    if ([r24 isString] != 0x0) {
                                                            r0 = [r24 stringValue];
                                                            r29 = r29;
                                                            sub_1001a7bf8(r27, 0x1, [r0 retain]);
                                                            [r21 release];
                                                    }
                                            }
                                    }
                                    [var_168 addObject:r27];
                            }
                            else {
                                    r27 = [[APMMeasurement monitor] retain];
                                    r0 = sub_100197c2c();
                                    r0 = [r0 retain];
                                    r25 = r20;
                                    r20 = r28;
                                    r28 = r26;
                                    r26 = r19;
                                    r19 = r22;
                                    r22 = r0;
                                    r0 = sub_100197f7c();
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    [r27 logWithLevel:0x1 messageCode:0x3e85 message:@"Invalid event param value. Event name, param name" context:r22 context:r21];
                                    [r21 release];
                                    r0 = r22;
                                    r22 = r19;
                                    r19 = r26;
                                    r26 = r28;
                                    r28 = r20;
                                    r20 = r25;
                                    r25 = var_138;
                                    [r0 release];
                            }
                            [r27 release];
                            [r24 release];
                            r23 = r23 + 0x1;
                    } while (r23 < r26);
                    r26 = objc_msgSend(var_130, var_1A8);
            } while (r26 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_130 release];
    r19 = var_1B0;
    sub_1001a8480(r19, 0x0, var_168);
    [var_168 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)addScreenParameters:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 count] == 0x0) goto loc_10017d010;

loc_10017cfbc:
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_parameters));
    r0 = *(r22 + r28);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_10017d00c;

loc_10017cfec:
    r0 = *(r22 + r28);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_10017d040;

loc_10017d00c:
    [r0 release];
    goto loc_10017d010;

loc_10017d010:
    r26 = 0x0;
    goto loc_10017d014;

loc_10017d014:
    [r19 release];
    r0 = r26;
    return r0;

loc_10017d040:
    r0 = *(r22 + r28);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) goto loc_10017d010;

loc_10017d068:
    r20 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r21 = [r0 retain];
    r26 = 0x0;
    if (r20 == 0x0) goto loc_10017d280;

loc_10017d0b0:
    r26 = 0x0;
    if (r21 == 0x0) goto loc_10017d280;

loc_10017d0b4:
    [NSString class];
    if ([r20 isKindOfClass:r2] == 0x0) goto loc_10017d154;

loc_10017d0e8:
    r0 = [r20 retain];
    goto loc_10017d0f0;

loc_10017d0f0:
    r23 = r0;
    if (([APMDataTypeValidator isValidScreenParameterValue:r2 failureCode:r3] & 0x1) == 0x0) goto loc_10017d1b0;

loc_10017d118:
    r26 = @selector(isKindOfClass:);
    [APMValue class];
    if (objc_msgSend(r21, r26) == 0x0) goto loc_10017d1fc;

loc_10017d13c:
    if (([r21 isInt64] & 0x1) != 0x0) goto loc_10017d220;

loc_10017d274:
    r26 = 0x0;
    goto loc_10017d278;

loc_10017d278:
    [r23 release];
    goto loc_10017d280;

loc_10017d280:
    [r21 release];
    [r20 release];
    goto loc_10017d014;

loc_10017d220:
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_10017d30c;

loc_10017d244:
    r26 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r24, r26) == 0x0) goto loc_10017d294;

loc_10017d268:
    r0 = [r24 retain];
    goto loc_10017d2e4;

loc_10017d2e4:
    r25 = r0;
    if (([APMDataTypeValidator isValidScreenParameterValue:r2 failureCode:r3] & 0x1) == 0x0) goto loc_10017d3fc;

loc_10017d304:
    [r25 release];
    goto loc_10017d30c;

loc_10017d30c:
    r27 = r24;
    r24 = [[APMValue valueFromObject:r2] retain];
    r0 = @class(APMValue);
    r0 = [r0 valueFromObject:r2];
    r29 = r29;
    r0 = [r0 retain];
    var_58 = r24;
    if (r24 != 0x0) {
            r26 = 0x0;
            r24 = r27;
            if (r0 != 0x0) {
                    [*(r22 + r28) setObject:r2 forKeyedSubscript:r3];
                    var_60 = r27;
                    objc_msgSend(*(r22 + r28), r26);
                    if (r24 != 0x0) {
                            r25 = [[APMValue valueFromObject:r2] retain];
                            if (r25 != 0x0) {
                                    [*(r22 + r28) setObject:r2 forKeyedSubscript:r3];
                                    [r25 release];
                            }
                    }
                    r26 = 0x1;
                    r0 = var_60;
            }
    }
    else {
            r26 = 0x0;
            r24 = r27;
    }
    [r0 release];
    [var_58 release];
    goto loc_10017d464;

loc_10017d464:
    [r24 release];
    goto loc_10017d278;

loc_10017d3fc:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x4 messageCode:0x3e84 message:@"Received invalid screen name" context:r25];
    [r0 release];
    [r25 release];
    goto loc_10017d44c;

loc_10017d44c:
    r26 = 0x0;
    goto loc_10017d464;

loc_10017d294:
    r26 = @selector(isKindOfClass:);
    [APMValue class];
    if (objc_msgSend(r24, r26) == 0x0 || [r24 isString] == 0x0) goto loc_10017d44c;

loc_10017d2cc:
    r0 = [r24 stringValue];
    r29 = r29;
    r0 = [r0 retain];
    goto loc_10017d2e4;

loc_10017d1fc:
    r26 = @selector(isKindOfClass:);
    [NSNumber class];
    if (objc_msgSend(r21, r26) == 0x0) goto loc_10017d274;
    goto loc_10017d220;

loc_10017d1b0:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x4 messageCode:0x3e83 message:@"Received invalid screen class" context:r23];
    [r0 release];
    goto loc_10017d274;

loc_10017d154:
    r26 = @selector(isKindOfClass:);
    [APMValue class];
    if (objc_msgSend(r20, r26) == 0x0 || [r20 isString] == 0x0) goto loc_10017d1a8;

loc_10017d18c:
    r0 = [r20 stringValue];
    r29 = r29;
    r0 = [r0 retain];
    goto loc_10017d0f0;

loc_10017d1a8:
    r23 = 0x0;
    goto loc_10017d274;
}

-(double)previousTimestamp {
    r0 = self;
    return r0;
}

-(void *)parameters {
    r0 = self->_parameters;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    objc_storeStrong((int64_t *)&self->_origin, 0x0);
    objc_storeStrong((int64_t *)&self->_parameters, 0x0);
    return;
}

@end