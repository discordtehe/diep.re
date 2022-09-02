@implementation GADManualImpressionMonitor

+(void)addMonitorToAd:(void *)arg2 adConfiguration:(struct NSDictionary *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [arg3 objectForKeyedSubscript:*0x100e95998];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] != 0x0) {
            r21 = [[GADManualImpressionMonitor alloc] initWithAd:r19 manualImpressionURLStrings:r20];
            [r19 addMonitor:r21];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)initWithAd:(void *)arg2 manualImpressionURLStrings:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r20 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r22 = @selector(init);
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_manualImpressionURLStrings));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [NSOperationQueue alloc];
            r0 = objc_msgSend(r0, r22);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_observationQueue));
            r8 = *(r21 + r25);
            *(r21 + r25) = r0;
            [r8 release];
            [*(r21 + r25) setQualityOfService:0x11];
            [*(r21 + r25) setMaxConcurrentOperationCount:0x1];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            objc_initWeak(&stack[-104], r21);
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            [r23 addObserverForName:*0x100e9c088 object:r19 queue:r25 usingBlock:&var_80];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_observationQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_manualImpressionURLStrings, 0x0);
    return;
}

-(void)handleManualImpressionInContext:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_manualImpressionURLStrings));
    if (*(r20 + r8) != 0x0) {
            var_128 = r8;
            stack[-304] = r20;
            r0 = sub_10089914c();
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r23 != 0x0) {
                    do {
                            r20 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r25 = *(0x0 + r20 * 0x8);
                                    if (r19 != 0x0) {
                                            sub_10084cc54(r25, r19);
                                    }
                                    else {
                                            r0 = [GADEventContext rootContext];
                                            r29 = r29;
                                            sub_10084cc54(r25, [r0 retain]);
                                            [r26 release];
                                    }
                                    r20 = r20 + 0x1;
                            } while (r20 < r23);
                            r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r23 != 0x0);
            }
            r0 = *(stack[-304] + var_128);
            *(stack[-304] + var_128) = 0x0;
            [r0 release];
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end