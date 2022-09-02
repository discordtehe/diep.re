@implementation GADEventConsoleLogger

+(void *)sharedInstance {
    if (*qword_1011dbdc0 != -0x1) {
            dispatch_once(0x1011dbdc0, 0x100e952c0);
    }
    r0 = *0x1011dbdc8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_settingsUpdateObservers));
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            r0 = [NSOperationQueue alloc];
            r0 = objc_msgSend(r0, r20);
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_operationQueue));
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            [*(r19 + r23) setMaxConcurrentOperationCount:0x1];
            [r19 updateEnabled];
            objc_initWeak(&stack[-88], r19);
            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
            [r21 addObserverForName:*0x100e9c400 object:0x0 queue:r23 usingBlock:&var_70];
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(&stack[-88]);
    }
    r0 = r19;
    return r0;
}

-(void)updateEnabled {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = [r0 boolForKey:*0x100e9b658];
    [r0 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_loggingObservers));
    r0 = *(r19 + r22);
    if (r21 != 0x0) {
            if (r0 == 0x0) {
                    r0 = [GADObserverCollection alloc];
                    r0 = [r0 init];
                    r8 = *(r19 + r22);
                    *(r19 + r22) = r0;
                    [r8 release];
                    objc_initWeak(&stack[-56], r19);
                    objc_copyWeak(&var_50 + 0x20, &stack[-56]);
                    [r21 addObserverForName:0x0 object:0x0 queue:r19 usingBlock:&var_50];
                    objc_destroyWeak(&var_50 + 0x20);
                    objc_destroyWeak(&stack[-56]);
            }
    }
    else {
            *(r19 + r22) = 0x0;
            [r0 release];
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_loggingObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_settingsUpdateObservers, 0x0);
    objc_storeStrong((int64_t *)&self->_operationQueue, 0x0);
    return;
}

-(void)logEvent:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 object];
    r0 = [r0 retain];
    r22 = [r0 conformsToProtocol:@protocol(GADEventContextSource)];
    [r0 release];
    r0 = [r19 object];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r21 context];
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
    }
    else {
            [GADEventContext class];
            r22 = [r21 isKindOfClass:r2];
            [r21 release];
            if (r22 != 0x0) {
                    r0 = [r19 object];
                    r29 = r29;
                    r20 = [r0 retain];
            }
            else {
                    r20 = 0x0;
            }
    }
    r22 = [sub_100853ed8() retain];
    r24 = [[r20 userInfo] retain];
    r21 = [[r19 userInfo] retain];
    r0 = sub_10084a5f0();
    r29 = r29;
    r23 = [r0 retain];
    [r21 release];
    if (r22 != 0x0) {
            r27 = 0x0;
            r25 = r22;
    }
    else {
            r0 = [NSArray arrayWithObjects:&stack[-288] count:0x0];
            r29 = r29;
            r25 = [r0 retain];
            r27 = 0x1;
    }
    if (r23 != 0x0) {
            r28 = 0x0;
            r26 = r23;
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r26 = [r0 retain];
            r28 = 0x1;
    }
    var_158 = r20;
    r21 = r24;
    var_168 = r21;
    if (r21 != 0x0) {
            r20 = 0x0;
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r21 = [r0 retain];
            r20 = 0x1;
    }
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    r24 = [r0 retain];
    if (r20 != 0x0) {
            [r21 release];
    }
    var_160 = r22;
    if (r28 != 0x0) {
            [r26 release];
    }
    if (r27 != 0x0) {
            [r25 release];
    }
    r21 = [NSString alloc];
    r26 = [[r19 name] retain];
    r25 = [r21 initWithFormat:@"%@ %@"];
    [r26 release];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r26 = [r0 integerForKey:r2];
    [r0 release];
    r0 = sub_10080f61c(r25, r26);
    r0 = [r0 retain];
    r26 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r26);
                            }
                            NSLog(@"<Google> %@", @selector(integerForKey:));
                            r22 = r22 + 0x1;
                    } while (r22 < r21);
                    r21 = [r26 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r21 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [var_168 release];
    [var_160 release];
    [var_158 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end