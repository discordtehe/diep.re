@implementation APMUserDefaults

+(bool)userPreferenceEnabled {
    if (*qword_1011d2090 != -0x1) {
            dispatch_once(0x1011d2090, 0x100e6eec0);
    }
    return *(int8_t *)0x1011d2088;
}

+(void *)standardUserDefaults {
    if (*qword_1011d20a0 != -0x1) {
            dispatch_once(0x1011d20a0, 0x100e6ef00);
    }
    r0 = *0x1011d2098;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r0 = [self initWithSuiteName:0x0];
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 copy];
            r21 = (int64_t *)&r20->_suiteName;
            r8 = *r21;
            *r21 = r0;
            [r8 release];
            r0 = *r21;
            r0 = [r0 length];
            r8 = *_kCFPreferencesCurrentApplication;
            if (r0 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = r21;
                    }
                    else {
                            r8 = *_kCFPreferencesCurrentApplication;
                            r8 = r8;
                    }
            }
            r20->_appNameRef = *r8;
            r0 = [APMUserDefaults userPreferenceEnabled];
            *(int8_t *)(int64_t *)&r20->_useCFPreferencesLibrary = r0;
            if ((r0 & 0x1) == 0x0) {
                    r0 = sub_10018f170();
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_userDefaults));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(synchronize) object:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)setUseCFPreferencesLibrary:(bool)arg2 {
    r0 = dispatch_get_global_queue(0x0, 0x0);
    r0 = [r0 retain];
    dispatch_sync(r0, &var_50);
    [r21 release];
    return;
}

-(void)removeObjectForKey:(void *)arg2 {
    r0 = self;
    r8 = arg2;
    if (*(int8_t *)(int64_t *)&r0->_useCFPreferencesLibrary != 0x0) {
            [r0 setObject:r2 forKey:r3];
    }
    else {
            [r0->_userDefaults removeObjectForKey:r2];
    }
    return;
}

-(void *)objectForKey:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [r0 copy];
    [NSString class];
    if ([r20 isKindOfClass:r2] != 0x0 && [r20 length] != 0x0) {
            if (*(int8_t *)(int64_t *)&r21->_useCFPreferencesLibrary != 0x0) {
                    r0 = CFPreferencesCopyAppValue(r20, r21->_appNameRef);
            }
            else {
                    r0 = r21->_userDefaults;
                    r0 = [r0 objectForKey:r2];
                    r0 = [r0 retain];
            }
            r21 = r0;
    }
    else {
            sub_1000ac134(*0x100e6cf88, 0x0, [[NSString stringWithFormat:@"I-ACS%06ld"] retain], @"Cannot get object for invalid user default key.");
            [r22 release];
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void)setObject:(void *)arg2 forKey:(void *)arg3 {
    r31 = r31 - 0x60;
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
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r21 = [r0 copy];
    [NSString class];
    if ([r21 isKindOfClass:r2] == 0x0 || [r21 length] == 0x0) goto loc_10018f698;

loc_10018f598:
    if (r19 == 0x0) goto loc_10018f6f4;

loc_10018f59c:
    r24 = @selector(isKindOfClass:);
    [NSString class];
    if ((objc_msgSend(r19, r24) & 0x1) != 0x0) goto loc_10018f670;

loc_10018f5bc:
    r24 = @selector(isKindOfClass:);
    [NSNumber class];
    if ((objc_msgSend(r19, r24) & 0x1) != 0x0) goto loc_10018f670;

loc_10018f5e0:
    r24 = @selector(isKindOfClass:);
    [NSArray class];
    if ((objc_msgSend(r19, r24) & 0x1) != 0x0) goto loc_10018f670;

loc_10018f604:
    r24 = @selector(isKindOfClass:);
    [NSDictionary class];
    if ((objc_msgSend(r19, r24) & 0x1) != 0x0) goto loc_10018f670;

loc_10018f628:
    r24 = @selector(isKindOfClass:);
    [NSDate class];
    if ((objc_msgSend(r19, r24) & 0x1) != 0x0) goto loc_10018f670;

loc_10018f64c:
    r24 = @selector(isKindOfClass:);
    [NSData class];
    if ((objc_msgSend(r19, r24) & 0x1) == 0x0) goto loc_10018f79c;

loc_10018f670:
    if (*(int8_t *)(int64_t *)&r22->_useCFPreferencesLibrary == 0x0) goto loc_10018f720;

loc_10018f680:
    r2 = r22->_appNameRef;
    r0 = r21;
    r1 = r19;
    goto loc_10018f718;

loc_10018f718:
    CFPreferencesSetAppValue(r0, r1, r2);
    goto loc_10018f75c;

loc_10018f75c:
    [r22 scheduleSynchronize];
    goto loc_10018f76c;

loc_10018f76c:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10018f720:
    r0 = r22->_userDefaults;
    goto loc_10018f754;

loc_10018f754:
    [r0 setObject:r2 forKey:r3];
    goto loc_10018f75c;

loc_10018f79c:
    r23 = [[NSString stringWithFormat:@"I-ACS%06ld"] retain];
    r3 = @"Cannot set invalid object to user defaults. Must be a string or number or an array. Value %@";
    goto loc_10018f6d8;

loc_10018f6d8:
    sub_1000ac134(*0x100e6cf88, 0x0, r23, r3);
    [r23 release];
    goto loc_10018f76c;

loc_10018f6f4:
    if (*(int8_t *)(int64_t *)&r22->_useCFPreferencesLibrary == 0x0) goto loc_10018f73c;

loc_10018f704:
    r2 = r22->_appNameRef;
    r0 = r21;
    r1 = 0x0;
    goto loc_10018f718;

loc_10018f73c:
    r0 = r22->_userDefaults;
    goto loc_10018f754;

loc_10018f698:
    r23 = [[NSString stringWithFormat:@"I-ACS%06ld"] retain];
    r3 = @"Cannot set object for invalid user default key.";
    goto loc_10018f6d8;
}

