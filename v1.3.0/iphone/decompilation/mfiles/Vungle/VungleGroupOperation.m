@implementation VungleGroupOperation

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableSet new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_aggregatedErrors));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSBlockOperation blockOperationWithBlock:0x100e89af8];
            r0 = [r0 retain];
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_finishingOperation));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            [*(r19 + r20) addDependency:r19];
            [r19 setOperationDelegate:r19];
    }
    r0 = r19;
    return r0;
}

-(void)operation:(void *)arg2 didFinishWithErrors:(void *)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    [r0 enumerateObjectsUsingBlock:&var_48];
    r0 = [r21 finishingOperation];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != r19) {
            if ([r21 respondsToSelector:@selector(operationDidFinish:withErrors:), r3] != 0x0) {
                    [r21 operationDidFinish:r19 withErrors:r20];
            }
    }
    else {
            [[&var_58 super] finishWithErrors:r21->_aggregatedErrors];
            [r21 setFinishingOperation:0x0];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)cancel {
    r0 = [VNGOperationQueue defaultQueue];
    r0 = [r0 retain];
    [r0 cancelAllOperations];
    [r0 release];
    [[&var_20 super] cancel];
    return;
}

-(void *)initWithOperations:(void *)arg2 {
    r31 = r31 - 0x160;
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
    r20 = [arg2 retain];
    r0 = [self init];
    var_140 = r0;
    if (r0 != 0x0) {
            var_110 = q0;
            var_150 = r20;
            r0 = [r20 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_128 = r0;
            var_148 = r1;
            r0 = objc_msgSend(r0, r1);
            if (r0 != 0x0) {
                    r23 = r0;
                    r26 = *var_110;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_110 != r26) {
                                            objc_enumerationMutation(var_128);
                                    }
                                    r20 = *(var_118 + r27 * 0x8);
                                    if ([r20 isKindOfClass:[VungleNetworkOperation class]] != 0x0) {
                                            r0 = [VNGNetworkManager sharedManager];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r21 = r0;
                                            r1 = @selector(sendVungleOperation:);
                                    }
                                    else {
                                            [r20 setOperationDelegate:var_140];
                                            r0 = [VNGOperationQueue defaultQueue];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r21 = r0;
                                            r1 = @selector(addOperation:);
                                    }
                                    objc_msgSend(r0, r1);
                                    [r21 release];
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r0 = objc_msgSend(var_128, var_148);
                            r23 = r0;
                    } while (r0 != 0x0);
            }
            [var_128 release];
            r20 = var_150;
    }
    var_60 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_60) {
            r0 = var_140;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)addOperation:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r20 != r0) {
            r0 = [r20 finishingOperation];
            r29 = r29;
            r0 = [r0 retain];
            [r0 addDependency:r19];
            [r0 release];
    }
    [r19 setOperationDelegate:r20];
    r0 = [VNGOperationQueue defaultQueue];
    r0 = [r0 retain];
    [r0 addOperation:r19];
    [r0 release];
    [r19 release];
    return;
}

-(void)addOperations:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r19 = self;
    r0 = [arg2 retain];
    r20 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r24 = *var_110;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_110 != r24) {
                                    objc_enumerationMutation(r20);
                            }
                            [r19 addOperation:r2];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)execute {
    r20 = [[VNGOperationQueue defaultQueue] retain];
    r19 = [[self finishingOperation] retain];
    [r20 addOperation:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void)aggregateError:(void *)arg2 {
    [self->_aggregatedErrors addObject:r2];
    return;
}

-(void)operationDidFinish:(void *)arg2 withErrors:(void *)arg3 {
    return;
}

-(void)operationQueue:(void *)arg2 willAddOperation:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg3 retain];
    r0 = [r20 finishingOperation];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != r19) {
            r0 = [r20 finishingOperation];
            r0 = [r0 retain];
            [r0 addDependency:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)operationQueue:(void *)arg2 operationDidFinish:(void *)arg3 errors:(void *)arg4 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [arg4 retain];
    r20 = r0;
    [r0 enumerateObjectsUsingBlock:&var_48];
    r0 = [r21 finishingOperation];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != r19) {
            if ([r21 respondsToSelector:@selector(operationDidFinish:withErrors:), r3] != 0x0) {
                    [r21 operationDidFinish:r19 withErrors:r20];
            }
    }
    else {
            [[&var_58 super] finishWithErrors:r21->_aggregatedErrors];
            [r21 setFinishingOperation:0x0];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)finishingOperation {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_finishingOperation)), 0x0);
    return r0;
}

-(void)setFinishingOperation:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)aggregatedErrors {
    r0 = self->_aggregatedErrors;
    return r0;
}

-(void)setAggregatedErrors:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_aggregatedErrors, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_aggregatedErrors, 0x0);
    objc_storeStrong((int64_t *)&self->_finishingOperation, 0x0);
    return;
}

@end