@implementation ADCContainer

-(void *)initWithDelegate:(void *)arg2 supportedOrientations:(unsigned long long)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setModalPresentationStyle:0x0];
            [r21 setHidesBottomBarWhenPushed:0x1];
            r0 = [r21 view];
            r0 = [r0 retain];
            [r0 setMultipleTouchEnabled:0x1];
            [r0 release];
            r23 = [[r21 view] retain];
            r24 = [[UIColor blackColor] retain];
            [r23 setBackgroundColor:r24];
            [r24 release];
            [r23 release];
            r0 = [r21 view];
            r0 = [r0 retain];
            [r0 setUserInteractionEnabled:0x1];
            [r0 release];
            r0 = [r21 view];
            r0 = [r0 retain];
            [r0 setAutoresizesSubviews:0x1];
            [r0 release];
            objc_storeWeak((int64_t *)&r21->_delegate, r19);
            r0 = [NSMutableDictionary new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_boundObjects));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r21->_supportedInterfaceOrientations = r20;
            *(int8_t *)(int64_t *)&r21->_reportedStart = 0x0;
            *(int8_t *)(int64_t *)&r21->_presenting = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)prefersHomeIndicatorAutoHidden {
    return 0x1;
}

-(void)viewDidAppear:(bool)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    [[&var_40 super] viewDidAppear:arg2];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_reportedStart));
    if (*(int8_t *)(r19 + r23) == 0x0) {
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            r21 = r0;
            [r0 bounds];
            r0 = NSStringFromCGRect();
            r29 = r29;
            r22 = [r0 retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainer viewDidAppear:]" line:0x38 withFormat:@"View did appear with coords: %@"];
            [r22 release];
            [r21 release];
            if (*(int8_t *)(int64_t *)&r19->_isFullscreen != 0x0) {
                    r0 = [AdColony sharedInstance];
                    r0 = [r0 retain];
                    [r0 performBlockOnWorkerThread:&var_68 mode:0x1];
                    [r0 release];
            }
            *(int8_t *)(r19 + r23) = 0x1;
    }
    *(int8_t *)(int64_t *)&r19->_presenting = 0x1;
    return;
}

-(void)viewSafeAreaInsetsDidChange {
    [[&var_20 super] viewSafeAreaInsetsDidChange];
    [self onContainerResized];
    return;
}

-(void)viewWillDisappear:(bool)arg2 {
    [[&var_20 super] viewWillDisappear:arg2];
    *(int8_t *)(int64_t *)&self->_presenting = 0x0;
    return;
}

-(void)setSupportedInterfaceOrientations:(unsigned long long)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 == 0x0) goto loc_10022e59c;

loc_10022e57c:
    if (r2 == 0x1) goto loc_10022e5ac;

loc_10022e584:
    if (r2 != 0x2) goto loc_10022e5c0;

loc_10022e58c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_supportedInterfaceOrientations));
    r9 = 0x1e;
    goto loc_10022e5b8;

loc_10022e5b8:
    *(r0 + r8) = r9;
    return;

loc_10022e5c0:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCContainer setSupportedInterfaceOrientations:]" line:0x58 withFormat:@"Tried to set an unsupported orientation: %lu"];
    return;

loc_10022e5ac:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_supportedInterfaceOrientations));
    r9 = 0x18;
    goto loc_10022e5b8;

loc_10022e59c:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_supportedInterfaceOrientations));
    r9 = 0x6;
    goto loc_10022e5b8;
}

-(bool)shouldAutorotate {
    return 0x1;
}

-(bool)prefersStatusBarHidden {
    return 0x1;
}

-(unsigned long long)supportedInterfaceOrientations {
    r0 = self->_supportedInterfaceOrientations;
    return r0;
}

-(void)didRotateFromInterfaceOrientation:(long long)arg2 {
    [[&var_20 super] didRotateFromInterfaceOrientation:arg2];
    [self onContainerResized];
    return;
}

