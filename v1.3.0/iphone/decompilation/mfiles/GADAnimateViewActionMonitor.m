@implementation GADAnimateViewActionMonitor

-(void *)initWithWebAdView:(void *)arg2 messageSource:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_50 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r22 = @selector(init);
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r22);
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r21 + r22);
            *(r21 + r22) = r0;
            [r8 release];
            objc_storeWeak((int64_t *)&r21->_weakAdView, r19);
            objc_initWeak(&stack[-104], r21);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_80 + 0x20, &stack[-104]);
            [r22 addObserverForName:*0x100e9c688 object:r20 queue:r24 usingBlock:&var_80];
            [r24 release];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&stack[-104]);
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)handleAnimationNotification:(void *)arg2 {
    r31 = r31 - 0x80;
    var_50 = d9;
    stack[-88] = d8;
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
    r21 = self;
    r0 = [arg2 userInfo];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:*0x100e95340] retain];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"animation_duration_ms"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r20 doubleValue];
            asm { fdiv       d8, d0, d1 };
    }
    r0 = [r19 objectForKeyedSubscript:@"request_id"];
    r29 = r29;
    r22 = [r0 retain];
    [NSString class];
    if (([r22 isKindOfClass:r2] & 0x1) != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"animations"];
            r0 = [r0 retain];
            r23 = r0;
            r0 = sub_10084abc4(r0, &var_58);
            r29 = r29;
            r24 = [r0 retain];
            r25 = [var_58 retain];
            if (r25 != 0x0) {
                    sub_1007ce06c(0x0, @"Failed to decode animations JSON %@ with error %@");
            }
            else {
                    r0 = [GADAnimationConfig animationConfigsFromAnimations:r24];
                    r0 = [r0 retain];
                    r26 = r0;
                    r0 = [r0 count];
                    if (r0 != 0x0) {
                            [r21 handleAnimations:r26 withDuration:r22 requestIdentifier:r4];
                    }
                    else {
                            sub_1007ce06c(r0, @"Animation GMSG must never run with empty animations.");
                    }
                    [r26 release];
            }
            [r24 release];
            [r25 release];
            [r23 release];
    }
    else {
            sub_1007ce06c(0x0, @"Invalid animation parameters. %@");
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleAnimations:(void *)arg2 withDuration:(double)arg3 requestIdentifier:(void *)arg4 {
    r31 = r31 - 0xf0;
    var_50 = d9;
    stack[-88] = d8;
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
    v8 = v0;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = objc_loadWeakRetained((int64_t *)&self->_weakAdView);
    if (r21 != 0x0) {
            if (r19 == 0x0) {
                    r0 = [NSArray arrayWithObjects:&stack[-144] count:0x0];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r19 release];
                    r19 = r22;
            }
            if (r20 == 0x0) {
                    [@"-1" retain];
                    [r20 release];
                    r20 = @"-1";
            }
            r23 = [[NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1] retain];
            r22 = [[NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:r29 - 0x68 count:0x1] retain];
            [r23 release];
            sub_1008833e8(*0x100e9c690, r21, r22);
            r24 = [r21 retain];
            var_88 = r22;
            r22 = [r22 retain];
            r20 = [r20 retain];
            var_B8 = [r24 retain];
            [UIView animateWithDuration:&var_B0 animations:&var_E0 completion:0x1];
            [var_B8 release];
            [r20 release];
            [var_88 release];
            [r24 release];
            [r22 release];
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_weakAdView);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end