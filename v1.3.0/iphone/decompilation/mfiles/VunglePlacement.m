@implementation VunglePlacement

+(void *)placementWithReferenceID:(void *)arg2 uniqueID:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [objc_alloc() initWithReferenceID:r20 uniqueID:r19];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)placementWithReferenceID:(void *)arg2 uniqueID:(void *)arg3 cacheable:(bool)arg4 incentivized:(bool)arg5 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [objc_alloc() initWithReferenceID:r22 uniqueID:r21 cacheable:arg4 incentivized:arg5];
    [r21 release];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithReferenceID:(void *)arg2 uniqueID:(void *)arg3 cacheable:(bool)arg4 incentivized:(bool)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg5;
    r21 = arg4;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r8 = *(r23 + 0x10);
            *(r23 + 0x10) = r0;
            [r8 release];
            r0 = [r22 copy];
            r8 = *(r23 + 0x18);
            *(r23 + 0x18) = r0;
            [r8 release];
            *(int8_t *)(r23 + 0x8) = r21;
            *(int8_t *)(r23 + 0x9) = r20;
            *(r23 + 0x28) = 0x0;
    }
    [r22 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void *)initWithReferenceID:(void *)arg2 uniqueID:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [self initWithReferenceID:r21 uniqueID:arg3 cacheable:0x0 incentivized:0x0];
    [r21 release];
    r0 = r19;
    return r0;
}

-(bool)isEqual:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r20 != r0) {
            [r20 class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r20 = [r20 isEqualToPlacement:r19];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isEqualToPlacement:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [[r23 uniqueID] retain];
    r0 = [r19 uniqueID];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if ([r20 isEqualToString:r2] == 0x0) {
            r0 = [r23 uniqueID];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    r22 = @selector(uniqueID);
                    r23 = r0;
                    r0 = objc_msgSend(r19, r22);
                    r0 = [r0 retain];
                    if (r0 == 0x0) {
                            r22 = @selector(uniqueID);
                            if (CPU_FLAGS & E) {
                                    r22 = 0x1;
                            }
                    }
                    [r0 release];
                    [r23 release];
                    [r21 release];
                    [r20 release];
            }
            else {
                    [r21 release];
                    [r20 release];
                    r22 = 0x1;
            }
    }
    else {
            [r21 release];
            [r20 release];
            r22 = 0x1;
    }
    [r19 release];
    r0 = r22;
    return r0;
}

-(unsigned long long)hash {
    r0 = [self uniqueID];
    r0 = [r0 retain];
    r20 = [r0 hash];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r22 = [[r21 uniqueID] retain];
    [r19 encodeObject:r22 forKey:@"uniqueID"];
    [r22 release];
    r22 = [[r21 referenceID] retain];
    [r19 encodeObject:r22 forKey:@"referenceID"];
    [r22 release];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithBool:[r21 isCacheable]] retain];
    [r19 encodeObject:r22 forKey:@"cacheable"];
    [r22 release];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithBool:[r21 isIncentivized]] retain];
    [r19 encodeObject:r22 forKey:@"incentivized"];
    [r22 release];
    r0 = [r21 adUnit];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r19 encodeObject:r22 forKey:@"adUnit"];
    [r22 release];
    if ([r21 state] == 0x1) {
            r0 = @(0x0);
    }
    else {
            r0 = [NSNumber numberWithInteger:[r21 state]];
    }
    r21 = [r0 retain];
    [r19 encodeObject:r21 forKey:@"state"];
    [r21 release];
    [r19 release];
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
    r0 = [self class];
    r0 = [r0 alloc];
    r0 = [r0 init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 referenceID];
            r0 = [r0 retain];
            r24 = [r0 copyWithZone:r21];
            [r20 setReferenceID:r24];
            [r24 release];
            [r0 release];
            r0 = [r19 uniqueID];
            r0 = [r0 retain];
            r21 = [r0 copyWithZone:r21];
            [r20 setUniqueID:r21];
            [r21 release];
            [r0 release];
            [r20 setCacheable:[r19 isCacheable]];
            [r20 setIncentivized:[r19 isIncentivized]];
            r21 = [[r19 adUnit] retain];
            [r20 setAdUnit:r21];
            [r21 release];
            [r20 setState:[r19 state]];
    }
    r0 = r20;
    return r0;
}

