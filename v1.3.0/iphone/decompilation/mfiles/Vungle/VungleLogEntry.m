@implementation VungleLogEntry

-(void *)initWithMessage:(void *)arg2 level:(long long)arg3 context:(void *)arg4 eventID:(void *)arg5 userAgent:(void *)arg6 bundleID:(void *)arg7 timeZone:(void *)arg8 {
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
    r26 = arg3;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r22 = [arg6 retain];
    r23 = [arg7 retain];
    r25 = [arg8 retain];
    r0 = [[&var_60 super] init];
    r24 = r0;
    if (r0 != 0x0) {
            r0 = [NSUserDefaults standardUserDefaults];
            r0 = [r0 retain];
            r28 = [[r0 valueForKey:@"vungleLoggerUUID"] retain];
            [r24 setDeviceUUID:r28];
            [r28 release];
            [r0 release];
            [r24 setLevel:r26];
            [r24 setMessage:r19];
            [r24 setContext:r20];
            [r24 setEventID:r21];
            [r24 setUserAgent:r22];
            [r24 setBundleID:r23];
            [r24 setTimeZone:r25];
    }
    [r25 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r24;
    return r0;
}

-(void *)formatDateForLogging:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = [objc_alloc() init];
    r21 = [[NSTimeZone timeZoneWithName:@"UTC"] retain];
    [r19 setTimeZone:r21];
    [r19 setDateFormat:@"yyy-MM-dd HH:mm:ss.SSS"];
    r22 = [[r19 stringFromDate:r20] retain];
    [r20 release];
    [r21 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)toDictionary {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [objc_alloc() init];
    r22 = [[r20 creationDate] retain];
    r21 = [[r20 formatDateForLogging:r22] retain];
    [r22 release];
    [r19 setObject:r21 forKeyedSubscript:@"device_timestamp"];
    r23 = [[r20 deviceUUID] retain];
    [r19 setObject:r23 forKeyedSubscript:@"device_guid"];
    [r23 release];
    r23 = [[NSNumber numberWithInteger:[r20 level]] retain];
    [r19 setObject:r23 forKeyedSubscript:@"log_level"];
    [r23 release];
    r23 = [[r20 message] retain];
    [r19 setObject:r23 forKeyedSubscript:@"log_message"];
    [r23 release];
    r23 = [[r20 context] retain];
    [r19 setObject:r23 forKeyedSubscript:@"context"];
    [r23 release];
    r0 = [r20 eventID];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 eventID];
            r29 = r29;
            r23 = [r0 retain];
            [r19 setObject:r23 forKeyedSubscript:@"event_id"];
            [r23 release];
    }
    r0 = [r20 userAgent];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 userAgent];
            r29 = r29;
            r23 = [r0 retain];
            [r19 setObject:r23 forKeyedSubscript:@"sdk_user_agent"];
            [r23 release];
    }
    r0 = [r20 bundleID];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 bundleID];
            r29 = r29;
            r23 = [r0 retain];
            [r19 setObject:r23 forKeyedSubscript:@"bundle_id"];
            [r23 release];
    }
    r0 = [r20 timeZone];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r20 timeZone] retain];
            [r19 setObject:r20 forKeyedSubscript:@"time_zone"];
            [r20 release];
    }
    r20 = [r19 copy];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    r23 = [[self creationDate] retain];
    [arg2 encodeObject:r23 forKey:@"device_timestamp"];
    [r23 release];
    r23 = [[self deviceUUID] retain];
    [arg2 encodeObject:r23 forKey:@"device_guid"];
    [r23 release];
    r23 = [[NSNumber numberWithInteger:[self level]] retain];
    [arg2 encodeObject:r23 forKey:@"log_level"];
    [r23 release];
    r23 = [[self message] retain];
    [arg2 encodeObject:r23 forKey:@"log_message"];
    [r23 release];
    r23 = [[self context] retain];
    [arg2 encodeObject:r23 forKey:@"context"];
    [r23 release];
    r23 = [[self eventID] retain];
    [arg2 encodeObject:r23 forKey:@"event_id"];
    [r23 release];
    r23 = [[self userAgent] retain];
    [arg2 encodeObject:r23 forKey:@"sdk_user_agent"];
    [r23 release];
    r23 = [[self bundleID] retain];
    [arg2 encodeObject:r23 forKey:@"bundle_id"];
    [r23 release];
    r21 = [[self timeZone] retain];
    [arg2 encodeObject:r21 forKey:@"time_zone"];
    [r20 release];
    [r21 release];
    return;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r22 = [[r19 decodeObjectForKey:@"device_timestamp"] retain];
            [r20 setCreationDate:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"device_guid"] retain];
            [r20 setDeviceUUID:r22];
            [r22 release];
            r0 = [r19 decodeObjectForKey:@"log_level"];
            r0 = [r0 retain];
            [r20 setLevel:[r0 integerValue]];
            [r0 release];
            r22 = [[r19 decodeObjectForKey:@"log_message"] retain];
            [r20 setMessage:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"context"] retain];
            [r20 setContext:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"event_id"] retain];
            [r20 setEventID:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"sdk_user_agent"] retain];
            [r20 setUserAgent:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"bundle_id"] retain];
            [r20 setBundleID:r22];
            [r22 release];
            r21 = [[r19 decodeObjectForKey:@"time_zone"] retain];
            [r20 setTimeZone:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setCreationDate:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)creationDate {
    r0 = objc_getProperty(self, _cmd, 0x8, 0x0);
    return r0;
}

