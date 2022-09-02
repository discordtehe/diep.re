@implementation MCGoliathObserverIOS

-(void)sessionStarted:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = *(self + 0x10);
    if (r0 != 0x0 && *(r0 + 0x8) != -0x1) {
            r0 = std::__1::__shared_weak_count::lock();
            r19 = r0;
            if (r0 != 0x0) {
                    r0 = *(r20 + 0x8);
            }
            sub_1005aaae8(r0);
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
    }
    return;
}

-(void *)initWithGoliath:(struct weak_ptr<mc::MCGoliath>)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r9 = *(int128_t *)r20;
            r8 = *(int128_t *)(r20 + 0x8);
            if (r8 != 0x0) {
                    do {
                            asm { ldxr       x11, [x10] };
                            r11 = r11 + 0x1;
                            asm { stxr       w12, x11, [x10] };
                    } while (r12 != 0x0);
            }
            r0 = *(r19 + 0x10);
            *(int128_t *)(r19 + 0x8) = r9;
            *(int128_t *)(r19 + 0x10) = r8;
            if (r0 != 0x0) {
                    std::__1::__shared_weak_count::__release_weak();
            }
            [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(sessionStarted:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            [[NSNotificationCenter defaultCenter] addObserver:r19 selector:@selector(sessionStopped:) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
    }
    r0 = r19;
    return r0;
}

-(void)sessionStopped:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = *(self + 0x10);
    if (r0 != 0x0 && *(r0 + 0x8) != -0x1) {
            r0 = std::__1::__shared_weak_count::lock();
            r19 = r0;
            if (r0 != 0x0) {
                    r0 = *(r20 + 0x8);
            }
            sub_1005aae90(r0);
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
    }
    return;
}

-(void).cxx_destruct {
    if (*(self + 0x10) != 0x0) {
            std::__1::__shared_weak_count::__release_weak();
    }
    return;
}

-(void *).cxx_construct {
    r0 = self;
    *(int128_t *)(r0 + 0x8) = 0x0;
    *(int128_t *)(r0 + 0x10) = 0x0;
    return r0;
}

@end