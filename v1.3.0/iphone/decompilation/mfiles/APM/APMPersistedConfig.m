@implementation APMPersistedConfig

+(void *)sharedInstance {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*qword_1011d1f68 != -0x1) {
            dispatch_once(0x1011d1f68, 0x100e6e098);
    }
    if (*0x1011d1f70 == 0x0) {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x6979 message:@"PersistedConfig's shared instance is nil"];
            [r0 release];
    }
    r0 = *0x1011d1f70;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)initWithSuiteName:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r0 = [[&var_30 super] init];
            r20 = r0;
            if (r20 != 0x0) {
                    r0 = [r19 copy];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_name));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [APMUserDefaults alloc];
                    r0 = [r0 initWithSuiteName:r19];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_userDefaults));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = dispatch_queue_create("APMPersistedConfig", 0x0);
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_serialQueue));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
            r20 = [r20 retain];
            r21 = r20;
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)clearValues {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_serialQueue))), &var_28);
    return;
}

-(double)lastDeleteStaleBundlesTimestamp {
    r0 = [self doubleForKey:*0x100e6e3c8];
    return r0;
}

-(void)setLastDeleteStaleBundlesTimestamp:(double)arg2 {
    [self setDouble:*0x100e6e3c8 forKey:r3];
    return;
}

-(void *)searchAdCampaignValue {
    r0 = self->_userDefaults;
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void)setSearchAdCampaignValue:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [NSNumber class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            [r20->_userDefaults setObject:r2 forKey:r3];
    }
    [r19 release];
    return;
}

-(double)lastSearchAdLookUpTimestamp {
    r0 = [self doubleForKey:*0x100e6e3f0];
    return r0;
}

-(void)setLastSearchAdLookUpTimestamp:(double)arg2 {
    [self setDouble:*0x100e6e3f0 forKey:r3];
    return;
}

-(long long)searchAdRetryCount {
    r0 = [self int64ForKey:*0x100e6e3f8];
    return r0;
}

-(void)setSearchAdRetryCount:(long long)arg2 {
    [self setInt64:arg2 forKey:*0x100e6e3f8];
    return;
}

-(void *)appInstanceID {
    r0 = [self stringForKey:*0x100e6e400];
    return r0;
}

-(void)setAppInstanceID:(void *)arg2 {
    [self setString:arg2 forKey:*0x100e6e400];
    return;
}

-(void *)appIDFromAdMob {
    r0 = [self stringForKey:*0x100e6e410];
    return r0;
}

-(void *)appIDFromGMP {
    r0 = [self stringForKey:*0x100e6e408];
    return r0;
}

-(void)setAppIDFromGMP:(void *)arg2 {
    [self setString:arg2 forKey:*0x100e6e408];
    return;
}

-(void)setAppIDFromAdMob:(void *)arg2 {
    [self setString:arg2 forKey:*0x100e6e410];
    return;
}

-(void *)hashedIDFA {
    r0 = [self stringForKey:*0x100e6e418];
    return r0;
}

-(void)setHashedIDFA:(void *)arg2 {
    [self setString:arg2 forKey:*0x100e6e418];
    return;
}

-(long long)measurementEnabledState {
    r21 = [[APMUserDefaults standardUserDefaults] retain];
    r19 = [self int64ForKey:*0x100e6cef0 userDefault:r21];
    [r21 release];
    r0 = r19;
    return r0;
}

-(double)lastBackoffTimestamp {
    r0 = [self doubleForKey:*0x100e6e3d0];
    return r0;
}

-(void)setLastBackoffTimestamp:(double)arg2 {
    [self setDouble:*0x100e6e3d0 forKey:r3];
    return;
}

-(void)setLastSuccessfulUploadTimestamp:(double)arg2 {
    [self setDouble:*0x100e6e3d8 forKey:r3];
    return;
}

-(double)lastSuccessfulUploadTimestamp {
    r0 = [self doubleForKey:*0x100e6e3d8];
    return r0;
}

-(double)lastFailedUploadTimestamp {
    r0 = [self doubleForKey:*0x100e6e3e0];
    return r0;
}

-(void)setLastFailedUploadTimestamp:(double)arg2 {
    [self setDouble:*0x100e6e3e0 forKey:r3];
    return;
}

-(void *)appVersion {
    r0 = [self stringForKey:*0x100e6e428];
    return r0;
}

-(void)setAppVersion:(void *)arg2 {
    [self setString:arg2 forKey:*0x100e6e428];
    return;
}

-(void *)osVersion {
    r0 = [self stringForKey:*0x100e6e430];
    return r0;
}

-(double)midnightOffset {
    r31 = r31 - 0x90;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    var_48 = &var_50;
    dispatch_sync(r19->_serialQueue, &var_80);
    r20 = *(var_48 + 0x28);
    [NSNumber class];
    if (([r20 isKindOfClass:r2] & 0x1) != 0x0) {
            [*(var_48 + 0x28) doubleValue];
            v8 = v0;
    }
    else {
            arc4random_uniform(0x5265c00);
            asm { scvtf      d0, w0 };
            asm { fdiv       d8, d0, d1 };
            [r19 setDouble:*0x100e6e438 forKey:r3];
    }
    _Block_object_dispose(&var_50, 0x8);
    r0 = [0x0 release];
    return r0;
}

