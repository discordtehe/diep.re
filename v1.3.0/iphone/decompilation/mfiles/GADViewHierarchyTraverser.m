@implementation GADViewHierarchyTraverser

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
            r0 = sub_100860a2c("com.google.admob.n.view-hierarchy", 0x0, 0x11);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_SDKLowPrioritySerialQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)traverseView:(void *)arg2 traversalBlock:(void *)arg3 completionBlock:(void *)arg4 {
    r31 = r31 - 0x140;
    var_60 = d9;
    stack[-104] = d8;
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
    var_108 = self;
    r21 = [arg2 retain];
    var_100 = [arg3 retain];
    r20 = [arg4 retain];
    if (r21 != 0x0 && r20 != 0x0 && var_100 != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_traversing));
            if (*(int8_t *)(var_108 + r8) == 0x0) {
                    *(int8_t *)(var_108 + r8) = 0x1;
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_sequenceNumber));
                    r9 = *(var_108 + r8);
                    var_110 = r9 + 0x1;
                    *(var_108 + r8) = r9 + 0x1;
                    r0 = [NSMutableArray alloc];
                    r0 = [r0 init];
                    r23 = r0;
                    sub_100822370(r0, r21);
                    r1 = @selector(count);
                    if (objc_msgSend(r23, r1) != 0x0) {
                            var_120 = r20;
                            stack[-296] = r21;
                            r25 = &var_C8 + 0x28;
                            var_128 = *(int32_t *)ivar_offset(_SDKLowPrioritySerialQueue);
                            asm { sxtw       x21, w8 };
                            do {
                                    r22 = [[r23 lastObject] retain];
                                    [r23 removeLastObject];
                                    objc_initWeak(r29 - 0x90, r22);
                                    objc_copyWeak(r25, r29 - 0x90);
                                    var_A8 = [var_100 retain];
                                    dispatch_async(r20, &var_C8);
                                    r0 = [r22 subviews];
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [r23 addObjectsFromArray:r20];
                                    [r20 release];
                                    [var_A8 release];
                                    objc_destroyWeak(r25);
                                    objc_destroyWeak(r29 - 0x90);
                                    [r22 release];
                                    r1 = r19;
                            } while (objc_msgSend(r23, r1) != 0x0);
                            r20 = var_120;
                            r21 = stack[-296];
                            r8 = var_128;
                    }
                    else {
                            r8 = *(int32_t *)ivar_offset(_SDKLowPrioritySerialQueue);
                    }
                    r19 = *(var_108 + (r8 << r1));
                    var_D8 = r20;
                    [r20 retain];
                    var_D0 = [var_108 retain];
                    dispatch_async(r19, &var_F8);
                    [var_D0 release];
                    [var_D8 release];
                    [r20 release];
                    r0 = r23;
            }
            else {
                    [r20 retain];
                    dispatch_async(*__dispatch_main_q, r29 - 0x88);
                    [r20 release];
                    r0 = r19;
            }
    }
    else {
            [r20 retain];
            dispatch_async(*__dispatch_main_q, r29 - 0x88);
            [r20 release];
            r0 = r19;
    }
    [r0 release];
    [var_100 release];
    [r21 release];
    return;
}

-(void)setTraversing:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_traversing = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_SDKLowPrioritySerialQueue, 0x0);
    return;
}

@end