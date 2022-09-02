@implementation USRVInitializeStateInitModules

-(void *)execute {
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
    r19 = self;
    r0 = [self configuration];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 getModuleConfigurationList];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r22 release];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r23 = objc_msgSend(r21, r1);
    if (r23 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = [r19 configuration];
                            r0 = [r0 retain];
                            r27 = r0;
                            r0 = [r0 getModuleConfiguration:r2];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r27 release];
                            if (r26 != 0x0) {
                                    r0 = [r19 configuration];
                                    r29 = r29;
                                    [r0 retain];
                                    [r26 initModuleState:r2];
                                    [r27 release];
                            }
                            [r26 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r23);
                    r23 = objc_msgSend(r21, var_120);
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    r21 = [USRVInitializeStateConfig alloc];
    r20 = [[r19 configuration] retain];
    r19 = [r21 initWithConfiguration:r20 retries:0x0 retryDelay:0x5];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end