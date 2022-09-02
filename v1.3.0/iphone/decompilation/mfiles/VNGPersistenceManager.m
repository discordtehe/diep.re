@implementation VNGPersistenceManager

+(void *)sharedManager {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011da8c0 != -0x1) {
            dispatch_once(0x1011da8c0, &var_28);
    }
    r0 = *0x1011da8b8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setMinimumFileSystemSizeForInitDebugEnabled:0x0];
            [r19 setMinimumFileSystemSizeForAdRequestDebugEnabled:0x0];
            [r19 setMinimumFileSystemSizeForAssetDownloadDebugEnabled:0x0];
    }
    r0 = r19;
    return r0;
}

-(void *)loadObjectWithClass:(void *)arg2 key:(void *)arg3 error:(void * *)arg4 {
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
    r20 = arg4;
    r22 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    if ([r22 conformsToProtocol:@protocol(VNGPersistable)] != 0x0) {
            r23 = [[r22 category] retain];
            r20 = [[r21 loadObjectWithChannel:[r22 channel] category:r23 key:r19 error:r20] retain];
            [r23 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)saveObject:(void *)arg2 channel:(long long)arg3 category:(void *)arg4 key:(void *)arg5 overwrite:(bool)arg6 error:(void * *)arg7 {
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
    r21 = arg7;
    r26 = arg3;
    r23 = self;
    r25 = [arg2 retain];
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    r22 = [[r23 URLForChannel:r26 category:r19 key:r20 error:r21] retain];
    r0 = [NSKeyedArchiver archivedDataWithRootObject:r25];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r25 release];
    if (r22 != 0x0) {
            asm { ccmp       x24, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & NE) {
            r25 = 0x0;
    }
    else {
            r25 = [r24 writeToURL:r22 atomically:0x1];
            if (r21 != 0x0 && r25 == 0x0) {
                    r0 = [NSNumber numberWithInteger:r26];
                    r0 = [r0 retain];
                    r27 = [[NSString stringWithFormat:@"Failed to save object, {%@.%@.%@}"] retain];
                    [r0 release];
                    *r21 = [[[r23 errorWithPersistenceError:0xffffffffffffec78 description:r27] retain] autorelease];
                    [r27 release];
            }
    }
    [r24 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r25;
    return r0;
}

-(bool)saveObject:(void *)arg2 error:(void * *)arg3 {
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
    r21 = arg3;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [[NSKeyedArchiver archivedDataWithRootObject:r19] retain];
    r22 = [r19 persistenceChannel];
    r26 = [[r19 persistenceCategory] retain];
    r28 = [[r19 persistenceKey] retain];
    r0 = [r23 URLForChannel:r22 category:r26 key:r28 error:r21];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r28 release];
    [r26 release];
    if (r22 == 0x0) goto loc_100616b7c;

loc_100616a6c:
    if (r20 == 0x0) goto loc_100616c50;

loc_100616a70:
    r26 = [r20 writeToURL:r22 atomically:0x1];
    if (r21 != 0x0 && r26 == 0x0) {
            r27 = [[NSNumber numberWithInteger:[r19 persistenceChannel]] retain];
            r25 = [[r19 persistenceCategory] retain];
            r0 = [r19 persistenceKey];
            r0 = [r0 retain];
            r28 = [[NSString stringWithFormat:@"Error writing object to: {%@.%@.%@}"] retain];
            [r0 release];
            [r25 release];
            [r27 release];
            *r21 = [[[r23 errorWithPersistenceError:0xffffffffffffec7e description:r28] retain] autorelease];
            [r28 release];
    }
    goto loc_100616d38;

loc_100616d38:
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = r26;
    return r0;

loc_100616c50:
    if (r21 == 0x0) goto loc_100616d34;

loc_100616c54:
    r27 = [[NSNumber numberWithInteger:[r19 persistenceChannel]] retain];
    r25 = [[r19 persistenceCategory] retain];
    r0 = [r19 persistenceKey];
    r0 = [r0 retain];
    r26 = [[NSString stringWithFormat:@"Failed to archive object, {%@.%@.%@}"] retain];
    [r0 release];
    [r25 release];
    [r27 release];
    r0 = [r23 errorWithPersistenceError:0xffffffffffffec78 description:r26];
    goto loc_100616d20;

loc_100616d20:
    *r21 = [[r0 retain] autorelease];
    [r26 release];
    goto loc_100616d34;

loc_100616d34:
    r26 = 0x0;
    goto loc_100616d38;

loc_100616b7c:
    if (r21 == 0x0) goto loc_100616d34;

loc_100616b80:
    r27 = [[NSNumber numberWithInteger:[r19 persistenceChannel]] retain];
    r25 = [[r19 persistenceCategory] retain];
    r0 = [r19 persistenceKey];
    r0 = [r0 retain];
    r26 = [[NSString stringWithFormat:@"Unable to generate URL for {%@.%@.%@}"] retain];
    [r0 release];
    [r25 release];
    [r27 release];
    r0 = [r23 errorWithPersistenceError:0xffffffffffffec7d description:r26];
    goto loc_100616d20;
}

-(bool)saveObjects:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x140;
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
    r19 = arg3;
    r21 = self;
    r20 = [arg2 retain];
    if (r19 != 0x0) {
            *r19 = 0x0;
    }
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    r0 = objc_msgSend(r20, r1);
    if (r0 != 0x0) {
            r24 = r0;
            r28 = *var_110;
            r23 = 0x1;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r20);
                            }
                            r26 = [r21 saveObject:r2 error:r3];
                            r0 = [0x0 retain];
                            r27 = r0;
                            r23 = r23 & r26;
                            r8 = *r19;
                            if (r8 == 0x0) {
                                    if (!CPU_FLAGS & E) {
                                            r0 = r8;
                                    }
                                    else {
                                            r0 = r0;
                                    }
                            }
                            *r19 = objc_retainAutorelease(r0);
                            [r27 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r24);
                    r0 = objc_msgSend(r20, var_130);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    else {
            r23 = 0x1;
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)loadObjectsWithClass:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = arg2;
    r21 = self;
    r0 = [NSArray array];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if ([r22 conformsToProtocol:@protocol(VNGPersistable)] != 0x0) {
            r23 = [r22 channel];
            r22 = [[r22 category] retain];
            r20 = [[r21 loadObjectsAtChannel:r23 category:r22 error:r20] retain];
            [r19 release];
            [r22 release];
            r19 = r20;
    }
    else {
            r24 = [NSStringFromClass(r22) retain];
            r0 = [NSString stringWithFormat:r2];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
            if (r20 != 0x0) {
                    *r20 = [[[r21 errorWithPersistenceError:0xffffffffffffec7f description:r22] retain] autorelease];
            }
            [r22 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)loadURLsForObjectsWithClass:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = arg2;
    r21 = self;
    r0 = [NSArray array];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if ([r22 conformsToProtocol:@protocol(VNGPersistable)] != 0x0) {
            r23 = [r22 channel];
            r22 = [[r22 category] retain];
            r20 = [[r21 loadObjectURLsAtChannel:r23 category:r22 error:r20] retain];
            [r19 release];
            [r22 release];
            r19 = r20;
    }
    else {
            r24 = [NSStringFromClass(r22) retain];
            r0 = [NSString stringWithFormat:r2];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
            if (r20 != 0x0) {
                    *r20 = [[[r21 errorWithPersistenceError:0xffffffffffffec7f description:r22] retain] autorelease];
            }
            [r22 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)loadObject:(void *)arg2 error:(void * *)arg3 {
    r0 = [arg2 retain];
    r21 = [r0 persistenceChannel];
    r23 = [[r0 persistenceCategory] retain];
    r24 = [[r0 persistenceKey] retain];
    [r0 release];
    r19 = [[self loadObjectWithChannel:r21 category:r23 key:r24 error:arg3] retain];
    [r24 release];
    [r23 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)loadObjectWithChannel:(long long)arg2 category:(void *)arg3 key:(void *)arg4 error:(void * *)arg5 {
    r31 = r31 - 0x70;
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
    r21 = arg5;
    r25 = arg2;
    r24 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r22 = [[r24 URLForChannel:r25 category:r19 key:r20 error:r21] retain];
    r0 = [NSData dataWithContentsOfURL:r22];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) goto loc_1006175a4;

loc_1006174e8:
    r0 = [NSKeyedUnarchiver unarchiveObjectWithData:r23];
    r29 = r29;
    r26 = [r0 retain];
    if (r21 == 0x0 || r26 != 0x0) goto loc_100617608;

loc_100617514:
    r0 = [NSNumber numberWithInteger:r25];
    r0 = [r0 retain];
    r26 = [[NSString stringWithFormat:@"Failed to unarchive object, {%@.%@.%@}"] retain];
    [r0 release];
    *r21 = [[[r24 errorWithPersistenceError:0xffffffffffffec78 description:r26] retain] autorelease];
    r0 = r26;
    goto loc_100617600;

loc_100617600:
    [r0 release];
    goto loc_100617604;

loc_100617604:
    r26 = 0x0;
    goto loc_100617608;

loc_100617608:
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r0 = [r26 autorelease];
    return r0;

loc_1006175a4:
    if (r21 == 0x0) goto loc_100617604;

loc_1006175a8:
    r25 = [[NSString stringWithFormat:@"No file found at %@"] retain];
    *r21 = [[[r24 errorWithPersistenceError:0xffffffffffffec7c description:r25] retain] autorelease];
    r0 = r25;
    goto loc_100617600;
}

-(void *)loadObjectURLsAtChannel:(long long)arg2 category:(void *)arg3 error:(void * *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r0 = [self URLForChannel:arg2 category:arg3 key:0x0 error:r20];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r20 = [[r0 contentsOfDirectoryAtURL:r19 includingPropertiesForKeys:**___NSArray0__ options:0x0 error:r20] retain];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)loadObjectsAtChannel:(long long)arg2 category:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x170;
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
    r23 = [arg3 retain];
    r0 = [NSMutableArray array];
    r0 = [r0 retain];
    var_130 = arg4;
    var_128 = r0;
    var_150 = self;
    r0 = [self loadObjectURLsAtChannel:arg2 category:r23 error:arg4];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r23 release];
    var_110 = q0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r19;
    var_158 = r1;
    r0 = objc_msgSend(r19, r1);
    if (r0 != 0x0) {
            r24 = r0;
            r19 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r19) {
                                    objc_enumerationMutation(var_138);
                            }
                            r25 = *(var_118 + r22 * 0x8);
                            r20 = [[NSData dataWithContentsOfURL:r25] retain];
                            r0 = @class(NSKeyedUnarchiver);
                            r0 = [r0 unarchiveObjectWithData:r20];
                            r29 = r29;
                            r0 = [r0 retain];
                            r23 = r0;
                            if (r0 != 0x0) {
                                    [var_128 addObject:r23];
                            }
                            else {
                                    if (var_130 != 0x0) {
                                            r25 = [[NSString stringWithFormat:r2] retain];
                                            r0 = [var_150 errorWithPersistenceError:r2 description:r3];
                                            r29 = r29;
                                            *var_130 = [[r0 retain] autorelease];
                                            [r25 release];
                                    }
                            }
                            [r23 release];
                            [r20 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r24);
                    r0 = objc_msgSend(var_138, var_158);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_138 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_128 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)removeObjectWithChannel:(long long)arg2 category:(void *)arg3 key:(void *)arg4 error:(void * *)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg5;
    r23 = [arg3 retain];
    r0 = [self URLForChannel:arg2 category:r23 key:arg4 error:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r23 release];
    if (r20 != 0x0) {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r19 = [r0 removeItemAtURL:r20 error:r19];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)removeObject:(void *)arg2 error:(void * *)arg3 {
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
    r20 = arg3;
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r21 = [r0 persistenceChannel];
    r26 = [[r19 persistenceCategory] retain];
    r27 = [[r19 persistenceKey] retain];
    r0 = [r22 URLForChannel:r21 category:r26 key:r27 error:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r27 release];
    [r26 release];
    if (r21 != 0x0) {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r20 = [r0 removeItemAtURL:r21 error:r20];
            [r0 release];
    }
    else {
            if (r20 != 0x0) {
                    r25 = [[NSNumber numberWithInteger:[r19 persistenceChannel]] retain];
                    r23 = [[r19 persistenceCategory] retain];
                    r0 = [r19 persistenceKey];
                    r0 = [r0 retain];
                    r26 = [[NSString stringWithFormat:@"Path for {%@.%@.%@} not available."] retain];
                    [r0 release];
                    [r23 release];
                    [r25 release];
                    *r20 = [[[r22 errorWithPersistenceError:0xffffffffffffec7b description:r26] retain] autorelease];
                    [r26 release];
                    r20 = 0x0;
            }
    }
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)removeAllObjectsInChannel:(long long)arg2 category:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r23 = arg2;
    r22 = self;
    r19 = [arg3 retain];
    r0 = [r22 URLForChannel:r23 category:r19 key:0x0 error:r20];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            [r0 removeItemAtURL:r21 error:r20];
            [r0 release];
            r20 = 0x1;
    }
    else {
            if (r20 != 0x0) {
                    r0 = [NSNumber numberWithInteger:r23];
                    r0 = [r0 retain];
                    r24 = [[NSString stringWithFormat:@"Path for {%@.%@} not available."] retain];
                    [r0 release];
                    *r20 = [[[r22 errorWithPersistenceError:0xffffffffffffec7b description:r24] retain] autorelease];
                    [r24 release];
                    r20 = 0x0;
            }
    }
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)loadObjectsWithURLs:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x180;
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
    r19 = arg3;
    var_140 = self;
    r20 = [arg2 retain];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    var_138 = [r0 retain];
    var_110 = q0;
    r0 = [r20 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_100617d2c;

loc_100617ad8:
    r24 = r0;
    r21 = *var_110;
    goto loc_100617ae8;

loc_100617ae8:
    r25 = 0x0;
    goto loc_100617b2c;

loc_100617b2c:
    if (*var_110 != r21) {
            objc_enumerationMutation(r22);
    }
    r20 = *(var_118 + r25 * 0x8);
    r0 = [NSData dataWithContentsOfURL:r20 options:0x0 error:r19];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == 0x0) goto loc_100617bac;

