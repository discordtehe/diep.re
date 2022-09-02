@implementation APMSequenceTimestampsCache

-(void *)initWithAudienceID:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [[&var_30 super] init];
            r20 = r0;
            if (r20 != 0x0) {
                    r21 = @selector(init);
                    r0 = [r19 copy];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_audienceID));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    r0 = [NSMutableDictionary alloc];
                    r0 = objc_msgSend(r0, r21);
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_allSequenceTimestampsByFilterID));
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

-(void *)sequenceTimestampsForFilterID:(void *)arg2 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (arg2 != 0x0) {
            r0 = r0->_allSequenceTimestampsByFilterID;
            r0 = [r0 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r19 = [r0 copy];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)addTimestamp:(double)arg2 forFilterID:(void *)arg3 {
    var_40 = d9;
    stack[-72] = d8;
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
    v8 = v0;
    r21 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_allSequenceTimestampsByFilterID));
            r0 = *(r21 + r22);
            r0 = [r0 objectForKeyedSubscript:r19];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 == 0x0) {
                    r20 = [[NSMutableArray alloc] init];
                    [*(r21 + r22) setObject:r20 forKeyedSubscript:r19];
            }
            if ([r20 count] != 0x0) {
                    r0 = [r20 lastObject];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    [r0 release];
                    if (d9 > d8) {
                            r0 = [APMMeasurement monitor];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 logWithLevel:0x4 messageCode:0xa410 message:@"Adding a sequence timestamp less than the last added timestamp"];
                            [r0 release];
                    }
            }
            r21 = @selector(count);
            r0 = [NSNumber numberWithDouble:r2];
            r29 = r29;
            r22 = [r0 retain];
            if (objc_msgSend(r20, r21) != 0x0) {
                    r0 = [r20 lastObject];
                    r0 = [r0 retain];
                    r24 = [r0 longLongValue];
                    r23 = [r22 longLongValue];
                    [r0 release];
                    if (r24 != r23) {
                            [r20 addObject:r2];
                    }
            }
            else {
                    [r20 addObject:r2];
            }
            [r22 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)sequenceFilterResultTimestamps {
    r31 = r31 - 0x190;
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
    r21 = self;
    r28 = [[NSMutableArray alloc] init];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_allSequenceTimestampsByFilterID));
    r0 = *(r21 + r23);
    r1 = @selector(count);
    var_158 = r1;
    if (objc_msgSend(r0, r1) != 0x0) {
            r0 = *(r21 + r23);
            r0 = [r0 allKeys];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 sortedArrayUsingSelector:@selector(compare:)];
            r29 = r29;
            r20 = [r0 retain];
            [r19 release];
            var_108 = q0;
            r0 = [r20 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_150 = r0;
            var_170 = r1;
            r24 = objc_msgSend(r0, r1);
            if (r24 != 0x0) {
                    r26 = @selector(alloc);
                    r22 = *var_108;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_108 != r22) {
                                            objc_enumerationMutation(var_150);
                                    }
                                    r20 = *(var_110 + r27 * 0x8);
                                    r19 = [objc_msgSend(@class(APMPBSequenceFilterResultTimestamp), r26) initWithMessageInfo:0x0];
                                    sub_1001a7850(r19, 0x0, [r20 intValue]);
                                    r0 = *(r21 + r23);
                                    r0 = [r0 objectForKeyedSubscript:r20];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    if ([r20 isKindOfClass:[NSArray class]] != 0x0 && objc_msgSend(r20, var_158) != 0x0) {
                                            r0 = [r20 sortedArrayUsingSelector:r2];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            sub_1001a8480(r19, 0x1, r0);
                                            r0 = r21;
                                            r21 = r28;
                                            r28 = r26;
                                            r26 = r23;
                                            r23 = r24;
                                            r24 = r22;
                                            r22 = r25;
                                            [r0 release];
                                    }
                                    [r28 addObject:r2];
                                    [r20 release];
                                    [r19 release];
                                    r27 = r27 + 0x1;
                            } while (r27 < r24);
                            r24 = objc_msgSend(var_150, var_170);
                    } while (r24 != 0x0);
            }
            [var_150 release];
            [var_150 release];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r28 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)audienceID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_audienceID)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_audienceID, 0x0);
    objc_storeStrong((int64_t *)&self->_allSequenceTimestampsByFilterID, 0x0);
    return;
}

@end