@implementation GADStatelessActionHandler

+(void *)sharedInstance {
    if (*qword_1011dbf10 != -0x1) {
            dispatch_once(0x1011dbf10, 0x100e9dae8);
    }
    r0 = *0x1011dbf18;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x110;
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
    r19 = [[r29 - 0x70 super] init];
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r28 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r28);
            *(r19 + r28) = r0;
            [r8 release];
            r0 = @class(NSOperationQueue);
            r0 = [r0 alloc];
            r0 = objc_msgSend(r0, r20);
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_observationQueue));
            r8 = *(r19 + r25);
            *(r19 + r25) = r0;
            [r8 release];
            [*(r19 + r25) setMaxConcurrentOperationCount:0x1];
            [*(r19 + r25) setQualityOfService:0x11];
            objc_initWeak(r29 - 0x78, r19);
            objc_copyWeak(&var_A0 + 0x20, r29 - 0x78);
            [r21 addObserverForName:*0x100e9c308 object:0x0 queue:0x0 usingBlock:&var_A0];
            objc_copyWeak(&var_C8 + 0x20, r29 - 0x78);
            [r23 addObserverForName:*0x100e9c2f8 object:0x0 queue:r25 usingBlock:&var_C8];
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_F0 + 0x20, r29 - 0x78);
            [r25 addObserverForName:*0x100e9c300 object:0x0 queue:r26 usingBlock:&var_F0];
            [r26 release];
            r25 = *(r19 + r28);
            r24 = [[NSOperationQueue mainQueue] retain];
            [r25 addObserverForName:*0x100e9c358 object:0x0 queue:r24 usingBlock:0x100e9dbb8];
            [r24 release];
            objc_destroyWeak(&var_F0 + 0x20);
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&var_A0 + 0x20);
            objc_destroyWeak(r29 - 0x78);
    }
    r0 = r19;
    return r0;
}

-(void)handlePingURLAction:(void *)arg2 {
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
    r20 = [[GADEventContext rootContext] retain];
    r0 = [r19 object];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 conformsToProtocol:@protocol(GADEventContextSource)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 object];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 context];
            r29 = r29;
            r22 = [r0 retain];
            [r20 release];
            [r21 release];
            r20 = r22;
    }
    r0 = [r19 userInfo];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e95340];
    r0 = [r0 retain];
    r21 = [[r0 objectForKeyedSubscript:*0x100e95368] retain];
    [r0 release];
    [r22 release];
    r22 = [[NSURL URLWithString:r2] retain];
    if (r22 != 0x0) {
            sub_10084cc54(r22, r20);
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleLogMessageAction:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKeyedSubscript:*0x100e95340];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:r2] retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            NSLog(@"<Google> %@", @selector(objectForKeyedSubscript:));
    }
    [r19 release];
    return;
}

-(void)handleTouchAction:(void *)arg2 {
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    sub_10081bb00(*0x100e953b8, r20, 0xffffffffffffffff);
    sub_10081bb00(*0x100e953c0, r20, 0xffffffffffffffff);
    sub_10081bb00(*0x100e953b0, r20, 0xffffffffffffffff);
    dispatch_async(*__dispatch_main_q, &var_58);
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observationQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end