@implementation USRVWebViewCallback

-(void *)initWithCallbackId:(void *)arg2 invocationId:(int)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setCallbackId:r20];
            [r21 setInvocationId:r19];
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)invoke:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    var_28 = &saved_fp + 0x10;
    r21 = [[NSMutableArray alloc] init];
    if (r19 != 0x0) {
            r0 = r21;
            r1 = @selector(addObject:);
            do {
                    objc_msgSend(r0, r1);
                    r8 = var_28;
                    var_28 = r8 + 0x8;
                    if (*r8 == 0x0) {
                        break;
                    }
                    r0 = r21;
                    r1 = @selector(addObject:);
            } while (true);
    }
    [r20 invokeWithStatus:@"OK" error:@"" params:r21];
    [r21 release];
    [r19 release];
    return;
}

-(void)invokeWithStatus:(void *)arg2 error:(void *)arg3 params:(void *)arg4 {
    r3 = arg3;
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
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [r3 retain];
    r21 = [arg4 retain];
    if (([r22 invoked] & 0x1) == 0x0) {
            r0 = [r22 callbackId];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    r0 = [r22 callbackId];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 length];
                    [r0 release];
                    [r24 release];
                    if (r26 != 0x0) {
                            [r22 setInvoked:0x1];
                            r2 = [r22 invocationId];
                            r0 = [USRVInvocation getInvocationWithId:r2];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    r25 = [[NSMutableArray alloc] initWithArray:r21];
                                    r22 = [[r22 callbackId] retain];
                                    [r25 insertObject:r22 atIndex:0x0];
                                    [r22 release];
                                    [r24 setInvocationResponseWithStatus:r19 error:r20 params:r25];
                                    [r25 release];
                            }
                            else {
                                    if ([USRVDeviceLog getLogLevel] >= 0x1) {
                                            NSLog(@"%@/UnityAds: %s (line:%d) :: Couldn't get invocation", @selector(getLogLevel), r2, r3);
                                    }
                            }
                            [r24 release];
                    }
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)error:(void *)arg2 arg1:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    var_38 = &saved_fp + 0x10;
    r22 = [[NSMutableArray alloc] init];
    if (r20 != 0x0) {
            r0 = r22;
            r1 = @selector(addObject:);
            do {
                    objc_msgSend(r0, r1);
                    r8 = var_38;
                    var_38 = r8 + 0x8;
                    if (*r8 == 0x0) {
                        break;
                    }
                    r0 = r22;
                    r1 = @selector(addObject:);
            } while (true);
    }
    [r21 invokeWithStatus:@"ERROR" error:r19 params:r22];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)callbackId {
    r0 = self->_callbackId;
    return r0;
}

-(int)invocationId {
    r0 = *(int32_t *)(int64_t *)&self->_invocationId;
    return r0;
}

-(void)setCallbackId:(void *)arg2 {
    self->_callbackId = arg2;
    return;
}

-(void)setInvocationId:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_invocationId = arg2;
    return;
}

-(bool)invoked {
    r0 = *(int8_t *)(int64_t *)&self->_invoked;
    return r0;
}

-(void)setInvoked:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_invoked = arg2;
    return;
}

@end