loc_100617b74:
    r0 = [NSKeyedUnarchiver unarchiveObjectWithData:r23];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100617cd0;

loc_100617b98:
    [var_138 addObject:r2];
    goto loc_100617bfc;

loc_100617bfc:
    [r20 release];
    goto loc_100617c04;

loc_100617c04:
    [r23 release];
    r25 = r25 + 0x1;
    if (r25 < r24) goto loc_100617b2c;

loc_100617d0c:
    r0 = objc_msgSend(r22, var_150);
    r24 = r0;
    if (r0 != 0x0) goto loc_100617ae8;

loc_100617d2c:
    var_60 = **___stack_chk_guard;
    [r22 release];
    [r22 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_138 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100617cd0:
    if (r19 == 0x0) goto loc_100617d04;

loc_100617cd4:
    r0 = [var_140 errorWithPersistenceError:0xffffffffffffec78 description:@"Failed to unarchive object, could be corrupted object"];
    r29 = r29;
    *r19 = [[r0 retain] autorelease];
    if ((r20 & 0x1) == 0x0) goto loc_100617c04;

loc_100617d7c:
    r0 = objc_exception_rethrow();
    return r0;

loc_100617d04:
    if (r20 == 0x0) goto loc_100617c04;
    goto loc_100617d7c;

loc_100617bac:
    if (r19 == 0x0) goto loc_100617c04;

loc_100617bb0:
    r20 = [[NSString stringWithFormat:@"No file found at %@"] retain];
    r0 = [var_140 errorWithPersistenceError:0xffffffffffffec7a description:r20];
    r29 = r29;
    *r19 = [[r0 retain] autorelease];
    goto loc_100617bfc;
}

