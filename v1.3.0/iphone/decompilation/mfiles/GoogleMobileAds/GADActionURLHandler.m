@implementation GADActionURLHandler

-(void *)initWithMessageSource:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = @selector(init);
            r0 = [NSMutableArray alloc];
            r0 = objc_msgSend(r0, r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_bufferedURLRequests));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r20->_messageSource, r19);
            r0 = sub_100860a2c("com.google.admob.n.action-url-handler", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)dealloc {
    r20 = [self->_bufferedURLRequests copy];
    r0 = objc_loadWeakRetained((int64_t *)&self->_messageSource);
    r22 = [[r0 context] retain];
    [r0 release];
    r21 = [dispatch_get_global_queue(0x0, 0x0) retain];
    var_30 = r20;
    [r20 retain];
    var_28 = r22;
    [r22 retain];
    dispatch_async(r21, &var_50);
    [r21 release];
    [var_28 release];
    [var_30 release];
    [r22 release];
    [r20 release];
    [[&var_60 super] dealloc];
    return;
}

-(void)handleActionURLRequest:(void *)arg2 {
    r31 = r31 - 0xd0;
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
    r24 = self;
    r0 = [arg2 retain];
    r23 = r0;
    r0 = [r0 URL];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 scheme];
    r0 = [r0 retain];
    r20 = [[r0 lowercaseString] retain];
    [r0 release];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 arrayForKey:*0x100e9b5d8];
    r29 = &saved_fp;
    r28 = [r0 retain];
    [r21 release];
    if ([r28 containsObject:r2] != 0x0) {
            r0 = [*0x100e9c220 stringByAppendingString:r20];
            r29 = r29;
            r0 = [r0 retain];
    }
    else {
            r0 = [*0x100e9c250 retain];
    }
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 isEqual:r2];
    r21 = r22;
    if (r0 != 0x0) {
            r0 = sub_10083a778();
            r29 = r29;
            r21 = [r0 retain];
            [r22 release];
    }
    r26 = r24->_lockQueue;
    r25 = [r24 retain];
    var_90 = r25;
    r24 = [r21 retain];
    var_88 = r24;
    r23 = [r23 retain];
    var_80 = r23;
    dispatch_sync(r26, &var_B0);
    if (*(int8_t *)(&var_70 + 0x18) == 0x0) {
            var_B8 = r28;
            r26 = [[NSMutableDictionary alloc] init];
            sub_100822058(r26, *0x100e95358, r20);
            sub_100822058(r26, *0x100e95348, r19);
            r27 = [[r23 valueForHTTPHeaderField:@"Referer"] retain];
            r0 = [NSURL URLWithString:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r21 retain];
            }
            else {
                    r0 = [r23 mainDocumentURL];
                    r0 = [r0 retain];
            }
            r28 = r0;
            [r21 release];
            [r27 release];
            if (r28 != 0x0) {
                    sub_100822058(r26, *0x100e95350, r28);
            }
            sub_1008833e8(r22, objc_loadWeakRetained((int64_t *)&r25->_messageSource), r26);
            [r21 release];
            [r28 release];
            [r26 release];
            r28 = var_B8;
    }
    [var_80 release];
    [var_88 release];
    [var_90 release];
    _Block_object_dispose(&var_70, 0x8);
    [r24 release];
    [r22 release];
    [r28 release];
    [r20 release];
    [r19 release];
    [r23 release];
    return;
}

-(void)pauseBufferedActions {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)resumeBufferedActions {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_messageSource);
    objc_storeStrong((int64_t *)&self->_bufferedURLRequests, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    return;
}

@end