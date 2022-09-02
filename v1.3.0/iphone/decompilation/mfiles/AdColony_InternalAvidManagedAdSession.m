@implementation AdColony_InternalAvidManagedAdSession

-(void)onStart {
    r0 = [UIWebView alloc];
    r0 = [r0 init];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_webView));
    r8 = *(self + r21);
    *(self + r21) = r0;
    [r8 release];
    r0 = [self avidBridge];
    r0 = [r0 retain];
    [r0 setWebView:*(self + r21)];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    return;
}

@end