@implementation GADProductsRequest

-(void)startWithProductIdentifiers:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[SKProductsRequest alloc] initWithProductIdentifiers:r22];
    [r22 release];
    if (r20 == 0x0) goto loc_10087dc20;

loc_10087db8c:
    objc_storeStrong((int64_t *)&r21->_retainCycle, r21);
    r0 = objc_retainBlock(r19);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    objc_storeStrong((int64_t *)&r21->_request, r20);
    var_58 = [r21 retain];
    sub_100860a80();
    r0 = var_58;
    goto loc_10087dcac;

loc_10087dcac:
    [r0 release];
    goto loc_10087dcb0;

loc_10087dcb0:
    [r20 release];
    [r19 release];
    return;

loc_10087dc20:
    if (r19 == 0x0) goto loc_10087dcb0;

loc_10087dc24:
    r21 = [sub_100809600(0xc, @"Couldn't initialize.") retain];
    var_30 = [r19 retain];
    var_28 = r21;
    [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_50);
    [var_28 release];
    [var_30 release];
    r0 = r21;
    goto loc_10087dcac;
}

-(void)completedWithValidProducts:(void *)arg2 invalidProductIDs:(void *)arg3 error:(void *)arg4 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    do {
            asm { ldaxrb     w10, [x8] };
            asm { stlxrb     w11, w9, [x8] };
    } while (r11 != 0x0);
    if ((r10 & 0x1) == 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
            r0 = *(r21 + r23);
            if (r0 != 0x0) {
                    (*(r0 + 0x10))();
            }
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_request));
            [*(r21 + r24) setDelegate:0x0];
            r0 = *(r21 + r24);
            *(r21 + r24) = 0x0;
            [r0 release];
            r0 = *(r21 + r23);
            *(r21 + r23) = 0x0;
            [r0 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_retainCycle));
            r0 = *(r21 + r8);
            *(r21 + r8) = 0x0;
            [r0 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)productsRequest:(void *)arg2 didReceiveResponse:(void *)arg3 {
    r31 = r31 - 0x180;
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
    var_160 = self;
    r19 = [arg3 retain];
    r21 = [[NSMutableDictionary alloc] init];
    var_158 = r19;
    r0 = [r19 products];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r25 != 0x0) {
            do {
                    r22 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r23);
                            }
                            r27 = *(0x0 + r22 * 0x8);
                            r0 = [r27 productIdentifier];
                            r29 = r29;
                            sub_100822058(r21, [r0 retain], r27);
                            [r28 release];
                            r22 = r22 + 0x1;
                    } while (r22 < r25);
                    r25 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r25 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r23 release];
    r22 = [NSSet alloc];
    r23 = [[var_158 invalidProductIdentifiers] retain];
    r22 = [r22 initWithArray:r23];
    [r23 release];
    var_130 = [var_160 retain];
    var_128 = r21;
    [r21 retain];
    [r22 retain];
    sub_100860a80();
    [r22 release];
    [var_128 release];
    [var_130 release];
    [r21 release];
    [r20 release];
    [var_158 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)request:(void *)arg2 didFailWithError:(void *)arg3 {
    r20 = [arg3 retain];
    var_20 = [self retain];
    [r20 retain];
    sub_100860a80();
    [r20 release];
    [var_20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_retainCycle, 0x0);
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_request, 0x0);
    return;
}

@end