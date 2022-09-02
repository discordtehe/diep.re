@implementation FBAdEvent

-(void *)jsonExtraData {
    r20 = [[self extraData] retain];
    r19 = [[FBAdUtility getJSONStringFromObject:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithType:(void *)arg2 withPriority:(unsigned long long)arg3 withTokenId:(void *)arg4 withSessionId:(void *)arg5 withSessionStartTime:(void *)arg6 withExtraData:(void *)arg7 {
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
    r29 = &saved_fp;
    r27 = arg7;
    r21 = arg6;
    r23 = arg5;
    r25 = arg4;
    r19 = arg3;
    r20 = arg2;
    var_68 = [arg2 retain];
    var_70 = [r25 retain];
    r22 = [r23 retain];
    r24 = [r21 retain];
    r28 = [r27 retain];
    r0 = [[&var_60 super] init];
    r26 = r0;
    if (r0 != 0x0) {
            objc_storeStrong((int64_t *)&r26->_type, r20);
            r0 = [NSUUID UUID];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_eventId));
            r8 = *(r26 + r9);
            *(r26 + r9) = r0;
            [r8 release];
            r0 = [NSDate date];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_time));
            r8 = *(r26 + r9);
            *(r26 + r9) = r0;
            [r8 release];
            r26->_priority = r19;
            objc_storeStrong((int64_t *)&r26->_extraData, r27);
            objc_storeStrong((int64_t *)&r26->_tokenId, r25);
            objc_storeStrong((int64_t *)&r26->_sessionId, r23);
            objc_storeStrong((int64_t *)&r26->_sessionStartTime, r21);
            r26->_attemptsCount = 0x1;
    }
    [r28 release];
    [r24 release];
    [r22 release];
    [var_70 release];
    [var_68 release];
    r0 = r26;
    return r0;
}

-(void)logStatusMessage {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self type];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 type];
            r0 = [r0 retain];
            r20 = [[r0 capitalizedString] retain];
            [r0 release];
    }
    else {
            r20 = @"Event";
            [r20 retain];
    }
    [r19 release];
    [FBAdUtility displayDebugMessage:@"%@ is logged"];
    [r20 release];
    return;
}

-(void *)description {
    [self class];
    r19 = [[self type] retain];
    r23 = [[self eventId] retain];
    r24 = [[self tokenId] retain];
    r25 = [[self time] retain];
    r26 = [[self sessionId] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_expiration, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionStartTime, 0x0);
    objc_storeStrong((int64_t *)&self->_sessionId, 0x0);
    objc_storeStrong((int64_t *)&self->_tokenId, 0x0);
    objc_storeStrong((int64_t *)&self->_extraData, 0x0);
    objc_storeStrong((int64_t *)&self->_time, 0x0);
    objc_storeStrong((int64_t *)&self->_type, 0x0);
    objc_storeStrong((int64_t *)&self->_eventId, 0x0);
    return;
}

-(void)setEventId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)eventId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_eventId)), 0x0);
    return r0;
}

-(void *)type {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_type)), 0x0);
    return r0;
}

-(void *)time {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_time)), 0x0);
    return r0;
}

-(void)setType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setTime:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setPriority:(unsigned long long)arg2 {
    self->_priority = arg2;
    return;
}

-(unsigned long long)priority {
    r0 = self->_priority;
    return r0;
}

-(void *)extraData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_extraData)), 0x0);
    return r0;
}

-(void)setExtraData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)tokenId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_tokenId)), 0x0);
    return r0;
}

-(void)setTokenId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)sessionId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sessionId)), 0x0);
    return r0;
}

-(void)setSessionId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)sessionStartTime {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sessionStartTime)), 0x0);
    return r0;
}

-(unsigned long long)attemptsCount {
    r0 = self->_attemptsCount;
    return r0;
}

-(void)setAttemptsCount:(unsigned long long)arg2 {
    self->_attemptsCount = arg2;
    return;
}

-(void)setSessionStartTime:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)expiration {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_expiration)), 0x0);
    return r0;
}

-(void)setExpiration:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

