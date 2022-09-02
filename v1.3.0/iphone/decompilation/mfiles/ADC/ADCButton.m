@implementation ADCButton

-(void *)initWithContext:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            *(int8_t *)(int64_t *)&r20->_ready = 0x0;
            objc_storeStrong((int64_t *)&r20->_context, r21);
            [r20 addTarget:r20 action:@selector(buttonPushed) forControlEvents:0x40];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setWebView:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = r0;
    r21 = [[r0 view] retain];
    [self addSubview:r21];
    [r21 release];
    [r20 setDelegate:self];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_webView));
    r0 = *(self + r8);
    *(self + r8) = r20;
    [r0 release];
    return;
}

-(void)buttonPushed {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [[self->_context viewID] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCButton buttonPushed]" line:0x18 withFormat:@"Button with id: %@ pushed"];
    [r21 release];
    r0 = self->_buttonHandler;
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
    }
    return;
}

-(void)onWebViewLoad:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[self->_context viewID] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCButton onWebViewLoad:]" line:0x2a withFormat:@"Web view for button with id: %@ loaded successfully"];
    [r22 release];
    r0 = [r20 retain];
    [r0 evaluateJS:@"document.documentElement.scrollWidth" withCompletionHandler:&var_50];
    [r20 release];
    [r0 release];
    return;
}

-(void)onWebViewError:(void *)arg2 {
    r21 = [[self->_context viewID] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCButton onWebViewError:]" line:0x36 withFormat:@"Web view for button with id: %@ failed to load"];
    [r21 release];
    *(int8_t *)(int64_t *)&self->_ready = 0x0;
    return;
}

-(bool)ready {
    r0 = *(int8_t *)(int64_t *)&self->_ready;
    return r0;
}

-(void)setReady:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_ready = arg2;
    return;
}

-(void)setContext:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_context, arg2);
    return;
}

-(void *)context {
    r0 = self->_context;
    return r0;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

-(void)setButtonHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)buttonHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_buttonHandler)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_buttonHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    return;
}

@end