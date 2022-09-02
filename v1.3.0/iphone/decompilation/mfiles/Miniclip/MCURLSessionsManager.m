@implementation MCURLSessionsManager

+(void *)sharedInstance {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011dc3f0 != -0x1) {
            dispatch_once(0x1011dc3f0, 0x100ea49b8);
    }
    return *0x1011dc3e8;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = @class(NSURLSessionConfiguration);
            r0 = [r0 backgroundSessionConfigurationWithIdentifier:@"com.miniclip.network.background"];
            [r0 setDiscretionary:0x1];
            *(r19 + 0x10) = [[MCURLSessionDelegate alloc] initWithConfiguration:r0];
            *(r19 + 0x8) = [[MCURLSessionDelegate alloc] initWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [*(self + 0x10) release];
    [*(self + 0x18) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)dataTaskWithRequest:(void *)arg2 forHttpConnection:(struct shared_ptr<mc::HttpConnectionApple>)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = *(r3 + 0x8);
    var_18 = r8;
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    r19 = [r0 dataTaskWithRequest:r2 forHttpConnection:&var_20 useBackgroundSession:0x0];
    r20 = var_18;
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
    r0 = r19;
    return r0;
}

-(void *)dataTaskWithRequest:(void *)arg2 forHttpConnection:(struct shared_ptr<mc::HttpConnectionApple>)arg3 useBackgroundSession:(bool)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r4 == 0x0) goto loc_100987278;

loc_100987218:
    r0 = *(r0 + 0x10);
    r8 = *(r3 + 0x8);
    var_18 = r8;
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    r19 = [r0 dataTaskWithRequest:r2 forHttpConnection:&var_20];
    r20 = var_18;
    if (r20 == 0x0) goto loc_1009872f0;

loc_100987264:
    do {
            asm { ldaxr      x9, [x8] };
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_1009872d4;

loc_1009872d4:
    if (r9 == 0x0) {
            (*(*r20 + 0x10))(r20);
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_1009872f0;

loc_1009872f0:
    r0 = r19;
    return r0;

loc_100987278:
    r0 = *(r0 + 0x8);
    r8 = *(r3 + 0x8);
    var_28 = r8;
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    r19 = [r0 dataTaskWithRequest:r2 forHttpConnection:&var_30];
    r20 = var_28;
    if (r20 == 0x0) goto loc_1009872f0;

loc_1009872c4:
    do {
            asm { ldaxr      x9, [x8] };
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_1009872d4;
}

-(void *)backgroundSessionCompletionHandler {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x1);
    return r0;
}

-(void *)downloadTaskWithRequest:(void *)arg2 forHttpConnection:(struct shared_ptr<mc::HttpConnectionApple>)arg3 useBackgroundSession:(bool)arg4 {
    memcpy(&r3, &arg3, 0x8);
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (r4 == 0x0) goto loc_10098749c;

loc_10098743c:
    r0 = *(r0 + 0x10);
    r8 = *(r3 + 0x8);
    var_18 = r8;
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    r19 = [r0 downloadTaskWithRequest:r2 forHttpConnection:&var_20];
    r20 = var_18;
    if (r20 == 0x0) goto loc_100987514;

loc_100987488:
    do {
            asm { ldaxr      x9, [x8] };
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_1009874f8;

loc_1009874f8:
    if (r9 == 0x0) {
            (*(*r20 + 0x10))(r20);
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_100987514;

loc_100987514:
    r0 = r19;
    return r0;

loc_10098749c:
    r0 = *(r0 + 0x8);
    r8 = *(r3 + 0x8);
    var_28 = r8;
    if (r8 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    r19 = [r0 downloadTaskWithRequest:r2 forHttpConnection:&var_30];
    r20 = var_28;
    if (r20 == 0x0) goto loc_100987514;

loc_1009874e8:
    do {
            asm { ldaxr      x9, [x8] };
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_1009874f8;
}

-(void)setBackgroundSessionCompletionHandler:(void *)arg2 {
    objc_setProperty_atomic_copy();
    return;
}

@end