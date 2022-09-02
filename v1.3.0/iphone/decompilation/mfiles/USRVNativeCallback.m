@implementation USRVNativeCallback

-(void *)initWithCallback:(void *)arg2 receiverClass:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 == 0x0) goto loc_1000d6bbc;

loc_1000d6ac8:
    if (r19 == 0x0 || r20 == 0x0) goto loc_1000d6bec;

loc_1000d6ad0:
    r0 = *0x1011d1b08;
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = [NSNumber numberWithLong:[*0x1011d1b08 longValue] + 0x1];
    r0 = [r0 retain];
    r8 = *0x1011d1b08;
    *0x1011d1b08 = r0;
    [r8 release];
    objc_sync_exit(r23);
    [r23 release];
    [r21 setCallback:r19];
    [r21 setReceiverClass:r20];
    r0 = *0x1011d1b08;
    [r0 longValue];
    r22 = [[NSString stringWithFormat:@"%@_%lu"] retain];
    [r21 setCallbackId:r22];
    [r22 release];
    goto loc_1000d6bbc;

loc_1000d6bbc:
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_1000d6bec:
    r0 = [NSException exceptionWithName:@"NullPointerException" reason:@"Callback or receiver class NULL" userInfo:0x0];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r0 = objc_exception_throw(r0);
    return r0;
}

-(void *)callback {
    r0 = self->_callback;
    return r0;
}

-(void)setCallback:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_callback, arg2);
    return;
}

-(void)invokeWithStatus:(void *)arg2 params:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x90;
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
    r19 = self;
    r21 = [arg2 retain];
    r22 = [r3 retain];
    if (r21 == 0x0 || r22 == 0x0) goto loc_1000d6e20;

loc_1000d6c80:
    r0 = [r19 receiverClass];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_1000d6e20;

loc_1000d6ca4:
    r0 = [r19 callback];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    if (r0 == 0x0) goto loc_1000d6e20;

loc_1000d6cd4:
    r20 = @selector(callback);
    r0 = [r19 receiverClass];
    r0 = [r0 retain];
    r24 = NSClassFromString(r0);
    [r0 release];
    r0 = objc_msgSend(r19, r20);
    r0 = [r0 retain];
    r25 = NSSelectorFromString(r0);
    [r0 release];
    [[[NSMutableArray alloc] initWithObjects:r21] addObjectsFromArray:r22];
    r2 = r25;
    r0 = [r24 methodSignatureForSelector:r2];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) goto loc_1000d6e88;

loc_1000d6d84:
    r0 = [NSInvocation invocationWithMethodSignature:r26];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    [r0 setSelector:r25];
    r2 = r24;
    [r27 setTarget:r2];
    if (r27 == 0x0) goto loc_1000d6f78;

loc_1000d6dd0:
    [r27 setArgument:&var_58 atIndex:0x2];
    [r27 retainArguments];
    [r27 invoke];
    [r27 release];
    [r26 release];
    [var_58 release];
    goto loc_1000d6e20;

loc_1000d6e20:
    r0 = [USRVWebViewApp getCurrentApp];
    r0 = [r0 retain];
    [r0 removeCallback:r19];
    [r0 release];
    [r22 release];
    [r21 release];
    return;

loc_1000d6f78:
    if ([USRVDeviceLog getLogLevel] >= 0x1) {
            r20 = @selector(callback);
            [[r19 receiverClass] retain];
            r0 = objc_msgSend(r19, r20);
            r29 = r29;
            [r0 retain];
            NSLog(@"%@/UnityAds: %s (line:%d) :: Could not create invocation for %@.%@", r20, r2, r3, r4, r5);
            [r22 release];
            [r21 release];
    }
    r20 = @selector(callback);
    r23 = [[r19 receiverClass] retain];
    r19 = [objc_msgSend(r19, r20) retain];
    r20 = [[NSString stringWithFormat:@"Could not create invocation for: %@.%@"] retain];
    r21 = [[NSException exceptionWithName:@"NoInvocationException" reason:r20 userInfo:0x0] retain];
    [r20 release];
    [r19 release];
    r0 = r23;
    goto loc_1000d70a8;

loc_1000d70a8:
    [r0 release];
    objc_exception_throw(objc_retainAutorelease(r21));
    return;

loc_1000d6e88:
    if ([USRVDeviceLog getLogLevel] >= 0x1) {
            r20 = @selector(callback);
            r0 = objc_msgSend(r19, r20);
            r29 = r29;
            [r0 retain];
            NSLog(@"%@/UnityAds: %s (line:%d) :: Could not find signature for selector %@", r20, r2, r3, r4);
            [r21 release];
    }
    r19 = [[r19 callback] retain];
    r20 = [[NSString stringWithFormat:@"Could not find signature for selector: %@"] retain];
    r21 = [[NSException exceptionWithName:@"NoSignatureException" reason:r20 userInfo:0x0] retain];
    [r20 release];
    r0 = r19;
    goto loc_1000d70a8;
}

-(void *)callbackId {
    r0 = self->_callbackId;
    return r0;
}

-(void *)receiverClass {
    r0 = self->_receiverClass;
    return r0;
}

-(void)setCallbackId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_callbackId, arg2);
    return;
}

-(void)setReceiverClass:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_receiverClass, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_receiverClass, 0x0);
    objc_storeStrong((int64_t *)&self->_callbackId, 0x0);
    objc_storeStrong((int64_t *)&self->_callback, 0x0);
    return;
}

@end