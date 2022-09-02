@implementation GADWebViewControllerMap

+(void *)sharedInstance {
    if (*qword_1011dbf40 != -0x1) {
            dispatch_once(0x1011dbf40, 0x100e9dfd0);
    }
    r0 = *0x1011dbf48;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableSet alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_webViewControllers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.webViewControllerStash", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)addWebViewController:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_async(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void)removeWebViewController:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = self->_lockQueue;
    var_30 = [self retain];
    [r20 retain];
    dispatch_sync(r21, &var_50);
    [r20 release];
    [var_30 release];
    [r19 release];
    return;
}

-(void *)webViewConfigurationForMainDocumentURL:(void *)arg2 context:(void * *)arg3 {
    r31 = r31 - 0xe0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r0 = [arg2 retain];
    var_58 = r29 - 0x60;
    var_88 = &var_90;
    r22 = self->_lockQueue;
    r19 = [r0 retain];
    var_B0 = r19;
    var_A8 = [self retain];
    dispatch_sync(r22, &var_D0);
    if (r20 != 0x0) {
            *r20 = objc_retainAutorelease(*(var_88 + 0x28));
    }
    [*(var_58 + 0x28) retain];
    [var_A8 release];
    [var_B0 release];
    _Block_object_dispose(&var_90, 0x8);
    [0x0 release];
    _Block_object_dispose(r29 - 0x60, 0x8);
    [0x0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewControllers, 0x0);
    return;
}

@end