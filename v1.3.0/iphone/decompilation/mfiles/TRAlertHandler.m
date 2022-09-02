@implementation TRAlertHandler

-(void)showAlertWithTitle:(void *)arg2 message:(void *)arg3 buttonTitles:(void *)arg4 handlers:(void *)arg5 {
    r31 = r31 - 0x120;
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
    r25 = [arg2 retain];
    r20 = [arg3 retain];
    r27 = [arg4 retain];
    r22 = [arg5 retain];
    r21 = @selector(count);
    if (objc_msgSend(r27, r21) != objc_msgSend(r22, r21)) {
            [NSException raise:@"InvalidArgumentException" format:@"You must have a handler for each button title."];
    }
    if ([r27 count] == 0x0) {
            [NSException raise:@"InvalidArgumentException" format:@"There must be at least one title"];
    }
    if ([UIAlertController class] != 0x0) {
            r21 = @selector(count);
            var_100 = r20;
            stack[-264] = r25;
            r0 = [UIAlertController alertControllerWithTitle:r25 message:r20 preferredStyle:0x1];
            r29 = r29;
            var_F0 = [r0 retain];
            r0 = objc_msgSend(r27, r21);
            r23 = r22;
            r24 = r27;
            if (r0 != 0x0) {
                    r25 = 0x0;
                    do {
                            r0 = [r24 objectAtIndex:r25];
                            r29 = r29;
                            r19 = [r0 retain];
                            if (r25 == 0x0) {
                                    if (CPU_FLAGS & E) {
                                            r22 = 0x1;
                                    }
                            }
                            r21 = @selector(count);
                            var_70 = [r23 retain];
                            r0 = [UIAlertAction actionWithTitle:r19 style:r22 handler:&var_90];
                            r29 = r29;
                            r20 = [r0 retain];
                            [var_F0 addAction:r20];
                            [r20 release];
                            [var_70 release];
                            [r19 release];
                            r25 = r25 + 0x1;
                    } while (objc_msgSend(r24, r21) > r25);
            }
            r27 = r24;
            r21 = var_F0;
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 keyWindow];
            r0 = [r0 retain];
            r24 = [[r0 rootViewController] retain];
            [r0 release];
            [r25 release];
            r26 = @selector(presentedViewController);
            r0 = objc_msgSend(r24, r26);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r22 = r23;
                    do {
                            r19 = r24;
                            r24 = [objc_msgSend(r19, r26) retain];
                            [r19 release];
                            r0 = [r24 presentedViewController];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            r26 = @selector(presentedViewController);
                    } while (r0 != 0x0);
                    r20 = var_100;
                    r25 = stack[-264];
            }
            else {
                    r20 = var_100;
                    r25 = stack[-264];
                    r22 = r23;
            }
            [r24 presentViewController:r21 animated:0x1 completion:0x0];
            [r24 release];
            r0 = r21;
    }
    else {
            r21 = @selector(count);
            r23 = [[r27 objectAtIndex:0x0] retain];
            objc_msgSend(r27, r21) - 0x1;
            r24 = [[r27 subarrayWithRange:0x1] retain];
            var_98 = [r22 retain];
            r0 = [UIAlertView showWithTitle:r25 message:r20 cancelButtonTitle:r23 otherButtonTitles:r24 tapBlock:&var_E8];
            [[r0 retain] release];
            _Block_object_dispose(&var_C0, 0x8);
            [var_98 release];
            [r24 release];
            r0 = r23;
    }
    [r0 release];
    [r22 release];
    [r27 release];
    [r20 release];
    [r25 release];
    return;
}

-(void *)handlers {
    r0 = self->_handlers;
    return r0;
}

-(void)setHandlers:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_handlers, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_handlers, 0x0);
    return;
}

@end