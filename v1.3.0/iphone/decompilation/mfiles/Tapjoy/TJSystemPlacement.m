@implementation TJSystemPlacement

+(void)showAppLaunchContent {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if ([*0x1011dc128 containsObject:r2] == 0x0) goto loc_1009284fc;

loc_1009284d4:
    [TJCLog logWithLevel:0x4 format:@"[TJSystemPlacement] %@ is excluded by server configuration"];
    goto loc_1009285fc;

loc_1009285fc:
    objc_sync_exit(r19);
    [r19 release];
    return;

loc_1009284fc:
    if (*0x1011dc120 == 0x0) goto loc_10092857c;

loc_100928508:
    r21 = *0x1011dc120;
    r20 = [[NSNull null] retain];
    if (r21 == r20) goto loc_100928574;

loc_100928530:
    r21 = [*0x1011dc120 timedOut];
    [r20 release];
    if (r21 == 0x0) {
            [TJCLog logWithLevel:0x4 format:@"[TJSystemPlacement] is in progress, ignoring new request for AppLaunch"];
    }
    else {
            [*0x1011dc120 cancel];
            r0 = [TJSystemPlacement alloc];
            r0 = [r0 initWithPlacementName:@"AppLaunch" priority:0x1e pushId:0x0 systemFlag:0x1];
            r8 = *0x1011dc120;
            *0x1011dc120 = r0;
            [r8 release];
            [*0x1011dc120 setPlacementType:@"AppLaunch"];
            dispatch_async(*__dispatch_main_q, 0x100ea2268);
    }
    goto loc_1009285fc;

loc_100928574:
    [r20 release];
    goto loc_10092857c;

loc_10092857c:
    [*0x1011dc120 cancel];
    r0 = [TJSystemPlacement alloc];
    r0 = [r0 initWithPlacementName:@"AppLaunch" priority:0x1e pushId:0x0 systemFlag:0x1];
    r8 = *0x1011dc120;
    *0x1011dc120 = r0;
    [r8 release];
    [*0x1011dc120 setPlacementType:@"AppLaunch"];
    dispatch_async(*__dispatch_main_q, 0x100ea2268);
    goto loc_1009285fc;
}

+(void)showPushContent:(void *)arg2 withId:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0) goto loc_1009282f8;

loc_1009281fc:
    r0 = [NSNull null];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == r19) goto loc_1009282f0;

loc_100928228:
    [NSString class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100928278;

loc_10092825c:
    r0 = [r19 length];
    if (r20 == 0x0 || r0 == 0x0) goto loc_1009282f0;

loc_10092827c:
    r0 = [NSNull null];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == r20) goto loc_1009282e8;

loc_10092829c:
    r25 = @selector(isKindOfClass:);
    [NSString class];
    if (objc_msgSend(r20, r25) == 0x0) goto loc_100928324;

loc_1009282bc:
    r24 = [r20 length];
    [r26 release];
    [r23 release];
    if (r24 != 0x0) goto loc_100928334;

loc_1009282f8:
    [r20 release];
    [r19 release];
    return;

loc_100928334:
    r0 = [r21 retain];
    r21 = r0;
    objc_sync_enter(r0);
    if (*0x1011dc120 == 0x0) goto loc_100928390;

loc_100928350:
    r23 = *0x1011dc120;
    r22 = [[NSNull null] retain];
    if (r23 == r22 || [*0x1011dc120 priority] < 0x64) goto loc_100928388;

loc_10092841c:
    r23 = [*0x1011dc120 timedOut];
    [r22 release];
    if (r23 == 0x0) {
            [TJCLog logWithLevel:0x4 format:@"[TJSystemPlacement] is in progress, ignoring new request for %@, %@"];
    }
    else {
            [*0x1011dc120 cancel];
            r0 = [TJSystemPlacement alloc];
            r0 = [r0 initWithPlacementName:r19 priority:0x64 pushId:r20 systemFlag:0x0];
            r8 = *0x1011dc120;
            *0x1011dc120 = r0;
            [r8 release];
            [*0x1011dc120 setPlacementType:@"PushToEarn"];
            dispatch_async(*__dispatch_main_q, 0x100ea2228);
    }
    goto loc_10092840c;

loc_10092840c:
    objc_sync_exit(r21);
    r0 = r21;
    goto loc_1009282f4;

loc_1009282f4:
    [r0 release];
    goto loc_1009282f8;

loc_100928388:
    [r22 release];
    goto loc_100928390;

loc_100928390:
    [*0x1011dc120 cancel];
    r0 = [TJSystemPlacement alloc];
    r0 = [r0 initWithPlacementName:r19 priority:0x64 pushId:r20 systemFlag:0x0];
    r8 = *0x1011dc120;
    *0x1011dc120 = r0;
    [r8 release];
    [*0x1011dc120 setPlacementType:@"PushToEarn"];
    dispatch_async(*__dispatch_main_q, 0x100ea2228);
    goto loc_10092840c;

