@implementation GADMediaView

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithFrame:r2];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = [GADObserverCollection alloc];
            r0 = [r0 init];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(struct CGSize)intrinsicContentSize {
    r0 = self->_internalMediaContent;
    if (r0 != 0x0) {
            r0 = [r0 intrinsicContentSize];
    }
    return r0;
}

-(void *)mediaContent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_mediaContent));
    r0 = *(r19 + r20);
    if (r0 == 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_internalMediaContent));
            if (*(r19 + r21) != 0x0) {
                    r0 = [GADMediaContent alloc];
                    r0 = [r0 init];
                    r8 = *(r19 + r20);
                    *(r19 + r20) = r0;
                    [r8 release];
                    [*(r19 + r20) setInternalMediaContent:*(r19 + r21)];
                    r0 = *(r19 + r20);
            }
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void)setMediaContent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_mediaContent, arg2);
    r19 = [arg2 retain];
    r21 = [[self->_mediaContent internalMediaContent] retain];
    [self setInternalMediaContent:r21];
    [r19 release];
    [r21 release];
    return;
}

-(void)setInternalMediaContent:(void *)arg2 {
    r31 = r31 - 0x90;
    var_50 = r28;
    stack[-88] = r27;
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
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [GADObserverCollection alloc];
    r0 = [r0 init];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
    r8 = *(r20 + r23);
    *(r20 + r23) = r0;
    [r8 release];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_mediaView));
    [*(r20 + r27) removeFromSuperview];
    r22 = (int64_t *)&r20->_internalMediaContent;
    objc_storeStrong(r22, arg2);
    if (*r22 != 0x0) {
            objc_initWeak(&stack[-104], r20);
            r0 = [NSOperationQueue mainQueue];
            r21 = &var_80 + 0x20;
            [r0 retain];
            objc_copyWeak(r21, &stack[-104]);
            [r24 addObserverForName:*0x100e9c520 object:r23 queue:r25 usingBlock:&var_80];
            [r25 release];
            r0 = *r22;
            r0 = [r0 mediaView];
            r0 = [r0 retain];
            r8 = *(r20 + r27);
            *(r20 + r27) = r0;
            [r8 release];
            r22 = *(r20 + r27);
            if (r22 != 0x0) {
                    [r20 bounds];
                    [r22 setFrame:r2];
                    [*(r20 + r27) setAutoresizingMask:0x12];
                    [r20 addSubview:*(r20 + r27)];
                    [r20 invalidateIntrinsicContentSize];
                    [r20 setNeedsLayout];
            }
            objc_destroyWeak(r21);
            objc_destroyWeak(&stack[-104]);
    }
    [r19 release];
    return;
}

-(void)setContentMode:(long long)arg2 {
    [[&var_30 super] setContentMode:r2];
    [self->_mediaView setContentMode:arg2];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaView, 0x0);
    objc_storeStrong((int64_t *)&self->_mediaContent, 0x0);
    objc_storeStrong((int64_t *)&self->_internalMediaContent, 0x0);
    return;
}

@end