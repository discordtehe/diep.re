@implementation ISEventsSettings

-(void *)initWithSendUltraEvents:(bool)arg2 sendEventsToggle:(bool)arg3 serverEventsURL:(void *)arg4 backupThreshold:(unsigned long long)arg5 maxNumberOfEvents:(unsigned long long)arg6 serverEventsType:(void *)arg7 optOut:(void *)arg8 maxEventsPerBatch:(unsigned long long)arg9 {
    var_8 = arg9;
    r31 = r31 - 0x80;
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
    r22 = arg7;
    r26 = arg6;
    var_68 = arg5;
    r27 = arg4;
    r28 = arg3;
    r19 = arg2;
    r21 = arg8;
    r23 = [r27 retain];
    r20 = [r22 retain];
    r24 = [r21 retain];
    r0 = [[&var_60 super] init];
    r25 = r0;
    if (r25 != 0x0) {
            *(int8_t *)(int64_t *)&r25->_sendUltraEvents = r19;
            *(int8_t *)(int64_t *)&r25->_sendEventsToggle = r28;
            objc_storeStrong((int64_t *)&r25->_serverEventsURL, r27);
            r25->_backupThreshold = var_68;
            r25->_maxNumberOfEvents = r26;
            objc_storeStrong((int64_t *)&r25->_serverEventsType, r22);
            objc_storeStrong((int64_t *)&r25->_optOut, r21);
            r25->_maxEventsPerBatch = var_8;
            r23 = r23;
    }
    [r24 release];
    [r20 release];
    [r23 release];
    r0 = r25;
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
            [ISEventsSettings class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r20 isEqualToEventsSettings:r19];
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

-(bool)isEqualToEventsSettings:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_1006c8718;

loc_1006c8694:
    r28 = [r20 sendUltraEvents] ^ [r19 sendUltraEvents];
    var_54 = [r20 sendEventsToggle] ^ [r19 sendEventsToggle];
    r0 = [r20 serverEventsURL];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1006c8720;

loc_1006c870c:
    var_58 = r28;
    r24 = 0x0;
    goto loc_1006c8744;

loc_1006c8744:
    r0 = [r20 serverEventsURL];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 absoluteString] retain];
    r0 = [r19 serverEventsURL];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 absoluteString];
    r29 = r29;
    r28 = [r0 retain];
    r22 = [r26 isEqualToString:r2];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    r28 = var_58;
    if (r24 != 0x0) {
            [var_60 release];
    }
    goto loc_1006c8804;

loc_1006c8804:
    r23 = @selector(isEqualToString:);
    [r21 release];
    r21 = [r20 backupThreshold];
    r24 = [r19 backupThreshold];
    r25 = [r20 maxNumberOfEvents];
    r26 = [r19 maxNumberOfEvents];
    r20 = [[r20 serverEventsType] retain];
    r27 = [[r19 serverEventsType] retain];
    r23 = objc_msgSend(r20, r23);
    [r27 release];
    [r20 release];
    r20 = 0x0;
    r8 = r28 | var_54;
    if ((r8 & 0x1) == 0x0) {
            r20 = 0x0;
            if (r22 != 0x0) {
                    r20 = 0x0;
                    if (r21 == r24) {
                            if (r25 == r26) {
                                    if (CPU_FLAGS & E) {
                                            r8 = 0x1;
                                    }
                            }
                            r20 = r8 & r23;
                    }
            }
    }
    goto loc_1006c88e0;

loc_1006c88e0:
    [r19 release];
    r0 = r20;
    return r0;

loc_1006c8720:
    r0 = [r19 serverEventsURL];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_1006c87ec;

loc_1006c8738:
    var_60 = r0;
    var_58 = r28;
    r24 = 0x1;
    goto loc_1006c8744;

loc_1006c87ec:
    var_60 = 0x0;
    r22 = 0x1;
    [var_60 release];
    goto loc_1006c8804;

loc_1006c8718:
    r20 = 0x0;
    goto loc_1006c88e0;
}

-(void *)description {
    r31 = r31 - 0x80;
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
    if ([self sendUltraEvents] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r24 = @"false";
            }
            else {
                    r24 = @"true";
            }
    }
    if ([r20 sendEventsToggle] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r25 = @"false";
            }
            else {
                    r25 = @"true";
            }
    }
    r21 = [[r20 serverEventsURL] retain];
    [r20 backupThreshold];
    [r20 maxNumberOfEvents];
    r20 = [[r20 serverEventsType] retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)sendUltraEvents {
    r0 = *(int8_t *)(int64_t *)&self->_sendUltraEvents;
    return r0;
}

-(bool)sendEventsToggle {
    r0 = *(int8_t *)(int64_t *)&self->_sendEventsToggle;
    return r0;
}

-(void *)serverEventsURL {
    r0 = self->_serverEventsURL;
    return r0;
}

-(unsigned long long)backupThreshold {
    r0 = self->_backupThreshold;
    return r0;
}

-(unsigned long long)maxNumberOfEvents {
    r0 = self->_maxNumberOfEvents;
    return r0;
}

-(void *)serverEventsType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_serverEventsType)), 0x0);
    return r0;
}

-(void *)optOut {
    r0 = self->_optOut;
    return r0;
}

-(unsigned long long)maxEventsPerBatch {
    r0 = self->_maxEventsPerBatch;
    return r0;
}

-(void)setMaxEventsPerBatch:(unsigned long long)arg2 {
    self->_maxEventsPerBatch = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_optOut, 0x0);
    objc_storeStrong((int64_t *)&self->_serverEventsType, 0x0);
    objc_storeStrong((int64_t *)&self->_serverEventsURL, 0x0);
    return;
}

@end