+(void *)deserializeFromSqlite:(struct sqlite3_stmt *)arg2 {
    r31 = r31 - 0xa0;
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
    r20 = arg2;
    if (*0x1011dd988 != -0x1) {
            dispatch_once_f(0x1011dd988, 0x1011c6d78, 0x100a3d91c);
    }
    r24 = (*0x1011dd990)(r20, 0x0);
    if (*0x1011dd988 != -0x1) {
            dispatch_once_f(0x1011dd988, 0x1011c6d78, 0x100a3d91c);
    }
    var_68 = (*0x1011dd990)(r20, 0x1);
    if (*0x1011dd9a8 != -0x1) {
            dispatch_once_f(0x1011dd9a8, 0x1011c6da8, 0x100a3d91c);
    }
    var_70 = (*0x1011dd9b0)(r20, 0x2);
    if (*0x1011dd988 != -0x1) {
            dispatch_once_f(0x1011dd988, 0x1011c6d78, 0x100a3d91c);
    }
    r25 = (*0x1011dd990)(r20, 0x3);
    if (*0x1011dd9b8 != -0x1) {
            dispatch_once_f(0x1011dd9b8, 0x1011c6dc0, 0x100a3d91c);
    }
    (*0x1011dd9c0)(r20, 0x4);
    v8 = v0;
    if (*0x1011dd988 != -0x1) {
            dispatch_once_f(0x1011dd988, 0x1011c6d78, 0x100a3d91c);
    }
    r26 = (*0x1011dd990)(r20, 0x5);
    if (*0x1011dd9b8 != -0x1) {
            dispatch_once_f(0x1011dd9b8, 0x1011c6dc0, 0x100a3d91c);
    }
    (*0x1011dd9c0)(r20, 0x6);
    v9 = v0;
    if (*0x1011dd988 != -0x1) {
            dispatch_once_f(0x1011dd988, 0x1011c6d78, 0x100a3d91c);
    }
    r19 = (*0x1011dd990)(r20, 0x7);
    if (*0x1011dd9a8 != -0x1) {
            dispatch_once_f(0x1011dd9a8, 0x1011c6da8, 0x100a3d91c);
    }
    r23 = (*0x1011dd9b0)(r20, 0x8);
    if (r19 != 0x0) {
            r19 = [[NSString stringWithUTF8String:r2] retain];
            r0 = [FBAdUtility getObjectFromJSONString:r19];
            r29 = r29;
            r20 = [r0 retain];
            [r19 release];
            if (r24 == 0x0) {
                    r0 = [NSMutableDictionary new];
                    r21 = r0;
                    [r0 adnw_setNullStringIfNullCharPointer:r24 forKey:@"eventId"];
                    [r21 adnw_setNullStringIfNullCharPointer:r25 forKey:@"type"];
                    [r21 adnw_setNullStringIfNullCharPointer:r26 forKey:@"sessionId"];
                    [r21 adnw_setNullStringIfNullCharPointer:var_68 forKey:@"tokenId"];
                    [FBAdDebugLogging logDebugEventWithType:@"database" code:0x1 info:r21];
                    r19 = 0x0;
            }
            else {
                    if (r25 != 0x0 && r26 != 0x0) {
                            r0 = @class(NSString);
                            r19 = @selector(stringWithUTF8String:);
                            r21 = [objc_msgSend(r0, r19) retain];
                            r24 = [objc_msgSend(@class(NSString), r19) retain];
                            r0 = @class(NSString);
                            r0 = objc_msgSend(r0, r19);
                            r29 = r29;
                            r0 = [r0 retain];
                            var_80 = r23;
                            var_78 = r0;
                            if (var_68 != 0x0) {
                                    r0 = [NSString stringWithUTF8String:r2];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    var_68 = [[NSUUID alloc] initWithUUIDString:r2];
                                    [r22 release];
                            }
                            else {
                                    var_68 = 0x0;
                            }
                            r23 = r20;
                            r22 = [[NSUUID alloc] initWithUUIDString:r2];
                            r0 = @class(NSUUID);
                            r0 = [r0 alloc];
                            r2 = r24;
                            r27 = [r0 initWithUUIDString:r2];
                            r19 = [FBAdEvent alloc];
                            var_88 = r24;
                            if (r22 != 0x0) {
                                    r20 = 0x0;
                                    r26 = r22;
                            }
                            else {
                                    r0 = [NSUUID UUID];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    r20 = 0x1;
                            }
                            r0 = [NSDate dateWithTimeIntervalSince1970:r2];
                            r29 = r29;
                            r24 = [r0 retain];
                            r19 = [r19 initWithType:var_78 withPriority:var_70 withTokenId:var_68 withSessionId:r26 withSessionStartTime:r24 withExtraData:r23];
                            [r24 release];
                            if (r20 != 0x0) {
                                    [r26 release];
                            }
                            if (r27 != 0x0) {
                                    [r19 setEventId:r27];
                            }
                            else {
                                    r0 = [NSUUID UUID];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    [r19 setEventId:r24];
                                    [r24 release];
                            }
                            r20 = r23;
                            r24 = [[NSDate dateWithTimeIntervalSince1970:r2] retain];
                            [r19 setTime:r24];
                            [r24 release];
                            [r19 setAttemptsCount:var_80];
                            [r27 release];
                            [r22 release];
                            [var_68 release];
                            [var_78 release];
                            [var_88 release];
                    }
                    else {
                            r0 = [NSMutableDictionary new];
                            r21 = r0;
                            [r0 adnw_setNullStringIfNullCharPointer:r24 forKey:@"eventId"];
                            [r21 adnw_setNullStringIfNullCharPointer:r25 forKey:@"type"];
                            [r21 adnw_setNullStringIfNullCharPointer:r26 forKey:@"sessionId"];
                            [r21 adnw_setNullStringIfNullCharPointer:var_68 forKey:@"tokenId"];
                            [FBAdDebugLogging logDebugEventWithType:@"database" code:0x1 info:r21];
                            r19 = 0x0;
                    }
            }
    }
    else {
            r20 = 0x0;
            if (r24 != 0x0) {
                    if (r25 != 0x0 && r26 != 0x0) {
                            r0 = @class(NSString);
                            r19 = @selector(stringWithUTF8String:);
                            r21 = [objc_msgSend(r0, r19) retain];
                            r24 = [objc_msgSend(@class(NSString), r19) retain];
                            r0 = @class(NSString);
                            r0 = objc_msgSend(r0, r19);
                            r29 = r29;
                            r0 = [r0 retain];
                            var_80 = r23;
                            var_78 = r0;
                            if (var_68 != 0x0) {
                                    r0 = [NSString stringWithUTF8String:r2];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    var_68 = [[NSUUID alloc] initWithUUIDString:r2];
                                    [r22 release];
                            }
                            else {
                                    var_68 = 0x0;
                            }
                            r23 = r20;
                            r22 = [[NSUUID alloc] initWithUUIDString:r2];
                            r0 = @class(NSUUID);
                            r0 = [r0 alloc];
                            r2 = r24;
                            r27 = [r0 initWithUUIDString:r2];
                            r19 = [FBAdEvent alloc];
                            var_88 = r24;
                            if (r22 != 0x0) {
                                    r20 = 0x0;
                                    r26 = r22;
                            }
                            else {
                                    r0 = [NSUUID UUID];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    r20 = 0x1;
                            }
                            r0 = [NSDate dateWithTimeIntervalSince1970:r2];
                            r29 = r29;
                            r24 = [r0 retain];
                            r19 = [r19 initWithType:var_78 withPriority:var_70 withTokenId:var_68 withSessionId:r26 withSessionStartTime:r24 withExtraData:r23];
                            [r24 release];
                            if (r20 != 0x0) {
                                    [r26 release];
                            }
                            if (r27 != 0x0) {
                                    [r19 setEventId:r27];
                            }
                            else {
                                    r0 = [NSUUID UUID];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    [r19 setEventId:r24];
                                    [r24 release];
                            }
                            r20 = r23;
                            r24 = [[NSDate dateWithTimeIntervalSince1970:r2] retain];
                            [r19 setTime:r24];
                            [r24 release];
                            [r19 setAttemptsCount:var_80];
                            [r27 release];
                            [r22 release];
                            [var_68 release];
                            [var_78 release];
                            [var_88 release];
                    }
                    else {
                            r0 = [NSMutableDictionary new];
                            r21 = r0;
                            [r0 adnw_setNullStringIfNullCharPointer:r24 forKey:@"eventId"];
                            [r21 adnw_setNullStringIfNullCharPointer:r25 forKey:@"type"];
                            [r21 adnw_setNullStringIfNullCharPointer:r26 forKey:@"sessionId"];
                            [r21 adnw_setNullStringIfNullCharPointer:var_68 forKey:@"tokenId"];
                            [FBAdDebugLogging logDebugEventWithType:@"database" code:0x1 info:r21];
                            r19 = 0x0;
                    }
            }
            else {
                    r0 = [NSMutableDictionary new];
                    r21 = r0;
                    [r0 adnw_setNullStringIfNullCharPointer:r24 forKey:@"eventId"];
                    [r21 adnw_setNullStringIfNullCharPointer:r25 forKey:@"type"];
                    [r21 adnw_setNullStringIfNullCharPointer:r26 forKey:@"sessionId"];
                    [r21 adnw_setNullStringIfNullCharPointer:var_68 forKey:@"tokenId"];
                    [FBAdDebugLogging logDebugEventWithType:@"database" code:0x1 info:r21];
                    r19 = 0x0;
            }
    }
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

@end