-(bool)removeAllObjectsInChannel:(long long)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = arg2;
    r21 = self;
    r0 = [self URLForChannel:r2 category:0x0 key:0x0 error:r20];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r20 = [r0 removeItemAtURL:r19 error:r20];
            [r0 release];
    }
    else {
            if (r20 != 0x0) {
                    r0 = [NSNumber numberWithInteger:r22];
                    r0 = [r0 retain];
                    r23 = [[NSString stringWithFormat:@"Path for channel %@ not available."] retain];
                    [r0 release];
                    *r20 = [[[r21 errorWithPersistenceError:0xffffffffffffec7b description:r23] retain] autorelease];
                    [r23 release];
                    r20 = 0x0;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)removeAllObjects:(void * *)arg2 {
    r31 = r31 - 0x70;
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
    r19 = arg2;
    r21 = self;
    r20 = [self removeAllObjectsInChannel:r2 error:r3];
    r25 = [0x0 retain];
    if (r19 != 0x0 && r25 != 0x0) {
            *r19 = objc_retainAutorelease(r25);
    }
    r23 = [r21 removeAllObjectsInChannel:r2 error:r3];
    r24 = [r25 retain];
    [r25 release];
    if (r19 != 0x0 && r24 != 0x0) {
            *r19 = objc_retainAutorelease(r24);
    }
    r21 = [r21 removeAllObjectsInChannel:r2 error:r3];
    r22 = [r24 retain];
    [r24 release];
    if (r19 != 0x0 && r22 != 0x0) {
            *r19 = objc_retainAutorelease(r22);
    }
    [r22 release];
    r0 = r20 & r23 & r21;
    return r0;
}

-(bool)removeFileAtURL:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r20 = [r0 removeItemAtURL:r21 error:&var_28];
    [r21 release];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)URLForObject:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = [r0 persistenceChannel];
    r22 = [[r0 persistenceCategory] retain];
    r23 = [[r0 persistenceKey] retain];
    [r0 release];
    r0 = [self URLForChannel:r20 category:r22 key:r23 error:&var_38];
    r19 = [r0 retain];
    [r23 release];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)URLForTemporaryDownloadDir {
    r0 = [self URLForChannel:0x1 category:@"download" key:0x0 error:0x0];
    return r0;
}

