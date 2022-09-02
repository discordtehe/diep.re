@implementation ADCLogReporter

-(void *)initWithLogs:(void *)arg2 andIndex:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r22 = arg2;
    r19 = [r22 retain];
    r21 = [r20 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r23 != 0x0) {
            objc_storeStrong((int64_t *)&r23->_logs, r22);
            objc_storeStrong((int64_t *)&r23->_index, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)startWithCompletionHandler:(void *)arg2 {
    r0 = [arg2 retain];
    r21 = [r0 retain];
    [self getContent:&var_50];
    [r0 release];
    [r21 release];
    return;
}

-(void *)logs {
    r0 = self->_logs;
    return r0;
}

-(void)getContent:(void *)arg2 {
    r31 = r31 - 0xb0;
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
    r23 = self;
    r22 = [arg2 retain];
    if (r22 != 0x0) {
            var_90 = r22;
            r0 = [AdColony sharedInstance];
            r29 = r29;
            r20 = [r0 retain];
            r22 = [NSMutableDictionary new];
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_index));
            r21 = *(r23 + r19);
            var_98 = r23;
            if (r21 != 0x0) {
                    [NSString class];
                    if ([r21 isKindOfClass:r2] != 0x0) {
                            r2 = *(r23 + r19);
                    }
                    else {
                            r2 = @"";
                    }
            }
            else {
                    r2 = @"";
            }
            [r22 setObject:r2 forKeyedSubscript:@"index"];
            r0 = [r20 logManager];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 environment];
            r29 = r29;
            r27 = [r0 retain];
            if (r27 != 0x0) {
                    r0 = [r20 logManager];
                    r0 = [r0 retain];
                    r28 = r0;
                    r0 = [r0 environment];
                    r29 = r29;
                    r21 = [r0 retain];
                    [NSString class];
                    if (([r21 isKindOfClass:r2] & 0x1) != 0x0) {
                            r0 = [r20 logManager];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 environment];
                            r29 = r29;
                            r23 = [r0 retain];
                            [r22 setObject:r23 forKeyedSubscript:@"environment"];
                            [r23 release];
                            [r19 release];
                    }
                    else {
                            [r22 setObject:@"" forKeyedSubscript:@"environment"];
                    }
                    [r21 release];
                    [r28 release];
            }
            else {
                    [r22 setObject:@"" forKeyedSubscript:@"environment"];
            }
            [r27 release];
            [r26 release];
            r0 = [r20 logManager];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 version];
            r29 = r29;
            r27 = [r0 retain];
            if (r27 != 0x0) {
                    r0 = [r20 logManager];
                    r0 = [r0 retain];
                    r28 = r0;
                    r0 = [r0 version];
                    r29 = r29;
                    r21 = [r0 retain];
                    [NSString class];
                    if (([r21 isKindOfClass:r2] & 0x1) != 0x0) {
                            r0 = [r20 logManager];
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = [r0 version];
                            r29 = r29;
                            r23 = [r0 retain];
                            [r22 setObject:r23 forKeyedSubscript:@"version"];
                            [r23 release];
                            [r19 release];
                    }
                    else {
                            [r22 setObject:@"" forKeyedSubscript:@"version"];
                    }
                    r23 = var_98;
                    [r21 release];
                    [r28 release];
            }
            else {
                    [r22 setObject:@"" forKeyedSubscript:@"version"];
                    r23 = var_98;
            }
            [r27 release];
            [r26 release];
            r19 = [NSMutableArray new];
            [r22 setObject:r19 forKeyedSubscript:@"logs"];
            [r19 release];
            r19 = [[ADCDevice sharedDevice] retain];
            var_60 = r22;
            r21 = [r22 retain];
            r22 = var_90;
            var_58 = [r22 retain];
            [r19 getInfo:&var_88];
            [r19 release];
            [var_58 release];
            [var_60 release];
            [r21 release];
            [r20 release];
    }
    [r22 release];
    return;
}

-(void)setLogs:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_logs, arg2);
    return;
}

-(void *)index {
    r0 = self->_index;
    return r0;
}

-(void)setIndex:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_index, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_index, 0x0);
    objc_storeStrong((int64_t *)&self->_logs, 0x0);
    return;
}

@end