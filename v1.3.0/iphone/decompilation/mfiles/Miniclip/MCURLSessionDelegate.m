@implementation MCURLSessionDelegate

-(void *)initWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x70) = [[NSURLSession sessionWithConfiguration:r20 delegate:r19 delegateQueue:0x0] retain];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x70) finishTasksAndInvalidate];
    [*(self + 0x70) release];
    [[&var_20 super] dealloc];
    return;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didReceiveResponse:(void *)arg4 completionHandler:(void *)arg5 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg5;
    r20 = arg4;
    r21 = self;
    r0 = [arg3 taskIdentifier];
    if (r21 != 0x0) {
            [r21 getConnection:r0];
            r0 = var_30;
            if (r0 != 0x0) {
                    sub_1009c9a0c(r0, r20);
            }
    }
    else {
            var_28 = 0x0;
    }
    (*(r19 + 0x10))(r19);
    r19 = var_28;
    if (r19 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r19 + 0x10))(r19);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    return;
}

-(struct shared_ptr<mc::HttpConnectionApple>)getConnection:(unsigned long long)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r8;
    *(int128_t *)r8 = 0x0;
    *(int128_t *)(r8 + 0x8) = 0x0;
    r19 = self + 0x8;
    std::__1::mutex::lock();
    r0 = sub_10042e668(self + 0x48, &var_28);
    if (r0 != 0x0) {
            r9 = *(int128_t *)(r0 + 0x18);
            r8 = *(int128_t *)(r0 + 0x20);
            if (r8 != 0x0) {
                    do {
                            asm { ldxr       x11, [x10] };
                            r11 = r11 + 0x1;
                            asm { stxr       w12, x11, [x10] };
                    } while (r12 != 0x0);
            }
            r21 = *(r20 + 0x8);
            *(int128_t *)r20 = r9;
            *(int128_t *)(r20 + 0x8) = r8;
            if (r21 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r21 + 0x10))(r21);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    r0 = std::__1::mutex::unlock();
    return r0;
}

-(void)URLSession:(void *)arg2 dataTask:(void *)arg3 didReceiveData:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r19 = arg3;
    r21 = self;
    r0 = [arg3 taskIdentifier];
    if (r21 != 0x0) {
            [r21 getConnection:r0];
            r0 = var_30;
            if (r0 != 0x0) {
                    (*(*r0 + 0x30))();
            }
            else {
                    [r19 cancel];
            }
    }
    else {
            var_28 = 0x0;
            [r19 cancel];
    }
    r19 = var_28;
    if (r19 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r19 + 0x10))(r19);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    return;
}

-(void)URLSession:(void *)arg2 downloadTask:(void *)arg3 didWriteData:(long long)arg4 totalBytesWritten:(long long)arg5 totalBytesExpectedToWrite:(long long)arg6 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = self;
    r0 = [arg3 taskIdentifier];
    if (r20 != 0x0) {
            [r20 getConnection:r0];
            r20 = var_20;
            if (r20 != 0x0) {
                    if (*(r20 + 0xd0) == 0x0) {
                            sub_1009c9a0c(r20, [r19 response]);
                    }
            }
            else {
                    [r19 cancel];
            }
    }
    else {
            var_18 = 0x0;
            [r19 cancel];
    }
    r19 = var_18;
    if (r19 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r19 + 0x10))(r19);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    return;
}

-(void)URLSession:(void *)arg2 downloadTask:(void *)arg3 didFinishDownloadingToURL:(void *)arg4 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r20 = self;
    r0 = [arg3 taskIdentifier];
    if (r20 != 0x0) {
            [r20 getConnection:r0];
            r0 = var_20;
            if (r0 != 0x0) {
                    (*(*r0 + 0x40))();
            }
    }
    else {
            var_18 = 0x0;
    }
    r19 = var_18;
    if (r19 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r19 + 0x10))(r19);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 didCompleteWithError:(void *)arg4 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r22 = arg3;
    r19 = self + 0x8;
    std::__1::mutex::lock();
    [r22 taskIdentifier];
    r24 = self + 0x48;
    r0 = sub_10042e668(r24, &var_48);
    r9 = r0;
    if (r0 != 0x0) {
            r23 = *(int128_t *)(r9 + 0x18);
            r20 = *(int128_t *)(r9 + 0x20);
            if (r20 != 0x0) {
                    do {
                            asm { ldxr       x10, [x8] };
                            r10 = r10 + 0x1;
                            asm { stxr       w11, x10, [x8] };
                    } while (r11 != 0x0);
            }
            sub_1003d2eb0(r24, r9);
            sub_1009881f4(&var_48);
            if (r23 != 0x0) {
                    (*(*r23 + 0x38))(r23, r21, [r22 response]);
            }
            std::__1::mutex::unlock();
            if (r20 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    else {
            std::__1::mutex::unlock();
    }
    return;
}

-(void)URLSessionDidFinishEventsForBackgroundURLSession:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if ([[MCURLSessionsManager sharedInstance] backgroundSessionCompletionHandler] != 0x0) {
            (*([[MCURLSessionsManager sharedInstance] backgroundSessionCompletionHandler] + 0x10))();
            [[MCURLSessionsManager sharedInstance] setBackgroundSessionCompletionHandler:0x0];
    }
    return;
}

-(void *)dataTaskWithRequest:(void *)arg2 forHttpConnection:(struct shared_ptr<mc::HttpConnectionApple>)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [*(self + 0x70) dataTaskWithRequest:arg2];
    r19 = self + 0x8;
    std::__1::mutex::lock();
    [r20 taskIdentifier];
    r0 = self + 0x48;
    r8 = *(r3 + 0x8);
    var_28 = r8;
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    sub_100987e2c(r0, &var_38);
    r21 = var_28;
    if (r21 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r21 + 0x10))(r21);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    std::__1::mutex::unlock();
    r0 = r20;
    return r0;
}

-(void *)downloadTaskWithRequest:(void *)arg2 forHttpConnection:(struct shared_ptr<mc::HttpConnectionApple>)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [*(self + 0x70) downloadTaskWithRequest:arg2];
    r19 = self + 0x8;
    std::__1::mutex::lock();
    [r20 taskIdentifier];
    r0 = self + 0x48;
    r8 = *(r3 + 0x8);
    var_28 = r8;
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    sub_100987e2c(r0, &var_38);
    r21 = var_28;
    if (r21 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r21 + 0x10))(r21);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    std::__1::mutex::unlock();
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    sub_100988504(self + 0x48);
    std::__1::mutex::~mutex();
    return;
}

-(void *).cxx_construct {
    r0 = self;
    *(r0 + 0x8) = 0x32aaaba7;
    *(int128_t *)(r0 + 0x10) = q0;
    *(int128_t *)(r0 + 0x20) = q0;
    *(int128_t *)(r0 + 0x30) = q0;
    *(int128_t *)(r0 + 0x40) = q0;
    *(int128_t *)(r0 + 0x50) = q0;
    *(r0 + 0x60) = 0x0;
    *(int32_t *)(r0 + 0x68) = 0x3f800000;
    return r0;
}

@end