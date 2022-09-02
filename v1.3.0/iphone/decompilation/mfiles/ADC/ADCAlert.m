@implementation ADCAlert

-(void)addActionWithTitle:(void *)arg2 completionHandler:(void *)arg3 {
    r21 = [arg2 retain];
    r20 = self->_actions;
    r19 = [arg3 retain];
    [[ADCAlertAction alloc] initWithTitle:r21 completion:r19];
    [r19 release];
    [r21 release];
    [r20 addObject:r2];
    [r22 release];
    return;
}

-(void *)initWithTitle:(void *)arg2 message:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r23 = arg2;
    r19 = [r23 retain];
    r20 = [r22 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_title, r23);
            objc_storeStrong((int64_t *)&r21->_message, r22);
            r0 = [NSMutableArray new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_actions));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)alertView:(void *)arg2 didDismissWithButtonIndex:(long long)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r0 = r20->_actions;
    if (arg3 != 0x0) {
            r0 = [r0 lastObject];
            r29 = r29;
    }
    else {
            r0 = [r0 firstObject];
            r29 = r29;
    }
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r21 completion];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    (*([[r21 completion] retain] + 0x10))();
                    [r22 release];
            }
    }
    r0 = r20->_alertCompletion;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    [r21 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_alertCompletion, 0x0);
    objc_storeStrong((int64_t *)&self->_alertView, 0x0);
    objc_storeStrong((int64_t *)&self->_actions, 0x0);
    objc_storeStrong((int64_t *)&self->_message, 0x0);
    objc_storeStrong((int64_t *)&self->_title, 0x0);
    return;
}

-(void)show:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x170;
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
    r26 = arg3;
    r20 = self;
    r25 = [arg2 retain];
    r27 = [r26 retain];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r21 release];
    if (r23 != -0x1) {
            [ADCStaticContainer class];
            r0 = [r25 isKindOfClass:r2];
            var_148 = r26;
            var_140 = r25;
            var_150 = r27;
            if (r0 != 0x0) {
                    r0 = [[ADCStaticAlertController alloc] initWithSupportedOrientations:[r25 supportedInterfaceOrientations] preferredOrientation:[r25 preferredInterfaceOrientationForPresentation]];
            }
            else {
                    r22 = @selector(isKindOfClass:);
                    [ADCContainer class];
                    if (objc_msgSend(r25, r22) != 0x0) {
                            r0 = [[ADCAlertController alloc] initWithSupportedOrientations:[r25 supportedInterfaceOrientations]];
                    }
                    else {
                            r0 = [UIAlertController new];
                    }
            }
            r19 = r0;
            [r0 setTitle:r20->_title];
            [r19 setMessage:r20->_message];
            r0 = @(0x1);
            r29 = r29;
            r21 = [r0 retain];
            var_120 = r19;
            [r19 setValue:r21 forKey:@"preferredStyle"];
            [r21 release];
            var_108 = q0;
            var_138 = r20;
            r0 = r20->_actions;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_130 = r1;
            var_128 = r0;
            r26 = objc_msgSend(r0, r1);
            if (r26 != 0x0) {
                    r24 = *var_108;
                    do {
                            r23 = 0x0;
                            do {
                                    if (*var_108 != r24) {
                                            objc_enumerationMutation(var_128);
                                    }
                                    r20 = *(var_110 + r23 * 0x8);
                                    r25 = [[r20 title] retain];
                                    r20 = [[r20 completion] retain];
                                    r0 = [UIAlertAction actionWithTitle:r2 style:r3 handler:r4];
                                    r29 = r29;
                                    [r0 retain];
                                    [r20 release];
                                    [r25 release];
                                    [var_120 addAction:r2];
                                    [r19 release];
                                    r23 = r23 + 0x1;
                            } while (r23 < r26);
                            r26 = objc_msgSend(var_128, var_130);
                    } while (r26 != 0x0);
            }
            [var_128 release];
            r25 = var_140;
            [r25 presentViewController:var_120 animated:0x1 completion:0x0];
            [var_120 release];
            r20 = var_138;
            r27 = var_150;
            r26 = var_148;
    }
    else {
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_actions));
            r23 = [[*(r20 + r19) firstObject] retain];
            r24 = [[*(r20 + r19) lastObject] retain];
            r21 = [[r23 title] retain];
            r22 = [[r24 title] retain];
            if (r23 == r24) {
                    [r22 release];
                    r22 = 0x0;
            }
            r0 = [UIAlertView alloc];
            r0 = [r0 initWithTitle:r20->_title message:r20->_message delegate:r20 cancelButtonTitle:r21 otherButtonTitles:r22];
            r19 = sign_extend_64(*(int32_t *)ivar_offset(_alertView));
            r8 = *(r20 + r19);
            *(r20 + r19) = r0;
            [r8 release];
            [*(r20 + r19) show];
            [r22 release];
            [r21 release];
            [r24 release];
            [r23 release];
    }
    var_58 = **___stack_chk_guard;
    r19 = objc_retainBlock(r26);
    [r27 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_alertCompletion));
    r0 = *(r20 + r8);
    *(r20 + r8) = r19;
    [r0 release];
    [r25 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end