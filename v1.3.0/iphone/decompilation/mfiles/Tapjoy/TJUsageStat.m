@implementation TJUsageStat

-(void *)initWithName:(void *)arg2 dimensions:(void *)arg3 firstTime:(double)arg4 lastTime:(double)arg5 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [self init];
    if (r21 != 0x0) {
            [r21 setName:r19];
            r2 = r20;
            [r21 setDimensions:r2];
            asm { fcvtzs     x2, d9 };
            [r21 setFirstTime:r2];
            asm { fcvtzs     x2, d8 };
            [r21 setLastTime:r2];
            [r21 setCount:0x1];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)addStatWithTime:(double)arg2 {
    r2 = arg2;
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self firstTime];
    asm { scvtf      d0, x0 };
    if (d0 < d8) {
            asm { fcsel      d0, d0, d8, mi };
    }
    asm { fcvtzs     x2, d0 };
    [r19 setFirstTime:r2];
    [r19 lastTime];
    asm { scvtf      d0, x0 };
    if (d0 < d8) {
            asm { fcsel      d0, d8, d0, mi };
    }
    asm { fcvtzs     x2, d0 };
    [r19 setLastTime:r2];
    [r19 setCount:[r19 count] + 0x1];
    return;
}

-(void)addStatValue:(void *)arg2 withName:(void *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r21 values];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r25 = [[r21 values] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r25 release];
            [r23 release];
            if (r25 != r0) {
                    r0 = [r21 values];
                    r0 = [r0 retain];
                    r25 = r0;
                    r2 = r20;
                    r0 = [r0 objectForKey:r2];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r25 release];
                    if (r23 != 0x0) {
                            r0 = [NSNull null];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r23 != r0) {
                                    [r19 doubleValue];
                                    [r23 addValue:r2];
                                    r24 = r23;
                            }
                            else {
                                    r24 = [TJUsageStatValue alloc];
                                    [r19 doubleValue];
                                    r24 = [r24 initWithName:r20 value:r3];
                                    [r23 release];
                                    r0 = [r21 values];
                                    r0 = [r0 retain];
                                    [r0 setObject:r2 forKey:r3];
                                    [r21 release];
                            }
                    }
                    else {
                            r24 = [TJUsageStatValue alloc];
                            [r19 doubleValue];
                            r24 = [r24 initWithName:r20 value:r3];
                            [r23 release];
                            r0 = [r21 values];
                            r0 = [r0 retain];
                            [r0 setObject:r2 forKey:r3];
                            [r21 release];
                    }
            }
            else {
                    r0 = [NSMutableDictionary dictionary];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r21 setValues:r23];
                    [r23 release];
                    r23 = 0x0;
                    r24 = [TJUsageStatValue alloc];
                    [r19 doubleValue];
                    r24 = [r24 initWithName:r20 value:r3];
                    [r23 release];
                    r0 = [r21 values];
                    r0 = [r0 retain];
                    [r0 setObject:r2 forKey:r3];
                    [r21 release];
            }
    }
    else {
            [r23 release];
            r0 = [NSMutableDictionary dictionary];
            r29 = r29;
            r23 = [r0 retain];
            [r21 setValues:r23];
            [r23 release];
            r23 = 0x0;
            r24 = [TJUsageStatValue alloc];
            [r19 doubleValue];
            r24 = [r24 initWithName:r20 value:r3];
            [r23 release];
            r0 = [r21 values];
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r21 release];
    }
    [r24 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)dictionary {
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
    r20 = self;
    r19 = [[NSMutableDictionary dictionary] retain];
    r22 = [[r20 name] retain];
    [r19 setObject:r22 forKey:@"name"];
    [r22 release];
    r0 = [r20 dimensions];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_10092de30;

loc_10092dda4:
    r24 = [[r20 dimensions] retain];
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r24 == r0) goto loc_10092de38;

loc_10092ddf8:
    r0 = [r20 dimensions];
    r29 = r29;
    r22 = [r0 retain];
    [r19 setObject:r22 forKey:@"dimensions"];
    r0 = r22;
    goto loc_10092de34;

loc_10092de34:
    [r0 release];
    goto loc_10092de38;

