@implementation GADMediationStatistics

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_mediationStatistics));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)startTimingForAllocationID:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_mediationStatistics));
            r0 = *(r20 + r23);
            r0 = [r0 objectForKeyedSubscript:r19];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 == 0x0) {
                    r0 = [NSMutableDictionary alloc];
                    r0 = [r0 init];
                    r21 = r0;
                    sub_100822058(r0, @"allocation_id", r19);
            }
            sub_100822058(r21, @"start_time", [[NSNumber numberWithLongLong:sub_1008b99f8()] retain]);
            [r22 release];
            sub_100822058(*(r20 + r23), r19, r21);
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)endTimingForAllocationID:(void *)arg2 exitStatus:(long long)arg3 {
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
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_mediationStatistics));
            r0 = *(r20 + r24);
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 == 0x0) {
                    r0 = [NSMutableDictionary alloc];
                    r0 = [r0 init];
                    r22 = r0;
                    sub_100822058(r0, @"allocation_id", r19);
            }
            r0 = [r22 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    sub_100822058(r22, @"end_time", [[NSNumber numberWithLongLong:sub_1008b99f8()] retain]);
                    [r23 release];
                    sub_100822058(r22, @"exit_status", [[NSNumber numberWithInteger:r21] retain]);
                    [r21 release];
                    sub_100822058(*(r20 + r24), r19, r22);
            }
            [r22 release];
    }
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_mediationStatistics, 0x0);
    return;
}

-(void *)mediationStatisticsParameterOrderedByAllocationIDs:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x200;
    r19 = self;
    r22 = [arg2 retain];
    r20 = [[NSMutableArray alloc] init];
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1F0 = r0;
    var_220 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_mediationStatistics));
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_1F0);
                            }
                            r24 = *(0x0 + r21 * 0x8);
                            r0 = *(r19 + r26);
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    r0 = *(r19 + r26);
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    sub_100822370(r20, [r0 retain]);
                                    [r24 release];
                            }
                            r21 = r21 + 0x1;
                    } while (r21 < r22);
                    r22 = objc_msgSend(var_1F0, var_220);
            } while (r22 != 0x0);
    }
    [var_1F0 release];
    r0 = [r20 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            var_230 = @selector(count);
            var_200 = [[NSMutableArray alloc] init];
            var_228 = r20;
            r0 = [r20 retain];
            var_210 = r0;
            r24 = objc_msgSend(r0, var_220);
            if (r24 != 0x0) {
                    do {
                            r19 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_210);
                                    }
                                    r28 = *(0x0 + r19 * 0x8);
                                    r21 = [[r28 objectForKeyedSubscript:@"allocation_id"] retain];
                                    r26 = [[r28 objectForKeyedSubscript:@"exit_status"] retain];
                                    r27 = [[r28 objectForKeyedSubscript:@"end_time"] retain];
                                    r0 = [r28 objectForKeyedSubscript:@"start_time"];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    if (r27 != 0x0) {
                                            var_1E0 = r21;
                                            if (r28 != 0x0) {
                                                    r0 = [r27 retain];
                                                    r22 = [r28 unsignedLongValue];
                                                    r21 = [r0 unsignedLongValue];
                                                    r24 = r24;
                                                    [r0 release];
                                                    r8 = r21 - r22;
                                                    if (r8 < 0x0) {
                                                            if (!CPU_FLAGS & B) {
                                                                    r21 = r8;
                                                            }
                                                            else {
                                                                    r21 = 0x0;
                                                            }
                                                    }
                                            }
                                            else {
                                                    r21 = 0x0;
                                            }
                                            sub_100822370(var_200, [[NSString alloc] initWithFormat:r2]);
                                            r0 = r21;
                                            r21 = var_1E0;
                                            [r0 release];
                                    }
                                    [r28 release];
                                    [r27 release];
                                    [r26 release];
                                    [r21 release];
                                    r19 = r19 + 0x1;
                            } while (r19 < r24);
                            r24 = objc_msgSend(var_210, var_220);
                    } while (r24 != 0x0);
            }
            [var_210 release];
            if (objc_msgSend(var_200, var_230) != 0x0) {
                    r19 = [[var_200 componentsJoinedByString:r2] retain];
            }
            else {
                    r19 = 0x0;
            }
            [var_200 release];
            r20 = var_228;
    }
    else {
            r19 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    r19 = [[r19 autorelease] retain];
    [r20 release];
    [var_1F0 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end