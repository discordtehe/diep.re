@implementation CLSUserDefaults

+(void *)standardUserDefaults {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d1940 != -0x1) {
            dispatch_once(0x1011d1940, &var_28);
    }
    r0 = *0x1011d1938;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [self retain];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [[r29 - 0x20 super] init];
    if (r19 != 0x0) {
            r0 = dispatch_queue_create("com.crashlytics.CLSUserDefaults.access", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_serialDictionaryQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = dispatch_queue_create("com.crashlytics.CLSUserDefaults.io", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_synchronizationQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r20 = [[r19 serialDictionaryQueue] retain];
            var_28 = [r19 retain];
            dispatch_sync(r20, &var_48);
            [r20 release];
            [var_28 release];
    }
    r0 = r19;
    return r0;
}

-(void *)generateDirectoryURLForBaseURL:(void *)arg2 hostAppBundleIdentifier:(void *)arg3 {
    r0 = [arg2 retain];
    r20 = [[r0 URLByAppendingPathComponent:@"com.crashlytics"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)generateDirectoryURL {
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 URLsForDirectory:0xe inDomains:0x1];
    r0 = [r0 retain];
    r22 = [[r0 lastObject] retain];
    [r0 release];
    [r20 release];
    r20 = [[self getEscapedAppBundleIdentifier] retain];
    r19 = [[self generateDirectoryURLForBaseURL:r22 hostAppBundleIdentifier:r20] retain];
    [r20 release];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)getEscapedAppBundleIdentifier {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 bundleIdentifier];
    r0 = [r0 retain];
    r21 = [[r0 stringByReplacingOccurrencesOfString:@"/" withString:@"_"] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)objectForKey:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self serialDictionaryQueue] retain];
    var_60 = r20;
    [r20 retain];
    dispatch_sync(r21, &var_88);
    [r21 release];
    [*(&var_50 + 0x28) retain];
    [var_60 release];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)stringForKey:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self objectForKey:r2] retain];
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r19 retain];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)boolForKey:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self objectForKey:r2] retain];
    if (r19 != 0x0) {
            [NSNumber class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r19 boolValue];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(long long)integerForKey:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self objectForKey:r2] retain];
    if (r19 != 0x0) {
            [NSNumber class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r19 integerValue];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setObject:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[self serialDictionaryQueue] retain];
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_sync(r22, &var_58);
    [r22 release];
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)setString:(void *)arg2 forKey:(void *)arg3 {
    [arg2 retain];
    [self setObject:r2 forKey:r3];
    [r22 release];
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

-(void)setInteger:(long long)arg2 forKey:(void *)arg3 {
    [arg3 retain];
    [[NSNumber numberWithInteger:arg2] retain];
    [self setObject:r2 forKey:r3];
    [r23 release];
    [r19 release];
    return;
}

-(void)removeObjectForKey:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[self serialDictionaryQueue] retain];
    [r20 retain];
    dispatch_sync(r21, &var_50);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)removeAllObjects {
    r0 = [self serialDictionaryQueue];
    r0 = [r0 retain];
    dispatch_sync(r0, &var_38);
    [r20 release];
    return;
}

-(void *)dictionaryRepresentation {
    r0 = [self serialDictionaryQueue];
    r0 = [r0 retain];
    dispatch_sync(r0, &var_80);
    [r20 release];
    [*(&var_50 + 0x28) retain];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)synchronize {
    r31 = r31 - 0x100;
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
    r19 = self;
    r0 = [self serialDictionaryQueue];
    r29 = &saved_fp;
    r0 = [r0 retain];
    dispatch_sync(r0, &var_90);
    [r21 release];
    *(int8_t *)(int64_t *)&r19->_synchronizeWroteToDisk = *(int8_t *)((&saved_fp - 0x60) + 0x18);
    if (*(int8_t *)((&saved_fp - 0x60) + 0x18) != 0x0) {
            r21 = [[r19 dictionaryRepresentation] retain];
            r22 = [[r19 synchronizationQueue] retain];
            [r21 retain];
            dispatch_sync(r22, &var_C0);
            [r22 release];
            r0 = [r19 serialDictionaryQueue];
            r29 = r29;
            r0 = [r0 retain];
            dispatch_sync(r0, &var_E8);
            [r20 release];
            [r21 release];
            [r21 release];
    }
    _Block_object_dispose(r29 - 0x60, 0x8);
    return;
}

-(void *)loadDefaults {
    r0 = [self synchronizationQueue];
    r0 = [r0 retain];
    dispatch_sync(r0, &var_80);
    [r20 release];
    [*(&var_50 + 0x28) retain];
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(bool)synchronizeWroteToDisk {
    r0 = *(int8_t *)(int64_t *)&self->_synchronizeWroteToDisk;
    return r0;
}

-(void)setSynchronizeWroteToDisk:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_synchronizeWroteToDisk = arg2;
    return;
}

