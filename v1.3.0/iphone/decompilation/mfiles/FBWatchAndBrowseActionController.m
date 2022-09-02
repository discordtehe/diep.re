@implementation FBWatchAndBrowseActionController

-(void)makeWebView {
    r20 = [FBWatchAndBrowseWebView alloc];
    r21 = [[self targetURL] retain];
    r20 = [r20 initWithURL:r21];
    [r21 release];
    [r20 setDelegate:self];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_browseView));
    r0 = *(self + r8);
    *(self + r8) = r20;
    [r0 release];
    return;
}

-(void)logError:(void *)arg2 {
    [FBAdDebugLogging logDebugEventWithType:@"internal_error" code:0x3 description:arg2];
    return;
}

-(bool)validateDataModel {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 commandURL] retain];
    [r0 release];
    if (r20 == 0x0) goto loc_100b28030;

loc_100b2800c:
    if (([FBAdCommandProcessor isValidBrowseCommand:r20] & 0x1) == 0x0) goto loc_100b2803c;

loc_100b28028:
    r19 = 0x1;
    goto loc_100b28058;

loc_100b28058:
    [r20 release];
    r0 = r19;
    return r0;

loc_100b2803c:
    r2 = @"Not valid command type";
    goto loc_100b28044;

loc_100b28044:
    [r19 logError:r2];
    r19 = 0x0;
    goto loc_100b28058;

loc_100b28030:
    r2 = @"No link availabe for browse in data model provided";
    goto loc_100b28044;
}

-(void *)targetURL {
    r0 = [self dataModel];
    r0 = [r0 retain];
    r20 = [[r0 commandURL] retain];
    [r0 release];
    r19 = [[FBAdCommandProcessor getLinkFromCommandURL:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)preloadContent {
    return;
}

-(void *)initWithDataModel:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 == 0x0) goto loc_100b280f4;

loc_100b280bc:
    [r20 setDataModel:r19];
    if ([r20 validateDataModel] == 0x0) goto loc_100b28104;

loc_100b280e4:
    [r20 makeWebView];
    goto loc_100b280f4;

loc_100b280f4:
    r21 = [r20 retain];
    goto loc_100b28108;

loc_100b28108:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_100b28104:
    r21 = 0x0;
    goto loc_100b28108;
}

-(void)prepareForPresentation {
    r0 = [self browseView];
    r0 = [r0 retain];
    [r0 load];
    [r0 release];
    return;
}

-(void *)view {
    r0 = [self browseView];
    return r0;
}

-(void)webViewDidClose {
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 actionViewDidFinishPresentation];
    [r0 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_browseView, 0x0);
    objc_storeStrong((int64_t *)&self->_dataModel, 0x0);
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

-(void *)dataModel {
    r0 = self->_dataModel;
    return r0;
}

-(void)setDataModel:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_dataModel, arg2);
    return;
}

-(void *)browseView {
    r0 = self->_browseView;
    return r0;
}

@end