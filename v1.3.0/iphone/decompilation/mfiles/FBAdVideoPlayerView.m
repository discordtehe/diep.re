@implementation FBAdVideoPlayerView

-(void *)init {
    r0 = [self initWithFrame:0x0 videoReadyToDisplay:r3];
    return r0;
}

-(void *)initWithVideoReadyToDisplay:(void *)arg2 {
    r0 = [self initWithFrame:arg2 videoReadyToDisplay:r3];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [self initWithFrame:0x0 videoReadyToDisplay:r3];
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 videoReadyToDisplay:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x50;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    r0 = [[&var_40 super] initWithFrame:r2];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = objc_retainBlock(r19);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoReadyToDisplay));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [FBAdKVOController controllerWithObserver:r20];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_readyForDisplayKVOController));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r20 initVideoLayer];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)updateView:(bool)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [CATransaction begin];
            [CATransaction setDisableActions:0x1];
            [r0 bounds];
            r0 = [r0 playerLayer];
            r0 = [r0 retain];
            [r0 setFrame:0x1];
            [r0 release];
            [CATransaction commit];
    }
    return;
}

-(void)dealloc {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self playerLayer];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r0 = [r0 retain];
    r20 = r0;
    var_28 = r0;
    r0 = objc_retainBlock(&var_48);
    r21 = r0;
    if ([NSThread isMainThread] != 0x0) {
            (*(r21 + 0x10))(r21);
    }
    else {
            dispatch_async(*__dispatch_main_q, r21);
    }
    r0 = [r19 readyForDisplayKVOController];
    r0 = [r0 retain];
    [r0 unobserve:r20 keyPath:@"readyForDisplay"];
    [r0 release];
    [r19 setPlayerLayer:0x0];
    [r21 release];
    [var_28 release];
    [r20 release];
    [[&var_58 super] dealloc];
    return;
}

-(void)initVideoLayer {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (([self initialized] & 0x1) == 0x0) {
            if (sub_100a55320() != 0x0) {
                    r0 = [FBAdConfigManager sharedManager];
                    r29 = r29;
                    r20 = [r0 retain];
                    r21 = [FNFH264DecompressionSessionFactory class];
                    if (([r20 useIOSurfacePlayerLayer] & 0x1) != 0x0) {
                            r0 = @class(FNFIOSurfacePlayerLayer);
                    }
                    else {
                            r0 = @class(FNFPlayerLayer);
                    }
                    r0 = [r0 alloc];
                    r1 = @selector(initWithConfig:);
                    asm { ldurh      w8, [fp, var_22] };
                    asm { ldurh      w8, [fp, var_28] };
                    r21 = objc_msgSend(r0, r1);
                    [r20 release];
            }
            else {
                    if (*qword_1011dd478 != -0x1) {
                            dispatch_once_f(0x1011dd478, 0x1011c66a0, 0x100a3d91c);
                    }
                    r21 = [[*0x1011dd480 alloc] init];
            }
            r20 = [[r21 autorelease] retain];
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 addSublayer:r20];
            [r0 release];
            r0 = [r19 layer];
            r0 = [r0 retain];
            [r0 bounds];
            [r20 setFrame:r20];
            [r0 release];
            objc_storeWeak((int64_t *)&r19->_playerLayer, r20);
            [r19 setInitialized:0x1];
            r0 = [r19 readyForDisplayKVOController];
            r0 = [r0 retain];
            [r0 unobserve:r20 keyPath:@"readyForDisplay"];
            [r0 release];
            objc_initWeak(&var_58, r19);
            [[r19 readyForDisplayKVOController] retain];
            objc_copyWeak(&var_80 + 0x20, &var_58);
            [r21 observe:r20 keyPath:@"readyForDisplay" options:0x5 block:&var_80];
            [r21 release];
            objc_destroyWeak(&var_80 + 0x20);
            objc_destroyWeak(&var_58);
            [r20 release];
    }
    return;
}

-(void)layoutSubviews {
    [self updateView:0x1];
    [[&var_20 super] layoutSubviews];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoReadyToDisplay, 0x0);
    objc_storeStrong((int64_t *)&self->_readyForDisplayKVOController, 0x0);
    objc_destroyWeak((int64_t *)&self->_playerLayer);
    objc_storeStrong((int64_t *)&self->_player, 0x0);
    return;
}

-(void)setPlayer:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [r19 playerLayer];
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0) {
            [r19 initVideoLayer];
    }
    if ((sub_100a55320() & 0x1) == 0x0) {
            [r21 setPlayer:r20];
    }
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_player));
    r0 = *(r19 + r8);
    *(r19 + r8) = r20;
    [r0 release];
    [r21 release];
    return;
}

-(void *)player {
    r0 = self->_player;
    return r0;
}

-(void *)playerLayer {
    r0 = objc_loadWeakRetained((int64_t *)&self->_playerLayer);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)initialized {
    r0 = *(int8_t *)(int64_t *)&self->_initialized;
    return r0;
}

-(void)setPlayerLayer:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_playerLayer, arg2);
    return;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialized = arg2;
    return;
}

-(void *)readyForDisplayKVOController {
    r0 = self->_readyForDisplayKVOController;
    return r0;
}

-(void *)videoReadyToDisplay {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoReadyToDisplay)), 0x0);
    return r0;
}

-(void)setReadyForDisplayKVOController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_readyForDisplayKVOController, arg2);
    return;
}

-(void)setVideoReadyToDisplay:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdVideoPlayerView");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

@end