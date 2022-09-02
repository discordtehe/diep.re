@implementation FBAdProviderWithResponse

-(void *)init {
    r0 = [self initWithResponse:0x0 forAdAtIndex:0xffffffffffffffff];
    return r0;
}

-(void *)initWithResponse:(void *)arg2 forAdAtIndex:(long long)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [[FBAdProviderCannedResponse alloc] initWithResponse:r19 forAdAtIndex:r21];
            [r20 setResponse:r21];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)loadAdWithEnvironmentData:(void *)arg2 {
    r20 = [[self delegate] retain];
    r19 = [[self response] retain];
    [r20 onAdRequestSuccess:r19];
    [r19 release];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_response, 0x0);
    return;
}

-(void *)response {
    r0 = self->_response;
    return r0;
}

-(void)setResponse:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_response, arg2);
    return;
}

@end