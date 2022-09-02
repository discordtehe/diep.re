@implementation TJUsageTracking

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)enable {
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
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([r19 enabled] & 0x1) == 0x0) {
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            r20 = [[r0 objectForKey:@"TJC_USAGE_TRACKING_FIRST_TIME"] retain];
            [r0 release];
            r0 = @class(NSUserDefaults);
            r0 = [r0 standardUserDefaults];
            r0 = [r0 retain];
            r21 = [[r0 objectForKey:@"TJC_USAGE_TRACKING_LAST_TIME"] retain];
            [r0 release];
            if ([r20 respondsToSelector:r2] != 0x0) {
                    [r19 setFirstTime:[r20 longLongValue]];
            }
            else {
                    [r19 setFirstTime:0x0];
            }
            if ([r21 respondsToSelector:r2] != 0x0) {
                    [r19 setLastTime:[r21 longLongValue]];
            }
            else {
                    [r19 setLastTime:0x0];
            }
            [r19 setEnabled:r2];
            [r21 release];
            [r20 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)disable {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([r19 enabled] & 0x1) != 0x0) {
            [r19 setEnabled:0x0];
            r22 = [[[r19 class] dirPath] retain];
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r21 = [[r0 contentsOfDirectoryAtPath:r22 error:0x0] retain];
            r22 = [r22 retain];
            r23 = [r0 retain];
            [r21 enumerateObjectsUsingBlock:&var_60];
            [[r19 class] clearMetaData];
            [r19 setFirstTime:0x0];
            [r19 setLastTime:0x0];
            [r19 syncTimes];
            [r23 release];
            [r22 release];
            [r21 release];
            [r23 release];
            [r22 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)checkReport:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = [arg2 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if (([r19 enabled] & 0x1) != 0x0) {
            [r20 timeIntervalSince1970];
            if ([r19 firstTime] >= 0x1) {
                    r0 = [r19 firstTime];
                    r8 = 0x100b9b000;
                    asm { fcvtzs     x8, d0 };
                    if (r0 + 0x5265c00 <= r8) {
                            [r19 setFirstTime:0x0];
                            [r19 setLastTime:0x0];
                            [r19 syncTimes];
                            r0 = dispatch_get_global_queue(0xfffffffffffffffe, 0x0);
                            r0 = [r0 retain];
                            dispatch_async(r0, &var_58);
                            [r21 release];
                    }
            }
    }
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)syncTimes {
    r21 = [[NSUserDefaults standardUserDefaults] retain];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithLongLong:[self firstTime]] retain];
    [r21 setObject:r22 forKey:@"TJC_USAGE_TRACKING_FIRST_TIME"];
    [r22 release];
    [r21 release];
    r20 = [[NSUserDefaults standardUserDefaults] retain];
    r19 = [[NSNumber numberWithLongLong:[self lastTime]] retain];
    [r20 setObject:r19 forKey:@"TJC_USAGE_TRACKING_LAST_TIME"];
    [r19 release];
    [r20 release];
    return;
}

-(void)track:(void *)arg2 time:(long long)arg3 dimensions:(void *)arg4 values:(void *)arg5 {
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
    r23 = arg3;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r22 = [arg5 retain];
    r0 = [self retain];
    r21 = r0;
    objc_sync_enter(r0);
    r0 = [r21 excludedUsageNames];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 containsObject:r2];
    [r0 release];
    if ((r25 & 0x1) == 0x0 && [r21 enabled] != 0x0) {
            if ([r21 startTime] != 0x0) {
                    if ([r21 startTime] <= r23 && [r21 startTime] + 0x5265c00 > r23) {
                            if ([r21 lastTime] < r23) {
                                    [r21 setLastTime:r23];
                            }
                    }
                    else {
                            if ([r21 startTime] > r23 && [r21 lastTime] - r23 < 0x5265c00) {
                                    [r21 setStartTime:r23];
                            }
                            else {
                                    [r21 report];
                                    [r21 setLastTime:r23];
                                    [r21 setStartTime:r23];
                            }
                    }
            }
            else {
                    [r21 setLastTime:r23];
                    [r21 setStartTime:r23];
            }
            if ([r21 firstTime] == 0x0) {
                    [r21 setFirstTime:r23];
            }
            [r21 syncTimes];
            asm { scvtf      d0, x23 };
            r23 = [[r21 statForName:r19 dimensions:r20 time:r4] retain];
            if ([r22 count] != 0x0) {
                    var_48 = [r23 retain];
                    [r22 enumerateKeysAndObjectsUsingBlock:&var_68];
                    [var_48 release];
            }
            [r21 storeStat:r23];
            [r23 release];
    }
    objc_sync_exit(r21);
    [r21 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)report {
    r22 = [[[self class] dirPath] retain];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r23 = [[r0 contentsOfDirectoryAtPath:r22 error:0x0] retain];
    var_40 = r22;
    r22 = [r22 retain];
    [r23 enumerateObjectsUsingBlock:&var_60];
    [[self class] clearMetaData];
    [var_40 release];
    [r22 release];
    [r23 release];
    [r0 release];
    return;
}

