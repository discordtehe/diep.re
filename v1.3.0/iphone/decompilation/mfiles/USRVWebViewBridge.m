@implementation USRVWebViewBridge

+(void)handleInvocation:(void *)arg2 {
    [arg2 invoke];
    return;
}

+(void)handleCallback:(void *)arg2 callbackStatus:(void *)arg3 params:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [USRVWebViewApp getCurrentApp];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 getCallbackWithId:r19];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r22 != 0x0) {
            [r22 invokeWithStatus:r20 params:r21];
            [r22 release];
            [r21 release];
            [r20 release];
            [r19 release];
    }
    else {
            objc_exception_throw(objc_retainAutorelease([[NSException exceptionWithName:@"NullPointerException" reason:@"NativeCallback was NULL" userInfo:0x0] retain]));
    }
    return;
}

@end