+(long long)channel {
    return 0x0;
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
    if (r0 != 0x0) {
            r22 = [[r19 decodeObjectForKey:@"uniqueID"] retain];
            [r20 setUniqueID:r22];
            [r22 release];
            r22 = [[r19 decodeObjectForKey:@"referenceID"] retain];
            [r20 setReferenceID:r22];
            [r22 release];
            r0 = [r19 decodeObjectForKey:@"cacheable"];
            r0 = [r0 retain];
            [r20 setCacheable:[r0 boolValue]];
            [r0 release];
            r0 = [r19 decodeObjectForKey:@"incentivized"];
            r0 = [r0 retain];
            [r20 setIncentivized:[r0 boolValue]];
            [r0 release];
            r22 = [[r19 decodeObjectForKey:@"adUnit"] retain];
            [r20 setAdUnit:r22];
            [r22 release];
            r0 = [r19 decodeObjectForKey:@"state"];
            r0 = [r0 retain];
            [r20 setState:[r0 integerValue]];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)description {
    r0 = [[&var_50 super] description];
    r19 = [r0 retain];
    r20 = [[self referenceID] retain];
    r21 = [[self uniqueID] retain];
    r24 = @class(NSNumber);
    r24 = [[r24 numberWithBool:[self isCacheable]] retain];
    r25 = [[NSNumber numberWithBool:[self isIncentivized]] retain];
    r0 = [self adUnit];
    r0 = [r0 retain];
    r26 = [[r0 cacheKey] retain];
    r22 = [[NSString stringWithFormat:r2] retain];
    [r26 release];
    [r0 release];
    [r25 release];
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)category {
    objc_retainAutorelease(@"placements");
    return @"placements";
}

-(void *)persistenceKey {
    r0 = [self uniqueID];
    return r0;
}

-(long long)persistenceChannel {
    return 0x0;
}

-(void *)persistenceCategory {
    objc_retainAutorelease(@"placements");
    return @"placements";
}

-(void)setReferenceID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)uniqueID {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void *)referenceID {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

+(void *)sortPlacementsByAutoCacheableStatus:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r21 = [arg2 retain];
    r19 = [NSMutableArray new];
    r20 = [NSMutableArray new];
    var_110 = q0;
    r0 = [r21 retain];
    r21 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r23 = r0;
            r28 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r28) {
                                    objc_enumerationMutation(r21);
                            }
                            r26 = *(var_118 + r27 * 0x8);
                            if ([r26 isCacheable] != 0x0) {
                                    r0 = r19;
                            }
                            else {
                                    r0 = r20;
                            }
                            [r0 addObject:r2];
                            r27 = r27 + 0x1;
                    } while (r27 < r23);
                    r0 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r23 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r21 release];
    r0 = [NSMutableArray arrayWithArray:r19];
    r0 = [r0 retain];
    [r0 addObjectsFromArray:r20];
    r22 = [r0 copy];
    [r0 release];
    [r20 release];
    [r19 release];
    [r21 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setUniqueID:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setCacheable:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)isCacheable {
    r0 = *(int8_t *)(self + 0x8) & 0x1;
    return r0;
}

-(void)setIncentivized:(bool)arg2 {
    *(int8_t *)(self + 0x9) = arg2;
    return;
}

-(void *)adUnit {
    r0 = *(self + 0x20);
    return r0;
}

-(bool)isIncentivized {
    r0 = *(int8_t *)(self + 0x9) & 0x1;
    return r0;
}

-(void)setAdUnit:(void *)arg2 {
    objc_storeStrong(self + 0x20, arg2);
    return;
}

-(long long)state {
    r0 = *(self + 0x28);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

-(void)setState:(long long)arg2 {
    *(self + 0x28) = arg2;
    return;
}

@end