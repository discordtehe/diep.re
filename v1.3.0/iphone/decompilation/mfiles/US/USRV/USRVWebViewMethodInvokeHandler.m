@implementation USRVWebViewMethodInvokeHandler

-(void)handleData:(void *)arg2 invocationType:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 == 0x0) goto loc_1000d78bc;

loc_1000d760c:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1000d76d8;

loc_1000d762c:
    var_38 = 0x0;
    r4 = &var_38;
    r2 = r19;
    r0 = [NSJSONSerialization JSONObjectWithData:r2 options:0x1 error:r4];
    r29 = r29;
    r22 = [r0 retain];
    r23 = [var_38 retain];
    if (r23 == 0x0) goto loc_1000d779c;

loc_1000d766c:
    if ([USRVDeviceLog getLogLevel] >= 0x1) {
            [[r23 description] retain];
            NSLog(@"%@/UnityAds: %s (line:%d) :: JSON ERROR: %@", @selector(description), r2, 0x1, r4);
            [r24 release];
    }
    goto loc_1000d77cc;

loc_1000d77cc:
    r1 = @selector(handleInvocation:);
    goto loc_1000d7854;

loc_1000d7854:
    objc_msgSend(r21, r1);
    [r22 release];
    r0 = r23;
    goto loc_1000d78b8;

loc_1000d78b8:
    [r0 release];
    goto loc_1000d78bc;

loc_1000d78bc:
    [r20 release];
    [r19 release];
    return;

loc_1000d779c:
    if (r22 == 0x0) goto loc_1000d77d8;

