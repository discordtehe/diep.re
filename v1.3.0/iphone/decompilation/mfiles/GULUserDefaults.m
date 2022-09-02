@implementation GULUserDefaults

+(void *)standardUserDefaults {
    if (*qword_1011d1a18 != -0x1) {
            dispatch_once(0x1011d1a18, 0x100e69200);
    }
    r0 = *0x1011d1a10;
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
    r21 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r19 = r0;
    r20 = [arg2 copy];
    [r21 release];
    if (r19 != 0x0) {
            if ([r20 length] != 0x0) {
                    r0 = [r20 retain];
            }
            else {
                    r0 = **_kCFPreferencesCurrentApplication;
            }
            r19->_appNameRef = r0;
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_appNameRef));
    if (CFStringCompare(*(r19 + r20), **_kCFPreferencesCurrentApplication, 0x0) != 0x0) {
            CFRelease(*(r19 + r20));
    }
    [NSObject cancelPreviousPerformRequestsWithTarget:r19 selector:@selector(synchronize) object:0x0];
    [[&var_20 super] dealloc];
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
    r20 = self;
    r19 = [arg2 copy];
    [NSString class];
    if ([r19 isKindOfClass:r2] != 0x0 && [r19 length] != 0x0) {
            r20 = CFPreferencesCopyAppValue(r19, r20->_appNameRef);
    }
    else {
            sub_1000ac134(@"<GoogleUtilities>", 0x0, [[NSString stringWithFormat:@"I-GUL%06ld"] retain], @"Cannot get object for invalid user default key.");
            [r20 release];
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)removeObjectForKey:(void *)arg2 {
    [self setObject:r2 forKey:r3];
    return;
}

-(long long)integerForKey:(void *)arg2 {
    r0 = [self objectForKey:arg2];
    r0 = [r0 retain];
    r20 = [r0 integerValue];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)setObject:(void *)arg2 forKey:(void *)arg3 {
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
    r20 = [arg3 copy];
    [NSString class];
    if ([r20 isKindOfClass:r2] == 0x0 || [r20 length] == 0x0) goto loc_1000b3ac4;

loc_1000b39d4:
    if (r19 == 0x0) goto loc_1000b3b18;

loc_1000b39d8:
    r23 = @selector(isKindOfClass:);
    [NSString class];
    if ((objc_msgSend(r19, r23) & 0x1) != 0x0) goto loc_1000b3aac;

loc_1000b39f8:
    r23 = @selector(isKindOfClass:);
    [NSNumber class];
    if ((objc_msgSend(r19, r23) & 0x1) != 0x0) goto loc_1000b3aac;

loc_1000b3a1c:
    r23 = @selector(isKindOfClass:);
    [NSArray class];
    if ((objc_msgSend(r19, r23) & 0x1) != 0x0) goto loc_1000b3aac;

loc_1000b3a40:
    r23 = @selector(isKindOfClass:);
    [NSDictionary class];
    if ((objc_msgSend(r19, r23) & 0x1) != 0x0) goto loc_1000b3aac;

loc_1000b3a64:
    r23 = @selector(isKindOfClass:);
    [NSDate class];
    if ((objc_msgSend(r19, r23) & 0x1) != 0x0) goto loc_1000b3aac;

loc_1000b3a88:
    r23 = @selector(isKindOfClass:);
    [NSData class];
    if ((objc_msgSend(r19, r23) & 0x1) == 0x0) goto loc_1000b3b64;

loc_1000b3aac:
    r2 = r21->_appNameRef;
    r0 = r20;
    r1 = r19;
    goto loc_1000b3b2c;

loc_1000b3b2c:
    CFPreferencesSetAppValue(r0, r1, r2);
    [r21 scheduleSynchronize];
    goto loc_1000b3b40;

loc_1000b3b40:
    [r20 release];
    [r19 release];
    return;

loc_1000b3b64:
    r21 = [[NSString stringWithFormat:@"I-GUL%06ld"] retain];
    r3 = @"Cannot set invalid object to user defaults. Must be a string, number, array, dictionary, date, or data. Value: %@";
    goto loc_1000b3b00;

loc_1000b3b00:
    sub_1000ac134(@"[GoogleUtilities/UserDefaults]", 0x0, r21, r3);
    [r21 release];
    goto loc_1000b3b40;

loc_1000b3b18:
    r2 = r21->_appNameRef;
    r0 = r20;
    r1 = 0x0;
    goto loc_1000b3b2c;

loc_1000b3ac4:
    r21 = [[NSString stringWithFormat:@"I-GUL%06ld"] retain];
    r3 = @"Cannot set object for invalid user default key.";
    goto loc_1000b3b00;
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

-(void *)arrayForKey:(void *)arg2 {
    r0 = [self objectForKey:r2];
    return r0;
}

-(void *)stringForKey:(void *)arg2 {
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

-(void)synchronize {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (CFPreferencesAppSynchronize(self->_appNameRef) == 0x0) {
            sub_1000abe24(@"[GoogleUtilities/UserDefaults]", 0x0, [[NSString stringWithFormat:@"I-GUL%06ld"] retain], @"Cannot synchronize user defaults to disk");
            [r19 release];
    }
    return;
}

-(void)clearAllData {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = **_kCFPreferencesCurrentHost;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_appNameRef));
    r22 = CFPreferencesCopyKeyList(*(r19 + r23), **_kCFPreferencesCurrentUser, r20);
    if (r22 != 0x0) {
            CFPreferencesSetMultiple(0x0, r22, *(r19 + r23), **_kCFPreferencesCurrentUser, **_kCFPreferencesCurrentHost);
            CFRelease(r22);
            [r19 scheduleSynchronize];
    }
    return;
}

-(void)scheduleSynchronize {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(synchronize) object:0x0];
    [self performSelector:r2 withObject:r3 afterDelay:r4];
    return;
}

-(struct __CFString *)appNameRef {
    r0 = self->_appNameRef;
    return r0;
}

-(bool)isPreferenceFileExcluded {
    r0 = *(int8_t *)(int64_t *)&self->_isPreferenceFileExcluded & 0x1;
    return r0;
}

-(void)setIsPreferenceFileExcluded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isPreferenceFileExcluded = arg2;
    return;
}

@end