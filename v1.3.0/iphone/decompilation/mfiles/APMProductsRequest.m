@implementation APMProductsRequest

+(void)requestProductsWithProductIdentifiers:(void *)arg2 queue:(void *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0xa0;
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
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if (r20 != 0x0 && r21 != 0x0) {
            r22 = [[r22 alloc] initWithProductIdentifiers:r19];
            if (r22 != 0x0) {
                    var_70 = [r21 retain];
                    r0 = [r22 retain];
                    [r0 requestWithQueue:r20 completionHandler:&var_90];
                    [r0 release];
                    r0 = var_70;
            }
            else {
                    r23 = [[NSError apm_errorWithCode:0x1 description:@"Invalid product identifiers."] retain];
                    var_40 = [r21 retain];
                    var_38 = r23;
                    [r23 retain];
                    dispatch_async(r20, &var_60);
                    [var_38 release];
                    [var_40 release];
                    r0 = r23;
            }
            [r0 release];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)initWithProductIdentifiers:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [SKProductsRequest alloc];
            r0 = [r0 initWithProductIdentifiers:r19];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_productsRequest));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            if (*(r20 + r21) == 0x0) {
                    [r20 release];
                    r20 = 0x0;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)requestWithQueue:(void *)arg2 completionHandler:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r21 = arg2;
    r20 = self;
    r19 = [r21 retain];
    if (r19 != 0x0 && r22 != 0x0) {
            r0 = [r22 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r20->_queue, r21);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_productsRequest));
            [*(r20 + r21) setDelegate:r20];
            [*(r20 + r21) start];
    }
    [r19 release];
    return;
}

-(void)productsRequest:(void *)arg2 didReceiveResponse:(void *)arg3 {
    r31 = r31 - 0xd0;
    var_50 = d9;
    stack[-88] = d8;
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
    r20 = self;
    r19 = [arg3 retain];
    if (r20->_completionHandler != 0x0) {
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            if (*(r20 + r24) != 0x0) {
                    r21 = [[NSMutableDictionary alloc] init];
                    r23 = [[r19 products] retain];
                    var_58 = [r21 retain];
                    [r23 enumerateObjectsUsingBlock:&var_78];
                    [r23 release];
                    r22 = [NSSet alloc];
                    r23 = [[r19 invalidProductIdentifiers] retain];
                    [r22 initWithArray:r23];
                    [r23 release];
                    objc_initWeak(&stack[-144], r20);
                    objc_copyWeak(&var_B8 + 0x30, &stack[-144]);
                    var_98 = r21;
                    [r21 retain];
                    var_90 = r22;
                    [r22 retain];
                    dispatch_async(r20, &var_B8);
                    [var_90 release];
                    [var_98 release];
                    [r22 release];
                    objc_destroyWeak(&var_B8 + 0x30);
                    objc_destroyWeak(&stack[-144]);
                    [var_58 release];
                    [r21 release];
            }
    }
    [r19 release];
    return;
}

-(void)request:(void *)arg2 didFailWithError:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg3 retain];
    if (r20->_completionHandler != 0x0) {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
            if (*(r20 + r22) != 0x0) {
                    objc_initWeak(r29 - 0x28, r20);
                    objc_copyWeak(&var_58 + 0x28, r29 - 0x28);
                    var_38 = [r19 retain];
                    dispatch_async(r20, &var_58);
                    [var_38 release];
                    objc_destroyWeak(&var_58 + 0x28);
                    objc_destroyWeak(r29 - 0x28);
            }
    }
    [r19 release];
    return;
}

-(void)clearInstance {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_productsRequest));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_queue));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_productsRequest, 0x0);
    return;
}

@end