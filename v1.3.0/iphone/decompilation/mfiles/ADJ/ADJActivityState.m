@implementation ADJActivityState

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r21 = [[r0 adjCreateUuid] retain];
            [r19 assignUuid:r21];
            [r21 release];
            [r0 release];
            [r19 setEventCount:0x0];
            [r19 setSessionCount:0x0];
            [r19 setSubsessionCount:0xffffffffffffffff];
            [r19 setSessionLength:0xffffffffffffffff];
            [r19 setTimeSpent:0xffffffffffffffff];
            [r19 setLastActivity:0xffffffffffffffff];
            [r19 setLastInterval:0xffffffffffffffff];
            [r19 setEnabled:0x1];
            [r19 setAskingAttribution:0x0];
            [r19 setDeviceToken:0x0];
            r20 = [[NSMutableArray arrayWithCapacity:0xa] retain];
            [r19 setTransactionIds:r20];
            [r20 release];
            [r19 setUpdatePackages:0x0];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)saveAppToken:(void *)arg2 {
    [arg2 retain];
    objc_sync_enter(self);
    r19 = [self retain];
    r0 = *0x1011daac0;
    *0x1011daac0 = r20;
    [r0 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)resetSessionAttributes:(double)arg2 {
    [self setSubsessionCount:0x1];
    [self setSessionLength:0x1];
    [self setTimeSpent:0x1];
    [self setLastInterval:0x1];
    [self setLastActivity:0x1];
    return;
}

-(void)addTransactionId:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r21 = self;
    r20 = [r19 retain];
    r0 = [r21 transactionIds];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r0 = [NSMutableArray arrayWithCapacity:0xa];
            r29 = r29;
            r23 = [r0 retain];
            [r21 setTransactionIds:r23];
            [r23 release];
    }
    r0 = [r21 transactionIds];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 count];
    [r0 release];
    if (r24 == 0xa) {
            r0 = [r21 transactionIds];
            r29 = r29;
            r0 = [r0 retain];
            [r0 removeObjectAtIndex:0x0];
            [r0 release];
    }
    r0 = [r21 transactionIds];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r20 release];
    [r21 release];
    return;
}

-(bool)findTransactionId:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self transactionIds];
    r0 = [r0 retain];
    r19 = [r0 containsObject:r2];
    [r22 release];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void)assignUuid:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (*_kSecAttrAccessGroupToken == 0x0) {
            [r0 assignUuidOldMethod:r2];
    }
    else {
            [r0 assignUuidNewMethod:r2];
    }
    return;
}

-(void)assignUuidOldMethod:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [ADJKeychain valueForKeychainKeyOld:@"adjust_persisted_uuid" service:@"deviceInfo"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [NSUUID alloc];
            r0 = [r0 initWithUUIDString:r21];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [ADJAdjustFactory logger];
                    r0 = [r0 retain];
                    [r0 verbose:@"Value found and read from the keychain old way"];
                    [r0 release];
                    [r20 setUuid:r21];
                    [r20 setIsPersisted:0x1];
            }
            else {
                    [r20 setUuid:r19];
                    r22 = @class(ADJKeychain);
                    r23 = [[r20 uuid] retain];
                    [r20 setIsPersisted:[r22 setValue:r23 forKeychainKey:@"adjust_persisted_uuid" inService:@"deviceInfo"]];
                    [r23 release];
            }
    }
    else {
            [r20 setUuid:r19];
            r22 = @class(ADJKeychain);
            r23 = [[r20 uuid] retain];
            [r20 setIsPersisted:[r22 setValue:r23 forKeychainKey:@"adjust_persisted_uuid" inService:@"deviceInfo"]];
            [r23 release];
    }
    [r21 release];
    [r19 release];
    return;
}

