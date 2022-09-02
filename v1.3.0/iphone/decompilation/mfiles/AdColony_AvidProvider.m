@implementation AdColony_AvidProvider

+(void *)getInstance {
    r29 = &saved_fp;
    r31 = r31 + 0xfffffffffffffff0 - 0x30;
    var_28 = *__NSConcreteStackBlock;
    if (*qword_1011d23a8 != -0x1) {
            r0 = dispatch_once(0x1011d23a8, &var_28);
    }
    r0 = *0x1011d23b0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)isReady {
    r0 = self;
    if (r0->_avid != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)avidScript {
    r0 = self->_avid;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)loadAvid {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffc0 - 0x60;
    r20 = self;
    if (r20->_avid == 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_isLoading));
            if (*(int8_t *)(r20 + r8) == 0x0) {
                    *(int8_t *)(r20 + r8) = 0x1;
                    [r20 createSession];
                    r0 = [NSURL URLWithString:@"https://mobile-static.adsafeprotected.com/avid-v2.js"];
                    r29 = r29;
                    r19 = [r0 retain];
                    objc_initWeak(r29 - 0x38, r20);
                    if ([NSURLSession class] != 0x0) {
                            var_58 = 0xffffffffc2000000;
                            objc_copyWeak(&var_60 + 0x20, r29 - 0x38);
                            r0 = [r21 dataTaskWithURL:r19 completionHandler:&var_60];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 resume];
                            [r0 release];
                            objc_destroyWeak(&var_60 + 0x20);
                    }
                    else {
                            r0 = [NSURLRequest requestWithURL:r19 cachePolicy:0x1 timeoutInterval:r4];
                            r29 = r29;
                            [r0 retain];
                            [[NSOperationQueue mainQueue] retain];
                            var_80 = 0xffffffffc2000000;
                            var_78 = 0x100256058;
                            var_70 = 0x100e76c90;
                            objc_copyWeak(&var_88 + 0x20, r29 - 0x38);
                            r0 = [NSURLConnection sendAsynchronousRequest:r20 queue:r23 completionHandler:&var_88];
                            [r23 release];
                            objc_destroyWeak(&var_88 + 0x20);
                            [r20 release];
                    }
                    objc_destroyWeak(r29 - 0x38);
                    [r19 release];
            }
    }
    return;
}

-(void)handleResponseWithData:(void *)arg2 error:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    *(int8_t *)(int64_t *)&r20->_isLoading = 0x0;
    if (arg3 != 0x0) {
            [r20 performSelector:r2 withObject:r3 afterDelay:r4];
    }
    else {
            r0 = [NSString alloc];
            r0 = [r0 initWithData:r19 encoding:0x4];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_avid));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 onAvidReady];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void)repeatLoading {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r21 = [r0 shouldLoadAvid];
    [r0 release];
    if (r21 != 0x0) {
            [r19 loadAvid];
    }
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)createSession {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_session));
    if (*(r19 + r23) == 0x0) {
            r0 = [NSURLSessionConfiguration defaultSessionConfiguration];
            r0 = [r0 retain];
            r20 = r0;
            [r0 setRequestCachePolicy:0x1];
            r22 = [[NSOperationQueue mainQueue] retain];
            r0 = [NSURLSession sessionWithConfiguration:r20 delegate:0x0 delegateQueue:r22];
            r0 = [r0 retain];
            r8 = *(r19 + r23);
            *(r19 + r23) = r0;
            [r8 release];
            [r22 release];
            [r20 release];
    }
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_session, 0x0);
    objc_storeStrong((int64_t *)&self->_avid, 0x0);
    return;
}

@end