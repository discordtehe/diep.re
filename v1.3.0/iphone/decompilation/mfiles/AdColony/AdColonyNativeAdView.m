@implementation AdColonyNativeAdView

-(void *)init {
    r0 = [NSException exceptionWithName:@"AdColonyUsageException" reason:@"AdColonyNativeAdView instance must not be created directly; use the AdColony public API to request one instead." userInfo:0x0];
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    r0 = objc_exception_throw(r0);
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    [[&var_20 super] initWithCoder:[arg2 retain]];
    r0 = [NSException exceptionWithName:@"AdColonyUsageException" reason:@"AdColonyNativeAdView instance must not be created directly; use the AdColony public API to request one instead." userInfo:0x0];
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    r0 = objc_exception_throw(r0);
    return r0;
}

-(void *)initWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&var_10 super] initWithFrame:r2];
    r0 = [NSException exceptionWithName:@"AdColonyUsageException" reason:@"AdColonyNativeAdView instance must not be created directly; use the AdColony public API to request one instead." userInfo:0x0];
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    r0 = objc_exception_throw(r0);
    return r0;
}

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xc0;
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
    r20 = self;
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_sessionID));
    r0 = [r0 getSession:*(r20 + r22)];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if (r19 != 0x0) {
            if ([r19 shouldPollViewability] != 0x0) {
                    r21 = [ADCViewabilityMonitor alloc];
                    r20 = *(r20 + r22);
                    r22 = [r19 retain];
                    r20 = [r21 initWithSessionID:r20 advancedMeasurementEnabled:0x1 viewabilityUpdateHandler:&var_A0];
                    [r22 setViewabilityMonitor:r20];
                    [r20 release];
                    r0 = r22;
            }
            else {
                    r0 = [r19 nativeModule];
                    r29 = r29;
                    r20 = [r0 retain];
                    if (r20 != 0x0) {
                            r0 = [r19 nativeModule];
                            r0 = [r0 retain];
                            var_B0 = r0;
                            r0 = [NSNumber numberWithUnsignedInteger:[r0 originNumber]];
                            r29 = r29;
                            r22 = [r0 retain];
                            r28 = 0x0;
                            var_A4 = 0x1;
                    }
                    else {
                            r0 = [NSNumber numberWithInt:r2];
                            r29 = r29;
                            r22 = [r0 retain];
                            var_A4 = 0x0;
                            r28 = 0x1;
                    }
                    r0 = [r19 identifier];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r23 != 0x0) {
                            r0 = [r19 identifier];
                            r29 = r29;
                            r25 = [r0 retain];
                            [NSString class];
                            if ([r25 isKindOfClass:r2] != 0x0) {
                                    r0 = [r19 identifier];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    r21 = 0x1;
                                    r27 = 0x1;
                            }
                            else {
                                    r27 = 0x0;
                                    r26 = @"";
                                    r21 = 0x1;
                            }
                    }
                    else {
                            r21 = 0x0;
                            r27 = 0x0;
                            r26 = @"";
                    }
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r27 != 0x0) {
                            [r26 release];
                    }
                    if (r21 != 0x0) {
                            [r25 release];
                    }
                    [r23 release];
                    if (r28 != 0x0) {
                            [r22 release];
                    }
                    if (var_A4 != 0x0) {
                            [r22 release];
                            [var_B0 release];
                    }
                    [r20 release];
                    r21 = [[ADCNativeLayer sharedLayer] retain];
                    r0 = @class(ADCNativeLayer);
                    r0 = [r0 sharedLayer];
                    r0 = [r0 retain];
                    r22 = [[ADCMessage nativeMessageWithType:@"AdSession.on_native_ad_view_visible" identifier:[r0 nextNativeMessageID] contents:r24] retain];
                    [r21 sendMessage:r22];
                    [r22 release];
                    [r0 release];
                    [r21 release];
                    r0 = r24;
            }
            [r0 release];
            [r19 setActive:0x1];
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setStart:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_start));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setOpen:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_open));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setFinish:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_finish));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setClose:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_close));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setIapOpportunity:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_iapOpportunity));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setAudioStart:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_audioStart));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setAudioStop:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_audioStop));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setEngagement:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_engagement));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setLeftApplication:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_leftApplication));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)setClick:(void *)arg2 {
    r0 = objc_retainBlock(arg2);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_click));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    return;
}