loc_10092de38:
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithInteger:[r20 count]] retain];
    [r19 setObject:r22 forKey:@"count"];
    [r22 release];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithLongLong:[r20 firstTime]] retain];
    [r19 setObject:r22 forKey:@"first_time"];
    [r22 release];
    r20 = [[NSNumber numberWithLongLong:[r20 lastTime]] retain];
    [r19 setObject:r20 forKey:@"last_time"];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;

loc_10092de30:
    r0 = r23;
    goto loc_10092de34;
}

-(void *)dictionaryToSend {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self dictionary] retain];
    r0 = [r20 values];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 count];
    [r0 release];
    if (r24 != 0x0) {
            r21 = [[NSMutableDictionary dictionary] retain];
            r20 = [[r20 values] retain];
            var_38 = r21;
            [r21 retain];
            [r20 enumerateKeysAndObjectsUsingBlock:&var_58];
            [r20 release];
            [r19 setObject:r2 forKey:r3];
            [var_38 release];
            [r21 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)dictionaryToStore {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self dictionary] retain];
    r0 = [r20 values];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 count];
    [r0 release];
    if (r24 != 0x0) {
            r21 = [[NSMutableDictionary dictionary] retain];
            r20 = [[r20 values] retain];
            var_38 = r21;
            [r21 retain];
            [r20 enumerateKeysAndObjectsUsingBlock:&var_58];
            [r20 release];
            [r19 setObject:r2 forKey:r3];
            [var_38 release];
            [r21 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)writeToDir:(void *)arg2 filename:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [[arg2 stringByAppendingPathComponent:arg3] retain];
    [r22 release];
    r0 = [self dictionaryToStore];
    r0 = [r0 retain];
    [r0 writeToFile:r19 atomically:0x1];
    [r0 release];
    [r19 release];
    return;
}

-(void *)name {
    r0 = self->_name;
    return r0;
}

+(void *)loadFromDir:(void *)arg2 filename:(void *)arg3 {
    r31 = r31 - 0xc0;
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
    r21 = [arg2 retain];
    r19 = [[arg2 stringByAppendingPathComponent:arg3] retain];
    [r21 release];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithContentsOfFile:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [NSDictionary class];
    if ([r20 isKindOfClass:r2] == 0x0) goto loc_10092e5f8;

loc_10092e4d0:
    r27 = @selector(isKindOfClass:);
    r21 = [[r20 objectForKey:@"name"] retain];
    r22 = [[r20 objectForKey:@"dimensions"] retain];
    r23 = [[r20 objectForKey:@"first_time"] retain];
    var_90 = [[r20 objectForKey:@"last_time"] retain];
    r0 = [r20 objectForKey:@"count"];
    r29 = r29;
    var_98 = [r0 retain];
    [NSString class];
    if (objc_msgSend(r21, r27) == 0x0) goto loc_10092e698;

loc_10092e59c:
    if (r22 == 0x0) goto loc_10092e600;

loc_10092e5a0:
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r22 == r24) goto loc_10092e5e8;

loc_10092e5c8:
    r27 = @selector(isKindOfClass:);
    [NSDictionary class];
    if (objc_msgSend(r22, r27) == 0x0) goto loc_10092e690;

loc_10092e5e8:
    var_A8 = r22;
    stack[-176] = r21;
    r22 = r23;
    r23 = 0x1;
    goto loc_10092e60c;

loc_10092e60c:
    r27 = @selector(isKindOfClass:);
    [NSNumber class];
    if (objc_msgSend(r22, r27) == 0x0) goto loc_10092e684;

loc_10092e630:
    r27 = @selector(isKindOfClass:);
    [NSNumber class];
    if (objc_msgSend(var_90, r27) == 0x0) goto loc_10092e684;