-(void)storeStat:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 filename];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 filename];
            r29 = r29;
            r22 = [r0 retain];
            r21 = @selector(class);
    }
    else {
            r21 = @selector(class);
            r22 = objc_msgSend(r20, r21);
            r23 = [[r19 name] retain];
            r24 = [[r19 dimensions] retain];
            r0 = [r22 filenameForName:r23 dimensions:r24];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
            [r23 release];
    }
    r20 = [[objc_msgSend(r20, r21) dirPath] retain];
    [r19 writeToDir:r20 filename:r22];
    [r20 release];
    [r22 release];
    [r19 release];
    return;
}

-(void *)statForName:(void *)arg2 dimensions:(void *)arg3 time:(double)arg4 {
    r4 = arg4;
    var_50 = d9;
    stack[-88] = d8;
    r31 = r31 + 0xffffffffffffffa0;
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
    v8 = v0;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[[self class] filenameForName:r19 dimensions:r20] retain];
    r23 = [[[self class] dirPath] retain];
    r0 = [TJUsageStat loadFromDir:r23 filename:r21];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 != 0x0) {
            r0 = [NSNull null];
            r0 = [r0 retain];
            [r0 release];
            if (r22 != r0) {
                    [r22 addStatWithTime:r2];
            }
            else {
                    r23 = [[TJUsageStat alloc] initWithName:r19 dimensions:r20 firstTime:r4 lastTime:r5];
                    [r22 release];
                    r22 = r23;
            }
    }
    else {
            r23 = [[TJUsageStat alloc] initWithName:r19 dimensions:r20 firstTime:r4 lastTime:r5];
            [r22 release];
            r22 = r23;
    }
    [r22 setFilename:r21];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)dirPath {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*qword_1011dc0d0 != -0x1) {
            dispatch_once(0x1011dc0d0, 0x100ea1e68);
    }
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 fileExistsAtPath:*0x1011dc0c8] & 0x1) == 0x0) {
            [r19 createDirectoryAtPath:*0x1011dc0c8 withIntermediateDirectories:0x1 attributes:0x0 error:0x0];
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011dc0c8);
    [r19 release];
    r0 = r20;
    return r0;
}

+(void *)dimensionsToString:(void *)arg2 {
    r31 = r31 - 0x150;
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 allKeys];
    r0 = [r0 retain];
    r21 = [[r0 sortedArrayUsingComparator:0x100ea1e28] retain];
    [r0 release];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r0 = [r21 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    var_120 = r0;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r24 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            r25 = @selector(addObject:);
                            objc_msgSend(r20, r25);
                            [objc_msgSend(r19, r26) retain];
                            r0 = objc_msgSend(@class(NSString), r27);
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r20, r25);
                            [r22 release];
                            [r28 release];
                            r24 = r24 + 0x1;
                    } while (r24 < r23);
                    r23 = objc_msgSend(var_120, var_128);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    r22 = [[r20 componentsJoinedByString:@"_"] retain];
    [r20 release];
    [var_120 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)filenameForName:(void *)arg2 dimensions:(void *)arg3 {
    r31 = r31 - 0xb0;
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
    r22 = self;
    r20 = [arg2 retain];
    r21 = [arg3 retain];
    var_78 = r20;
    if (r21 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != r21) {
                    r19 = [[r22 dimensionsToString:r21] retain];
                    r0 = [NSString stringWithFormat:r2];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r19 release];
            }
            else {
                    r20 = [r20 retain];
            }
    }
    else {
            r20 = [r20 retain];
    }
    r23 = [[TJCUtil TJCSHA1WithString:r20] retain];
    r0 = [r22 metaData];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:r23];
    r29 = r29;
    r24 = [r0 retain];
    [r19 release];
    [NSString class];
    if ([r24 isKindOfClass:r2] == 0x0) goto loc_10091c19c;

loc_10091c158:
    r1 = @selector(length);
    var_68 = r1;
    if (objc_msgSend(r24, r1) == 0x0) goto loc_10091c19c;

loc_10091c170:
    r1 = @selector(isEqualToString:);
    var_60 = r20;
    var_80 = r1;
    if ((objc_msgSend(r20, r1) & 0x1) == 0x0) goto loc_10091c234;

loc_10091c190:
    r19 = r23;
    r20 = var_60;
    goto loc_10091c1b8;

loc_10091c1b8:
    r22 = var_78;
    goto loc_10091c1bc;

loc_10091c1bc:
    r19 = [[NSString stringWithFormat:r2] retain];
    [r24 release];
    [r23 release];
    [r20 release];
    [r21 release];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;

