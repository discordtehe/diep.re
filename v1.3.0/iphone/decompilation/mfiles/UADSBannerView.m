@implementation UADSBannerView

-(void)dealloc {
    [self removeObserver:self forKeyPath:@"frame" context:0x0];
    [self removeObserver:self forKeyPath:@"hidden" context:0x0];
    [self removeObserver:self forKeyPath:@"alpha" context:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [[&var_40 super] initWithFrame:r2];
    r19 = r0;
    [r0 setTranslatesAutoresizingMaskIntoConstraints:0x0];
    [r19 setAutoresizingMask:0x12];
    r20 = [[UADSWebPlayerView alloc] initWithFrame:@"bannerplayer" viewId:*0x1011d1bc0 webPlayerSettings:r4];
    [r19 setWebPlayer:r20];
    [r20 release];
    r0 = [r19 webPlayer];
    r0 = [r0 retain];
    [r0 setEventSettings:*0x1011d1bc8];
    [r0 release];
    [r19 addObserver:r19 forKeyPath:@"frame" options:0x1 context:0x0];
    [r19 addObserver:r19 forKeyPath:@"hidden" options:0x1 context:0x0];
    [r19 addObserver:r19 forKeyPath:@"alpha" options:0x1 context:0x0];
    r0 = r19;
    return r0;
}

-(void)addView:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[self getViewByName:arg2] retain];
    if (r20 != 0x0) {
            asm { ccmp       x20, x19, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r19 getRect];
            [r20 setFrame:r2];
            [r19 addSubview:r2];
    }
    [r20 release];
    return;
}

-(void)setViews:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r19 = self;
    r22 = [arg2 retain];
    r0 = @class(NSMutableArray);
    r0 = [r0 arrayWithArray:r22];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [[NSMutableArray alloc] init];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_views));
    r23 = *(r19 + r24);
    if (r23 != 0x0) {
            r23 = [[r19 views] retain];
            [r21 addObjectsFromArray:r23];
            [r23 release];
            [r21 removeObjectsInArray:r22];
            [r20 removeObjectsInArray:r22];
            r23 = *(r19 + r24);
    }
    r22 = [r22 retain];
    *(r19 + r24) = r22;
    [r23 release];
    var_108 = q0;
    r0 = [r22 retain];
    r22 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) {
            r26 = *var_108;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_108 != r26) {
                                    objc_enumerationMutation(r22);
                            }
                            [r19 addView:r2];
                            r28 = r28 + 0x1;
                    } while (r28 < r24);
                    r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r21 release];
    [r20 release];
    [r22 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)willMoveToWindow:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    [[&var_30 super] willMoveToWindow:r2];
    r0 = [USRVWebViewApp getCurrentApp];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            if (r20 == 0x0) {
                    asm { cinc       x0, x8, eq };
            }
            r20 = [sub_1000eaba4() retain];
            r21 = [sub_1000d1038() retain];
            [r19 sendEvent:r20 category:r21 param1:0x0];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)layoutSubviews {
    r31 = r31 - 0x40;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_30 super] layoutSubviews];
    r0 = [r19 superview];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 getPointForPosition];
            [r19 frame];
            [r19 setFrame:r2];
    }
    return;
}

-(struct CGPoint)getPointForPosition {
    var_50 = d15;
    stack[-88] = d14;
    r31 = r31 + 0xffffffffffffffa0;
    var_40 = d13;
    stack[-72] = d12;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self superview] retain];
    [self getSafeInsetsForContainer:r19];
    v9 = v0;
    v8 = v1;
    [r19 frame];
    [self adSize];
    r0 = [self position];
    if (r0 > 0x6) goto loc_1000ea0c8;

loc_1000ea040:
    goto *0x1000ea0f4[sign_extend_64(*(int32_t *)(0x1000ea0f4 + r0 * 0x4)) + 0x1000ea0f4];

loc_1000ea0c8:
    r0 = [r19 release];
    return r0;
}

-(void)close {
    r0 = [self subviews];
    r0 = [r0 retain];
    [r0 makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [r0 release];
    [self removeFromSuperview];
    return;
}

-(struct CGRect)getRect {
    CGRectGetMinX([self bounds]);
    CGRectGetMinY([self bounds]);
    CGRectGetWidth([self bounds]);
    r0 = [self bounds];
    r0 = CGRectGetHeight(r0);
    return r0;
}

-(struct UIEdgeInsets)getSafeInsetsForContainer:(void *)arg2 {
    r31 = r31 - 0x70;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 respondsToSelector:r2] == 0x0) goto loc_1000ea198;

loc_1000ea158:
    r20 = @selector(safeAreaInsets);
    r21 = [[r19 methodSignatureForSelector:r20] retain];
    r0 = [NSInvocation invocationWithMethodSignature:r21];
    goto loc_1000ea1f0;

loc_1000ea1f0:
    r0 = [r0 retain];
    [r0 setTarget:r19];
    [r0 setSelector:r20];
    [r0 invoke];
    [r0 getReturnValue:&var_60];
    [r0 release];
    [r21 release];
    goto loc_1000ea26c;

loc_1000ea26c:
    r0 = [r19 release];
    return r0;

loc_1000ea198:
    if ([r19 respondsToSelector:r2] == 0x0) goto loc_1000ea26c;

loc_1000ea1b4:
    r20 = @selector(layoutMargins);
    r21 = [[r19 methodSignatureForSelector:r20] retain];
    r0 = [NSInvocation invocationWithMethodSignature:r21];
    goto loc_1000ea1f0;
}

