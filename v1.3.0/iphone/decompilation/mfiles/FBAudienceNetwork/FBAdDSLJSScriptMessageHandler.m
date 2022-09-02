@implementation FBAdDSLJSScriptMessageHandler

-(void *)initWithAuthKey:(void *)arg2 delegate:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r0 != 0x0) {
            objc_storeWeak((int64_t *)&r22->_delegate, r21);
            objc_storeStrong((int64_t *)&r22->_authKey, r20);
    }
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_authKey, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void)userContentController:(void *)arg2 didReceiveScriptMessage:(void *)arg3 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg3 body];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    if (r0 != 0x0) {
            r22 = r0;
            r24 = [[r19 objectForKeyedSubscript:r2] retain];
            r0 = [r20 authKey];
            r29 = r29;
            r25 = [r0 retain];
            r26 = [r24 isEqualToString:r2];
            [r25 release];
            [r24 release];
            [r22 release];
            if (r26 != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    [NSString class];
                    r24 = [r22 isKindOfClass:r2];
                    [r22 release];
                    if (r24 != 0x0) {
                            r23 = @selector(isEqualToString:);
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            r22 = r0;
                            if ((objc_msgSend(r0, r23) & 0x1) != 0x0) {
                                    r23 = 0x0;
                            }
                            else {
                                    if (([r22 isEqualToString:r2] & 0x1) != 0x0) {
                                            r23 = 0x1;
                                    }
                                    else {
                                            if (([r22 isEqualToString:r2] & 0x1) != 0x0) {
                                                    r23 = 0x2;
                                            }
                                            else {
                                                    if (([r22 isEqualToString:r2] & 0x1) != 0x0) {
                                                            r23 = 0x3;
                                                    }
                                                    else {
                                                            if (([r22 isEqualToString:r2] & 0x1) != 0x0) {
                                                                    r23 = 0x4;
                                                            }
                                                            else {
                                                                    r23 = @selector(isEqualToString:);
                                                                    if (objc_msgSend(r22, r23) == 0x0) {
                                                                            asm { cinc       x23, x8, eq };
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                            r20 = objc_loadWeakRetained((int64_t *)&r20->_delegate);
                            r21 = [[r19 objectForKeyedSubscript:r2] retain];
                            [r20 receivedJSScriptEvent:r23 withExtraData:r21];
                            [r21 release];
                            [r20 release];
                            [r22 release];
                    }
            }
    }
    [r19 release];
    return;
}

-(void *)authKey {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_authKey)), 0x0);
    return r0;
}

@end