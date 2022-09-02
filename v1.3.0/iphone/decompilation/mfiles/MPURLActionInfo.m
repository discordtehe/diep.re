@implementation MPURLActionInfo

+(void *)infoWithURL:(void *)arg2 iTunesStoreParameters:(void *)arg3 iTunesStoreFallbackURL:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    [self class];
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setActionType:0x0];
    [r0 setOriginalURL:r22];
    [r22 release];
    [r0 setITunesStoreParameters:r20];
    [r20 release];
    [r0 setITunesStoreFallbackURL:r19];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)infoWithURL:(void *)arg2 safariDestinationURL:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self class];
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setActionType:0x3];
    [r0 setOriginalURL:r21];
    [r21 release];
    [r0 setSafariDestinationURL:r19];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)infoWithURL:(void *)arg2 HTTPResponseString:(void *)arg3 webViewBaseURL:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    [self class];
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setActionType:0x5];
    [r0 setOriginalURL:r22];
    [r22 release];
    [r0 setHTTPResponseString:r20];
    [r20 release];
    [r0 setWebViewBaseURL:r19];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)infoWithURL:(void *)arg2 webViewBaseURL:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self class];
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setActionType:0x4];
    [r0 setOriginalURL:r21];
    [r21 release];
    [r0 setWebViewBaseURL:r19];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)infoWithURL:(void *)arg2 deeplinkURL:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self class];
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setActionType:0x1];
    [r0 setOriginalURL:r21];
    [r21 release];
    [r0 setDeeplinkURL:r19];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)infoWithURL:(void *)arg2 enhancedDeeplinkRequest:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self class];
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setActionType:0x2];
    [r0 setOriginalURL:r21];
    [r21 release];
    [r0 setEnhancedDeeplinkRequest:r19];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)infoWithURL:(void *)arg2 shareURL:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [self class];
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setActionType:0x6];
    [r0 setOriginalURL:r21];
    [r21 release];
    [r0 setShareURL:r19];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(unsigned long long)actionType {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setActionType:(unsigned long long)arg2 {
    *(self + 0x8) = arg2;
    return;
}

-(void *)originalURL {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setOriginalURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)iTunesStoreParameters {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setITunesStoreParameters:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)iTunesStoreFallbackURL {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void)setITunesStoreFallbackURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)safariDestinationURL {
    r0 = objc_getProperty(self, _cmd, 0x28, 0x0);
    return r0;
}

-(void)setSafariDestinationURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)HTTPResponseString {
    r0 = objc_getProperty(self, _cmd, 0x30, 0x0);
    return r0;
}

-(void)setHTTPResponseString:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)webViewBaseURL {
    r0 = objc_getProperty(self, _cmd, 0x38, 0x0);
    return r0;
}

-(void)setWebViewBaseURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)deeplinkURL {
    r0 = objc_getProperty(self, _cmd, 0x40, 0x0);
    return r0;
}

-(void)setDeeplinkURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)enhancedDeeplinkRequest {
    r0 = *(self + 0x48);
    return r0;
}

-(void)setEnhancedDeeplinkRequest:(void *)arg2 {
    objc_storeStrong(self + 0x48, arg2);
    return;
}

-(void *)shareURL {
    r0 = objc_getProperty(self, _cmd, 0x50, 0x0);
    return r0;
}

-(void)setShareURL:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x50, 0x0);
    objc_storeStrong(self + 0x48, 0x0);
    objc_storeStrong(self + 0x40, 0x0);
    objc_storeStrong(self + 0x38, 0x0);
    objc_storeStrong(self + 0x30, 0x0);
    objc_storeStrong(self + 0x28, 0x0);
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end