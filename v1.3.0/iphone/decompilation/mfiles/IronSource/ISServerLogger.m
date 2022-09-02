@implementation ISServerLogger

-(void)log:(void *)arg2 level:(int)arg3 tag:(int)arg4 {
    r24 = [arg2 retain];
    r19 = [[ServerLoggerEntry alloc] initWithMessage:r24 level:arg3 tag:arg4];
    [r24 release];
    [self->logArray addObject:r19];
    [self->sendingCalc notifyEvent:0x2 val:arg3];
    [r19 release];
    return;
}

-(void *)initWithLevel:(int)arg2 queue:(void *)arg3 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r19 = [r21 retain];
    r0 = [[&var_38 super] initWithLevel:arg2];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->networkQueue, r21);
            r0 = [NSArray arrayWithObjects:&stack[-56] count:0x0];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 mutableCopy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(logArray));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r21 release];
            r0 = [SendingCalc alloc];
            r0 = [r0 initWithLogger:r20];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(sendingCalc));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)sendToServer:(void *)arg2 {
    return;
}

-(void)send {
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
    r19 = [[NSMutableArray alloc] init];
    var_120 = self;
    r0 = self->logArray;
    r0 = [r0 retain];
    r23 = r0;
    r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r25 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r23);
                            }
                            r27 = @selector(addObject:);
                            r0 = *(0x0 + r22 * 0x8);
                            r0 = [r0 convertToDic];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r19, r27);
                            [r28 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r25);
                    r25 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r25 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r23 release];
    r22 = [[NSMutableDictionary alloc] init];
    r23 = [[ISUtils getGeneralParamsDic] retain];
    r24 = [[NSMutableDictionary alloc] initWithDictionary:r23 copyItems:0x1];
    [r22 setObject:r19 forKey:@"log_data"];
    [r22 setObject:r24 forKey:@"general_properties"];
    r25 = [[NSJSONSerialization dataWithJSONObject:r22 options:0x0 error:0x0] retain];
    r21 = [[NSString alloc] initWithData:r25 encoding:0x4];
    [var_120 sendToServer:r21];
    [r21 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)sendToServerAsync:(void *)arg2 {
    return;
}

-(void)connection:(void *)arg2 didReceiveAuthenticationChallenge:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg3 retain];
    r19 = r0;
    if ([r0 previousFailureCount] != 0x0) {
            NSLog(@"previous authentication failure");
    }
    else {
            NSLog(@"received authentication challenge");
            [[NSURLCredential credentialWithUser:@"USER" password:@"PASSWORD" persistence:0x1] retain];
            NSLog(@"credential created");
            r0 = [r19 sender];
            r0 = [r0 retain];
            [r0 useCredential:r20 forAuthenticationChallenge:r19];
            [r0 release];
            NSLog(@"responded to authentication challenge");
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)connection:(void *)arg2 didReceiveResponse:(void *)arg3 {
    return;
}

-(void)connection:(void *)arg2 didReceiveData:(void *)arg3 {
    return;
}

-(void)connection:(void *)arg2 didFailWithError:(void *)arg3 {
    return;
}

-(void)connectionDidFinishLoading:(void *)arg2 {
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->sendingCalc, 0x0);
    objc_storeStrong((int64_t *)&self->networkQueue, 0x0);
    objc_storeStrong((int64_t *)&self->logArray, 0x0);
    return;
}

@end