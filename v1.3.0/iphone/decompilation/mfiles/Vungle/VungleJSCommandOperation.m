@implementation VungleJSCommandOperation

-(void *)initWithCommand:(void *)arg2 parameters:(void *)arg3 webViewFacade:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [self initWithCommand:r22 parameters:r20 webViewFacade:arg4 resultBlock:0x0];
    [r20 release];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void *)initWithCommand:(void *)arg2 parameters:(void *)arg3 webViewFacade:(void *)arg4 resultBlock:(void *)arg5 {
    r31 = r31 - 0x60;
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
    r22 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [r22 retain];
    r24 = [arg5 retain];
    r0 = [[&var_50 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_command));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_parameters));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r23->_webViewFacade, r22);
            r0 = objc_retainBlock(r24);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_resultBlock));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
    }
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)finishWithErrors:(void *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (([r20 isArbitraryJavascript] & 0x1) != 0x0) {
            r0 = [r20 resultBlock];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r21 = [[r20 resultBlock] retain];
                    (*(r21 + 0x10))(r21, [[r19 anyObject] retain]);
                    [r22 release];
                    [r21 release];
            }
            [[&var_60 super] finishWithErrors:r19];
    }
    else {
            var_28 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_50);
            [var_28 release];
    }
    [r19 release];
    return;
}

-(void)execute {
    return;
}

-(void *)constructJavascriptExpression {
    return 0x0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setResultBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)resultBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_resultBlock)), 0x0);
    return r0;
}

-(void)setCommand:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_command, arg2);
    return;
}

-(bool)isArbitraryJavascript {
    r0 = *(int8_t *)(int64_t *)&self->_isArbitraryJavascript;
    return r0;
}

-(void)setIsArbitraryJavascript:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isArbitraryJavascript = arg2;
    return;
}

-(void *)command {
    r0 = self->_command;
    return r0;
}

-(void *)parameters {
    r0 = self->_parameters;
    return r0;
}

-(void *)webViewFacade {
    r0 = self->_webViewFacade;
    return r0;
}

-(void)setParameters:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_parameters, arg2);
    return;
}

-(void)setWebViewFacade:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webViewFacade, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webViewFacade, 0x0);
    objc_storeStrong((int64_t *)&self->_parameters, 0x0);
    objc_storeStrong((int64_t *)&self->_command, 0x0);
    objc_storeStrong((int64_t *)&self->_resultBlock, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end