-(void *)URLForTemporaryDownloadFileWithKey:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self URLForTemporaryDownloadDir];
    r0 = [r0 retain];
    r20 = [[r0 URLByAppendingPathComponent:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)errorWithPersistenceError:(long long)arg2 description:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r23 = [arg3 retain];
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
    r19 = [[NSError errorWithDomain:@"com.vungle.persistence" code:arg2 userInfo:r21] retain];
    [r23 release];
    [r21 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)URLForChannel:(long long)arg2 category:(void *)arg3 key:(void *)arg4 error:(void * *)arg5 {
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
    var_58 = arg5;
    r23 = arg2;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r23 == 0x2) goto loc_10061867c;

loc_100618638:
    if (r23 == 0x1) goto loc_1006186b4;

loc_100618640:
    if (r23 != 0x0) goto loc_1006186f8;

loc_100618644:
    r0 = [r21 URLsForDirectory:0xe inDomains:0x1];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 firstObject];
    r29 = r29;
    goto loc_1006186e4;

loc_1006186e4:
    r25 = [r0 retain];
    [r23 release];
    goto loc_1006186fc;

loc_1006186fc:
    r0 = [r25 URLByAppendingPathComponent:@"com.vungle"];
    r29 = r29;
    r23 = [r0 retain];
    [r25 release];
    if ([r19 length] != 0x0) {
            r0 = [r23 URLByAppendingPathComponent:r19];
            r29 = r29;
            r25 = [r0 retain];
            [r23 release];
            r23 = r25;
    }
    else {
            r25 = r23;
    }
    r0 = [r23 path];
    r29 = r29;
    r28 = [r0 retain];
    r22 = [r21 fileExistsAtPath:r28];
    [r28 release];
    if ((r22 & 0x1) == 0x0) {
            r0 = [r23 path];
            r29 = r29;
            r22 = [r0 retain];
            r27 = [r21 createDirectoryAtPath:r22 withIntermediateDirectories:0x1 attributes:**___NSDictionary0__ error:var_58];
            [r22 release];
            if (r27 != 0x0) {
                    if ([r20 length] != 0x0) {
                            r25 = [[r23 URLByAppendingPathComponent:r20] retain];
                            [r23 release];
                            r23 = r25;
                    }
                    r23 = [r23 retain];
            }
            else {
                    r25 = 0x0;
            }
    }
    else {
            if ([r20 length] != 0x0) {
                    r25 = [[r23 URLByAppendingPathComponent:r20] retain];
                    [r23 release];
                    r23 = r25;
            }
            r23 = [r23 retain];
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r25 autorelease];
    return r0;

