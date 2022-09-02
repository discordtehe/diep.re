@implementation TJYMoatOnOff

+(bool)getDebug {
    return *(int8_t *)0x1011dc2b0;
}

+(void)setDebug:(bool)arg2 {
    *(int8_t *)0x1011dc2b0 = arg2;
    return;
}

+(void)load {
    r0 = [NSMutableArray new];
    r8 = *0x1011dc2b8;
    *0x1011dc2b8 = r0;
    [r8 release];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 new];
    r8 = *0x1011dc2c0;
    *0x1011dc2c0 = r0;
    [r8 release];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 new];
    r8 = *0x1011dc2c8;
    *0x1011dc2c8 = r0;
    [r8 release];
    return;
}

+(void *)trim:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
    r19 = [arg2 stringByTrimmingCharactersInSet:r20];
    [r22 release];
    r19 = [r19 retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void)initialize {
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = self;
    if ([TJYMoatOnOff class] == r19) {
            objc_sync_enter(r19);
            if (*(int8_t *)0x1011dc2d0 != 0x0) {
                    objc_sync_exit(r19);
            }
            else {
                    *(int8_t *)0x1011dc2d0 = 0x1;
                    objc_sync_exit(r19);
                    r19 = [[NSThread alloc] initWithTarget:r19 selector:@selector(runEnablerLoop) object:0x0];
                    r20 = [[NSString stringWithFormat:@"%@-moat-status"] retain];
                    [r19 setName:r20];
                    [r20 release];
                    [r19 start];
                    [r19 release];
            }
    }
    return;
}

+(void)checkQueue {
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
    r20 = self;
    r0 = *0x1011dc2b8;
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    while ([*0x1011dc2b8 count] != 0x0) {
            r0 = *0x1011dc2b8;
            r0 = [r0 objectAtIndexedSubscript:0x0];
            r29 = r29;
            r25 = [r0 retain];
            [*0x1011dc2b8 removeObjectAtIndex:0x0];
            [r20 enqueueResurrection:r2];
            [r25 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

+(void)resurrect {
    [self checkQueue];
    [*0x1011dc2c0 enumerateKeysAndObjectsUsingBlock:0x100ea3990];
    return;
}

+(unsigned long long)getStatus {
    return *(int8_t *)0x1011dc2d1;
}

+(void)enqueueResurrection:(void *)arg2 {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x30;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 count] == 0x3) {
            r20 = [[r19 objectAtIndexedSubscript:0x1] retain];
            r21 = [[r19 objectAtIndexedSubscript:0x2] retain];
            r0 = *0x1011dc2c0;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r24 = *0x1011dc2c0;
                    r26 = [NSMutableOrderedSet new];
                    [r24 setObject:r26 forKeyedSubscript:r20];
                    [r26 release];
            }
            r0 = *0x1011dc2c8;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r24 = *0x1011dc2c8;
                    r26 = [NSMutableDictionary new];
                    [r24 setObject:r26 forKeyedSubscript:r20];
                    [r26 release];
            }
            r23 = @selector(count);
            r24 = [[*0x1011dc2c0 objectForKeyedSubscript:r2] retain];
            r0 = *0x1011dc2c8;
            r0 = [r0 objectForKeyedSubscript:r2];
            r29 = r29;
            r25 = [r0 retain];
            if (objc_msgSend(r24, r23) >= 0xa) {
                    r0 = [NSIndexSet indexSetWithIndexesInRange:0x0];
                    r29 = r29;
                    r23 = [r0 retain];
                    var_70 = 0xffffffffc2000000;
                    var_68 = 0x100972628;
                    var_60 = 0x100ea39b0;
                    var_58 = [r25 retain];
                    r0 = [r24 enumerateObjectsAtIndexes:r23 options:0x0 usingBlock:&var_78];
                    [r24 removeObjectsAtIndexes:r23];
                    [var_58 release];
                    [r23 release];
            }
            if (([r24 containsObject:r2] & 0x1) != 0x0) {
                    [r24 removeObject:r21];
            }
            [r24 addObject:r21];
            r0 = [r19 objectAtIndexedSubscript:0x0];
            r29 = r29;
            r22 = [r0 retain];
            [r25 setObject:r22 forKeyedSubscript:r21];
            [r22 release];
            [r25 release];
            [r24 release];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

+(void)onResurrectionDo:(void *)arg2 withQueue:(void *)arg3 withKey:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    r29 = &saved_fp;
    var_48 = **___stack_chk_guard;
    [arg2 retain];
    [arg3 retain];
    [arg4 retain];
    r0 = *0x1011dc2b8;
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r24 = *0x1011dc2b8;
    r23 = objc_retainBlock(r19);
    var_60 = r23;
    stack[-104] = r20;
    var_50 = r21;
    r25 = [[NSArray arrayWithObjects:&var_60 count:0x3] retain];
    [r24 addObject:r25];
    [r25 release];
    [r23 release];
    objc_sync_exit(r22);
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (r26 != var_48) {
            __stack_chk_fail();
    }
    return;
}

