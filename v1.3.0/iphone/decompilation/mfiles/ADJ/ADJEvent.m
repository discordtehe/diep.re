@implementation ADJEvent

+(void *)eventWithEventToken:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[ADJEvent alloc] initWithEventToken:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithEventToken:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r22 = [[ADJAdjustFactory logger] retain];
            [r20 setLogger:r22];
            [r22 release];
            if (([r20 checkEventToken:r19] & 0x1) != 0x0) {
                    objc_storeStrong((int64_t *)&r20->_eventToken, r21);
            }
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)addCallbackParameter:(void *)arg2 value:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([ADJUtil isValidParameter:r2 attributeType:r3 parameterName:r4] != 0x0 && [ADJUtil isValidParameter:r2 attributeType:r3 parameterName:r4] != 0x0) {
            r0 = [r21 callbackMutableParameters];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r23 = [[NSMutableDictionary alloc] init];
                    [r21 setCallbackMutableParameters:r23];
                    [r23 release];
            }
            r0 = [r21 callbackMutableParameters];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            if (r0 != 0x0) {
                    r0 = [r21 logger];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 warn:@"key %@ was overwritten"];
                    [r0 release];
            }
            r0 = [r21 callbackMutableParameters];
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setRevenue:(double)arg2 currency:(void *)arg3 {
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
    r20 = arg2;
    r21 = self;
    r19 = [r20 retain];
    r0 = [NSNumber numberWithDouble:r2];
    r23 = r0;
    r22 = [r0 retain];
    if ([r21 checkRevenue:r22 currency:r19] != 0x0) {
            objc_storeStrong((int64_t *)&r21->_revenue, r23);
            objc_storeStrong((int64_t *)&r21->_currency, r20);
    }
    [r22 release];
    [r19 release];
    return;
}

-(void)addPartnerParameter:(void *)arg2 value:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([ADJUtil isValidParameter:r2 attributeType:r3 parameterName:r4] != 0x0 && [ADJUtil isValidParameter:r2 attributeType:r3 parameterName:r4] != 0x0) {
            r0 = [r21 partnerMutableParameters];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r23 = [[NSMutableDictionary alloc] init];
                    [r21 setPartnerMutableParameters:r23];
                    [r23 release];
            }
            r0 = [r21 partnerMutableParameters];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            if (r0 != 0x0) {
                    r0 = [r21 logger];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 warn:@"key %@ was overwritten"];
                    [r0 release];
            }
            r0 = [r21 partnerMutableParameters];
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setTransactionId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_transactionId, arg2);
    return;
}

-(void *)callbackParameters {
    r0 = [self callbackMutableParameters];
    return r0;
}

-(void *)partnerParameters {
    r0 = [self partnerMutableParameters];
    return r0;
}

-(bool)isValid {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self eventToken];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)setReceipt:(void *)arg2 transactionId:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r23 = arg2;
    r21 = self;
    r19 = [r23 retain];
    r22 = [r20 retain];
    if ([r21 checkReceipt:r19 transactionId:r22] != 0x0) {
            if (([ADJUtil isNull:r19] & 0x1) != 0x0 || [r19 length] == 0x0) {
                    *(int8_t *)(int64_t *)&r21->_emptyReceipt = 0x1;
            }
            objc_storeStrong((int64_t *)&r21->_receipt, r23);
            objc_storeStrong((int64_t *)&r21->_transactionId, r20);
    }
    [r22 release];
    [r19 release];
    return;
}

-(bool)checkEventToken:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([ADJUtil isNull:r19] == 0x0) goto loc_100699b70;

loc_100699b40:
    r20 = [[r20 logger] retain];
    goto loc_100699bc0;

loc_100699bc0:
    [r20 error:r2];
    [r20 release];
    r20 = 0x0;
    goto loc_100699bd4;

loc_100699bd4:
    [r19 release];
    r0 = r20;
    return r0;

loc_100699b70:
    if ([r19 length] != 0x6) goto loc_100699b90;

loc_100699b88:
    r20 = 0x1;
    goto loc_100699bd4;

loc_100699b90:
    r20 = [[r20 logger] retain];
    goto loc_100699bc0;
}

