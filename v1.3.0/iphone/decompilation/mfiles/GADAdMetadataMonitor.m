@implementation GADAdMetadataMonitor

-(void *)initWithAd:(void *)arg2 messageSource:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r21 = [self init];
    if (r21 != 0x0) {
            objc_storeWeak((int64_t *)&r21->_ad, r19);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            objc_initWeak(&stack[-88], r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
            [r22 addObserverForName:*0x100e9c378 object:r20 queue:r24 usingBlock:&var_70];
            [r24 release];
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(&stack[-88]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)handleAdMetadataNotification:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r20 = [[r19 objectForKeyedSubscript:@"name"] retain];
    r0 = [r19 objectForKeyedSubscript:@"info"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [NSString class];
    if (([r22 isKindOfClass:r2] & 0x1) != 0x0) {
            r23 = [[NSMutableDictionary alloc] init];
            if (r20 != 0x0) {
                    sub_100822058(r23, @"name", r20);
            }
            r0 = sub_10084acf0(r22, &var_48);
            r24 = [r0 retain];
            r25 = [var_48 retain];
            if (r25 != 0x0) {
                    sub_1007ce06c(0x0, @"Failed to deserialize JSON object from string. Error: %@");
            }
            else {
                    sub_100822058(r23, @"info", r24);
                    sub_1008833e8(*0x100e9c058, objc_loadWeakRetained((int64_t *)&r21->_ad), r23);
                    [r21 release];
            }
            [r24 release];
            [r25 release];
            [r23 release];
    }
    else {
            sub_1007ce06c(0x0, @"Ad metadata received without a \"%@\" value.");
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_ad);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end