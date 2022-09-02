@implementation GADJSCoreJSFunction

-(void *)initWithFunctionValue:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_functionValue, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)callWithArguments:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x130;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_functionValue));
    if (*(r22 + r27) == 0x0) goto loc_1007db6f8;

loc_1007db498:
    r21 = [[NSMutableDictionary alloc] init];
    if (r19 != 0x0) {
            sub_100822058(r21, *0x100e95cf8, r19);
    }
    if (r20 != 0x0) {
            var_B0 = [r20 retain];
            var_A8 = [r22 retain];
            r0 = objc_retainBlock(&var_D0);
            var_D8 = [r0 retain];
            r0 = objc_retainBlock(&var_F8);
            r0 = [GADSettings sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            [r0 doubleForKey:r2];
            [r25 release];
            asm { fcvtzs     x1, d0 };
            r25 = dispatch_time(0x0, r1);
            [r24 retain];
            dispatch_after(r25, *__dispatch_main_q, &var_120);
            sub_100822058(r21, *0x100e997a8, objc_retainBlock(r23));
            [r25 release];
            [r24 release];
            [r23 release];
            [var_D8 release];
            [r24 release];
            [var_A8 release];
            [var_B0 release];
            _Block_object_dispose(&var_98, 0x8);
    }
    r22 = *(r22 + r27);
    r23 = [[NSArray arrayWithObjects:r29 - 0x70 count:0x1] retain];
    [[[r22 callWithArguments:r23] retain] release];
    [r23 release];
    goto loc_1007db72c;

loc_1007db72c:
    [r21 release];
    goto loc_1007db734;

loc_1007db734:
    var_68 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_1007db6f8:
    if (r20 == 0x0) goto loc_1007db734;

loc_1007db6fc:
    r21 = [sub_1008098f8(0x5, @"Invalid function.") retain];
    (*(r20 + 0x10))(r20, 0x0, r21);
    goto loc_1007db72c;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_functionValue, 0x0);
    return;
}

@end