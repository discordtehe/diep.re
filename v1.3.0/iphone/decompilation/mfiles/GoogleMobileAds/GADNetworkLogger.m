@implementation GADNetworkLogger

+(void *)sharedInstance {
    if (*qword_1011dbdd8 != -0x1) {
            dispatch_once(0x1011dbdd8, 0x100e95fb0);
    }
    r0 = *0x1011dbde0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x160;
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
    r29 = &saved_fp;
    r19 = [[r29 - 0x98 super] init];
    if (r19 == 0x0) goto loc_1008422f4;

loc_100841f50:
    r20 = @selector(init);
    r0 = sub_100860a2c("com.google.admob.n.network-logging", 0x0, 0x11);
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_logQueue));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r0 = [GADObserverCollection alloc];
    r0 = objc_msgSend(r0, r20);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r24 = [[GADSettings sharedInstance] retain];
    r26 = [[NSArray arrayWithObjects:r29 - 0x88 count:0x4] retain];
    r20 = [[r24 stringsForKeys:r26] retain];
    [r26 release];
    [r24 release];
    r0 = [r20 objectForKeyedSubscript:*0x100e9b660];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 integerValue];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_maxLineLength));
    *(r19 + r26) = r0;
    [r25 release];
    r0 = [r20 objectForKeyedSubscript:*0x100e9b668];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_initialMessage));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r0 = [r20 objectForKeyedSubscript:*0x100e9b670];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_logPrefix));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r0 = [r20 objectForKeyedSubscript:*0x100e9b678];
    r29 = r29;
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_finalMessage));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r8 = *(r19 + r26);
    if (r8 <= 0x0) goto loc_100842304;

loc_100842150:
    objc_initWeak(r29 - 0xa0, r19);
    objc_copyWeak(&var_C8 + 0x20, r29 - 0xa0);
    [r19 observeEvent:*0x100e9c1d8 withBlock:&var_C8];
    objc_copyWeak(&var_F0 + 0x20, r29 - 0xa0);
    [r19 observeEvent:*0x100e9c1e0 withBlock:&var_F0];
    objc_copyWeak(&var_118 + 0x20, r29 - 0xa0);
    [r19 observeEvent:*0x100e9c1e8 withBlock:&var_118];
    objc_copyWeak(&var_140 + 0x20, r29 - 0xa0);
    [r19 observeEvent:*0x100e9c1f8 withBlock:&var_140];
    objc_destroyWeak(&var_140 + 0x20);
    objc_destroyWeak(&var_118 + 0x20);
    objc_destroyWeak(&var_F0 + 0x20);
    objc_destroyWeak(&var_C8 + 0x20);
    objc_destroyWeak(r29 - 0xa0);
    [r20 release];
    goto loc_1008422f4;

loc_1008422f4:
    r20 = [r19 retain];
    goto loc_100842324;

loc_100842324:
    var_68 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_68) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100842304:
    sub_1007ce06c(0x0, @"Received invalid debug line length %ld.");
    [r20 release];
    r20 = 0x0;
    goto loc_100842324;
}

-(void)observeEvent:(void *)arg2 withBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r0 = [arg3 retain];
    r19 = self->_observers;
    r22 = [r0 retain];
    [r19 addObserverForName:r21 object:0x0 queue:0x0 usingBlock:&var_48];
    [r21 release];
    [r0 release];
    [r22 release];
    return;
}

-(void)logMessage:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            NSLog(@"<Google> %@", @selector(length));
            r0 = sub_10080f61c(r19, r20->_maxLineLength);
            r0 = [r0 retain];
            r21 = r0;
            r2 = &var_118;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            r23 = objc_msgSend(r0, r1);
            if (r23 != 0x0) {
                    r26 = sign_extend_64(*(int32_t *)ivar_offset(_logPrefix));
                    do {
                            r27 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r21);
                                    }
                                    NSLog(@"<Google> %@%@", r1, r2);
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r2 = &var_118;
                            r1 = @selector(countByEnumeratingWithState:objects:count:);
                            r23 = objc_msgSend(r21, r1);
                    } while (r23 != 0x0);
            }
            NSLog(@"<Google> %@", r1);
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)logEvent:(void *)arg2 context:(void *)arg3 userInfo:(void *)arg4 {
    r31 = r31 - 0xf0;
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
    r22 = self;
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [[NSDate alloc] init];
    r24 = sub_100853ed8();
    [r23 release];
    r23 = [r24 retain];
    [r21 timeIntervalSince1970];
    r0 = [NSNumber numberWithDouble:r2];
    r29 = &saved_fp;
    r25 = [r0 retain];
    if (r20 != 0x0) {
            r27 = 0x0;
            r26 = r20;
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r26 = [r0 retain];
            r27 = 0x1;
    }
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    r24 = [r0 retain];
    if (r27 != 0x0) {
            [r26 release];
    }
    [r25 release];
    r0 = sub_10084aae0(r24, &var_A8);
    r29 = r29;
    r26 = [r0 retain];
    r25 = [var_A8 retain];
    if (r25 != 0x0) {
            sub_1007ce06c(0x0, @"Network log events must be JSON-encodable. %@");
            r0 = sub_10084a5f0();
            r0 = [r0 retain];
            r28 = [sub_10084aae0(r0, 0x0) retain];
            [r26 release];
            [r0 release];
            r26 = r28;
    }
    var_58 = **___stack_chk_guard;
    r27 = r22->_logQueue;
    var_B8 = [r22 retain];
    [r26 retain];
    dispatch_sync(r27, &var_D8);
    [r26 release];
    [var_B8 release];
    [r22 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_finalMessage, 0x0);
    objc_storeStrong((int64_t *)&self->_logPrefix, 0x0);
    objc_storeStrong((int64_t *)&self->_initialMessage, 0x0);
    objc_storeStrong((int64_t *)&self->_logQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end