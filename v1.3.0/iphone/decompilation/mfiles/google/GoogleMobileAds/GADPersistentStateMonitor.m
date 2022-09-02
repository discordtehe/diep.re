@implementation GADPersistentStateMonitor

-(void *)initWithMessageSource:(void *)arg2 {
    r31 = r31 - 0xc0;
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
    r19 = [arg2 retain];
    r0 = [[&var_78 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r21);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r20 + r26);
            *(r20 + r26) = r0;
            [r8 release];
            r0 = [GADSQLStorage sharedInstance];
            r0 = [r0 retain];
            r21 = [[r0 stringForKey:*0x100e9be38] retain];
            [r0 release];
            r0 = sub_10084acf0(r21, &var_80);
            r29 = r29;
            r23 = [r0 retain];
            r22 = [var_80 retain];
            if (r23 != 0x0) {
                    asm { ccmp       x22, #0x0, #0x0, ne };
            }
            if (!CPU_FLAGS & E) {
                    r24 = [@(0x1) retain];
                    r25 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
                    [r23 release];
                    [r24 release];
                    r23 = r25;
            }
            r0 = [r23 mutableCopy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_state));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            objc_initWeak(&stack[-152], r20);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_B0 + 0x20, &stack[-152]);
            [r24 addObserverForName:*0x100e9c480 object:r19 queue:r26 usingBlock:&var_B0];
            [r26 release];
            objc_destroyWeak(&var_B0 + 0x20);
            objc_destroyWeak(&stack[-152]);
            [r23 release];
            [r22 release];
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)savedState {
    r0 = self->_state;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)saveState:(void *)arg2 {
    r31 = r31 - 0x60;
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
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r20 = [[r19 objectForKeyedSubscript:@"key"] retain];
    r0 = [r19 objectForKeyedSubscript:@"state"];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [NSString class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            r24 = @selector(isKindOfClass:);
            [NSString class];
            if ((objc_msgSend(r21, r24) & 0x1) != 0x0) {
                    sub_100822058(*(r22 + sign_extend_64(*(int32_t *)ivar_offset(_state))), r20, r21);
                    r0 = *(r22 + r23);
                    r0 = sub_10084aae0(r0, &var_48);
                    r29 = r29;
                    r22 = [r0 retain];
                    r23 = [var_48 retain];
                    if (r23 == 0x0) {
                            r0 = [GADSQLStorage sharedInstance];
                            r0 = [r0 retain];
                            [r0 setString:r22 forKey:*0x100e9be38];
                            [r0 release];
                    }
                    [r22 release];
                    [r23 release];
            }
            else {
                    sub_1007ce06c(0x0, @"Failed to save SDKCore state. Key or state type is empty or invalid.");
            }
    }
    else {
            sub_1007ce06c(0x0, @"Failed to save SDKCore state. Key or state type is empty or invalid.");
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_state, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end