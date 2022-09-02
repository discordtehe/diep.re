@implementation ADCCryptoMPAPI

-(void)sha1:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"data"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0 && [r20 length] != 0x0) {
            r0 = [ADCUtil sha1:r20];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r22 = [[ADCNativeLayer sharedLayer] retain];
                    r23 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
                    r24 = [[r19 messageReplyWithDict:r23] retain];
                    [r22 sendMessage:r24];
                    [r24 release];
                    [r23 release];
                    [r22 release];
            }
            [r21 release];
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

+(void)registerHandlers {
    r19 = [ADCCryptoMPAPI new];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(crc32:) forMessageType:@"Crypto.crc32"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(sha1:) forMessageType:@"Crypto.sha1"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(uuid:) forMessageType:@"Crypto.uuid"];
    [r0 release];
    [r19 release];
    return;
}

-(void)crc32:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
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
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"data"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0 && [r20 length] != 0x0) {
            r22 = @selector(length);
            r0 = [r20 dataUsingEncoding:0x4];
            r29 = r29;
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r21 = r0;
            r23 = [r0 bytes];
            r23 = crc32(0x0, r23, objc_msgSend(r21, r22));
            if (r23 != 0x0) {
                    r22 = [[ADCNativeLayer sharedLayer] retain];
                    r23 = [[NSNumber numberWithUnsignedLong:r23] retain];
                    r24 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
                    r25 = [[r19 messageReplyWithDict:r24] retain];
                    [r22 sendMessage:r25];
                    [r25 release];
                    [r24 release];
                    [r23 release];
                    [r22 release];
            }
            [r21 release];
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)uuid:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
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
    r19 = [r2 retain];
    r0 = [ADCMessage numberValueFromMessage:r19 withKey:@"number"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [NSMutableArray new];
            r22 = [r20 intValue];
            if (r22 >= 0x1) {
                    do {
                            r24 = @selector(addObject:);
                            r0 = [ADCUtil getUUID];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r21, r24);
                            [r25 release];
                            r22 = r22 - 0x1;
                    } while (r22 != 0x0);
            }
            r22 = [[ADCNativeLayer sharedLayer] retain];
            r23 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
            r24 = [[r19 messageReplyWithDict:r23] retain];
            [r22 sendMessage:r24];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    else {
            [r19 identifier];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCCryptoMPAPI uuid:]" line:0x37 withFormat:@"No number specified for Crypto.UUID message with id: %d"];
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

+(void)load {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

@end