loc_100928324:
    [r26 release];
    [r23 release];
    goto loc_100928334;

loc_1009282e8:
    [r26 release];
    goto loc_1009282f0;

loc_1009282f0:
    r0 = r23;
    goto loc_1009282f4;

loc_100928278:
    if (r20 == 0x0) goto loc_1009282f0;
}

+(void)end:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    if (*0x1011dc120 == r19) {
            *0x1011dc120 = 0x0;
            [r19 release];
    }
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

+(void)showInsufficientCurrencyContent {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if ([*0x1011dc128 containsObject:r2] == 0x0) goto loc_1009286b4;

loc_10092868c:
    [TJCLog logWithLevel:0x4 format:@"[TJSystemPlacement] %@ is excluded by server configuration"];
    goto loc_1009287b4;

loc_1009287b4:
    objc_sync_exit(r19);
    [r19 release];
    return;

loc_1009286b4:
    if (*0x1011dc120 == 0x0) goto loc_100928734;

loc_1009286c0:
    r21 = *0x1011dc120;
    r20 = [[NSNull null] retain];
    if (r21 == r20) goto loc_10092872c;

loc_1009286e8:
    r21 = [*0x1011dc120 timedOut];
    [r20 release];
    if (r21 == 0x0) {
            [TJCLog logWithLevel:0x4 format:@"[TJSystemPlacement] is in progress, ignoring new request for InsufficientCurrency"];
    }
    else {
            [*0x1011dc120 cancel];
            r0 = [TJSystemPlacement alloc];
            r0 = [r0 initWithPlacementName:@"InsufficientCurrency" priority:0x14 pushId:0x0 systemFlag:0x1];
            r8 = *0x1011dc120;
            *0x1011dc120 = r0;
            [r8 release];
            [*0x1011dc120 setPlacementType:@"InsufficientCurrency"];
            dispatch_async(*__dispatch_main_q, 0x100ea22a8);
    }
    goto loc_1009287b4;

loc_10092872c:
    [r20 release];
    goto loc_100928734;

loc_100928734:
    [*0x1011dc120 cancel];
    r0 = [TJSystemPlacement alloc];
    r0 = [r0 initWithPlacementName:@"InsufficientCurrency" priority:0x14 pushId:0x0 systemFlag:0x1];
    r8 = *0x1011dc120;
    *0x1011dc120 = r0;
    [r8 release];
    [*0x1011dc120 setPlacementType:@"InsufficientCurrency"];
    dispatch_async(*__dispatch_main_q, 0x100ea22a8);
    goto loc_1009287b4;
}

+(void)setDefaultPlacementsExclude:(void *)arg2 {
    [arg2 retain];
    objc_sync_enter(self);
    r19 = [self retain];
    r0 = *0x1011dc128;
    *0x1011dc128 = r20;
    [r0 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)endWithReason:(void *)arg2 {
    [TJCLog logWithLevel:0x4 format:@"[TJSystemPlacement] ended: %@"];
    [TJSystemPlacement end:self];
    return;
}

-(void *)initWithPlacementName:(void *)arg2 priority:(long long)arg3 pushId:(void *)arg4 systemFlag:(bool)arg5 {
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
    r22 = arg5;
    r23 = arg3;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setPriority:r23];
            [r21 setPlacementName:r19];
            [r21 setPushId:r20];
            [r21 setSystemFlag:r22];
            [r21 setRequestStartTime:r22];
            if (r20 != 0x0) {
                    r22 = [[NSNull null] retain];
                    if (r22 == r20) {
                            asm { fcsel      d0, d1, d0, eq };
                    }
                    [r21 setTimeout:r2];
                    [r22 release];
            }
            else {
                    [r21 setTimeout:r2];
            }
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)show {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [TJCUtil uptime];
    [r19 setRequestStartTime:r2];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r22 = [r0 SDKConnected];
    [r0 release];
    [r20 release];
    if (r22 != 0x0) {
            r1 = @selector(requestPlacementContent);
    }
    else {
            r1 = @selector(waitForConnectSuccess);
    }
    objc_msgSend(r19, r1);
    return;
}

-(void)dealloc {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:@"TJC_Connect_Success" object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:@"TJC_Connect_Failed" object:0x0];
    [r0 release];
    [[&var_40 super] dealloc];
    return;
}

-(void)cancel {
    r21 = [[self placementName] retain];
    [TJCLog logWithLevel:0x4 format:@"[TJSystemPlacement] %@ is cancelled"];
    [r21 release];
    [self setCancelled:0x1];
    [self setPriority:0x0];
    return;
}