-(void *)generateUniqueKey {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011daac0 != 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 bundleIdentifier];
            r29 = r29;
            r19 = [r0 retain];
            [r20 release];
            if (r19 != 0x0) {
                    r0 = [NSString stringWithFormat:r2];
                    r0 = [r0 retain];
                    r20 = [[r0 adjSha1] retain];
                    [r0 release];
            }
            else {
                    r20 = 0x0;
            }
            [r19 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)description {
    [self eventCount];
    [self sessionCount];
    [self subsessionCount];
    [self askingAttribution];
    [self sessionLength];
    [self timeSpent];
    [self lastActivity];
    r22 = [[self deviceToken] retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)assignUuidNewMethod:(void *)arg2 {
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [[r21 generateUniqueKey] retain];
    r0 = [ADJKeychain valueForKeychainKeyNew:r20 service:@"deviceInfo"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [NSUUID alloc];
            r0 = [r0 initWithUUIDString:r22];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [ADJAdjustFactory logger];
                    r0 = [r0 retain];
                    [r0 verbose:@"Value found and read from the keychain new way"];
                    [r0 release];
                    [r21 setUuid:r22];
                    [r21 setIsPersisted:0x1];
            }
            else {
                    r0 = [ADJKeychain valueForKeychainKeyOld:@"adjust_persisted_uuid" service:@"deviceInfo"];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r23 != 0x0) {
                            r0 = [NSUUID alloc];
                            r0 = [r0 initWithUUIDString:r23];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = [ADJAdjustFactory logger];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 verbose:@"Value found and read from the keychain old way"];
                                    [r0 release];
                                    r0 = r21;
                            }
                            else {
                                    r0 = r21;
                            }
                    }
                    else {
                            r0 = r21;
                    }
                    [r0 setUuid:r2];
                    r24 = @class(ADJKeychain);
                    r25 = [[r21 uuid] retain];
                    [r21 setIsPersisted:[r24 setValue:r25 forKeychainKey:r20 inService:@"deviceInfo"]];
                    [r25 release];
                    [r23 release];
            }
    }
    else {
            r0 = [ADJKeychain valueForKeychainKeyOld:@"adjust_persisted_uuid" service:@"deviceInfo"];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    r0 = [NSUUID alloc];
                    r0 = [r0 initWithUUIDString:r23];
                    [r0 release];
                    if (r0 != 0x0) {
                            r0 = [ADJAdjustFactory logger];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 verbose:@"Value found and read from the keychain old way"];
                            [r0 release];
                            r0 = r21;
                    }
                    else {
                            r0 = r21;
                    }
            }
            else {
                    r0 = r21;
            }
            [r0 setUuid:r2];
            r24 = @class(ADJKeychain);
            r25 = [[r21 uuid] retain];
            [r21 setIsPersisted:[r24 setValue:r25 forKeychainKey:r20 inService:@"deviceInfo"]];
            [r25 release];
            [r23 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)enabled {
    r0 = *(int8_t *)(int64_t *)&self->_enabled;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    [arg2 encodeInt:[self eventCount] forKey:@"eventCount"];
    [arg2 encodeInt:[self sessionCount] forKey:@"sessionCount"];
    [arg2 encodeInt:[self subsessionCount] forKey:@"subsessionCount"];
    [self sessionLength];
    [arg2 encodeDouble:@"sessionLength" forKey:@"subsessionCount"];
    [self timeSpent];
    [arg2 encodeDouble:@"timeSpent" forKey:@"subsessionCount"];
    [self lastActivity];
    [arg2 encodeDouble:@"lastActivity" forKey:@"subsessionCount"];
    r23 = [[self uuid] retain];
    [arg2 encodeObject:r23 forKey:@"uuid"];
    [r23 release];
    r23 = [[self transactionIds] retain];
    [arg2 encodeObject:r23 forKey:@"transactionIds"];
    [r23 release];
    [arg2 encodeBool:[self enabled] forKey:@"enabled"];
    [arg2 encodeBool:[self askingAttribution] forKey:@"askingAttribution"];
    r24 = [[self deviceToken] retain];
    [arg2 encodeObject:r24 forKey:@"deviceToken"];
    [r24 release];
    [arg2 encodeBool:[self updatePackages] forKey:@"updatePackages"];
    r23 = [[self adid] retain];
    [arg2 encodeObject:r23 forKey:@"adid"];
    [r23 release];
    r21 = [[self attributionDetails] retain];
    [arg2 encodeObject:r21 forKey:@"attributionDetails"];
    [r20 release];
    [r21 release];
    return;
}

-(void)setEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_enabled = arg2;
    return;
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
            [r20 setSessionCount:[r19 sessionCount]];
            r2 = [r19 subsessionCount];
            [r20 setSubsessionCount:r2];
            [r19 sessionLength];
            [r20 setSessionLength:r2];
            [r19 timeSpent];
            [r20 setTimeSpent:r2];
            r0 = [r19 uuid];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r21];
            [r20 setUuid:r24];
            [r24 release];
            [r0 release];
            [r19 lastInterval];
            [r20 setLastInterval:r24];
            [r20 setEventCount:[r19 eventCount]];
            r2 = [r19 enabled];
            [r20 setEnabled:r2];
            [r19 lastActivity];
            [r20 setLastActivity:r2];
            [r20 setAskingAttribution:[r19 askingAttribution]];
            r0 = [r19 deviceToken];
            r0 = [r0 retain];
            r21 = [r0 copyWithZone:r21];
            [r20 setDeviceToken:r21];
            [r21 release];
            [r0 release];
            [r20 setUpdatePackages:[r19 updatePackages]];
    }
    r0 = r20;
    return r0;
}

-(void *)uuid {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_uuid)), 0x0);
    return r0;
}

-(bool)askingAttribution {
    r0 = *(int8_t *)(int64_t *)&self->_askingAttribution;
    return r0;
}

-(void)setAskingAttribution:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_askingAttribution = arg2;
    return;
}