-(void)pause {
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [r0 performBlockOnWorkerThread:&var_38 mode:0x1];
    [r0 release];
    return;
}

-(void)resume {
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [r0 performBlockOnWorkerThread:&var_38 mode:0x1];
    [r0 release];
    return;
}

-(void)destroy {
    r0 = self;
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(int8_t *)(int64_t *)&r0->_opened != 0x0) {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x0 withFormat:@"Cannot destroy native ad view while it is in fullscreen mode. Please wait until the fullscreen ad has closed before calling 'destroy'."];
    }
    else {
            dispatch_after(0x1, *__dispatch_main_q, &var_28);
    }
    return;
}

-(void)onResignActive {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_finished == 0x0) {
            [r0 pause];
    }
    return;
}

-(void)setVolume:(float)arg2 {
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [r0 performBlockOnWorkerThread:&var_50 mode:0x1];
    [r0 release];
    return;
}

-(void)onBecameActive {
    r0 = self;
    if (*(int8_t *)(int64_t *)&r0->_finished == 0x0) {
            [r0 resume];
    }
    return;
}

-(void)setMuted:(bool)arg2 {
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [r0 performBlockOnWorkerThread:&var_50 mode:0x1];
    [r0 release];
    return;
}

-(void *)zoneID {
    r0 = self->_zoneID;
    return r0;
}

-(void)dealloc {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[AdColonyNativeAdView dealloc]" line:0xfe withFormat:0x0];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationDidBecomeActiveNotification object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:**_UIApplicationWillResignActiveNotification object:0x0];
    [r0 release];
    [[&var_40 super] dealloc];
    return;
}

-(bool)started {
    r0 = *(int8_t *)(int64_t *)&self->_started;
    return r0;
}

-(void *)advertiserIcon {
    r0 = self->_advertiserIcon;
    return r0;
}

-(bool)finished {
    r0 = *(int8_t *)(int64_t *)&self->_finished;
    return r0;
}

-(bool)opened {
    r0 = *(int8_t *)(int64_t *)&self->_opened;
    return r0;
}

-(void *)advertiserName {
    r0 = self->_advertiserName;
    return r0;
}

-(void *)adTitle {
    r0 = self->_adTitle;
    return r0;
}

-(void *)engagementButton {
    r0 = self->_engagementButton;
    return r0;
}

-(void *)adDescription {
    r0 = self->_adDescription;
    return r0;
}

-(void)setEngagementButton:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_engagementButton, arg2);
    return;
}

-(bool)iapEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_iapEnabled;
    return r0;
}

-(float)volume {
    r0 = self;
    return r0;
}

-(bool)muted {
    r0 = *(int8_t *)(int64_t *)&self->_muted;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_sessionID, 0x0);
    objc_storeStrong((int64_t *)&self->_engagement, 0x0);
    objc_storeStrong((int64_t *)&self->_audioStop, 0x0);
    objc_storeStrong((int64_t *)&self->_audioStart, 0x0);
    objc_storeStrong((int64_t *)&self->_click, 0x0);
    objc_storeStrong((int64_t *)&self->_leftApplication, 0x0);
    objc_storeStrong((int64_t *)&self->_iapOpportunity, 0x0);
    objc_storeStrong((int64_t *)&self->_close, 0x0);
    objc_storeStrong((int64_t *)&self->_open, 0x0);
    objc_storeStrong((int64_t *)&self->_finish, 0x0);
    objc_storeStrong((int64_t *)&self->_start, 0x0);
    objc_storeStrong((int64_t *)&self->_engagementButton, 0x0);
    objc_storeStrong((int64_t *)&self->_adDescription, 0x0);
    objc_storeStrong((int64_t *)&self->_adTitle, 0x0);
    objc_storeStrong((int64_t *)&self->_advertiserIcon, 0x0);
    objc_storeStrong((int64_t *)&self->_advertiserName, 0x0);
    objc_storeStrong((int64_t *)&self->_zoneID, 0x0);
    return;
}