-(bool)timedOut {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self requestStartTime];
    if (d0 > 0x0) {
            [TJCUtil uptime];
            if (d0 > 0x0) {
                    [TJCUtil uptime];
                    [r19 requestStartTime];
                    [r19 timeout];
                    if (d8 >= d0) {
                            asm { fccmp      d8, d0, #0x0, pl };
                    }
                    if (!CPU_FLAGS & LE) {
                            r0 = 0x1;
                    }
                    else {
                            r0 = 0x0;
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void)waitForConnectSuccess {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:@"TJC_Connect_Success" object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:@"TJC_Connect_Failed" object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(onConnectSuccess:) name:@"TJC_Connect_Success" object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:self selector:@selector(onConnectFailure:) name:@"TJC_Connect_Failed" object:0x0];
    [r0 release];
    return;
}

-(void)onConnectSuccess:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [TJCLog logWithLevel:0x4 format:@"[TJSystemPlacement] onConnectSuccess"];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19 name:@"TJC_Connect_Success" object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:r19 name:@"TJC_Connect_Failed" object:0x0];
    [r0 release];
    if ([r19 cancelled] == 0x0) goto loc_1009292a4;

loc_1009292e0:
    [r19 endWithReason:r2];
    return;

loc_1009292a4:
    if ([r19 timedOut] == 0x0) goto loc_1009292f8;

loc_1009292b8:
    [r19 trackTimedOutContentRequested:0x0 contentReady:0x0];
    goto loc_1009292e0;

loc_1009292f8:
    [r19 requestPlacementContent];
    return;
}

-(void)requestPlacementContent {
    r31 = r31 - 0x70;
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
    r0 = [self placementName];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_100928e7c;

loc_100928d90:
    r22 = [[r19 placementName] retain];
    r0 = [NSNull null];
    r29 = r29;
    r23 = [r0 retain];
    if (r22 == r23) goto loc_100928e6c;

loc_100928dd0:
    r0 = [r19 placementName];
    r29 = r29;
    r24 = [r0 retain];
    [NSString class];
    if ([r24 isKindOfClass:r2] != 0x0) {
            r0 = [r19 placementName];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 length];
            [r0 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
            if (r26 == 0x0) {
                    [r19 endWithReason:@"insufficient info for default placement"];
            }
            else {
                    if ([r19 priority] <= 0x31 && [TJPlacement isFullScreenViewOpen] != 0x0) {
                            r20 = [[r19 placementName] retain];
                            r21 = [[NSString stringWithFormat:@"Can't request placement: %@, because another placement is being presented"] retain];
                            [r19 endWithReason:r21];
                            [r21 release];
                            r0 = r20;
                    }
                    else {
                            r22 = [[r19 placementName] retain];
                            [TJCLog logWithLevel:0x4 format:@"[TJSystemPlacement] Trying to request placement: %@"];
                            [r22 release];
                            r20 = [[r19 placementName] retain];
                            r21 = [[TJPlacement placementWithName:r20 delegate:r19 systemFlag:[r19 systemFlag]] retain];
                            [r20 release];
                            r19 = [[r19 pushId] retain];
                            [r21 setPushId:r19];
                            [r19 release];
                            [r21 requestContent];
                            r0 = r21;
                    }
                    [r0 release];
            }
    }
    else {
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
            if ([r19 priority] <= 0x31 && [TJPlacement isFullScreenViewOpen] != 0x0) {
                    r20 = [[r19 placementName] retain];
                    r21 = [[NSString stringWithFormat:@"Can't request placement: %@, because another placement is being presented"] retain];
                    [r19 endWithReason:r21];
                    [r21 release];
                    r0 = r20;
            }
            else {
                    r22 = [[r19 placementName] retain];
                    [TJCLog logWithLevel:0x4 format:@"[TJSystemPlacement] Trying to request placement: %@"];
                    [r22 release];
                    r20 = [[r19 placementName] retain];
                    r21 = [[TJPlacement placementWithName:r20 delegate:r19 systemFlag:[r19 systemFlag]] retain];
                    [r20 release];
                    r19 = [[r19 pushId] retain];
                    [r21 setPushId:r19];
                    [r19 release];
                    [r21 requestContent];
                    r0 = r21;
            }
            [r0 release];
    }
    return;

loc_100928e6c:
    [r23 release];
    [r22 release];
    goto loc_100928e7c;

loc_100928e7c:
    [r21 release];
    [r19 endWithReason:@"insufficient info for default placement"];
    return;
}

-(void)onConnectFailure:(void *)arg2 {
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:@"TJC_Connect_Success" object:0x0];
    [r0 release];
    r0 = @class(NSNotificationCenter);
    r0 = [r0 defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self name:@"TJC_Connect_Failed" object:0x0];
    [r0 release];
    [self endWithReason:@"onConnectFailure"];
    return;
}

