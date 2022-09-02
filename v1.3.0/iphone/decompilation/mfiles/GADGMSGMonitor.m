@implementation GADGMSGMonitor

+(void *)sharedInstance {
    if (*qword_1011dbdb0 != -0x1) {
            dispatch_once(0x1011dbdb0, 0x100e95250);
    }
    r0 = *0x1011dbdb8;
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
    [[[GADStatelessActionHandler sharedInstance] retain] release];
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            objc_initWeak(&stack[-72], r19);
            objc_copyWeak(&var_60 + 0x20, &stack[-72]);
            [r21 addObserverForName:*0x100e9c228 object:0x0 queue:0x0 usingBlock:&var_60];
            objc_destroyWeak(&var_60 + 0x20);
            objc_destroyWeak(&stack[-72]);
    }
    r0 = r19;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

-(void)handleGMSGNotification:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 userInfo];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:*0x100e95348] retain];
    [r0 release];
    r0 = sub_10083a778();
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            sub_100822058(r0, *0x100e95348, r20);
            sub_100822058(r23, *0x100e95340, [sub_100899cd4(r20, 0x0) retain]);
            sub_1008833e8(r21, [[r19 object] retain], r23);
            [r24 release];
            [r22 release];
            r0 = r23;
    }
    else {
            r0 = [r19 object];
            r0 = [r0 retain];
            sub_1007ce06c(r0, @"Invalid GMSG URL %@");
            r0 = r22;
    }
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end