loc_1000d77a0:
    [NSArray class];
    if (([r22 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1000d77d8;
    goto loc_1000d77cc;

loc_1000d77d8:
    if ([USRVDeviceLog getLogLevel] < 0x1) goto loc_1000d78b4;

loc_1000d77f4:
    r0 = @"%@/UnityAds: %s (line:%d) :: ERROR PARSING JSON TO ARRAY: %@";
    goto loc_1000d78b0;

loc_1000d78b0:
    NSLog(r0);
    goto loc_1000d78b4;

loc_1000d78b4:
    r0 = r22;
    goto loc_1000d78b8;

loc_1000d76d8:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_1000d78bc;

loc_1000d76f0:
    var_40 = 0x0;
    r4 = &var_40;
    r2 = r19;
    r0 = [NSJSONSerialization JSONObjectWithData:r2 options:0x1 error:r4];
    r29 = r29;
    r22 = [r0 retain];
    r23 = [var_40 retain];
    if (r23 == 0x0) goto loc_1000d781c;

loc_1000d7730:
    if ([USRVDeviceLog getLogLevel] >= 0x1) {
            [[r23 description] retain];
            NSLog(@"%@/UnityAds: %s (line:%d) :: JSON ERROR: %@", @selector(description), r2, 0x1, r4);
            [r24 release];
    }
    goto loc_1000d784c;

loc_1000d784c:
    r1 = @selector(handleCallback:);
    goto loc_1000d7854;

loc_1000d781c:
    if (r22 == 0x0) goto loc_1000d7870;

loc_1000d7820:
    [NSDictionary class];
    if (([r22 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1000d7870;
    goto loc_1000d784c;

loc_1000d7870:
    if ([USRVDeviceLog getLogLevel] < 0x1) goto loc_1000d78b4;

loc_1000d788c:
    r0 = @"%@/UnityAds: %s (line:%d) :: ERROR PARSING JSON TO DICTIONARY: %@";
    goto loc_1000d78b0;
}

-(void)handleCallback:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r20 = [[r0 objectForKey:@"id"] retain];
    r21 = [[r19 objectForKey:@"status"] retain];
    r0 = [r19 objectForKey:@"parameters"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r2 = [NSString class];
    if ([r22 isKindOfClass:r2] != 0x0) {
            if ([USRVDeviceLog getLogLevel] >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Found NSString instead of NSArray, trying to convert", @selector(getLogLevel), r2, r3);
            }
            r0 = [r19 objectForKey:@"parameters"];
            r0 = [r0 retain];
            r25 = r0;
            r27 = [[r0 dataUsingEncoding:0x4] retain];
            r8 = &@selector(menu);
            r0 = objc_msgSend(@class(NSJSONSerialization), *(r8 + 0x8e0));
            r29 = r29;
            r26 = [r0 retain];
            r28 = [0x0 retain];
            [r22 release];
            [r27 release];
            [r25 release];
            if (r28 == 0x0) {
                    r8 = &@selector(menu);
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            r22 = r26;
            if (r8 == 0x0) {
                    objc_exception_throw(objc_retainAutorelease([[NSException exceptionWithName:@"InvalidArgumentException" reason:@"Parameters NULL or wrong format" userInfo:0x0] retain]));
            }
            else {
                    if (r22 != 0x0) {
                            r24 = @selector(isKindOfClass:);
                            [NSArray class];
                            if ((objc_msgSend(r22, r24) & 0x1) != 0x0) {
                                    [USRVWebViewBridge handleCallback:r20 callbackStatus:r21 params:r22];
                                    [r22 release];
                                    [r21 release];
                                    [r20 release];
                                    [r19 release];
                            }
                            else {
                                    objc_exception_throw(objc_retainAutorelease([[NSException exceptionWithName:@"InvalidArgumentException" reason:@"Parameters NULL or wrong format" userInfo:0x0] retain]));
                            }
                    }
                    else {
                            objc_exception_throw(objc_retainAutorelease([[NSException exceptionWithName:@"InvalidArgumentException" reason:@"Parameters NULL or wrong format" userInfo:0x0] retain]));
                    }
            }
    }
    else {
            if (0x1 != 0x0) {
                    if (r22 != 0x0) {
                            r24 = @selector(isKindOfClass:);
                            [NSArray class];
                            if ((objc_msgSend(r22, r24) & 0x1) != 0x0) {
                                    [USRVWebViewBridge handleCallback:r20 callbackStatus:r21 params:r22];
                                    [r22 release];
                                    [r21 release];
                                    [r20 release];
                                    [r19 release];
                            }
                            else {
                                    objc_exception_throw(objc_retainAutorelease([[NSException exceptionWithName:@"InvalidArgumentException" reason:@"Parameters NULL or wrong format" userInfo:0x0] retain]));
                            }
                    }
                    else {
                            objc_exception_throw(objc_retainAutorelease([[NSException exceptionWithName:@"InvalidArgumentException" reason:@"Parameters NULL or wrong format" userInfo:0x0] retain]));
                    }
            }
            else {
                    objc_exception_throw(objc_retainAutorelease([[NSException exceptionWithName:@"InvalidArgumentException" reason:@"Parameters NULL or wrong format" userInfo:0x0] retain]));
            }
    }
    return;
}

-(void)handleInvocation:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x100;
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
    r19 = [r2 retain];
    var_58 = [[USRVInvocation alloc] init];
    r1 = @selector(getLogLevel);
    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: %@", r1, r2, r3, r4);
    }
    r23 = [[NSMutableDictionary alloc] init];
    var_98 = [[NSMutableDictionary alloc] init];
    r27 = @selector(count);
    r0 = objc_msgSend(r19, r27);
    var_A0 = r23;
    if (r0 == 0x0) goto loc_1000d7cb4;

loc_1000d79d8:
    r26 = 0x0;
    goto loc_1000d7b5c;

loc_1000d7b5c:
    r0 = [r19 objectAtIndex:r26];
    r0 = [r0 retain];
    r28 = r0;
    r25 = [[r0 objectAtIndex:0x0] retain];
    r22 = [[r28 objectAtIndex:0x1] retain];
    r0 = [r28 objectAtIndex:0x2];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0 || ([r24 isKindOfClass:[NSArray class]] & 0x1) == 0x0) goto loc_1000d7ec4;

loc_1000d7bf0:
    var_68 = @selector(count);
    r0 = [r28 objectAtIndex:0x3];
    r29 = r29;
    [r0 retain];
    r20 = [USRVWebViewCallback alloc];
    [var_58 invocationId];
    [r20 initWithCallbackId:r2 invocationId:r3];
    [var_58 addInvocation:r2 methodName:r3 parameters:r4 callback:r5];
    [r20 release];
    [r21 release];
    [r24 release];
    [r22 release];
    [r25 release];
    [r28 release];
    r26 = r26 + 0x1;
    if (objc_msgSend(r19, var_68) > r26) goto loc_1000d7b5c;

loc_1000d7cac:
    r23 = var_A0;
    r27 = @selector(count);
    goto loc_1000d7cb4;

loc_1000d7cb4:
    if (objc_msgSend(r19, r27) != 0x0) {
            r21 = 0x0;
            do {
                    r20 = [[NSNumber numberWithInt:r21] retain];
                    r0 = [r23 objectForKey:r20];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r20 release];
                    if (r0 != 0x0) {
                            r25 = [[NSNumber numberWithInt:r21] retain];
                            r20 = [[r23 objectForKey:r25] retain];
                            [r25 release];
                            r26 = [[NSNumber numberWithInt:r21] retain];
                            r0 = [var_98 objectForKey:r26];
                            r29 = r29;
                            r25 = [r0 retain];
                            [r26 release];
                            if (r25 != 0x0) {
                                    [[r20 name] retain];
                                    r0 = [r20 reason];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r25 error:r2 arg1:r3];
                                    r0 = r27;
                                    r27 = r23;
                                    r23 = var_A0;
                                    [r0 release];
                                    [r26 release];
                            }
                            [r25 release];
                            [r20 release];
                    }
                    else {
                            [var_58 nextInvocation];
                    }
                    r21 = r21 + 0x1;
            } while (objc_msgSend(r19, r27) > r21);
    }
    [var_58 sendInvocationCallback];
    [var_98 release];
    [r23 release];
    [var_58 release];
    [r19 release];
    return;

loc_1000d7ec4:
    objc_exception_throw(objc_retainAutorelease([[NSException exceptionWithName:@"InvalidInvocationException" reason:@"Parameters NULL or not NSArray" userInfo:0x0] retain]));
    return;
}

@end