-(void)requestDidSucceed:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isContentAvailable] & 0x1) == 0x0) {
            r22 = [[r19 placementName] retain];
            r21 = [[NSString stringWithFormat:@"requestDidSucceed: %@, but content is not available"] retain];
            [r20 endWithReason:r21];
            [r21 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)requestDidFail:(void *)arg2 error:(void *)arg3 {
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[arg2 placementName] retain];
    [r22 release];
    r22 = [[NSString stringWithFormat:@"requestDidFail: %@ error: %@"] retain];
    [r19 release];
    [self endWithReason:r22];
    [r22 release];
    [r20 release];
    return;
}

-(void)contentIsReady:(void *)arg2 {
    r31 = r31 - 0x80;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 cancelled] == 0x0) goto loc_1009295f0;

loc_1009295a8:
    r22 = [[r19 placementName] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_100929708;

loc_100929708:
    r21 = [r0 retain];
    [r20 endWithReason:r21];
    [r21 release];
    r0 = r22;
    goto loc_100929730;

loc_100929730:
    [r0 release];
    [r19 release];
    return;

loc_1009295f0:
    if ([r20 timedOut] == 0x0) goto loc_100929694;

loc_100929604:
    [r20 trackTimedOutContentRequested:0x1 contentReady:0x1];
    r22 = [[r19 placementName] retain];
    [TJCUtil uptime];
    [r20 requestStartTime];
    r0 = [NSString stringWithFormat:r2];
    goto loc_100929708;

loc_100929694:
    if ([r20 priority] > 0x31 || [TJPlacement isFullScreenViewOpen] == 0x0) goto loc_100929754;

loc_1009296c4:
    r22 = [[r20 placementName] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_100929708;

loc_100929754:
    var_38 = [r19 retain];
    [TJPlacement dismissContentIncludingAd:0x1 then:&var_60];
    r0 = var_38;
    goto loc_100929730;
}

-(void)showContent:(void *)arg2 {
    r31 = r31 - 0x80;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 timedOut] == 0x0) goto loc_1009298e8;

loc_100929858:
    [r20 trackTimedOutContentRequested:0x1 contentReady:0x1];
    r22 = [[r20 placementName] retain];
    [TJCUtil uptime];
    [r20 requestStartTime];
    r0 = [NSString stringWithFormat:r2];
    goto loc_100929a0c;

loc_100929a0c:
    r21 = [r0 retain];
    [r20 endWithReason:r21];
    [r21 release];
    r0 = r22;
    goto loc_100929a34;

loc_100929a34:
    [r0 release];
    [r19 release];
    return;

loc_1009298e8:
    if ([TJPlacement isFullScreenViewOpen] == 0x0) goto loc_10092996c;

loc_100929900:
    r21 = dispatch_time(0x0, 0x1dcd6500);
    var_38 = [r19 retain];
    dispatch_after(r21, *__dispatch_main_q, &var_60);
    r0 = var_38;
    goto loc_100929a34;

loc_10092996c:
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r22 = [[r0 defaultViewController] retain];
    [r19 showContentWithViewController:r22];
    [r22 release];
    [r0 release];
    r22 = [[r19 placementName] retain];
    r0 = [NSString stringWithFormat:r2];
    goto loc_100929a0c;
}

-(void)trackTimedOutContentRequested:(bool)arg2 contentReady:(bool)arg3 {
    return;
}

-(void)setPlacementName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementName, arg2);
    return;
}

-(void *)placementName {
    r0 = self->_placementName;
    return r0;
}

-(void *)pushId {
    r0 = self->_pushId;
    return r0;
}

-(bool)systemFlag {
    r0 = *(int8_t *)(int64_t *)&self->_systemFlag;
    return r0;
}

-(void)setPushId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pushId, arg2);
    return;
}

-(void)setSystemFlag:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_systemFlag = arg2;
    return;
}

-(long long)priority {
    r0 = self->_priority;
    return r0;
}

-(void)setPriority:(long long)arg2 {
    self->_priority = arg2;
    return;
}

-(double)requestStartTime {
    r0 = self;
    return r0;
}

-(void)setRequestStartTime:(double)arg2 {
    self->_requestStartTime = d0;
    return;
}

-(double)timeout {
    r0 = self;
    return r0;
}

-(void)setTimeout:(double)arg2 {
    self->_timeout = d0;
    return;
}

-(bool)cancelled {
    r0 = *(int8_t *)(int64_t *)&self->_cancelled;
    return r0;
}

-(void)setCancelled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_cancelled = arg2;
    return;
}

-(void *)placementType {
    r0 = self->_placementType;
    return r0;
}

-(void)setPlacementType:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementType, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placementType, 0x0);
    objc_storeStrong((int64_t *)&self->_pushId, 0x0);
    objc_storeStrong((int64_t *)&self->_placementName, 0x0);
    return;
}

@end