-(bool)checkRevenue:(void *)arg2 currency:(void *)arg3 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (([ADJUtil isNull:r2] & 0x1) == 0x0) goto loc_100699c94;

loc_100699c4c:
    if ([ADJUtil isNotNull:r20] == 0x0) goto loc_100699d88;

loc_100699c64:
    r21 = [[r21 logger] retain];
    goto loc_100699d70;

loc_100699d70:
    [r21 error:r2];
    [r21 release];
    r21 = 0x0;
    goto loc_100699d8c;

loc_100699d8c:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_100699d88:
    r21 = 0x1;
    goto loc_100699d8c;

loc_100699c94:
    [r19 doubleValue];
    if (d8 >= 0x0) goto loc_100699ce4;

loc_100699cb0:
    r21 = [[r21 logger] retain];
    goto loc_100699d70;

loc_100699ce4:
    if ([ADJUtil isNull:r2] == 0x0) goto loc_100699d28;

loc_100699cf8:
    r21 = [[r21 logger] retain];
    goto loc_100699d70;

loc_100699d28:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100699d88;

loc_100699d44:
    r21 = [[r21 logger] retain];
    goto loc_100699d70;
}

-(bool)checkReceipt:(void *)arg2 transactionId:(void *)arg3 {
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
    r20 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [ADJUtil isNotNull:arg2];
    [r22 release];
    if (r21 != 0x0 && [ADJUtil isNull:r19] != 0x0) {
            r0 = [r20 logger];
            r0 = [r0 retain];
            [r0 error:@"Missing transactionId"];
            [r0 release];
            r20 = 0x0;
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)revenue {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_revenue)), 0x0);
    return r0;
}

-(void *)eventToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_eventToken)), 0x0);
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
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
    r21 = arg2;
    r19 = self;
    r20 = [[[self class] allocWithZone:r21] init];
    if (r20 != 0x0) {
            r0 = [r19 eventToken];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copyWithZone:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_eventToken));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 revenue];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copyWithZone:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_revenue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 currency];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copyWithZone:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_currency));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 callbackMutableParameters];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r21];
            [r20 setCallbackMutableParameters:r24];
            [r24 release];
            [r0 release];
            r0 = [r19 partnerMutableParameters];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r21];
            [r20 setPartnerMutableParameters:r24];
            [r24 release];
            [r0 release];
            r0 = [r19 transactionId];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copyWithZone:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_transactionId));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r23 release];
            r0 = [r19 receipt];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 copyWithZone:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_receipt));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r23 release];
            *(int8_t *)(int64_t *)&r20->_emptyReceipt = [r19 emptyReceipt];
    }
    r0 = r20;
    return r0;
}

-(void *)transactionId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_transactionId)), 0x0);
    return r0;
}

-(void *)receipt {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_receipt)), 0x0);
    return r0;
}

-(void *)currency {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_currency)), 0x0);
    return r0;
}

-(bool)emptyReceipt {
    r0 = *(int8_t *)(int64_t *)&self->_emptyReceipt;
    return r0;
}

-(void *)callbackMutableParameters {
    r0 = self->_callbackMutableParameters;
    return r0;
}

-(void *)logger {
    r0 = objc_loadWeakRetained((int64_t *)&self->_logger);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setLogger:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_logger, arg2);
    return;
}

-(void)setCallbackMutableParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_callbackMutableParameters, arg2);
    return;
}

-(void)setPartnerMutableParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_partnerMutableParameters, arg2);
    return;
}

-(void *)partnerMutableParameters {
    r0 = self->_partnerMutableParameters;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_partnerMutableParameters, 0x0);
    objc_storeStrong((int64_t *)&self->_callbackMutableParameters, 0x0);
    objc_destroyWeak((int64_t *)&self->_logger);
    objc_storeStrong((int64_t *)&self->_receipt, 0x0);
    objc_storeStrong((int64_t *)&self->_currency, 0x0);
    objc_storeStrong((int64_t *)&self->_transactionId, 0x0);
    objc_storeStrong((int64_t *)&self->_eventToken, 0x0);
    objc_storeStrong((int64_t *)&self->_revenue, 0x0);
    return;
}

@end