-(void)setViewFrame:(void *)arg2 x:(float)arg3 y:(float)arg4 width:(float)arg5 height:(float)arg6 {
    r3 = arg3;
    r2 = arg2;
    r31 = r31 - 0x60;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [[self getViewByName:r2] retain];
    if (r19 != 0x0) {
            if (r19 != r20) {
                    asm { fcvt       d0, s11 };
                    asm { fcvt       d1, s10 };
                    asm { fcvt       d2, s9 };
                    asm { fcvt       d3, s8 };
                    [r19 setFrame:r2];
            }
            else {
                    if ([USRVDeviceLog getLogLevel] >= 0x2) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Not setting viewFrame for banner, use `layoutWithStyle` instead.", @selector(getLogLevel), r2, r3);
                    }
            }
    }
    [r19 release];
    return;
}

-(void)observeValueForKeyPath:(void *)arg2 ofObject:(void *)arg3 change:(void *)arg4 context:(void *)arg5 {
    r31 = r31 - 0xb0;
    var_70 = d11;
    stack[-120] = d10;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (self != r20) goto loc_1000ea598;

loc_1000ea3e0:
    if (([r19 isEqualToString:r2] & 0x1) != 0x0 || [r19 isEqualToString:r2] != 0x0) goto loc_1000ea418;

loc_1000ea5cc:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1000ea598;

loc_1000ea5e4:
    r24 = [r20 isHidden];
    r21 = [[USRVWebViewApp getCurrentApp] retain];
    r22 = [sub_1000eaba4() retain];
    r0 = sub_1000d1038();
    r29 = r29;
    r23 = [r0 retain];
    if (r24 != 0x0) {
            r0 = [NSNumber numberWithInteger:r2];
    }
    else {
            r0 = [NSNumber numberWithInteger:r2];
    }
    r24 = [r0 retain];
    [r21 sendEvent:r22 category:r23 param1:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    r0 = r21;
    goto loc_1000ea594;

loc_1000ea594:
    [r0 release];
    goto loc_1000ea598;

loc_1000ea598:
    [r20 release];
    [r19 release];
    return;

loc_1000ea418:
    [r20 frame];
    var_78 = [[USRVWebViewApp getCurrentApp] retain];
    r22 = [sub_1000eaba4() retain];
    r0 = sub_1000d1038();
    r29 = r29;
    r23 = [r0 retain];
    r21 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
    r0 = *(r21 + 0xfc0);
    asm { fcvt       s0, d10 };
    r26 = @selector(numberWithFloat:);
    r0 = objc_msgSend(r0, r26);
    r29 = r29;
    r24 = [r0 retain];
    r0 = *(r21 + 0xfc0);
    asm { fcvt       s0, d11 };
    r0 = objc_msgSend(r0, r26);
    r29 = r29;
    r25 = [r0 retain];
    r0 = *(r21 + 0xfc0);
    asm { fcvt       s0, d9 };
    r0 = objc_msgSend(r0, r26);
    r29 = r29;
    r27 = [r0 retain];
    r0 = *(r21 + 0xfc0);
    asm { fcvt       s0, d8 };
    r0 = objc_msgSend(r0, r26);
    r28 = [r0 retain];
    r21 = *(r21 + 0xfc0);
    [r20 alpha];
    asm { fcvt       s0, d0 };
    r21 = [objc_msgSend(r21, r26) retain];
    [var_78 sendEvent:r22 category:r23 param1:r24];
    [r21 release];
    [r28 release];
    [r27 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    r0 = var_78;
    goto loc_1000ea594;
}

+(void *)getOrCreateInstance {
    if (*qword_1011d1bd0 != -0x1) {
            dispatch_once(0x1011d1bd0, 0x100e6a500);
    }
    r0 = *0x1011d1bd8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)getViewByName:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_1000ea7d4;

loc_1000ea7c8:
    r0 = [r20 retain];
    goto loc_1000ea804;

loc_1000ea804:
    r20 = r0;
    goto loc_1000ea808;

loc_1000ea808:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_1000ea7d4:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1000ea824;

loc_1000ea7ec:
    r0 = [r20 webPlayer];
    r0 = [r0 retain];
    goto loc_1000ea804;

loc_1000ea824:
    if ([r19 isEqualToString:r2] != 0x0) {
            r0 = [USRVWebViewApp getCurrentApp];
            r0 = [r0 retain];
            r20 = [[r0 webView] retain];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    goto loc_1000ea808;
}

+(void *)getInstance {
    r0 = *0x1011d1bd8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)destroyInstance {
    *0x1011d1bd0 = 0x0;
    r0 = *0x1011d1bd8;
    *0x1011d1bd8 = 0x0;
    [r0 release];
    return;
}

+(void)setWebPlayerSettings:(void *)arg2 {
    objc_storeStrong(0x1011d1bc0, arg2);
    return;
}

+(void)setWebPlayerEventSettings:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    objc_storeStrong(0x1011d1bc8, arg2);
    if (*0x1011d1bd8 != 0x0) {
            r0 = *0x1011d1bd8;
            r0 = [r0 webPlayer];
            r0 = [r0 retain];
            [r0 setEventSettings:*0x1011d1bc8];
            [r0 release];
    }
    [r19 release];
    return;
}

-(struct CGSize)adSize {
    r0 = self;
    return r0;
}

-(void)setAdSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adSize));
    *(int128_t *)(self + r8) = d0;
    *(int128_t *)(0x8 + self + r8) = d1;
    return;
}

-(void *)webPlayer {
    r0 = self->_webPlayer;
    return r0;
}

-(void)setPosition:(long long)arg2 {
    self->_position = arg2;
    return;
}

-(void)setWebPlayer:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webPlayer, arg2);
    return;
}

-(long long)position {
    r0 = self->_position;
    return r0;
}

-(void *)views {
    r0 = self->_views;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_views, 0x0);
    objc_storeStrong((int64_t *)&self->_webPlayer, 0x0);
    return;
}

@end