-(long long)integerForKey:(void *)arg2 {
    r0 = [self objectForKey:arg2];
    r0 = [r0 retain];
    r20 = [r0 integerValue];
    [r0 release];
    r0 = r20;
    return r0;
}

-(float)floatForKey:(void *)arg2 {
    r0 = [self objectForKey:arg2];
    r0 = [r0 retain];
    [r0 floatValue];
    r0 = [r0 release];
    return r0;
}

-(double)doubleForKey:(void *)arg2 {
    r0 = [self objectForKey:arg2];
    r0 = [r0 retain];
    [r0 doubleValue];
    r0 = [r0 release];
    return r0;
}

-(bool)boolForKey:(void *)arg2 {
    r0 = [self objectForKey:arg2];
    r0 = [r0 retain];
    r20 = [r0 boolValue];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)stringForKey:(void *)arg2 {
    r0 = [self objectForKey:r2];
    return r0;
}

-(void *)arrayForKey:(void *)arg2 {
    r0 = [self objectForKey:r2];
    return r0;
}

-(void *)dictionaryForKey:(void *)arg2 {
    r0 = [self objectForKey:r2];
    return r0;
}

-(void)setInteger:(long long)arg2 forKey:(void *)arg3 {
    [arg3 retain];
    [[NSNumber numberWithInteger:arg2] retain];
    [self setObject:r2 forKey:r3];
    [r23 release];
    [r19 release];
    return;
}

-(void)setFloat:(float)arg2 forKey:(void *)arg3 {
    [arg2 retain];
    [[NSNumber numberWithFloat:r2] retain];
    [self setObject:r2 forKey:r3];
    [r22 release];
    [r20 release];
    return;
}

-(void)setDouble:(double)arg2 forKey:(void *)arg3 {
    [arg2 retain];
    [[NSNumber numberWithDouble:r2] retain];
    [self setObject:r2 forKey:r3];
    [r22 release];
    [r20 release];
    return;
}

-(void)setBool:(bool)arg2 forKey:(void *)arg3 {
    [arg3 retain];
    [[NSNumber numberWithBool:arg2] retain];
    [self setObject:r2 forKey:r3];
    [r23 release];
    [r19 release];
    return;
}

-(bool)useCFPreferencesLibrary {
    r0 = *(int8_t *)(int64_t *)&self->_useCFPreferencesLibrary;
    return r0;
}

-(void)scheduleSynchronize {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(synchronize) object:0x0];
    [self performSelector:r2 withObject:r3 afterDelay:r4];
    return;
}

-(void)synchronize {
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
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_useCFPreferencesLibrary != 0x0) {
            if (CFPreferencesAppSynchronize(r19->_appNameRef) == 0x0) {
                    r0 = [NSString stringWithFormat:@"I-ACS%06ld"];
                    r29 = r29;
                    sub_1000abe24(*0x100e6cf88, 0x0, [r0 retain], @"Cannot synchronize user defaults to disk");
                    [r21 release];
            }
    }
    else {
            [r19->_userDefaults synchronize];
    }
    r0 = sub_1001977ec();
    r29 = r29;
    r20 = [r0 retain];
    r0 = [r19 retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([r19 isPreferenceFileExcluded] & 0x1) == 0x0) {
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 fileExistsAtPath:r20];
            [r0 release];
            if (r22 != 0x0) {
                    r0 = sub_100197728(r20, &var_38);
                    r21 = [var_38 retain];
                    if (r0 != 0x0) {
                            [r19 setIsPreferenceFileExcluded:0x1];
                    }
                    else {
                            sub_1000ac134(*0x100e6cf88, 0x0, [[NSString stringWithFormat:@"I-ACS%06ld"] retain], @"Failed to exclude preferences file from backup. Error code %@");
                            [r22 release];
                    }
                    [r21 release];
            }
    }
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)clearAllData {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_useCFPreferencesLibrary == 0x0) goto loc_10018fc40;

loc_10018fbe0:
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_appNameRef));
    r21 = CFPreferencesCopyKeyList(*(r19 + r22), **_kCFPreferencesCurrentUser, **_kCFPreferencesAnyHost);
    if (r21 == 0x0) goto .l2;

loc_10018fc14:
    CFPreferencesSetMultiple(0x0, r21, *(r19 + r22), **_kCFPreferencesCurrentUser, **_kCFPreferencesCurrentHost);
    CFRelease(r21);
    goto loc_10018fcf0;

loc_10018fcf0:
    [r19 scheduleSynchronize];
    return;

.l2:
    return;

loc_10018fc40:
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_suiteName));
    if ([*(r19 + r20) length] != 0x0) {
            [r19->_userDefaults removePersistentDomainForName:*(r19 + r20)];
    }
    else {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r21 = [[r0 bundleIdentifier] retain];
            [r0 release];
            [r19->_userDefaults removePersistentDomainForName:r21];
            [r21 release];
    }
    goto loc_10018fcf0;
}

-(bool)isPreferenceFileExcluded {
    r0 = *(int8_t *)(int64_t *)&self->_isPreferenceFileExcluded & 0x1;
    return r0;
}

-(void)setIsPreferenceFileExcluded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isPreferenceFileExcluded = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userDefaults, 0x0);
    objc_storeStrong((int64_t *)&self->_suiteName, 0x0);
    return;
}

@end