loc_1006186f8:
    r25 = 0x0;
    goto loc_1006186fc;

loc_1006186b4:
    r23 = [NSTemporaryDirectory() retain];
    r0 = [NSURL fileURLWithPath:r23 isDirectory:0x1];
    r29 = r29;
    goto loc_1006186e4;

loc_10061867c:
    r0 = [r21 URLsForDirectory:0xd inDomains:0x1];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 firstObject];
    r29 = r29;
    goto loc_1006186e4;
}

+(void *)URLForAdsDir {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 URLsForDirectory:0xd inDomains:0x1];
    r0 = [r0 retain];
    r21 = [[r0 firstObject] retain];
    [r0 release];
    r20 = [[r21 URLByAppendingPathComponent:@"com.vungle.ads"] retain];
    [r21 release];
    r21 = [[r20 path] retain];
    r22 = [r19 fileExistsAtPath:r21];
    [r21 release];
    if ((r22 & 0x1) == 0x0) {
            [r19 createDirectoryAtURL:r20 withIntermediateDirectories:0x1 attributes:0x0 error:0x0];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)URLForAdKey:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [[NSFileManager defaultManager] retain];
    r0 = [self URLForAdsDir];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if ([r19 length] != 0x0) {
            r0 = [r21 URLByAppendingPathComponent:r19];
            r29 = r29;
            r22 = [r0 retain];
            [r21 release];
            r21 = r22;
    }
    r22 = [[r21 path] retain];
    r23 = [r20 fileExistsAtPath:r22];
    [r22 release];
    if ((r23 & 0x1) == 0x0) {
            [r20 createDirectoryAtURL:r21 withIntermediateDirectories:0x1 attributes:0x0 error:0x0];
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(bool)moveFileFrom:(void *)arg2 toChannel:(long long)arg3 category:(void *)arg4 key:(void *)arg5 overwrite:(bool)arg6 error:(void * *)arg7 {
    r31 = r31 - 0xa0;
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
    r27 = arg6;
    r26 = arg3;
    r25 = self;
    var_68 = [arg2 retain];
    r19 = [arg4 retain];
    var_60 = [arg5 retain];
    var_58 = r19;
    r23 = [[r25 URLForChannel:r26 category:r19 key:r4 error:r22] retain];
    r24 = [[NSFileManager defaultManager] retain];
    r0 = [r23 path];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [r24 fileExistsAtPath:r19 isDirectory:0x0];
    [r19 release];
    if (r20 == 0x0) goto loc_100618bdc;

loc_100618b20:
    if (r27 == 0x0) goto loc_100618c28;

loc_100618b24:
    r27 = [r25 removeObjectWithChannel:r26 category:var_58 key:var_60 error:r22];
    if (r23 != 0x0) goto loc_100618be4;

loc_100618b48:
    if (r22 != 0x0) {
            r0 = [NSNumber numberWithInteger:r26];
            r0 = [r0 retain];
            r19 = [[NSString stringWithFormat:@"Path for channel %@ not available."] retain];
            [r0 release];
            *r22 = [[[r25 errorWithPersistenceError:0xffffffffffffec7d description:r19] retain] autorelease];
            [r19 release];
    }
    goto loc_100618cd4;

loc_100618cd4:
    r21 = var_68;
    goto loc_100618cd8;

loc_100618cd8:
    [r24 release];
    [r23 release];
    [var_60 release];
    [var_58 release];
    [r21 release];
    r0 = r27;
    return r0;

loc_100618be4:
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r21 = var_68;
    r27 = [r0 moveItemAtURL:r21 toURL:r23 error:r22];
    [r0 release];
    goto loc_100618cd8;

loc_100618c28:
    if (r22 == 0x0) goto loc_100618cd0;

loc_100618c2c:
    r0 = [NSNumber numberWithInteger:r26];
    r0 = [r0 retain];
    r21 = var_68;
    r19 = [[NSString stringWithFormat:@"Unable to move file from %@ to {%@.%@.%@} because the overwrite flag is NO."] retain];
    [r0 release];
    *r22 = [[[r25 errorWithPersistenceError:0xffffffffffffec7e description:r19] retain] autorelease];
    [r19 release];
    r27 = 0x0;
    goto loc_100618cd8;

loc_100618cd0:
    r27 = 0x0;
    goto loc_100618cd4;

loc_100618bdc:
    r27 = 0x0;
    if (r23 == 0x0) goto loc_100618b48;
}

+(bool)removeDirectoryWithAdKey:(void *)arg2 {
    r19 = [[self URLForAdKey:arg2] retain];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r21 = [r0 removeItemAtURL:r19 error:0x0];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)removeAdsCache {
    r19 = [[self URLForAdsDir] retain];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r21 = [r0 removeItemAtURL:r19 error:0x0];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)logFileSizeCheckError:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[VungleLogger sharedLogger] retain];
    r19 = [[arg2 localizedDescription] retain];
    [r22 release];
    [r20 logMessage:r19 level:0xf4242 context:@"SDK Initialization"];
    [r19 release];
    [r20 release];
    return;
}

