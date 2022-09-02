@implementation GADDeviceOrientationSignals

+(void *)signalSource {
    r0 = [GADBlockSignalSource alloc];
    r0 = [r0 initWithQueue:*__dispatch_main_q signalBlock:0x100e92858];
    r0 = [r0 autorelease];
    return r0;
}

-(struct CGRect)standardizedOrientedScreenBounds {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_orientationLandscape));
    r8 = *(int8_t *)(r0 + r8);
    if (r8 == 0x0) {
            asm { fcsel      d2, d3, d4, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d3, d4, d3, eq };
    }
    return r0;
}

-(void *)init {
    r31 = r31 - 0x70;
    var_50 = d11;
    stack[-88] = d10;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_60 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = sub_10089a8cc();
            r0 = [r0 retain];
            r20 = r0;
            CGRectStandardize([r0 frame]);
            r0 = [UIApplication sharedApplication];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 statusBarOrientation];
            [r0 release];
            r8 = r23 - 0x3;
            if (r8 < 0x2) {
                    if (CPU_FLAGS & B) {
                            r8 = 0x1;
                    }
            }
            *(int8_t *)(int64_t *)&r19->_orientationLandscape = r8;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_standardizedOrientedKeyWindowSize));
            *(int128_t *)(r19 + r8) = d8;
            *(int128_t *)(0x8 + r19 + r8) = d9;
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            r21 = r0;
            [r0 supportedInterfaceOrientationsForWindow:r20];
            r0 = sub_10088ccd4();
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_supportedInterfaceOrientationsForKeyWindow));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r21 release];
            sub_10089abd4();
            r0 = sub_10088ccd4();
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_supportedInterfaceOrientationsForMainWindow));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            sub_100803324();
            *(int128_t *)(int64_t *)&r19->_standardizedMainScreenPortraitBounds = d0;
            *(int128_t *)((int64_t *)&r19->_standardizedMainScreenPortraitBounds + 0x8) = d1;
            *(int128_t *)((int64_t *)&r19->_standardizedMainScreenPortraitBounds + 0x10) = d2;
            *(int128_t *)((int64_t *)&r19->_standardizedMainScreenPortraitBounds + 0x18) = d3;
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            [r0 applicationFrame];
            CGRectStandardize([r0 release]);
            *(int128_t *)(int64_t *)&r19->_standardizedOrientedApplicationFrame = d0;
            *(int128_t *)((int64_t *)&r19->_standardizedOrientedApplicationFrame + 0x8) = d1;
            *(int128_t *)((int64_t *)&r19->_standardizedOrientedApplicationFrame + 0x10) = d2;
            *(int128_t *)((int64_t *)&r19->_standardizedOrientedApplicationFrame + 0x18) = d3;
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(struct CGSize)standardizedPortraitKeyWindowSize {
    r0 = self;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_orientationLandscape));
    r8 = *(int8_t *)(r0 + r8);
    if (r8 == 0x0) {
            asm { fcsel      d0, d1, d2, eq };
    }
    if (CPU_FLAGS & E) {
            asm { fcsel      d1, d2, d1, eq };
    }
    return r0;
}

-(bool)orientationLandscape {
    r0 = *(int8_t *)(int64_t *)&self->_orientationLandscape;
    return r0;
}

-(void)addSignalEntriesToMutableDictionary:(void *)arg2 {
    r2 = arg2;
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if (*(int8_t *)(int64_t *)&r20->_orientationLandscape != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r22 = @"p";
            }
            else {
                    r22 = @"l";
            }
    }
    r0 = [r2 retain];
    sub_100822058(r0, *0x100e95c38, r22);
    [r20 standardizedPortraitKeyWindowSize];
    sub_100822058(r19, *0x100e95c68, [sub_1007da734() retain]);
    [r22 release];
    sub_100822058(r19, *0x100e95c70, [sub_1007da734() retain]);
    [r22 release];
    sub_100822058(r19, *0x100e95c48, r20->_supportedInterfaceOrientationsForMainWindow);
    sub_100822058(r19, *0x100e95c40, r20->_supportedInterfaceOrientationsForKeyWindow);
    sub_100822058(r19, *0x100e95c58, [sub_1007da734() retain]);
    [r21 release];
    sub_100822058(r19, *0x100e95c60, [sub_1007da734() retain]);
    [r19 release];
    [r21 release];
    return;
}

-(struct CGSize)standardizedOrientedKeyWindowSize {
    r0 = self;
    return r0;
}

-(struct CGRect)standardizedOrientedApplicationFrame {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_supportedInterfaceOrientationsForMainWindow, 0x0);
    objc_storeStrong((int64_t *)&self->_supportedInterfaceOrientationsForKeyWindow, 0x0);
    return;
}

@end