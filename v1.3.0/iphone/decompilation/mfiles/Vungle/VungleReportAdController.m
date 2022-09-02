@implementation VungleReportAdController

-(void *)initWithURL:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            objc_storeStrong(r21 + 0x10, r20);
            *(int8_t *)(r21 + 0x8) = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)sendSavedReports:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    if (*(int8_t *)(r20 + 0x8) != 0x0) {
            r21 = objc_alloc();
            r0 = [NSDictionary dictionaryWithObjects:&stack[-64] forKeys:&var_38 count:0x1];
            (*(r19 + 0x10))(r19, [r21 initWithDomain:@"com.vungle.reportAdController" code:0xffffffffffff5ee3 userInfo:[r0 retain]]);
            [r21 release];
            [r22 release];
    }
    else {
            *(int8_t *)(r20 + 0x8) = 0x1;
            [r20 dispatchSendReportsOperation:r19];
    }
    var_28 = **___stack_chk_guard;
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(bool)saveReport:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r0 = [VNGPersistenceManager sharedManager];
    r0 = [r0 retain];
    [r0 saveObject:r19 error:&var_38];
    r23 = [var_38 retain];
    [r0 release];
    if (r23 != 0x0) {
            *r21 = objc_retainAutorelease(r23);
    }
    if (r23 == 0x0) {
            if (CPU_FLAGS & E) {
                    r21 = 0x1;
            }
    }
    [r23 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)loadReportForAdWithCacheKey:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[arg2 stringByAppendingString:@".report"] retain];
    r21 = [[VNGPersistenceManager sharedManager] retain];
    r0 = [r21 loadObjectWithClass:[VungleAdReport class] key:r19 error:&var_28];
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            [r20 retain];
    }
    [r20 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)dispatchSendReportsOperation:(void *)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [r22 sortedSavedReportURLs];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            r21 = objc_alloc();
            r23 = [[r22 URL] retain];
            [r21 initWithLocalReportPaths:r20 reportAdURL:r23];
            [r23 release];
            objc_initWeak(&stack[-72], r22);
            var_48 = [r19 retain];
            objc_copyWeak(&var_68 + 0x28, &stack[-72]);
            [r21 appendFinishHandler:&var_68];
            r0 = [VNGOperationQueue defaultQueue];
            r0 = [r0 retain];
            [r0 addOperation:r21];
            [r0 release];
            objc_destroyWeak(&var_68 + 0x28);
            [var_48 release];
            objc_destroyWeak(&stack[-72]);
            [r21 release];
    }
    else {
            *(int8_t *)(r22 + 0x8) = 0x0;
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)placementAdDataFromSavedReports {
    r31 = r31 - 0x1b0;
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
    var_178 = [[NSMutableArray array] retain];
    var_108 = 0x0;
    r21 = [[self savedAdReportsDirectoryContentsWithError:&var_108] retain];
    r19 = [var_108 retain];
    r0 = [VNGPersistenceManager sharedManager];
    r0 = [r0 retain];
    r20 = r0;
    var_190 = r21;
    r0 = [r0 loadObjectsWithURLs:r21 error:&var_110];
    r29 = &saved_fp;
    r21 = [r0 retain];
    var_198 = [var_110 retain];
    [r19 release];
    [r20 release];
    var_140 = q0;
    r0 = [r21 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_188 = r1;
    var_180 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r24 = r0;
            var_158 = *var_140;
            do {
                    r23 = 0x0;
                    do {
                            if (*var_140 != var_158) {
                                    objc_enumerationMutation(var_180);
                            }
                            r22 = *(var_148 + r23 * 0x8);
                            r0 = [r22 placement];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 objectForKeyedSubscript:@"placement_reference_id"];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            [r19 release];
                            if (r0 != 0x0) {
                                    r0 = [r22 placement];
                                    r0 = [r0 retain];
                                    r19 = r0;
                                    r26 = [[r0 objectForKeyedSubscript:@"placement_reference_id"] retain];
                                    r0 = [r22 toDictionary];
                                    r0 = [r0 retain];
                                    r22 = r0;
                                    r21 = [[r0 objectForKeyedSubscript:@"ad_token"] retain];
                                    r0 = [NSDictionary dictionaryWithObjects:&stack[-256] forKeys:&var_100 count:0x2];
                                    r29 = r29;
                                    [r0 retain];
                                    [r21 release];
                                    [r22 release];
                                    [r26 release];
                                    [r19 release];
                                    [var_178 addObject:r2];
                                    [r20 release];
                            }
                            r23 = r23 + 0x1;
                    } while (r23 < r24);
                    r0 = objc_msgSend(var_180, var_188);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_180 release];
    [var_180 release];
    [var_190 release];
    [var_198 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_178 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)sortedSavedReportURLs {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r0 = [self savedAdReportsDirectoryContentsWithError:&var_28];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [var_28 retain];
    if (r19 != 0x0 && [r19 count] != 0x0) {
            r21 = [[r21 sortSavedAdReportsByCreationDate:r19] retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)sortSavedAdReportsByCreationDate:(void *)arg2 {
    r0 = [arg2 sortedArrayUsingComparator:0x100e89308];
    return r0;
}

-(void *)savedAdReportsDirectoryContentsWithError:(void * *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r21 = [[VNGPersistenceManager sharedManager] retain];
    r20 = [VungleAdReport channel];
    r22 = [[VungleAdReport category] retain];
    r0 = [r21 loadObjectURLsAtChannel:r20 category:r22 error:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    [r21 release];
    if (r19 != 0x0 && r20 == 0x0) {
            r21 = objc_alloc();
            r0 = *r19;
            r0 = [r0 userInfo];
            r0 = [r0 retain];
            r23 = [r0 copy];
            *r19 = [[r21 initWithDomain:@"com.vungle.reportAdController" code:0xffffffffffff5ee0 userInfo:r23] autorelease];
            [r23 release];
            [r0 release];
    }
    else {
            [r20 retain];
    }
    [r20 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)URL {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isSendingReports {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)setIsSendingReports:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end