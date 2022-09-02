@implementation GADInAppPurchaseProductCache

+(void *)sharedInstance {
    if (*qword_1011db7b0 != -0x1) {
            dispatch_once(0x1011db7b0, 0x100e8f558);
    }
    r0 = *0x1011db7b8;
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
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_validProducts));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.iap-cache", 0x0, 0x15);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)cachedProductForProductIdentifier:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r21 = r20->_lockQueue;
            var_68 = [r20 retain];
            var_60 = [r19 retain];
            dispatch_sync(r21, &var_88);
            r20 = [*(&var_50 + 0x28) retain];
            [var_60 release];
            [var_68 release];
            _Block_object_dispose(&var_50, 0x8);
            [0x0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)requestProductsWithProductIdentifiers:(void *)arg2 queue:(void *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r20 != 0x0 && r21 != 0x0) {
            r23 = [[GADProductsRequest alloc] init];
            var_48 = [r22 retain];
            var_40 = [r20 retain];
            var_38 = [r21 retain];
            [r23 startWithProductIdentifiers:r19 completionHandler:&var_68];
            [var_38 release];
            [var_40 release];
            [var_48 release];
            [r23 release];
    }
    else {
            sub_1007ce06c(0x0, @"Must provide a queue and completion handler.");
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_validProducts, 0x0);
    return;
}

@end