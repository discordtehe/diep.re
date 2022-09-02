@implementation TREventsRequest

-(void *)events {
    r0 = self->_events;
    return r0;
}

-(void *)initWithEvents:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [[&var_E8 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setName:@"Events"];
            [r20 setShouldLog:0x0];
            [r20 setRelativeURL:*0x100e7d650];
            r0 = [NSMutableArray arrayWithCapacity:0x1];
            r29 = r29;
            r0 = [r0 retain];
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_events));
            r8 = *(r20 + r28);
            *(r20 + r28) = r0;
            [r8 release];
            var_118 = q0;
            var_138 = r19;
            r0 = [r19 retain];
            r21 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_130 = r1;
            r23 = objc_msgSend(r0, r1);
            if (r23 != 0x0) {
                    r19 = *var_118;
                    do {
                            r22 = 0x0;
                            do {
                                    if (*var_118 != r19) {
                                            objc_enumerationMutation(r21);
                                    }
                                    r25 = @selector(addObject:);
                                    r0 = *(var_120 + r22 * 0x8);
                                    r26 = *(r20 + r28);
                                    r0 = [r0 messageDictionary];
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(r26, r25);
                                    [r27 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < r23);
                            r23 = objc_msgSend(r21, var_130);
                    } while (r23 != 0x0);
            }
            [r21 release];
            r0 = [r20 requestPayload];
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r21 release];
            r19 = var_138;
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

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_events, 0x0);
    return;
}

@end