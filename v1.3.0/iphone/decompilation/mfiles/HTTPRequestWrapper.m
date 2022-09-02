@implementation HTTPRequestWrapper

-(void *)initWithURL:(void *)arg2 context:(void *)arg3 delegate:(void *)arg4 selector:(void *)arg5 redirectSelector:(void *)arg6 {
    [self initWithURL:arg2 context:arg3 delegate:arg4 selector:arg5];
    *(self + 0x18) = arg6;
    r0 = self;
    return r0;
}

+(void *)wrapperWithURL:(void *)arg2 context:(void *)arg3 delegate:(void *)arg4 selector:(void *)arg5 {
    r0 = [HTTPRequestWrapper alloc];
    r0 = [r0 initWithURL:arg2 context:arg3 delegate:arg4 selector:arg5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithURL:(void *)arg2 context:(void *)arg3 delegate:(void *)arg4 selector:(void *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg5;
    r23 = arg4;
    r21 = arg3;
    r20 = arg2;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(int128_t *)(r19 + 0x8) = [r23 retain];
            *(int128_t *)(r19 + 0x10) = r22;
            *(r19 + 0x38) = [r21 retain];
            r0 = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:r20] cachePolicy:0x4 timeoutInterval:r4];
            r20 = r0;
            [r0 setHTTPMethod:@"GET"];
            r0 = [NSURLConnection alloc];
            r0 = [r0 initWithRequest:r20 delegate:r19];
            *(r19 + 0x20) = r0;
            [r0 start];
    }
    r0 = r19;
    return r0;
}

-(void)clean {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x20) = 0x0;
    }
    r0 = *(r19 + 0x38);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x38) = 0x0;
    }
    r0 = *(r19 + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    r0 = *(r19 + 0x30);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x30) = 0x0;
    }
    return;
}

-(void)connectionDidFinishLoading:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (*(self + 0x30) != 0x0) {
            [*(int128_t *)(r19 + 0x8) performSelector:*(int128_t *)(r19 + 0x10) withObject:*(r19 + 0x38) withObject:r4];
    }
    [r19 clean];
    return;
}

-(void)cancel {
    [*(self + 0x20) cancel];
    [self clean];
    return;
}

-(void)connection:(void *)arg2 didReceiveData:(void *)arg3 {
    [*(self + 0x30) appendData:arg3];
    return;
}

-(void)connection:(void *)arg2 didReceiveResponse:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([arg3 statusCode] == 0xc8) {
            *(r19 + 0x30) = [[NSMutableData dataWithCapacity:0x3a98] retain];
    }
    else {
            [*(int128_t *)(r19 + 0x8) performSelector:*(int128_t *)(r19 + 0x10) withObject:*(r19 + 0x38) withObject:0x0];
    }
    return;
}

-(void *)connection:(void *)arg2 willSendRequest:(void *)arg3 redirectResponse:(void *)arg4 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self;
    if ([arg4 statusCode] == 0x12d && [*(r20 + 0x8) respondsToSelector:r2] != 0x0) {
            [*(r20 + 0x8) performSelector:r2 withObject:r3];
    }
    r0 = r19;
    return r0;
}

-(void)connection:(void *)arg2 didFailWithError:(void *)arg3 {
    [*(self + 0x8) performSelector:*(self + 0x10) withObject:*(self + 0x38) withObject:0x0];
    [self clean];
    return;
}

-(void)dealloc {
    [self clean];
    [[&var_20 super] dealloc];
    return;
}

@end