-(void)setOSVersion:(void *)arg2 {
    [self setString:arg2 forKey:*0x100e6e430];
    return;
}

-(double)lastMonitorDataSampledTimestamp {
    r0 = [self doubleForKey:*0x100e6e440];
    return r0;
}

-(void)setLastMonitorDataSampledTimestamp:(double)arg2 {
    [self setDouble:*0x100e6e440 forKey:r3];
    return;
}

-(long long)firstOpenTimestampMilliseconds {
    r0 = [self int64ForKey:*0x100e6e450];
    return r0;
}

-(void)setFirstOpenTimestampMilliseconds:(long long)arg2 {
    [self setInt64:arg2 forKey:*0x100e6e450];
    return;
}

-(void *)configServerLastModifiedString {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_serialQueue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setConfigServerLastModifiedString:(void *)arg2 {
    [self setString:arg2 forKey:*0x100e6e448];
    return;
}

-(void *)deferredAnalyticsCollection {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_serialQueue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setDeferredAnalyticsCollection:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_serialQueue;
    [r0 retain];
    dispatch_sync(r20, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(void *)loadTimestampValue {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_serialQueue))), &var_70);
    [*(&var_40 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setLoadTimestampValue:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = self->_serialQueue;
    [r0 retain];
    dispatch_sync(r20, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(bool)startNewSession {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_serialQueue))), &var_60);
    _Block_object_dispose(&var_30, 0x8);
    r0 = r19;
    return r0;
}

-(void)setStartNewSession:(bool)arg2 {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_serialQueue))), &var_30);
    return;
}

-(double)engagementTimeBeforeSessionStart {
    r0 = [self doubleForKey:*0x100e6e478];
    return r0;
}

-(double)lastSessionActivityClockTime {
    r0 = [self doubleForKey:*0x100e6e470];
    return r0;
}

-(void)setLastSessionActivityClockTime:(double)arg2 {
    [self setDouble:*0x100e6e470 forKey:r3];
    return;
}

-(void)setEngagementTimeBeforeSessionStart:(double)arg2 {
    [self setDouble:*0x100e6e478 forKey:r3];
    return;
}

-(void)setSessionNumber:(long long)arg2 {
    [self setInt64:arg2 forKey:*0x100e6e480];
    return;
}

-(long long)sessionNumber {
    r0 = [self int64ForKey:*0x100e6e480];
    return r0;
}

-(long long)int64ForKey:(void *)arg2 {
    r0 = [self int64ForKey:arg2 userDefault:self->_userDefaults];
    return r0;
}

-(long long)int64ForKey:(void *)arg2 userDefault:(void *)arg3 {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            var_48 = &var_50;
            r21 = r21->_serialQueue;
            var_68 = [r20 retain];
            var_60 = [r19 retain];
            dispatch_sync(r21, &var_88);
            r21 = *(var_48 + 0x28);
            [NSNumber class];
            if ([r21 isKindOfClass:r2] != 0x0) {
                    r21 = [*(var_48 + 0x28) longLongValue];
            }
            else {
                    r21 = 0x0;
            }
            [var_60 release];
            [var_68 release];
            _Block_object_dispose(&var_50, 0x8);
            [0x0 release];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(double)doubleForKey:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r21 = r20->_serialQueue;
            var_60 = [r19 retain];
            dispatch_sync(r21, &var_88);
            [var_60 release];
            _Block_object_dispose(&var_50, 0x8);
    }
    r0 = [r19 release];
    return r0;
}

-(void *)stringForKey:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r21 = r20->_serialQueue;
            var_60 = [r19 retain];
            dispatch_sync(r21, &var_88);
            r20 = [*(&var_50 + 0x28) retain];
            [var_60 release];
            _Block_object_dispose(&var_50, 0x8);
            [0x0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)setInt64:(long long)arg2 forKey:(void *)arg3 {
    r0 = [arg3 retain];
    r21 = self->_serialQueue;
    [r0 retain];
    dispatch_sync(r21, &var_58);
    [r0 release];
    [r19 release];
    return;
}

-(void)setDouble:(double)arg2 forKey:(void *)arg3 {
    r0 = [arg2 retain];
    r20 = self->_serialQueue;
    [r0 retain];
    dispatch_sync(r20, &var_58);
    [r0 release];
    [r19 release];
    return;
}

-(void)setString:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = self->_serialQueue;
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_sync(r22, &var_58);
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)synchronizeToDisk {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_serialQueue))), &var_28);
    return;
}

-(void)scheduleSynchronizeToDisk {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(synchronizeToDisk) object:0x0];
    [self performSelector:r2 withObject:r3 afterDelay:r4];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_serialQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_userDefaults, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end