@implementation MPNativePositionSource

-(void *)init {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (self != 0x0) {
            [r19 setMaximumRetryInterval:r2];
            [r19 setMinimumRetryInterval:r2];
            [r19 minimumRetryInterval];
            [r19 setRetryInterval:r2];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x18) cancel];
    [[&var_20 super] dealloc];
    return;
}

-(void)cancel {
    r0 = [self task];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    return;
}

-(void)loadPositionsWithAdUnitIdentifier:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r22 = @selector(length);
    r21 = [arg3 retain];
    if (objc_msgSend(r19, r22) != 0x0) {
            [r20 setAdUnitIdentifier:r19];
            [r20 setCompletionHandler:r21];
            [r21 release];
            [r20 setRetryCount:0x0];
            [r20 minimumRetryInterval];
            [r20 setRetryInterval:0x0];
            r23 = [[NSString stringWithFormat:@"Requesting ad positions for native ad unit (%@)."] retain];
            r22 = [[MPLogEvent eventWithMessage:r23 level:0x1e] retain];
            [MPLogging logEvent:r22 source:0x0 fromClass:[r20 class]];
            [r22 release];
            [r23 release];
            r21 = objc_alloc();
            r23 = [[MPAdServerURLBuilder nativePositionUrlForAdUnitId:r19] retain];
            r22 = [r21 initWithURL:r23];
            [r23 release];
            r0 = [r20 task];
            r0 = [r0 retain];
            [r0 cancel];
            [r0 release];
            r21 = [[r20 httpTaskWithRequest:r22] retain];
            [r20 setTask:r21];
    }
    else {
            r22 = [[NSError errorWithDomain:@"com.mopub.iossdk.positioningsource" code:0x0 userInfo:0x0] retain];
            (*(r21 + 0x10))(r21, 0x0, r22);
    }
    [r21 release];
    [r22 release];
    [r19 release];
    return;
}

-(void *)httpTaskWithRequest:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x48, self);
    objc_copyWeak(&var_70 + 0x20, &saved_fp - 0x48);
    objc_copyWeak(&var_98 + 0x20, &saved_fp - 0x48);
    [[MPHTTPNetworkSession startTaskWithHttpRequest:r19 responseHandler:&var_70 errorHandler:&var_98] retain];
    objc_destroyWeak(&var_98 + 0x20);
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&saved_fp - 0x48);
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(bool)loading {
    r0 = *(int8_t *)(self + 0x8);
    return r0;
}

-(void)retryLoadingPositions {
    [self setRetryCount:[self retryCount] + 0x1];
    [self retryCount];
    r20 = [[NSString stringWithFormat:@"Retrying positions (retry attempt #%lu)."] retain];
    r22 = [[MPLogEvent eventWithMessage:r20 level:0x1e] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[self class]];
    [r22 release];
    [r20 release];
    r20 = objc_alloc();
    r22 = [[self adUnitIdentifier] retain];
    r21 = [[MPAdServerURLBuilder nativePositionUrlForAdUnitId:r22] retain];
    r20 = [r20 initWithURL:r21];
    [r21 release];
    [r22 release];
    r0 = [self task];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    r21 = [[self httpTaskWithRequest:r20] retain];
    [self setTask:r21];
    [r21 release];
    [r20 release];
    return;
}

-(void)parsePositioningData:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r19 = self;
    r22 = [arg2 retain];
    r0 = [MPNativePositionResponseDeserializer deserializer];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 clientPositioningForData:r22 error:&var_58];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    r21 = [var_58 retain];
    [r23 release];
    if (r21 == 0x0) goto loc_100468968;

loc_1004687d8:
    r24 = [[NSString stringWithFormat:@"Position deserialization failed with error: %@"] retain];
    r23 = [[MPLogEvent eventWithMessage:r24 level:0x14] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[r19 class]];
    [r23 release];
    [r24 release];
    r0 = [r21 userInfo];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectForKey:**_NSUnderlyingErrorKey];
    r29 = r29;
    r22 = [r0 retain];
    [r23 release];
    if ([r22 code] == 0x0) goto loc_1004689b4;

loc_1004688d0:
    [r19 retryInterval];
    [r19 maximumRetryInterval];
    if (d8 >= d0) goto loc_100468a20;

loc_100468904:
    [r19 retryInterval];
    [r19 performSelector:r2 withObject:r3 afterDelay:r4];
    [r19 retryInterval];
    objc_msgSend(r19, r24);
    r0 = r19;
    if (d0 + d0 < d0) {
            [r0 retryInterval];
    }
    else {
            [r0 maximumRetryInterval];
    }
    [r19 setRetryInterval:@selector(retryLoadingPositions)];
    goto loc_100468a84;

loc_100468a84:
    [r22 release];
    goto loc_100468a8c;

loc_100468a8c:
    [r20 release];
    [r21 release];
    return;

loc_100468a20:
    r0 = [r19 completionHandler];
    r0 = [r0 retain];
    r23 = r0;
    (*(r0 + 0x10))();
    goto loc_100468a4c;

loc_100468a4c:
    [r23 release];
    [r19 setCompletionHandler:0x0];
    goto loc_100468a84;

loc_1004689b4:
    r23 = [[r19 completionHandler] retain];
    (*(r23 + 0x10))(r23, 0x0, [[NSError errorWithDomain:@"com.mopub.iossdk.positioningsource" code:0x1 userInfo:0x0] retain]);
    [r24 release];
    goto loc_100468a4c;

loc_100468968:
    r0 = [r19 completionHandler];
    r0 = [r0 retain];
    (*(r0 + 0x10))();
    [r22 release];
    [r19 setCompletionHandler:0x0];
    goto loc_100468a8c;
}

-(void)setLoading:(bool)arg2 {
    *(int8_t *)(self + 0x8) = arg2;
    return;
}

-(void *)adUnitIdentifier {
    r0 = objc_getProperty(self, _cmd, 0x10, 0x0);
    return r0;
}

-(void)setAdUnitIdentifier:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)task {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setTask:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)completionHandler {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void)setCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)maximumRetryInterval {
    r0 = self;
    return r0;
}

-(void)setMaximumRetryInterval:(double)arg2 {
    *(self + 0x28) = d0;
    return;
}

-(double)minimumRetryInterval {
    r0 = self;
    return r0;
}

-(void)setMinimumRetryInterval:(double)arg2 {
    *(self + 0x30) = d0;
    return;
}

-(double)retryInterval {
    r0 = self;
    return r0;
}

-(void)setRetryInterval:(double)arg2 {
    *(self + 0x38) = d0;
    return;
}

-(unsigned long long)retryCount {
    r0 = *(self + 0x40);
    return r0;
}

-(void)setRetryCount:(unsigned long long)arg2 {
    *(self + 0x40) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end