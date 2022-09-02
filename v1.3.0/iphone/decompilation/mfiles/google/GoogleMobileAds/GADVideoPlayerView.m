@implementation GADVideoPlayerView

-(void)setUpWithPlayer:(void *)arg2 queue:(void *)arg3 completionBlock:(void *)arg4 {
    r31 = r31 - 0xe0;
    var_60 = d9;
    stack[-104] = d8;
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
    r24 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r20 = [r21 retain];
    var_70 = r20;
    r21 = [r22 retain];
    var_68 = r21;
    r0 = objc_retainBlock(&var_90);
    r22 = r0;
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    r23 = *(r24 + r25);
    if (r23 != r19) {
            *(r24 + r25) = [r19 retain];
            [r23 release];
            [r24 resetPlayerLayerWithError:&var_98];
            [var_98 retain];
            r0 = [GADObserverCollection alloc];
            r0 = [r0 init];
            r25 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r24 + r25);
            *(r24 + r25) = r0;
            [r8 release];
            objc_initWeak(&stack[-176], r24);
            r0 = [NSOperationQueue mainQueue];
            [r0 retain];
            objc_copyWeak(&var_C8 + 0x20, &stack[-176]);
            [r25 addObserverForName:r27 object:0x0 queue:r26 usingBlock:&var_C8];
            [r26 release];
            (*(r22 + 0x10))(r22, 0x0);
            objc_destroyWeak(&var_C8 + 0x20);
            objc_destroyWeak(&stack[-176]);
            [r23 release];
    }
    else {
            (*(r22 + 0x10))(r22, 0x0);
    }
    [r22 release];
    [var_68 release];
    [var_70 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)resetPlayerLayerWithError:(void * *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r20 = self;
    r0 = r20->_player;
    r0 = [r0 createPlayerLayer];
    r22 = r0;
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            [r20->_playerLayer removeFromSuperlayer];
            objc_storeStrong((int64_t *)&r20->_playerLayer, r22);
            r22 = [[UIColor clearColor] retain];
            [r20 setBackgroundColor:r22];
            [r22 release];
            r0 = *r21;
            r2 = **_AVLayerVideoGravityResizeAspect;
            [r0 setVideoGravity:r2];
            r22 = *r21;
            [r20 bounds];
            [r22 setFrame:r2];
            r0 = [r20 layer];
            r0 = [r0 retain];
            [r0 addSublayer:*r21];
            [r0 release];
            r20 = 0x1;
    }
    else {
            sub_1007ce06c(0x0, @"%@");
            if (r21 != 0x0) {
                    r0 = sub_100809600(0xb, @"Couldn't render video. AVPlayer layer can't be created.");
                    r0 = [r0 retain];
                    r0 = [r0 autorelease];
                    r20 = 0x0;
                    *r21 = r0;
            }
            else {
                    r20 = 0x0;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [CATransaction begin];
    [CATransaction setAnimationDuration:r2];
    [[&var_50 super] setFrame:r2];
    r21 = self->_playerLayer;
    [self bounds];
    [r21 setFrame:r2];
    [CATransaction commit];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_playerLayer, 0x0);
    objc_storeStrong((int64_t *)&self->_player, 0x0);
    return;
}

@end