-(bool)checkFileSystemSizeAvailabilityForCase:(long long)arg2 withError:(void * *)arg3 withPlacementID:(void *)arg4 {
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
    r21 = arg3;
    r24 = arg2;
    r22 = self;
    r19 = [arg4 retain];
    [r22 getAvailableFileSystemSizeInMBWithError:&var_48];
    r0 = [var_48 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_100619450;

loc_100619424:
    if (r21 != 0x0) {
            r0 = objc_retainAutorelease(r20);
            *r21 = r0;
            [r22 logFileSizeCheckError:r0];
    }
    r25 = 0x0;
    goto loc_100619590;

loc_100619590:
    [r20 release];
    [r19 release];
    r0 = r25;
    return r0;

loc_100619450:
    if (r24 > 0x3) goto loc_100619588;

loc_100619458:
    r0 = (0x100619470 + *(int8_t *)(0x100bf2e90 + r24) * 0x4)();
    return r0;

loc_100619588:
    r25 = 0x1;
    [0x0 release];
    goto loc_100619590;
}

-(long long)getAvailableFileSystemSizeInMBWithError:(void * *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1);
    r0 = [r0 retain];
    r19 = [[r0 firstObject] retain];
    [r0 release];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 attributesOfFileSystemForPath:r19 error:&var_38];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r21 = [var_38 retain];
    [r23 release];
    if (r22 != 0x0) {
            asm { ccmp       x21, #0x0, #0x0, ne };
    }
    if (!CPU_FLAGS & E) {
            if (r20 != 0x0) {
                    *r20 = objc_retainAutorelease(r21);
            }
            r20 = 0xffffffffffffffff;
    }
    else {
            r0 = [r22 objectForKey:**_NSFileSystemFreeSize];
            r0 = [r0 retain];
            r20 = [r0 unsignedLongLongValue] >> 0x14;
            [r0 release];
    }
    [r22 release];
    [r19 release];
    [r21 release];
    r0 = r20;
    return r0;
}