-(void)bindObject:(void *)arg2 withIdentifier:(unsigned long long)arg3 {
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
    r21 = arg3;
    r22 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = *(r22 + sign_extend_64(*(int32_t *)ivar_offset(_boundObjects)));
            r0 = [r0 retain];
            objc_sync_enter(r0);
            r22 = *(r22 + r23);
            r21 = [[NSNumber numberWithUnsignedInteger:r21] retain];
            [r22 setObject:r19 forKeyedSubscript:r21];
            [r21 release];
            objc_sync_exit(r20);
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)objectForIdentifier:(unsigned long long)arg2 {
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_boundObjects)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r20 = *(self + r22);
    r21 = [[NSNumber numberWithUnsignedInteger:arg2] retain];
    [[r20 objectForKey:r2] retain];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)unbindObjectWithIdentifier:(unsigned long long)arg2 {
    r31 = r31 - 0xb0;
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
    r19 = arg2;
    r20 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_boundObjects));
    r0 = *(r20 + r26);
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r21 = *(r20 + r26);
    r24 = [[NSNumber numberWithUnsignedInteger:r19] retain];
    r0 = [r21 objectForKeyedSubscript:r24];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    objc_sync_exit(r23);
    [r23 release];
    if (r21 != 0x0) {
            [UIView class];
            if ([r21 isKindOfClass:r2] != 0x0) {
                    [[r21 retain] retain];
                    dispatch_async(*__dispatch_main_q, &var_78);
                    [r0 release];
                    [r25 release];
            }
            r24 = @selector(isKindOfClass:);
            [ADCWebViewModule class];
            if (objc_msgSend(r21, r24) != 0x0) {
                    r0 = [r21 retain];
                    r23 = r0;
                    if (([r0 isDisplayModule] & 0x1) != 0x0) {
                            [r23 stopWebServer];
                    }
                    else {
                            r0 = [ADCNativeLayer sharedLayer];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 unregisterDynamicModule:r23];
                            [r0 release];
                    }
                    var_80 = r23;
                    [r23 retain];
                    dispatch_async(*__dispatch_main_q, &var_A0);
                    [var_80 release];
                    [r23 release];
            }
            r0 = *(r20 + r26);
            r0 = [r0 retain];
            objc_sync_enter(r0);
            r20 = *(r20 + r26);
            [[NSNumber numberWithUnsignedInteger:r19] retain];
            [r20 removeObjectForKey:r2];
            [r19 release];
            objc_sync_exit(r23);
            [r23 release];
    }
    [r21 release];
    return;
}

-(void)unbindObjects {
    r31 = r31 - 0x140;
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
    r0 = *(r19 + sign_extend_64(*(int32_t *)ivar_offset(_boundObjects)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    var_120 = r21;
    [[*(r19 + r21) allKeys] retain];
    objc_sync_exit(r20);
    [r20 release];
    var_108 = q0;
    r0 = [r21 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            r26 = *var_108;
            do {
                    r25 = 0x0;
                    do {
                            if (*var_108 != r26) {
                                    objc_enumerationMutation(r20);
                            }
                            [*(var_110 + r25 * 0x8) unsignedIntegerValue];
                            objc_msgSend(r19, r24);
                            r25 = r25 + 0x1;
                    } while (r25 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    r0 = *(r19 + var_120);
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = [NSMutableDictionary new];
    r8 = *(r19 + var_120);
    *(r19 + var_120) = r0;
    [r8 release];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)onContainerResized {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 containerResized:self];
    [r0 release];
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 postNotificationName:r2 object:r3];
    [r19 release];
    return;
}

-(void)view:(void *)arg2 touchesBegan:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    [arg2 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainer view:touchesBegan:]" line:0xcb withFormat:@"Touches began in view with id: %ld"];
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 container:self touchesBegan:r19 inView:r22];
    [r19 release];
    [r22 release];
    [r0 release];
    return;
}

-(void)view:(void *)arg2 touchesMoved:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    [arg2 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainer view:touchesMoved:]" line:0xd0 withFormat:@"Touches moved in view with id: %ld"];
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 container:self touchesMoved:r19 inView:r22];
    [r19 release];
    [r22 release];
    [r0 release];
    return;
}

-(void)view:(void *)arg2 touchesEnded:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    [arg2 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainer view:touchesEnded:]" line:0xd5 withFormat:@"Touches ended in view with id: %ld"];
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 container:self touchesEnded:r19 inView:r22];
    [r19 release];
    [r22 release];
    [r0 release];
    return;
}

-(void)view:(void *)arg2 touchesCancelled:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    [arg2 tag];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainer view:touchesCancelled:]" line:0xda withFormat:@"Touches were cancelled in view with id: %ld"];
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    [r0 container:self touchesCancelled:r19 inView:r22];
    [r19 release];
    [r22 release];
    [r0 release];
    return;
}

-(int)identifier {
    r0 = *(int32_t *)(int64_t *)&self->_identifier;
    return r0;
}

-(void)dealloc {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCContainer dealloc]" line:0xe2 withFormat:@"dealloc called on ADCContainer"];
    [[&var_20 super] dealloc];
    return;
}

-(void)setIdentifier:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_identifier = arg2;
    return;
}

-(void *)adSessionID {
    r0 = self->_adSessionID;
    return r0;
}

-(void)setAdSessionID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adSessionID, arg2);
    return;
}

-(bool)isFullscreen {
    r0 = *(int8_t *)(int64_t *)&self->_isFullscreen;
    return r0;
}

-(void)setIsFullscreen:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isFullscreen = arg2;
    return;
}

-(bool)presenting {
    r0 = *(int8_t *)(int64_t *)&self->_presenting;
    return r0;
}

-(void *)closeButton {
    r0 = self->_closeButton;
    return r0;
}

-(void)setPresenting:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_presenting = arg2;
    return;
}

-(void *)videoView {
    r0 = self->_videoView;
    return r0;
}

-(void)setCloseButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_closeButton, arg2);
    return;
}

-(void)setVideoView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoView, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoView, 0x0);
    objc_storeStrong((int64_t *)&self->_closeButton, 0x0);
    objc_storeStrong((int64_t *)&self->_adSessionID, 0x0);
    objc_storeStrong((int64_t *)&self->_boundObjects, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end