-(void *)submissionDate {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(long long)level {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setSubmissionDate:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)toLog {
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
    r20 = self;
    r19 = [NSMutableString new];
    r0 = [r20 creationDate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r23 = 0x0;
            r22 = r21;
    }
    else {
            r0 = [NSDate date];
            r29 = r29;
            r22 = [r0 retain];
            r23 = 0x1;
    }
    r0 = [r20 formatDateForLogging:r22];
    r29 = r29;
    r24 = [r0 retain];
    if (r23 != 0x0) {
            [r22 release];
    }
    [r21 release];
    var_58 = r24;
    [r19 appendFormat:@"'%@',"];
    r26 = [@"'" mutableCopy];
    r0 = [r20 deviceUUID];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 deviceUUID];
            r29 = r29;
            [r0 retain];
            [r26 appendString:r2];
            [r21 release];
    }
    [r26 appendString:r2];
    [r26 copy];
    objc_msgSend(r19, r23);
    [r21 release];
    r8 = [r20 level] + 0xffffffffffffbdc0;
    if (r8 <= 0x3) {
            r0 = (0x10066254c + *(int8_t *)(0x100bf2f15 + r8) * 0x4)();
    }
    else {
            [@"unknown" retain];
            var_60 = r26;
            [r19 appendFormat:@"'%@',"];
            [@"unknown" release];
            r25 = [@"'" mutableCopy];
            r0 = [r20 message];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r20 message];
                    r29 = r29;
                    [r0 retain];
                    [r25 appendString:r2];
                    [r21 release];
            }
            [r25 appendString:r2];
            [r25 copy];
            objc_msgSend(r19, r23);
            [r21 release];
            r26 = [@"'" mutableCopy];
            r0 = [r20 context];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r20 context];
                    r29 = r29;
                    [r0 retain];
                    [r26 appendString:r2];
                    [r21 release];
            }
            [r26 appendString:r2];
            [r26 copy];
            objc_msgSend(r19, r23);
            [r21 release];
            r28 = [@"'" mutableCopy];
            r0 = [r20 eventID];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r20 eventID];
                    r29 = r29;
                    [r0 retain];
                    [r28 appendString:r2];
                    [r21 release];
            }
            var_68 = r25;
            [r28 appendString:r2];
            [r28 copy];
            objc_msgSend(r19, r23);
            [r21 release];
            r27 = [@"'" mutableCopy];
            r0 = [r20 userAgent];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r20 userAgent];
                    r29 = r29;
                    [r0 retain];
                    [r27 appendString:r2];
                    [r21 release];
            }
            [r27 appendString:r2];
            objc_msgSend(r19, r23);
            r21 = [@"'" mutableCopy];
            r0 = [r20 bundleID];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [r20 bundleID];
                    r29 = r29;
                    [r0 retain];
                    [r21 appendString:r2];
                    [r22 release];
            }
            [r21 appendString:r2];
            objc_msgSend(r19, r23);
            r24 = [@"'" mutableCopy];
            r0 = [r20 timeZone];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    [[r20 timeZone] retain];
                    [r24 appendString:r2];
                    [r20 release];
            }
            [r24 appendString:r2];
            [r19 appendString:r2];
            [r24 release];
            [r21 release];
            [r27 release];
            [r28 release];
            [r26 release];
            [var_68 release];
            [var_60 release];
            [var_58 release];
            r0 = [r19 autorelease];
    }
    return r0;
}

-(void)setLevel:(long long)arg2 {
    *(self + 0x18) = arg2;
    return;
}

-(void *)message {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void)setMessage:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)context {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(void)setContext:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)eventID {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x0);
    return r0;
}

-(void)setEventID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)userAgent {
    r0 = objc_getProperty(self, _cmd, 0x38, 0x0);
    return r0;
}

-(void)setUserAgent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)bundleID {
    r0 = objc_getProperty(self, _cmd, 0x40, 0x0);
    return r0;
}

-(void)setBundleID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)timeZone {
    r0 = objc_getProperty(self, _cmd, 0x48, 0x0);
    return r0;
}

-(void)setTimeZone:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)deviceUUID {
    r0 = objc_getProperty(self, _cmd, 0x50, 0x0);
    return r0;
}

-(void)setDeviceUUID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end