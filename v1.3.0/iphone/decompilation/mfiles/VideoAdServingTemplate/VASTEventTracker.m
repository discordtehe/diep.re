@implementation VASTEventTracker

+(void *)eventTrackerWithMPVastTrackingEvents:(void *)arg2 {
    r31 = r31 - 0x160;
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
    r19 = [arg2 retain];
    var_150 = [objc_alloc() init];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    var_128 = [r0 retain];
    var_110 = q0;
    r0 = [r19 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_148 = r1;
    var_140 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r24 = r0;
            var_138 = *var_110;
            do {
                    r21 = 0x0;
                    do {
                            if (*var_110 != var_138) {
                                    objc_enumerationMutation(var_140);
                            }
                            r19 = @selector(addObject:);
                            r23 = *(var_118 + r21 * 0x8);
                            r22 = [objc_alloc() init];
                            r20 = [[r23 URL] retain];
                            [r22 setUrl:r20];
                            [r20 release];
                            r0 = [r23 progressOffset];
                            r29 = r29;
                            r20 = [r0 retain];
                            [r22 setProgressOffset:r20];
                            [r20 release];
                            objc_msgSend(var_128, r19);
                            [r22 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r24);
                    r0 = objc_msgSend(var_140, var_148);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_140 release];
    r19 = var_150;
    [r19 setTrackingEvents:var_128];
    [var_128 release];
    [var_140 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setTrackersFired:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(bool)trackersFired {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

+(void *)eventTrackerWithURLs:(void *)arg2 {
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
    r22 = [arg2 retain];
    var_138 = [objc_alloc() init];
    r21 = [[NSMutableArray array] retain];
    var_110 = q0;
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r1;
    var_128 = r0;
    r0 = objc_msgSend(r0, r1);
    if (r0 != 0x0) {
            r24 = r0;
            r23 = *var_110;
            do {
                    r22 = 0x0;
                    do {
                            if (*var_110 != r23) {
                                    objc_enumerationMutation(var_128);
                            }
                            r27 = @selector(addObject:);
                            r28 = *(var_118 + r22 * 0x8);
                            r0 = objc_alloc();
                            r0 = [r0 init];
                            [r0 setUrl:r28];
                            [r0 setProgressOffset:0x0];
                            objc_msgSend(r21, r27);
                            [r19 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r24);
                    r0 = objc_msgSend(var_128, var_130);
                    r24 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [var_128 release];
    r19 = var_138;
    [r19 setTrackingEvents:r21];
    [r21 release];
    [var_128 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)trackingEvents {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setTrackingEvents:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end