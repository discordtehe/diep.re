@implementation GADMediationServerConfiguration

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
            r0 = [NSMutableSet alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_credentials));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)credentials {
    r0 = self->_credentials;
    r0 = [r0 allObjects];
    return r0;
}

-(void)addMediationCredentials:(void *)arg2 {
    sub_100822430(self->_credentials, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_credentials, 0x0);
    return;
}

-(void *)initWithDictionary:(void *)arg2 {
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
    r29 = &saved_fp;
    r20 = [arg2 retain];
    r0 = [self init];
    var_128 = r0;
    if (r0 != 0x0) {
            r0 = [NSArray class];
            var_138 = r20;
            r0 = sub_10081ba6c(r20, @"data", r0);
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            r28 = r0;
            var_130 = r1;
            r24 = objc_msgSend(r0, r1);
            if (r24 != 0x0) {
                    do {
                            r22 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(r28);
                                    }
                                    r19 = *(0x0 + r22 * 0x8);
                                    if ([r19 isKindOfClass:[NSDictionary class]] != 0x0) {
                                            r19 = [[GADMediationCredentials alloc] initWithDictionary:r19];
                                            if (r19 != 0x0) {
                                                    [var_128 addMediationCredentials:r2];
                                            }
                                            [r19 release];
                                    }
                                    r22 = r22 + 0x1;
                            } while (r22 < r24);
                            r24 = objc_msgSend(r28, var_130);
                    } while (r24 != 0x0);
            }
            [r28 release];
            r20 = var_138;
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = var_128;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end