-(void *)objectForKeyByMigratingFromNSUserDefaults:(void *)arg2 {
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
    r23 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [r23 objectForKey:r2];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r22 = [r20 retain];
            }
            else {
                    r21 = @selector(objectForKey:);
                    r0 = [NSUserDefaults standardUserDefaults];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = objc_msgSend(r0, r21);
                    r29 = r29;
                    r21 = [r0 retain];
                    [r24 release];
                    if (r21 != 0x0) {
                            r22 = @selector(standardUserDefaults);
                            [r23 setObject:r21 forKey:r19];
                            r0 = objc_msgSend(@class(CLSUserDefaults), r22);
                            r0 = [r0 retain];
                            [r0 synchronize];
                            [r0 release];
                            r0 = @class(NSUserDefaults);
                            r0 = objc_msgSend(r0, r22);
                            r0 = [r0 retain];
                            [r0 removeObjectForKey:r2];
                            [r23 release];
                            r0 = @class(NSUserDefaults);
                            r0 = objc_msgSend(r0, r22);
                            r0 = [r0 retain];
                            [r0 synchronize];
                            [r0 release];
                            r22 = [r21 retain];
                    }
                    else {
                            r22 = 0x0;
                    }
                    [r21 release];
            }
            [r20 release];
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)migrateFromNSUserDefaults:(void *)arg2 {
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
    var_1E0 = self;
    r0 = [arg2 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1F0 = r1;
    var_1E8 = r0;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            r20 = 0x0;
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_1E8);
                            }
                            r24 = @selector(objectForKey:);
                            r21 = @selector(standardUserDefaults);
                            r26 = *(0x0 + r22 * 0x8);
                            r0 = objc_msgSend(@class(NSUserDefaults), r21);
                            r0 = [r0 retain];
                            r28 = r0;
                            r0 = objc_msgSend(r0, r24);
                            r29 = r29;
                            r27 = [r0 retain];
                            [r28 release];
                            if (r27 != 0x0) {
                                    [var_1E0 setObject:r2 forKey:r3];
                                    r20 = 0x1;
                            }
                            [r27 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r23 = objc_msgSend(var_1E8, var_1F0);
            } while (r23 != 0x0);
            if ((r20 & 0x1) != 0x0) {
                    r0 = [CLSUserDefaults standardUserDefaults];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 synchronize];
                    [r23 release];
                    var_1C8 = q0;
                    r0 = [var_1E8 retain];
                    r23 = r0;
                    r24 = objc_msgSend(r0, var_1F0);
                    if (r24 != 0x0) {
                            r19 = *var_1C8;
                            do {
                                    r28 = 0x0;
                                    do {
                                            if (*var_1C8 != r19) {
                                                    objc_enumerationMutation(r23);
                                            }
                                            r25 = @selector(removeObjectForKey:);
                                            r21 = @selector(standardUserDefaults);
                                            r0 = objc_msgSend(@class(NSUserDefaults), r21);
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            objc_msgSend(r0, r25);
                                            [r27 release];
                                            r28 = r28 + 0x1;
                                    } while (r28 < r24);
                                    r24 = objc_msgSend(r23, var_1F0);
                            } while (r24 != 0x0);
                    }
                    r22 = @selector(synchronize);
                    r21 = @selector(standardUserDefaults);
                    [r23 release];
                    r0 = objc_msgSend(@class(NSUserDefaults), r21);
                    r0 = [r0 retain];
                    objc_msgSend(r0, r22);
                    [r20 release];
            }
    }
    var_58 = **___stack_chk_guard;
    [var_1E8 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)directoryURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_directoryURL)), 0x0);
    return r0;
}

-(void *)fileURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_fileURL)), 0x0);
    return r0;
}

-(void *)persistedDataDictionary {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_persistedDataDictionary)), 0x0);
    return r0;
}

-(void *)dataDictionary {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_dataDictionary)), 0x0);
    return r0;
}

-(void *)serialDictionaryQueue {
    r0 = self->_serialDictionaryQueue;
    return r0;
}

-(void *)synchronizationQueue {
    r0 = self->_synchronizationQueue;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_synchronizationQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_serialDictionaryQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_dataDictionary, 0x0);
    objc_storeStrong((int64_t *)&self->_persistedDataDictionary, 0x0);
    objc_storeStrong((int64_t *)&self->_fileURL, 0x0);
    objc_storeStrong((int64_t *)&self->_directoryURL, 0x0);
    return;
}

@end