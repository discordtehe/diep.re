@implementation TapResearch

+(void *)sharedManager {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d6e98 != -0x1) {
            dispatch_once(0x1011d6e98, &var_28);
    }
    r0 = *0x1011d6e90;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)initWithApiToken:(void *)arg2 delegate:(void *)arg3 {
    r20 = [arg2 retain];
    [TapResearch initWithApiToken:r20 developmentPlatform:r3 developmentPlatformVersion:@"" delegate:arg3];
    [r20 release];
    return;
}

-(void *)init {
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
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @class(TR_DDLog);
            r22 = [[TR_DDASLLogger sharedInstance] retain];
            [r20 addLogger:r22];
            [r22 release];
            r20 = @class(TR_DDLog);
            r21 = [[TR_DDTTYLogger sharedInstance] retain];
            [r20 addLogger:r21];
            [r21 release];
    }
    r0 = r19;
    return r0;
}

+(void)initWithApiToken:(void *)arg2 developmentPlatform:(void *)arg3 developmentPlatformVersion:(void *)arg4 delegate:(void *)arg5 {
    r31 = r31 - 0x60;
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
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    NSLog(@"TapResearch SDK Version: %@", _cmd);
    if (r19 != 0x0 && [r19 length] != 0x0) {
            r0 = @class(TapResearch);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            [r0 setDelegate:r22];
            [r0 release];
            r0 = @class(TRSessionManager);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            [r0 setApiToken:r19];
            [r0 release];
            r0 = @class(TRSessionManager);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            [r0 setDevelopmentPlatform:r20];
            [r0 release];
            r0 = @class(TRSessionManager);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            [r0 setDevelopmentPlatformVersion:r21];
            [r0 release];
            r0 = [TRNetworkManager sharedManager];
            r0 = [r0 retain];
            [r0 startup];
            [r0 release];
            r0 = @class(TRSessionManager);
            r0 = [r0 sharedManager];
            r0 = [r0 retain];
            [r0 startupWithDelegate:r22];
            [r0 release];
            r24 = [[NSNotificationCenter defaultCenter] retain];
            [[TapResearch sharedManager] retain];
            [r24 addObserver:r2 selector:r3 name:r4 object:r5];
            [r23 release];
            [r24 release];
    }
    else {
            NSLog(@"The SDK cannot be initialized without a valid API token");
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)setUniqueUserIdentifier:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 isEqualToString:r2] == 0x0) {
            r0 = [TRSessionManager sharedManager];
            r0 = [r0 retain];
            [r0 setUserIdentifier:r19];
            [r0 release];
    }
    else {
            if ((*0x100be01b0 & 0x1) != 0x0) {
                    [TR_DDLog log:0x0 level:r3 flag:0x1 context:0x0 file:"/Users/ilancaspi/code/TapResearchSDK/TapResearchSDK/Public/TapResearch.m" function:"+[TapResearch setUniqueUserIdentifier:]" line:0x75 tag:0x0 format:@"userIdentifier cannot be nil or blank."];
            }
    }
    [r19 release];
    return;
}

+(void)setNavigationBarColor:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    [r0 setNavigationBarColor:r19];
    [r0 release];
    [r19 release];
    return;
}

+(void)setNavigationBarText:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    [r0 setNavigationBarText:r19];
    [r0 release];
    [r19 release];
    return;
}

+(void)setNavigationBarTextColor:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = [TRSessionManager sharedManager];
    r0 = [r0 retain];
    [r0 setNavigationBarTextColor:r19];
    [r0 release];
    [r19 release];
    return;
}

+(void)initPlacementWithIdentifier:(void *)arg2 placementBlock:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            var_58 = r20;
            r21 = [[TROfferRequest alloc] initWithOfferIdentifier:r19 placementBlock:var_58];
            r0 = [TRSessionManager sharedManager];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 appSession];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if ([r0 isValid] != 0x0) {
                    r0 = [TRSessionManager sharedManager];
                    r0 = [r0 retain];
                    r26 = r0;
                    r0 = [r0 loadedOfferIdentifier];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = [r0 isEqualToString:r2];
                    r22 = r21;
                    r21 = r0 ^ 0x1;
                    [r27 release];
                    [r26 release];
            }
            else {
                    r22 = r21;
                    r21 = 0x0;
            }
            [r25 release];
            [r24 release];
            if (r21 != 0x0) {
                    r0 = @class(TRSessionManager);
                    r0 = [r0 sharedManager];
                    r21 = r22;
                    r0 = [r0 retain];
                    [r0 setLoadedOfferIdentifier:r19];
                    [r0 release];
                    r0 = [TRNetworkManager sharedManager];
                    r0 = [r0 retain];
                    [r0 sendRequest:r21];
                    [r0 release];
                    r20 = var_58;
            }
            else {
                    r0 = @class(TRSessionManager);
                    r0 = [r0 sharedManager];
                    r21 = r22;
                    r0 = [r0 retain];
                    [r0 setCachedOfferRequest:r21];
                    [r0 release];
                    NSLog(@"App session isn't ready queuing the offer request");
                    r20 = var_58;
                    (*(r20 + 0x10))(r20, [[TRPlacement alloc] initWithComment:@"Can't initialize the placement at this time because the SDK isn't ready" identifier:r19 placementCode:0xffffffffffffffff]);
                    [r22 release];
            }
    }
    else {
            NSLog(@"Placement identifier is empty");
            r21 = [[TRPlacement alloc] initWithComment:@"Placement identifier is empty" identifier:r19];
            (*(r20 + 0x10))(r20, r21);
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)alertHandler {
    r0 = self->_alertHandler;
    return r0;
}

-(void *)delegate {
    r0 = self->_delegate;
    return r0;
}

-(void)setAlertHandler:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_alertHandler, arg2);
    return;
}

-(void)handleRewards:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r21 = [[r0 object] retain];
    r0 = [r20 delegate];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [r20 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 respondsToSelector:@selector(tapResearchDidReceiveReward:)];
            [r0 release];
            [r23 release];
            if (r25 != 0x0) {
                    var_108 = q0;
                    r0 = [r21 retain];
                    r23 = r0;
                    r25 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r25 != 0x0) {
                            r27 = @selector(countByEnumeratingWithState:objects:count:);
                            r24 = *var_108;
                            var_128 = r27;
                            var_120 = r19;
                            do {
                                    r19 = 0x0;
                                    do {
                                            if (*var_108 != r24) {
                                                    objc_enumerationMutation(r23);
                                            }
                                            r22 = @selector(delegate);
                                            r0 = objc_msgSend(r20, r22);
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 tapResearchDidReceiveReward:r2];
                                            [r28 release];
                                            r19 = r19 + 0x1;
                                    } while (r19 < r25);
                                    r25 = objc_msgSend(r23, var_128);
                                    r19 = var_120;
                            } while (r25 != 0x0);
                    }
                    [r23 release];
            }
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setDelegate:(void *)arg2 {
    self->_delegate = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_alertHandler, 0x0);
    return;
}

@end