+(bool)cleanupFileSystemOnSDKVersionUpgrade {
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
    r20 = self;
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 URLsForDirectory:0xe inDomains:0x1];
    r0 = [r0 retain];
    r23 = [[r0 firstObject] retain];
    [r0 release];
    r21 = [[r23 URLByAppendingPathComponent:@"com.vungle"] retain];
    [r23 release];
    r0 = [r21 path];
    r29 = &saved_fp;
    r23 = [r0 retain];
    r27 = [r19 fileExistsAtPath:r2];
    [r23 release];
    if ((r27 & 0x1) == 0x0) {
            [r19 createDirectoryAtURL:r21 withIntermediateDirectories:0x1 attributes:0x0 error:0x0];
    }
    r0 = [r21 URLByAppendingPathComponent:@"ad"];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 path];
    r29 = r29;
    r27 = [r0 retain];
    r28 = [r19 fileExistsAtPath:r2];
    [r27 release];
    if (r28 != 0x0) {
            r0 = [NSFileManager defaultManager];
            r29 = r29;
            r0 = [r0 retain];
            r28 = [r0 removeItemAtURL:r23 error:0x0];
            [r0 release];
            if (r28 != 0x0) {
                    var_58 = r20;
                    r0 = [r21 URLByAppendingPathComponent:@"placements"];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = [r0 path];
                    r29 = r29;
                    r28 = [r0 retain];
                    r20 = [r19 fileExistsAtPath:r2];
                    [r28 release];
                    if (r20 != 0x0) {
                            r0 = [NSFileManager defaultManager];
                            r29 = r29;
                            r0 = [r0 retain];
                            r28 = [r0 removeItemAtURL:r27 error:0x0];
                            [r0 release];
                            if (r28 != 0x0) {
                                    r0 = [r21 URLByAppendingPathComponent:@"placements_sleep"];
                                    r0 = [r0 retain];
                                    r24 = r0;
                                    r0 = [r0 path];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    r25 = [r19 fileExistsAtPath:r2];
                                    [r20 release];
                                    if (r25 != 0x0) {
                                            r0 = [NSFileManager defaultManager];
                                            r0 = [r0 retain];
                                            r22 = [r0 removeItemAtURL:r24 error:0x0];
                                            [r0 release];
                                            if (r22 != 0x0) {
                                                    r20 = [var_58 removeAdsCache];
                                            }
                                            else {
                                                    r20 = 0x0;
                                            }
                                    }
                                    else {
                                            r20 = [var_58 removeAdsCache];
                                    }
                                    [r24 release];
                            }
                            else {
                                    r20 = 0x0;
                            }
                    }
                    else {
                            r0 = [r21 URLByAppendingPathComponent:@"placements_sleep"];
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 path];
                            r29 = r29;
                            r20 = [r0 retain];
                            r25 = [r19 fileExistsAtPath:r2];
                            [r20 release];
                            if (r25 != 0x0) {
                                    r0 = [NSFileManager defaultManager];
                                    r0 = [r0 retain];
                                    r22 = [r0 removeItemAtURL:r24 error:0x0];
                                    [r0 release];
                                    if (r22 != 0x0) {
                                            r20 = [var_58 removeAdsCache];
                                    }
                                    else {
                                            r20 = 0x0;
                                    }
                            }
                            else {
                                    r20 = [var_58 removeAdsCache];
                            }
                            [r24 release];
                    }
                    [r27 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            var_58 = r20;
            r0 = [r21 URLByAppendingPathComponent:@"placements"];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 path];
            r29 = r29;
            r28 = [r0 retain];
            r20 = [r19 fileExistsAtPath:r2];
            [r28 release];
            if (r20 != 0x0) {
                    r0 = [NSFileManager defaultManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    r28 = [r0 removeItemAtURL:r27 error:0x0];
                    [r0 release];
                    if (r28 != 0x0) {
                            r0 = [r21 URLByAppendingPathComponent:@"placements_sleep"];
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 path];
                            r29 = r29;
                            r20 = [r0 retain];
                            r25 = [r19 fileExistsAtPath:r2];
                            [r20 release];
                            if (r25 != 0x0) {
                                    r0 = [NSFileManager defaultManager];
                                    r0 = [r0 retain];
                                    r22 = [r0 removeItemAtURL:r24 error:0x0];
                                    [r0 release];
                                    if (r22 != 0x0) {
                                            r20 = [var_58 removeAdsCache];
                                    }
                                    else {
                                            r20 = 0x0;
                                    }
                            }
                            else {
                                    r20 = [var_58 removeAdsCache];
                            }
                            [r24 release];
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r0 = [r21 URLByAppendingPathComponent:@"placements_sleep"];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 path];
                    r29 = r29;
                    r20 = [r0 retain];
                    r25 = [r19 fileExistsAtPath:r2];
                    [r20 release];
                    if (r25 != 0x0) {
                            r0 = [NSFileManager defaultManager];
                            r0 = [r0 retain];
                            r22 = [r0 removeItemAtURL:r24 error:0x0];
                            [r0 release];
                            if (r22 != 0x0) {
                                    r20 = [var_58 removeAdsCache];
                            }
                            else {
                                    r20 = 0x0;
                            }
                    }
                    else {
                            r20 = [var_58 removeAdsCache];
                    }
                    [r24 release];
            }
            [r27 release];
    }
    [r23 release];
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)minimumFileSystemSizeForInitDebugEnabled {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setUserDefinedMinimumFileSystemSizeThreshold {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 integerForKey:r2] != 0x0) {
            r0 = [r19 integerForKey:r2];
    }
    else {
            r0 = 0x32;
    }
    *0x1011da8c8 = r0;
    if ([r19 integerForKey:r2] != 0x0) {
            r0 = [r19 integerForKey:r2];
    }
    else {
            r0 = 0x32;
    }
    *0x1011da8d0 = r0;
    if ([r19 integerForKey:r2] != 0x0) {
            r0 = [r19 integerForKey:r2];
    }
    else {
            r0 = 0x32;
    }
    *0x1011da8d8 = r0;
    [r19 release];
    return;
}

-(bool)minimumFileSystemSizeForAdRequestDebugEnabled {
    r0 = *(int8_t *)(self + 0x9);
    return r0;
}

-(void)setMinimumFileSystemSizeForInitDebugEnabled:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)minimumFileSystemSizeForAssetDownloadDebugEnabled {
    r0 = *(int8_t *)(self + 0xa);
    return r0;
}

-(void)setMinimumFileSystemSizeForAdRequestDebugEnabled:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void)setMinimumFileSystemSizeForAssetDownloadDebugEnabled:(bool)arg2 {
    *(int8_t *)(self + 0xa) = arg2;
    return;
}

@end