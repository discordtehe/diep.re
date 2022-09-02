@implementation SSACommManager

+(void *)sharedManager {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dad10 != -0x1) {
            dispatch_once(0x1011dad10, &var_28);
    }
    r0 = *0x1011dad08;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)testBandwidthWithCompletionBlock:(void *)arg2 {
    [self setBandwidthCompletionBlock:arg2];
    r21 = [[NSURLRequest requestWithURL:[[NSURL URLWithString:@"https://s.ssacdn.com/brandconnect/images/fbc/background/340460.7.41776.jpg"] retain]] retain];
    r22 = [[NSDate date] retain];
    [self setStartTime:r22];
    [r22 release];
    [self setLength:0x0];
    r22 = [[NSURLConnection connectionWithRequest:r21 delegate:self] retain];
    [self setConnection:r22];
    [r22 release];
    dispatch_after(dispatch_time(0x0, 0x77359400), *__dispatch_main_q, &var_48);
    [r21 release];
    [r20 release];
    return;
}

-(double)determineMegabytesPerSecond {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self startTime];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 release];
    if (r21 != 0x0) {
            r21 = [[NSDate date] retain];
            r20 = [[r19 startTime] retain];
            [r21 timeIntervalSinceDate:r20];
            [r20 release];
            [r21 release];
            r0 = [r19 length];
            asm { ucvtf      d0, x0 };
            asm { fdiv       d0, d0, d8 };
    }
    return r0;
}

-(void)connection:(void *)arg2 didReceiveResponse:(void *)arg3 {
    r20 = [[NSDate date] retain];
    [self setStartTime:r20];
    [r20 release];
    return;
}

-(void)connection:(void *)arg2 didFailWithError:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self connection];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 setConnection:0x0];
            (*([[r19 bandwidthCompletionBlock] retain] + 0x10))();
            [r19 release];
    }
    return;
}

-(void)connectionDidFinishLoading:(void *)arg2 {
    [self setConnection:0x0];
    r20 = [[self bandwidthCompletionBlock] retain];
    [self determineMegabytesPerSecond];
    (*(r20 + 0x10))(r20);
    [r20 release];
    return;
}

-(void)connection:(void *)arg2 didReceiveData:(void *)arg3 {
    [self setLength:[self length] + [arg3 length]];
    return;
}

-(void *)connection {
    r0 = self->_connection;
    return r0;
}

-(void)setConnection:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_connection, arg2);
    return;
}

-(unsigned long long)length {
    r0 = self->_length;
    return r0;
}

-(void)setLength:(unsigned long long)arg2 {
    self->_length = arg2;
    return;
}

-(void *)startTime {
    r0 = self->_startTime;
    return r0;
}

-(void)setStartTime:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_startTime, arg2);
    return;
}

-(void *)bandwidthCompletionBlock {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_bandwidthCompletionBlock)), 0x0);
    return r0;
}

-(void)setBandwidthCompletionBlock:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_bandwidthCompletionBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_startTime, 0x0);
    objc_storeStrong((int64_t *)&self->_connection, 0x0);
    return;
}

@end