+(void)runEnablerLoop {
    r29 = &saved_fp;
    r19 = self;
    r28 = @selector(timeIntervalSinceReferenceDate);
    goto loc_100971c58;

loc_100971c58:
    r20 = r28;
    objc_msgSend(@class(NSDate), r28);
    v10 = v0;
    [r19 checkQueue];
    r24 = [[@"7439633c418d46e7675511c7fdb580e5dffd241a" substringToIndex:r2] retain];
    d0 = d10 * d11;
    r25 = [[NSString stringWithFormat:r2] retain];
    r22 = [[NSURL URLWithString:r2] retain];
    r26 = [[NSURLRequest requestWithURL:r2 cachePolicy:r3 timeoutInterval:r4] retain];
    [r22 release];
    r2 = r26;
    r0 = [NSURLConnection sendSynchronousRequest:r2 returningResponse:r3 error:r4];
    r29 = r29;
    r27 = [r0 retain];
    r22 = [0x0 retain];
    r23 = [0x0 retain];
    if (r27 != 0x0) {
            asm { ccmp       x23, #0x0, #0x0, ne };
    }
    if (!CPU_FLAGS & NE) {
            var_A0 = @selector(isEqualToString:);
            r28 = [[NSString alloc] initWithData:r2 encoding:r3];
            r0 = [r19 trim:r2];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (objc_msgSend(r0, var_A0) != 0x0) {
                    [r19 setDebug:r2];
            }
            if ([r21 length] != 0x0 && ([r21 isEqualToString:r2] & 0x1) == 0x0) {
                    r1 = @selector(getDebug);
                    if (objc_msgSend(r19, r1) != 0x0 && *(int8_t *)byte_1011dc2d1 != 0x0) {
                            NSLog(@"[%@] Moat disabled.", r1);
                    }
                    *(int8_t *)0x1011dc2d1 = 0x0;
            }
            else {
                    r1 = @selector(getDebug);
                    if (objc_msgSend(r19, r1) != 0x0 && *(int8_t *)byte_1011dc2d1 == 0x0) {
                            NSLog(@"[%@] Moat enabled.", r1);
                    }
                    *(int8_t *)0x1011dc2d1 = 0x1;
                    r1 = @selector(resurrect);
                    objc_msgSend(r19, r1);
            }
            [r21 release];
            [r28 release];
    }
    else {
            r8 = &@class(MCConfigurationData);
            r1 = @selector(getDebug);
            if (objc_msgSend(r19, r1) != 0x0) {
                    r8 = *(int8_t *)byte_1011dc2d1;
                    if (r8 != 0x0) {
                            r8 = @"MoatOnOff";
                            NSLog(@"[%@] Moat disabled.", r1);
                    }
            }
            r1 = @selector(getDebug);
            r0 = objc_msgSend(r19, r1);
            if (r23 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r8 = 0x1;
                    }
            }
            if ((r8 & r0) == 0x1) {
                    NSLog(@"[%@] Moat connection error: %@", r1, r2);
            }
            *(int8_t *)0x1011dc2d1 = 0x0;
    }
    r28 = r20;
    [r27 release];
    [r23 release];
    [r22 release];
    [r26 release];
    [r25 release];
    r0 = [r24 release];
    asm { scvtf      d1, w8 };
    pow(r0, r1);
    if (d0 < d12) {
            asm { fcsel      d13, d0, d12, mi };
    }
    objc_msgSend(@class(NSDate), r28);
    if ((d13 - d0) + d10 > 0x0) {
            asm { fcsel      d10, d0, d1, gt };
    }
    [TJYMoatBootstrap pruneDelegates];
    v0 = v10;
    [NSThread sleepForTimeInterval:r2];
    goto loc_100971c58;
}

@end