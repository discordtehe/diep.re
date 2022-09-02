@implementation TJCVideoManager

-(void)setVideoAdDelegate:(void *)arg2 {
    [self setAdDelegate:arg2];
    return;
}

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)notifyVideoAdBegan {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_adDelegate;
    r21 = objc_loadWeakRetained(r19);
    if (r21 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            r23 = [r0 respondsToSelector:r2];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r0 = objc_loadWeakRetained(r19);
                    [r0 videoAdBegan];
                    [r0 release];
            }
    }
    return;
}

-(void)notifyVideoAdCompleted {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_adDelegate;
    r21 = objc_loadWeakRetained(r19);
    if (r21 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            r23 = [r0 respondsToSelector:r2];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r0 = objc_loadWeakRetained(r19);
                    [r0 videoAdCompleted];
                    [r0 release];
            }
    }
    return;
}

-(void)notifyVideoAdClosed {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = (int64_t *)&self->_adDelegate;
    r21 = objc_loadWeakRetained(r19);
    if (r21 != 0x0) {
            r0 = objc_loadWeakRetained(r19);
            r23 = [r0 respondsToSelector:r2];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r0 = objc_loadWeakRetained(r19);
                    [r0 videoAdClosed];
                    [r0 release];
            }
    }
    return;
}

-(void)notifyVideoAdError:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = (int64_t *)&self->_adDelegate;
    r22 = objc_loadWeakRetained(r20);
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            r24 = [r0 respondsToSelector:@selector(videoAdError:)];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r0 = objc_loadWeakRetained(r20);
                    [r0 videoAdError:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void *)adDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_adDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAdDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_adDelegate, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adDelegate);
    return;
}

@end