-(void)onEngagementTapped {
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    [r0 performBlockOnWorkerThread:&var_38 mode:0x1];
    [r0 release];
    return;
}

-(void *)initSafeWithFrame:(struct CGRect)arg2 sessionID:(void *)arg3 andEngagement:(union ?)arg4 {
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
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
    r21 = r3;
    r22 = r2;
    r19 = [r22 retain];
    r0 = [[&var_60 super] initWithFrame:r2];
    r20 = r0;
    if (r20 != 0x0) {
            *(int8_t *)(int64_t *)&r20->_active = 0x1;
            *(int8_t *)(int64_t *)&r20->_playing = 0x0;
            objc_storeStrong((int64_t *)&r20->_sessionID, r22);
            if (*(int8_t *)r21 != 0x0) {
                    r0 = [UIButton buttonWithType:0x0];
                    r0 = [r0 retain];
                    r22 = r0;
                    [r0 setFrame:0x0];
                    [r22 setTitle:*(r21 + 0x38) forState:0x0];
                    [r22 addTarget:r20 action:@selector(onEngagementTapped) forControlEvents:0x40];
                    r0 = [UIColor grayColor];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r22 setBackgroundColor:r21];
                    [r21 release];
                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_engagementButton));
                    r0 = *(r20 + r8);
                    *(r20 + r8) = r22;
                    [r0 release];
            }
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r20 selector:@selector(onResignActive) name:**_UIApplicationWillResignActiveNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r20 selector:@selector(onBecameActive) name:**_UIApplicationDidBecomeActiveNotification object:0x0];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)onEngagement {
    r0 = self;
    if (r0->_engagement != 0x0) {
            dispatch_async(*__dispatch_main_q, &var_38);
    }
    return;
}

-(void)setIAPEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_iapEnabled = arg2;
    return;
}

-(void)setFinished:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_finished = arg2;
    return;
}

-(void)setStarted:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_started = arg2;
    return;
}

-(void)onUnhidden {
    r31 = r31 - 0xa0;
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
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 getSession:r19->_sessionID];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            r0 = [r20 nativeModule];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r20 nativeModule];
                    r0 = [r0 retain];
                    var_88 = r0;
                    r0 = [NSNumber numberWithUnsignedInteger:[r0 originNumber]];
                    r29 = r29;
                    r23 = [r0 retain];
                    var_80 = 0x0;
                    var_7C = 0x1;
            }
            else {
                    r0 = @(0xffffffffffffffff);
                    r29 = r29;
                    r23 = [r0 retain];
                    var_80 = 0x1;
                    var_7C = 0x0;
            }
            r0 = [r20 identifier];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    r0 = [r20 identifier];
                    r29 = r29;
                    r26 = [r0 retain];
                    [NSString class];
                    if ([r26 isKindOfClass:r2] != 0x0) {
                            r0 = [r20 identifier];
                            r29 = r29;
                            r27 = [r0 retain];
                            r28 = 0x1;
                            r22 = 0x1;
                    }
                    else {
                            r22 = 0x0;
                            r27 = @"";
                            r28 = 0x1;
                    }
            }
            else {
                    r28 = 0x0;
                    r22 = 0x0;
                    r27 = @"";
            }
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r25 = [r0 retain];
            if (r22 != 0x0) {
                    [r27 release];
            }
            if (r28 != 0x0) {
                    [r26 release];
            }
            [r24 release];
            if (var_80 != 0x0) {
                    [r23 release];
            }
            if (var_7C != 0x0) {
                    [r23 release];
                    [var_88 release];
            }
            [r21 release];
            r22 = [[ADCNativeLayer sharedLayer] retain];
            r0 = @class(ADCNativeLayer);
            r0 = [r0 sharedLayer];
            r0 = [r0 retain];
            r23 = [[ADCMessage nativeMessageWithType:@"AdSession.on_native_ad_view_visible" identifier:[r0 nextNativeMessageID] contents:r25] retain];
            [r22 sendMessage:r23];
            [r23 release];
            [r0 release];
            [r22 release];
            *(int8_t *)(int64_t *)&r19->_playing = 0x1;
            [r25 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setOpened:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_opened = arg2;
    return;
}