loc_10092e650:
    r27 = @selector(isKindOfClass:);
    [NSNumber class];
    r21 = objc_msgSend(var_98, r27);
    if ((r23 & 0x1) != 0x0) {
            [r24 release];
            if ((r21 & 0x1) == 0x0) {
                    r24 = 0x0;
                    r23 = r22;
                    r22 = var_A8;
                    r21 = stack[-176];
            }
            else {
                    r27 = @selector(isKindOfClass:);
                    r21 = [TJUsageStat alloc];
                    r23 = r22;
                    [r23 doubleValue];
                    [var_90 doubleValue];
                    r0 = r21;
                    r22 = var_A8;
                    r21 = stack[-176];
                    r24 = [r0 initWithName:r21 dimensions:r22 firstTime:r4 lastTime:r5];
                    [r24 setCount:[var_98 integerValue]];
                    r0 = [r20 objectForKey:@"values"];
                    r29 = r29;
                    r28 = [r0 retain];
                    [NSDictionary class];
                    if (objc_msgSend(r28, r27) != 0x0 && [r28 count] != 0x0) {
                            r0 = [NSMutableDictionary dictionary];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r24 setValues:r26];
                            [r26 release];
                            var_68 = [r24 retain];
                            [r28 enumerateKeysAndObjectsUsingBlock:&var_88];
                            [var_68 release];
                    }
                    [r28 release];
            }
    }
    else {
            if (r21 != 0x0) {
                    r27 = @selector(isKindOfClass:);
                    r21 = [TJUsageStat alloc];
                    r23 = r22;
                    [r23 doubleValue];
                    [var_90 doubleValue];
                    r0 = r21;
                    r22 = var_A8;
                    r21 = stack[-176];
                    r24 = [r0 initWithName:r21 dimensions:r22 firstTime:r4 lastTime:r5];
                    [r24 setCount:[var_98 integerValue]];
                    r0 = [r20 objectForKey:@"values"];
                    r29 = r29;
                    r28 = [r0 retain];
                    [NSDictionary class];
                    if (objc_msgSend(r28, r27) != 0x0 && [r28 count] != 0x0) {
                            r0 = [NSMutableDictionary dictionary];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r24 setValues:r26];
                            [r26 release];
                            var_68 = [r24 retain];
                            [r28 enumerateKeysAndObjectsUsingBlock:&var_88];
                            [var_68 release];
                    }
                    [r28 release];
            }
            else {
                    r24 = 0x0;
                    r23 = r22;
                    r22 = var_A8;
                    r21 = stack[-176];
            }
    }
    goto loc_10092e830;

loc_10092e830:
    [var_98 release];
    [var_90 release];
    [r23 release];
    [r22 release];
    [r21 release];
    goto loc_10092e858;

loc_10092e858:
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    [r0 removeItemAtPath:r19 error:0x0];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = [r24 autorelease];
    return r0;

loc_10092e684:
    if (r23 == 0x0) goto loc_10092e824;

loc_10092e688:
    r23 = r22;
    r22 = var_A8;
    r21 = stack[-176];
    goto loc_10092e690;

loc_10092e690:
    [r24 release];
    goto loc_10092e698;

loc_10092e698:
    r24 = 0x0;
    goto loc_10092e830;

loc_10092e824:
    r24 = 0x0;
    r23 = r22;
    r22 = var_A8;
    r21 = stack[-176];
    goto loc_10092e830;

loc_10092e600:
    var_A8 = r22;
    stack[-176] = r21;
    r22 = r23;
    r23 = 0x0;
    goto loc_10092e60c;

loc_10092e5f8:
    r24 = 0x0;
    goto loc_10092e858;
}

-(void)setName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_name, arg2);
    return;
}

-(void *)dimensions {
    r0 = self->_dimensions;
    return r0;
}

-(void)setDimensions:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dimensions, arg2);
    return;
}

-(void)setCount:(long long)arg2 {
    self->_count = arg2;
    return;
}

-(long long)count {
    r0 = self->_count;
    return r0;
}

-(long long)firstTime {
    r0 = self->_firstTime;
    return r0;
}

-(void)setFirstTime:(long long)arg2 {
    self->_firstTime = arg2;
    return;
}

-(void)setLastTime:(long long)arg2 {
    self->_lastTime = arg2;
    return;
}

-(long long)lastTime {
    r0 = self->_lastTime;
    return r0;
}

-(void *)values {
    r0 = self->_values;
    return r0;
}

-(void)setValues:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_values, arg2);
    return;
}

-(void *)filename {
    r0 = self->_filename;
    return r0;
}

-(void)setFilename:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_filename, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_filename, 0x0);
    objc_storeStrong((int64_t *)&self->_values, 0x0);
    objc_storeStrong((int64_t *)&self->_dimensions, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end