-(void)setUuid:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)deviceToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_deviceToken)), 0x0);
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
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
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setEventCount:[r19 decodeIntForKey:@"eventCount"]];
            [r20 setSessionCount:[r19 decodeIntForKey:@"sessionCount"]];
            [r20 setSubsessionCount:[r19 decodeIntForKey:@"subsessionCount"]];
            [r19 decodeDoubleForKey:@"sessionLength"];
            [r20 setSessionLength:@"sessionLength"];
            [r19 decodeDoubleForKey:@"timeSpent"];
            [r20 setTimeSpent:@"timeSpent"];
            [r19 decodeDoubleForKey:@"lastActivity"];
            [r20 setLastActivity:@"lastActivity"];
            if ([r19 containsValueForKey:r2] != 0x0) {
                    r0 = [r19 decodeObjectForKey:@"uuid"];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r20 assignUuid:r22];
                    [r22 release];
            }
            r0 = [r20 uuid];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r0 = [UIDevice currentDevice];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 adjCreateUuid];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r20 assignUuid:r23];
                    [r23 release];
                    [r22 release];
            }
            if ([r19 containsValueForKey:r2] != 0x0) {
                    r0 = [r19 decodeObjectForKey:@"transactionIds"];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r20 setTransactionIds:r22];
                    [r22 release];
            }
            r0 = [r20 transactionIds];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r0 = [NSMutableArray arrayWithCapacity:0xa];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r20 setTransactionIds:r22];
                    [r22 release];
            }
            if ([r19 containsValueForKey:r2] != 0x0) {
                    [r19 decodeBoolForKey:@"enabled"];
            }
            [r20 setEnabled:r2];
            if (objc_msgSend(r19, r21) != 0x0) {
                    [r19 decodeBoolForKey:@"askingAttribution"];
                    r0 = r20;
            }
            else {
                    r0 = r20;
            }
            [r0 setAskingAttribution:r2];
            if (objc_msgSend(r19, r21) != 0x0) {
                    r0 = [r19 decodeObjectForKey:@"deviceToken"];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r20 setDeviceToken:r22];
                    [r22 release];
            }
            if ([r19 containsValueForKey:r2] != 0x0) {
                    [r19 decodeBoolForKey:@"updatePackages"];
                    r0 = r20;
            }
            else {
                    r0 = r20;
            }
            [r0 setUpdatePackages:r2];
            if (objc_msgSend(r19, r21) != 0x0) {
                    r0 = [r19 decodeObjectForKey:@"adid"];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r20 setAdid:r22];
                    [r22 release];
            }
            if ([r19 containsValueForKey:r2] != 0x0) {
                    r21 = [[r19 decodeObjectForKey:@"attributionDetails"] retain];
                    [r20 setAttributionDetails:r21];
                    [r21 release];
            }
            [r20 setLastInterval:@"attributionDetails"];
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

-(void)setDeviceToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)updatePackages {
    r0 = *(int8_t *)(int64_t *)&self->_updatePackages;
    return r0;
}

-(void)setUpdatePackages:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_updatePackages = arg2;
    return;
}

-(void *)adid {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adid)), 0x0);
    return r0;
}

-(void)setAdid:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)attributionDetails {
    r0 = self->_attributionDetails;
    return r0;
}

-(void)setAttributionDetails:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_attributionDetails, arg2);
    return;
}

-(int)eventCount {
    r0 = *(int32_t *)(int64_t *)&self->_eventCount;
    return r0;
}

-(void)setEventCount:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_eventCount = arg2;
    return;
}

-(int)sessionCount {
    r0 = *(int32_t *)(int64_t *)&self->_sessionCount;
    return r0;
}

-(void)setSessionCount:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_sessionCount = arg2;
    return;
}

-(int)subsessionCount {
    r0 = *(int32_t *)(int64_t *)&self->_subsessionCount;
    return r0;
}

-(void)setSubsessionCount:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_subsessionCount = arg2;
    return;
}

-(double)timeSpent {
    r0 = self;
    return r0;
}

-(void)setTimeSpent:(double)arg2 {
    self->_timeSpent = d0;
    return;
}

-(double)lastActivity {
    r0 = self;
    return r0;
}

-(void)setLastActivity:(double)arg2 {
    self->_lastActivity = d0;
    return;
}

-(double)sessionLength {
    r0 = self;
    return r0;
}

-(void)setSessionLength:(double)arg2 {
    self->_sessionLength = d0;
    return;
}

-(void *)transactionIds {
    r0 = self->_transactionIds;
    return r0;
}

-(bool)isPersisted {
    r0 = *(int8_t *)(int64_t *)&self->_isPersisted;
    return r0;
}

-(void)setTransactionIds:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_transactionIds, arg2);
    return;
}

-(void)setIsPersisted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isPersisted = arg2;
    return;
}

-(double)lastInterval {
    r0 = self;
    return r0;
}

-(void)setLastInterval:(double)arg2 {
    self->_lastInterval = d0;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_transactionIds, 0x0);
    objc_storeStrong((int64_t *)&self->_attributionDetails, 0x0);
    objc_storeStrong((int64_t *)&self->_adid, 0x0);
    objc_storeStrong((int64_t *)&self->_deviceToken, 0x0);
    objc_storeStrong((int64_t *)&self->_uuid, 0x0);
    return;
}

@end