-(void)onHidden {
    r31 = r31 - 0xa0;
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
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 getSession:r19->_sessionID];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            r0 = [r20 nativeModule];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r20 nativeModule];
                    r0 = [r0 retain];
                    var_88 = r0;
                    r0 = [NSNumber numberWithUnsignedInteger:[r0 originNumber]];
                    r29 = r29;
                    r23 = [r0 retain];
                    var_80 = 0x0;
                    var_7C = 0x1;
            }
            else {
                    r0 = @(0xffffffffffffffff);
                    r29 = r29;
                    r23 = [r0 retain];
                    var_80 = 0x1;
                    var_7C = 0x0;
            }
            r0 = [r20 identifier];
            r29 = r29;
            r24 = [r0 retain];
            if (r24 != 0x0) {
                    r0 = [r20 identifier];
                    r29 = r29;
                    r26 = [r0 retain];
                    [NSString class];
                    if ([r26 isKindOfClass:r2] != 0x0) {
                            r0 = [r20 identifier];
                            r29 = r29;
                            r27 = [r0 retain];
                            r28 = 0x1;
                            r22 = 0x1;
                    }
                    else {
                            r22 = 0x0;
                            r27 = @"";
                            r28 = 0x1;
                    }
            }
            else {
                    r28 = 0x0;
                    r22 = 0x0;
                    r27 = @"";
            }
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r25 = [r0 retain];
            if (r22 != 0x0) {
                    [r27 release];
            }
            if (r28 != 0x0) {
                    [r26 release];
            }
            [r24 release];
            if (var_80 != 0x0) {
                    [r23 release];
            }
            if (var_7C != 0x0) {
                    [r23 release];
                    [var_88 release];
            }
            [r21 release];
            r22 = [[ADCNativeLayer sharedLayer] retain];
            r0 = @class(ADCNativeLayer);
            r0 = [r0 sharedLayer];
            r0 = [r0 retain];
            r23 = [[ADCMessage nativeMessageWithType:@"AdSession.on_native_ad_view_hidden" identifier:[r0 nextNativeMessageID] contents:r25] retain];
            [r22 sendMessage:r23];
            [r23 release];
            [r0 release];
            [r22 release];
            *(int8_t *)(int64_t *)&r19->_playing = 0x0;
            [r25 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setZoneID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_zoneID, arg2);
    return;
}

-(void)setMutedFromNative:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_muted = arg2;
    return;
}

-(void)setAdTitle:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adTitle, arg2);
    return;
}

-(void)setAdvertiserIcon:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_advertiserIcon, arg2);
    return;
}

-(void)setAdvertiserName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_advertiserName, arg2);
    return;
}

-(void)setAdDescription:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adDescription, arg2);
    return;
}

-(void *)finish {
    r0 = self->_finish;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setPlaying:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_playing = arg2;
    return;
}

-(void *)start {
    r0 = self->_start;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)open {
    r0 = self->_open;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)iapOpportunity {
    r0 = self->_iapOpportunity;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)close {
    r0 = self->_close;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)audioStart {
    r0 = self->_audioStart;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)engagement {
    r0 = self->_engagement;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)audioStop {
    r0 = self->_audioStop;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)click {
    r0 = self->_click;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)leftApplication {
    r0 = self->_leftApplication;
    r0 = objc_retainBlock(r0);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)playing {
    r0 = *(int8_t *)(int64_t *)&self->_playing;
    return r0;
}

@end