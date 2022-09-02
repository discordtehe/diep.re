@implementation APMInAppPurchaseProductCache

+(void *)sharedInstance {
    if (*qword_1011d2008 != -0x1) {
            dispatch_once(0x1011d2008, 0x100e6ea78);
    }
    r0 = *0x1011d2010;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableSet alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_invalidProductIdentifiers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_validProducts));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = dispatch_queue_create("com.google.gmp.measurement.iap-cache", 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)cachedProductForProductIdentifier:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&stack[-104], self);
    objc_copyWeak(&var_90 + 0x30, &stack[-104]);
    var_70 = r20;
    [r20 retain];
    dispatch_sync(r19, &var_90);
    [*(&var_50 + 0x28) retain];
    [var_70 release];
    objc_destroyWeak(&var_90 + 0x30);
    objc_destroyWeak(&stack[-104]);
    _Block_object_dispose(&var_50, 0x8);
    [0x0 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)requestProductsWithProductIdentifiers:(void *)arg2 queue:(void *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r20 != 0x0 && r21 != 0x0) {
            objc_initWeak(r29 - 0x38, r23);
            objc_copyWeak(&var_78 + 0x38, r29 - 0x38);
            var_50 = [r20 retain];
            var_48 = [r21 retain];
            r0 = objc_retainBlock(&var_78);
            [APMProductsRequest requestProductsWithProductIdentifiers:r19 queue:r23->_lockQueue completionHandler:r0];
            [r0 release];
            [var_48 release];
            [var_50 release];
            objc_destroyWeak(&var_78 + 0x38);
            objc_destroyWeak(r29 - 0x38);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_validProducts, 0x0);
    objc_storeStrong((int64_t *)&self->_invalidProductIdentifiers, 0x0);
    return;
}

@end