loc_10091c234:
    var_70 = r22;
    r19 = 0x0;
    var_90 = r21;
    r22 = 0x1;
    r20 = r24;
    do {
            r28 = @selector(isKindOfClass:);
            r21 = [[NSString stringWithFormat:r2] retain];
            [r19 release];
            r0 = [var_70 metaData];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 objectForKey:r21];
            r29 = r29;
            r24 = [r0 retain];
            [r20 release];
            [r19 release];
            [NSString class];
            if (objc_msgSend(r24, r28) == 0x0) {
                break;
            }
            if (objc_msgSend(r24, var_68) == 0x0) {
                break;
            }
            r0 = objc_msgSend(r24, var_80);
            r22 = r22 + 0x1;
            r20 = r24;
            r19 = r21;
    } while (r0 == 0x0);
    r19 = [r21 retain];
    [r23 release];
    r20 = var_60;
    [var_70 setMetaDataObject:r20 forKey:r19];
    [r19 release];
    r23 = r19;
    r22 = var_78;
    r21 = var_90;
    goto loc_10091c1bc;

loc_10091c19c:
    [r22 setMetaDataObject:r20 forKey:r23];
    r19 = r23;
    goto loc_10091c1b8;
}

+(void *)metaData {
    if (*qword_1011dc0e0 != -0x1) {
            dispatch_once(0x1011dc0e0, 0x100ea1ea8);
    }
    r0 = *0x1011dc0d8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setMetaDataObject:(void *)arg2 forKey:(void *)arg3 {
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r0 = [self metaData];
    r0 = [r0 retain];
    [r0 setObject:r21 forKey:arg3];
    [r23 release];
    [r21 release];
    [r0 release];
    r19 = [[NSUserDefaults standardUserDefaults] retain];
    r20 = [[self metaData] retain];
    [r19 setObject:r20 forKey:@"FRUsageTrackingMetaData"];
    [r20 release];
    [r19 release];
    return;
}

+(void)clearMetaData {
    r0 = [self metaData];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    [r0 removeObjectForKey:r2];
    [r19 release];
    return;
}

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dc0f0 != -0x1) {
            dispatch_once(0x1011dc0f0, &var_28);
    }
    r0 = *0x1011dc0e8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)enable {
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 enable];
    [r19 release];
    return;
}

+(void)disable {
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    [r0 disable];
    [r19 release];
    return;
}

+(void)setExcludedUsageNames:(void *)arg2 {
    [arg2 retain];
    r0 = [self sharedInstance];
    r0 = [r0 retain];
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [r20 setExcludedUsageNames:r19];
    objc_sync_exit(r20);
    [r20 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)checkReport {
    r19 = [[self sharedInstance] retain];
    r20 = [[NSDate date] retain];
    [r19 checkReport:r20];
    [r20 release];
    [r19 release];
    return;
}

+(void)track:(void *)arg2 dimensions:(void *)arg3 values:(void *)arg4 {
    r20 = [arg2 retain];
    r22 = [arg3 retain];
    r23 = @class(NSDictionary);
    r21 = [arg4 retain];
    r23 = [[r23 dictionaryWithDictionary:r22] retain];
    [r22 release];
    r22 = [[NSDictionary dictionaryWithDictionary:r21] retain];
    [r21 release];
    r21 = [dispatch_get_global_queue(0xfffffffffffffffe, 0x0) retain];
    var_58 = r20;
    [r20 retain];
    [r23 retain];
    var_48 = r22;
    [r22 retain];
    dispatch_async(r21, &var_80);
    [r21 release];
    [var_48 release];
    [r23 release];
    [var_58 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

+(void *)newUsage:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[TJUsageTracker alloc] initWithName:r21 startTime:r3];
    [r21 release];
    r0 = r19;
    return r0;
}

+(void *)startUsage:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [TJUsageTracker alloc];
    [TJCUtil uptime];
    r19 = [r19 initWithName:r21 startTime:r3];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(long long)startTime {
    r0 = self->_startTime;
    return r0;
}

+(long long)unitTest_getDurationMillis {
    return 0x5265c00;
}

-(void)setStartTime:(long long)arg2 {
    self->_startTime = arg2;
    return;
}

-(long long)firstTime {
    r0 = self->_firstTime;
    return r0;
}

-(void)setFirstTime:(long long)arg2 {
    self->_firstTime = arg2;
    return;
}

-(long long)lastTime {
    r0 = self->_lastTime;
    return r0;
}

-(void)setLastTime:(long long)arg2 {
    self->_lastTime = arg2;
    return;
}

-(void *)usageData {
    r0 = self->_usageData;
    return r0;
}

-(void)setUsageData:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_usageData, arg2);
    return;
}

-(bool)enabled {
    r0 = *(int8_t *)(int64_t *)&self->_enabled;
    return r0;
}

-(void)setEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_enabled = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_excludedUsageNames, 0x0);
    objc_storeStrong((int64_t *)&self->_usageData, 0x0);
    return;
}

-(void *)excludedUsageNames {
    r0 = self->_excludedUsageNames;
    return r0;
}

-(void)setExcludedUsageNames:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_excludedUsageNames, arg2);
    return;
}

@end