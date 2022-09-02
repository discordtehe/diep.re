@implementation GADPinger

+(void *)sharedInstance {
    if (*qword_1011dbdf0 != -0x1) {
            dispatch_once(0x1011dbdf0, 0x100e968c0);
    }
    r0 = *0x1011dbdf8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [GADURLSession alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_pingerSession));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = sub_100860a2c("com.google.admob.n.pinger", 0x0, 0x19);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_lockQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableSet alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_activeRetryURLStrings));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            r21 = [r0 integerForKey:*0x100e9b6d0];
            [r0 release];
            if ((r21 & 0xffffffff80000000) == 0x0) {
                    objc_initWeak(&stack[-72], r19);
                    objc_copyWeak(&var_60 + 0x20, &stack[-72]);
                    [r21 addObserverForName:*0x100e9c1e8 object:0x0 queue:0x0 usingBlock:&var_60];
                    objc_destroyWeak(&var_60 + 0x20);
                    objc_destroyWeak(&stack[-72]);
            }
    }
    r0 = r19;
    return r0;
}

-(void)pingRetryURLsIfTimeElapsed {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void)pingURL:(void *)arg2 context:(void *)arg3 queue:(void *)arg4 completionBlock:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r24 = sub_1008b9608(r23, 0x0, 0x0, 0x0);
    [r23 release];
    r0 = [r24 retain];
    [r0 setCachePolicy:0x1];
    [self pingRequest:r0 context:r21 queue:r20 completionBlock:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    [r0 release];
    return;
}

-(void)pingRequest:(void *)arg2 context:(void *)arg3 queue:(void *)arg4 completionBlock:(void *)arg5 {
    r31 = r31 - 0xf0;
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    if (r19 == 0x0) goto loc_10084d41c;

loc_10084d2d8:
    r0 = [r19 URL];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10084d41c;

loc_10084d300:
    r0 = [r19 URL];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (sub_10089a100(r0, @"http") != 0x0) {
            r0 = [GADSettings sharedInstance];
            r0 = [r0 retain];
            r26 = [r0 boolForKey:*0x100e9b6b0];
            [r0 release];
            r25 = [GADWebViewPinger isAvailable];
            [r24 release];
            if (r26 != 0x0 && r25 != 0x0) {
                    var_90 = [r23 retain];
                    var_88 = [r19 retain];
                    var_80 = [r21 retain];
                    var_78 = [r22 retain];
                    sub_100860a80();
                    [var_78 release];
                    [var_80 release];
                    [var_88 release];
                    r0 = var_90;
            }
            else {
                    r23 = r23->_pingerSession;
                    var_C0 = [r22 retain];
                    var_B8 = [r21 retain];
                    [r23 sendRequest:r19 withContext:r20 notificationPolicy:0x0 completionHandler:&var_E0];
                    [var_B8 release];
                    r0 = var_C0;
            }
    }
    else {
            [r24 release];
            r23 = r23->_pingerSession;
            var_C0 = [r22 retain];
            var_B8 = [r21 retain];
            [r23 sendRequest:r19 withContext:r20 notificationPolicy:0x0 completionHandler:&var_E0];
            [var_B8 release];
            r0 = var_C0;
    }
    goto loc_10084d534;

loc_10084d534:
    [r0 release];
    goto loc_10084d538;

loc_10084d538:
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10084d41c:
    if (r21 == 0x0 || r22 == 0x0) goto loc_10084d538;

loc_10084d424:
    r23 = [sub_1008098f8(0xa, @"Invalid URL request") retain];
    var_50 = [r22 retain];
    var_48 = r23;
    [r23 retain];
    dispatch_async(r21, &var_70);
    [var_48 release];
    [var_50 release];
    r0 = r23;
    goto loc_10084d534;
}

-(void)storeRetryURL:(void *)arg2 {
    r0 = [arg2 retain];
    r21 = [r0 copy];
    r22 = self->_lockQueue;
    var_38 = [self retain];
    [r21 retain];
    [r0 retain];
    dispatch_sync(r22, &var_58);
    [r0 release];
    [r21 release];
    [var_38 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)pingRetryURLInternal:(void *)arg2 {
    r0 = [arg2 retain];
    sub_100822430(self->_activeRetryURLStrings, [[r0 absoluteString] retain]);
    [r22 release];
    r21 = self->_lockQueue;
    r19 = [self retain];
    var_28 = r20;
    r20 = [r20 retain];
    [r19 pingURL:r20 context:0x0 queue:r21 completionBlock:&var_50];
    [var_28 release];
    [r19 release];
    [r20 release];
    return;
}

-(void)savePendingRetryURLStrings:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[GADSQLStorage sharedInstance] retain];
    r19 = sub_10084aae0(arg2, 0x0);
    [r22 release];
    r19 = [r19 retain];
    [r20 setString:r19 forKey:*0x100e9be30];
    [r19 release];
    [r20 release];
    return;
}

-(void *)pendingRetryURLStrings {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [GADSQLStorage sharedInstance];
    r0 = [r0 retain];
    r19 = [[r0 stringForKey:*0x100e9be30] retain];
    [r0 release];
    r0 = sub_10084acf0(r19, 0x0);
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r20 retain];
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r0 = [r0 retain];
    }
    [r20 release];
    [r19 release];
    [r0 autorelease];
    r0 = r0;
    return r0;
}

-(void)removeURLStringFromPendingRetryRequests:(void *)arg2 {
    [arg2 retain];
    r0 = [self pendingRetryURLStrings];
    r0 = [r0 retain];
    r23 = [r0 mutableCopy];
    [r0 release];
    sub_1008220c0(r23, arg2);
    [r22 release];
    [self savePendingRetryURLStrings:r23];
    [r23 release];
    return;
}

-(void)pingRetryURLs {
    r19 = self->_lockQueue;
    var_18 = [self retain];
    dispatch_async(r19, &var_38);
    [var_18 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_activeRetryURLStrings, 0x0);
    objc_storeStrong((int64_t *)&self->_lockQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewPinger, 0x0);
    objc_storeStrong((int64_t *)&self->_pingerSession, 0x0);
    return;
}

@end