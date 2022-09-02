@implementation ISRewardedVideoDemandOnlyHelper

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_smashDic));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_instanceIdToWaterfallPos));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_placement));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r19->_event7LastSentStatus = 0x0;
    }
    r0 = r19;
    return r0;
}

-(bool)hasAvailableAds:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [ISConfigurations getConfigurations];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 trackReachability] & 0x1) != 0x0) {
            r0 = [SSEReachabilityManager sharedManager];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 getReachabilityObject];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 currentReachabilityStatus];
            [r0 release];
            [r22 release];
            [r21 release];
            if (r24 == 0x0) {
                    r21 = 0x0;
            }
            else {
                    r0 = [r20 getSmash:r19];
                    r29 = r29;
                    r20 = [r0 retain];
                    if (r20 != 0x0) {
                            if ([r20 mediationState] == 0x3) {
                                    r21 = [r20 hasAvailableAds];
                            }
                            else {
                                    r21 = 0x0;
                            }
                    }
                    else {
                            r21 = [[ISLoggerManager sharedInstance] retain];
                            r22 = [[NSString stringWithFormat:@"hasAvailableAds: %@ - Unknown instanceId"] retain];
                            [r21 log:r22 level:0x3 tag:0x0];
                            [r22 release];
                            [r21 release];
                            r21 = 0x0;
                    }
                    [r20 release];
            }
    }
    else {
            [r21 release];
            r0 = [r20 getSmash:r19];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    if ([r20 mediationState] == 0x3) {
                            r21 = [r20 hasAvailableAds];
                    }
                    else {
                            r21 = 0x0;
                    }
            }
            else {
                    r21 = [[ISLoggerManager sharedInstance] retain];
                    r22 = [[NSString stringWithFormat:@"hasAvailableAds: %@ - Unknown instanceId"] retain];
                    [r21 log:r22 level:0x3 tag:0x0];
                    [r22 release];
                    [r21 release];
                    r21 = 0x0;
            }
            [r20 release];
    }
    [r19 release];
    r0 = r21;
    return r0;
}

-(void)rewardedVideoDidOpenForSMASH:(void *)arg2 {
    r19 = [arg2 retain];
    r23 = [[ISLoggerManager sharedInstance] retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r26 = [[r0 providerName] retain];
    r24 = [[NSString stringWithFormat:@"%@:RVAdOpened"] retain];
    [r23 log:r24 level:0x1 tag:0x3];
    [r24 release];
    [r26 release];
    [r0 release];
    [r23 release];
    [self sendProviderEventWithPlacement:r19 eventId:0x5];
    r21 = [[ISRewardedVideoDelegateWrapper sharedInstance] retain];
    r20 = [[arg2 instanceId] retain];
    [r19 release];
    [r21 rewardedVideoDidOpen:r20];
    [r20 release];
    [r21 release];
    return;
}

-(bool)addSmash:(void *)arg2 adapter:(void *)arg3 {
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
    var_68 = self;
    r23 = [arg2 retain];
    var_58 = [arg3 retain];
    r27 = [[ISLoggerManager sharedInstance] retain];
    r0 = [r23 adapterConfig];
    r0 = [r0 retain];
    r28 = r0;
    r22 = [[r0 providerName] retain];
    r0 = [NSString stringWithFormat:@"Trying to load %@ "];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r27 log:r20 level:0x0 tag:0x6];
    [r20 release];
    [r22 release];
    [r28 release];
    [r27 release];
    r28 = r23;
    if (([r23 respondsToSelector:@selector(initRVWithUserId:)] & 0x1) == 0x0) goto loc_1006cb010;

loc_1006cae14:
    r24 = var_58;
    if (r24 == 0x0) goto loc_1006cb084;

loc_1006cae24:
    r19 = r28;
    [r19 setAdapter:r24];
    r0 = [r19 adapterConfig];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 settings];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r20 release];
    if (r0 == 0x0) goto loc_1006cb108;

loc_1006cae7c:
    [r19 setRvDelegate:var_68];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r22 = [[r0 userId] retain];
    [r19 initRVWithUserId:r22];
    [r22 release];
    [r0 release];
    r20 = [[ISLoggerManager sharedInstance] retain];
    r22 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfa8);
    r0 = [r19 adapterConfig];
    r0 = [r0 retain];
    r25 = [[r0 providerName] retain];
    r22 = [[r22 stringWithFormat:r2] retain];
    [r20 log:r22 level:0x0 tag:0x6];
    [r22 release];
    [r25 release];
    [r0 release];
    [r20 release];
    r21 = [[r19 instanceId] retain];
    [var_68 setSmash:r19 withInstanceId:r21];
    [r21 release];
    r20 = [[r19 instanceId] retain];
    [var_68 addWaterfallPosition:r20];
    [r20 release];
    r21 = 0x1;
    goto loc_1006cb1b0;

loc_1006cb1b0:
    [r24 release];
    [r19 release];
    r0 = r21;
    return r0;

loc_1006cb108:
    r20 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfa8);
    r0 = [r19 adapterConfig];
    r0 = [r0 retain];
    r25 = [[r0 providerName] retain];
    r20 = [[r20 stringWithFormat:r2] retain];
    [r25 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    goto loc_1006cb180;

loc_1006cb180:
    r0 = [r0 retain];
    [r0 log:r20 level:0x0 tag:0x6];
    [r0 release];
    [r20 release];
    r21 = 0x0;
    goto loc_1006cb1b0;

loc_1006cb084:
    r20 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfa8);
    r19 = r28;
    r0 = [r19 adapterConfig];
    r0 = [r0 retain];
    r25 = [[r0 reflectionName] retain];
    r20 = [[r20 stringWithFormat:r2] retain];
    [r25 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    goto loc_1006cb180;

loc_1006cb010:
    r20 = [[ISLoggerManager sharedInstance] retain];
    r22 = [[NSString stringWithFormat:@"ISRewardedVideoDemandOnlyHelper !smash respondsToSelector:@selector(initRVWithUserId:)"] retain];
    [r20 log:r22 level:0x0 tag:0x6];
    [r22 release];
    [r20 release];
    r21 = 0x0;
    r24 = var_58;
    r19 = r28;
    goto loc_1006cb1b0;
}

-(void)rewardedVideoDidStartForSMASH:(void *)arg2 {
    return;
}

-(void)rewardedVideoHasChangedAvailability:(bool)arg2 forSMASH:(void *)arg3 {
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
    r29 = &saved_fp;
    r20 = arg2;
    r21 = self;
    r8 = *___stack_chk_guard;
    r8 = *r8;
    var_58 = r8;
    r19 = [arg3 retain];
    if (r20 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"false";
            }
            else {
                    r8 = @"true";
            }
    }
    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
    r29 = r29;
    r23 = [r0 retain];
    [r21 sendProviderEvent:r19 eventId:0x7 data:r23];
    [r23 release];
    if ((r20 & 0x1) != 0x0 || [r21 doesAllSmashesHaveAvailability] != 0x0) {
            r0 = [r21 isAtLeastOneSmashAvailable];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_event7LastSentStatus));
            r8 = *(r21 + r23);
            if (r8 != 0x0) {
                    if (r8 == 0x1) {
                            if ((r0 & 0x1) == 0x0) {
                                    if (r0 != 0x0) {
                                            if (!CPU_FLAGS & NE) {
                                                    r8 = @"false";
                                            }
                                            else {
                                                    r8 = @"true";
                                            }
                                    }
                                    if (CPU_FLAGS & E) {
                                            asm { cinc       x24, x8, eq };
                                    }
                                    r0 = [NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    [r21 sendMediationEvent:0x7 data:r22];
                                    [r22 release];
                                    *(r21 + r23) = @"status";
                            }
                    }
                    else {
                            if (r8 == 0x2) {
                                    r8 = r0 ^ 0x1;
                                    if ((r8 & 0x1) == 0x0) {
                                            if (r0 != 0x0) {
                                                    if (!CPU_FLAGS & NE) {
                                                            r8 = @"false";
                                                    }
                                                    else {
                                                            r8 = @"true";
                                                    }
                                            }
                                            if (CPU_FLAGS & E) {
                                                    asm { cinc       x24, x8, eq };
                                            }
                                            r0 = [NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1];
                                            r29 = r29;
                                            r22 = [r0 retain];
                                            [r21 sendMediationEvent:0x7 data:r22];
                                            [r22 release];
                                            *(r21 + r23) = @"status";
                                    }
                            }
                    }
            }
            else {
                    if (r0 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r8 = @"false";
                            }
                            else {
                                    r8 = @"true";
                            }
                    }
                    if (CPU_FLAGS & E) {
                            asm { cinc       x24, x8, eq };
                    }
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-128] forKeys:&var_78 count:0x1];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r21 sendMediationEvent:0x7 data:r22];
                    [r22 release];
                    *(r21 + r23) = @"status";
            }
    }
    r22 = [[ISRewardedVideoDelegateWrapper sharedInstance] retain];
    r23 = [[r19 instanceId] retain];
    [r22 rewardedVideoHasChangedAvailability:r20 instanceId:r23];
    [r23 release];
    [r22 release];
    r0 = [r19 adapterConfig];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 providerName];
    r29 = r29;
    r24 = [r0 retain];
    r8 = @"NO";
    if (r20 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"NO";
            }
            else {
                    r8 = @"YES";
            }
    }
    r20 = [[NSString stringWithFormat:@"%@: rewardedVideoHasChangedAvailability: %@"] retain];
    [r24 release];
    [r23 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r20 level:0x1 tag:0x3];
    [r0 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)rewardedVideoDidEndForSMASH:(void *)arg2 {
    return;
}

-(void)rewardedVideoDidFailToShowWithError:(void *)arg2 forSMASH:(void *)arg3 {
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
    var_58 = **___stack_chk_guard;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [arg3 adapterConfig];
    r0 = [r0 retain];
    r25 = r0;
    r27 = [[r0 providerName] retain];
    r28 = [[arg2 localizedDescription] retain];
    [arg2 code];
    r23 = [[NSString stringWithFormat:@"%@:RVAdFailedWithError:%@, code:%d"] retain];
    [r28 release];
    [r27 release];
    [r25 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 log:r23 level:0x1 tag:0x3];
    [r0 release];
    r27 = [[self->_placement name] retain];
    r24 = [[NSNumber numberWithInteger:[arg2 code]] retain];
    r26 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3] retain];
    [self sendMediationEvent:0x11 data:r26];
    [r26 release];
    [r24 release];
    [r27 release];
    r22 = [[ISRewardedVideoDelegateWrapper sharedInstance] retain];
    r20 = [[arg3 instanceId] retain];
    [r21 release];
    [r22 rewardedVideoDidFailToShowWithError:r19 instanceId:r20];
    [r19 release];
    [r20 release];
    [r22 release];
    [r23 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)rewardedVideoDidCloseForSMASH:(void *)arg2 {
    r31 = r31 - 0x180;
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
    r25 = [arg2 retain];
    r22 = [[ISLoggerManager sharedInstance] retain];
    r0 = [r25 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r19 = [[NSString stringWithFormat:@"%@:RVAdClosed"] retain];
    [r22 log:r19 level:0x1 tag:0x3];
    [r19 release];
    [r24 release];
    [r0 release];
    [r22 release];
    [r20 sendProviderEventWithPlacement:r25 eventId:0x6];
    r19 = [[ISRewardedVideoDelegateWrapper sharedInstance] retain];
    r21 = [[r25 instanceId] retain];
    [r19 rewardedVideoDidClose:r21];
    [r21 release];
    [r19 release];
    r0 = *(r20 + sign_extend_64(*(int32_t *)ivar_offset(_smashDic)));
    r0 = [r0 retain];
    r21 = r0;
    objc_sync_enter(r0);
    r0 = *(r20 + r19);
    r0 = [r0 allValues];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 == 0x0) goto loc_1006cc758;

loc_1006cc5e4:
    var_160 = r25;
    var_158 = @selector(countByEnumeratingWithState:objects:count:);
    var_150 = r21;
    goto loc_1006cc600;

loc_1006cc600:
    r21 = 0x0;
    goto loc_1006cc610;

loc_1006cc610:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r22);
    }
    r28 = *(0x0 + r21 * 0x8);
    if ([r28 mediationState] != 0x3) goto loc_1006cc6a0;

loc_1006cc644:
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    r19 = [r0 retain];
    [r20 sendProviderEvent:r2 eventId:r3 data:r4];
    goto loc_1006cc70c;

loc_1006cc70c:
    [r19 release];
    goto loc_1006cc714;

loc_1006cc714:
    r21 = r21 + 0x1;
    if (r21 < r24) goto loc_1006cc610;

loc_1006cc720:
    r24 = objc_msgSend(r22, var_158);
    r25 = var_160;
    r21 = var_150;
    if (r24 != 0x0) goto loc_1006cc600;

loc_1006cc758:
    [r22 release];
    objc_sync_exit(r21);
    [r21 release];
    r8 = @"false";
    if ([r20 isAtLeastOneSmashAvailable] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"false";
            }
            else {
                    r8 = @"true";
            }
    }
    var_58 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjects:&var_100 forKeys:&var_108 count:0x1];
    r19 = [r0 retain];
    [r20 sendMediationEvent:0x3 data:r19];
    [r19 release];
    [r25 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006cc6a0:
    if ([r28 mediationState] != 0x4) goto loc_1006cc714;

loc_1006cc6b4:
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    r19 = [r0 retain];
    [r20 sendProviderEvent:r2 eventId:r3 data:r4];
    goto loc_1006cc70c;
}

-(void)didClickRewardedVideoForSMASH:(void *)arg2 {
    r19 = [arg2 retain];
    r23 = [[ISLoggerManager sharedInstance] retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r26 = [[r0 providerName] retain];
    r24 = [[NSString stringWithFormat:@"didClickRewardedVideoForSMASH:%@"] retain];
    [r23 log:r24 level:0x1 tag:0x3];
    [r24 release];
    [r26 release];
    [r0 release];
    [r23 release];
    [self sendProviderEventWithPlacement:r19 eventId:0x80];
    r22 = [[ISRewardedVideoDelegateWrapper sharedInstance] retain];
    r21 = [[self->_placement placementInfo] retain];
    r20 = [[arg2 instanceId] retain];
    [r19 release];
    [r22 didClickRewardedVideo:r21 instanceId:r20];
    [r20 release];
    [r21 release];
    [r22 release];
    return;
}

-(void)rewardedVideoDidBecomeVisibileForSMASH:(void *)arg2 {
    r20 = [arg2 retain];
    r21 = [[ISLoggerManager sharedInstance] retain];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r24 = [[r0 providerName] retain];
    r23 = [[NSString stringWithFormat:@"rewardedVideoDidBecomeVisibileForSMASH:%@"] retain];
    [r21 log:r23 level:0x1 tag:0x3];
    [r23 release];
    [r24 release];
    [r0 release];
    [r21 release];
    [self sendProviderEventWithPlacement:r20 eventId:0xb];
    [r20 release];
    return;
}

-(void)showRewardedVideoWithViewController:(void *)arg2 placement:(void *)arg3 instanceId:(void *)arg4 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1f0;
    r19 = arg3;
    r22 = self;
    r20 = [arg2 retain];
    r26 = [r19 retain];
    r28 = [arg4 retain];
    r0 = [ISConfigurations getConfigurations];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 trackReachability] & 0x1) == 0x0) goto loc_1006cb388;

loc_1006cb274:
    r0 = [SSEReachabilityManager sharedManager];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 getReachabilityObject];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 currentReachabilityStatus];
    [r0 release];
    [r23 release];
    [r21 release];
    if (r25 != 0x0) goto loc_1006cb390;

loc_1006cb2d8:
    r19 = [[ISError createError:0x208 withMessage:@"Rewarded Video Show Fail - No internet connection"] retain];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    [r0 logFromError:r19 level:0x3 tag:0x4];
    [r0 release];
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToShowWithError:r19 instanceId:r28];
    [r0 release];
    r0 = r19;
    goto loc_1006cbd44;

loc_1006cbd44:
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r28 release];
    [r26 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_1006cb390:
    var_218 = r19;
    var_200 = r20;
    r21 = [[r26 name] retain];
    r20 = r22;
    r24 = [[NSDictionary dictionaryWithObjects:r29 - 0x60 forKeys:r29 - 0x68 count:0x1] retain];
    [r20 sendMediationEvent:0x2 data:r24];
    [r24 release];
    [r21 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    var_1E8 = r28;
    r28 = r0;
    r23 = [[r26 name] retain];
    r0 = [NSString stringWithFormat:@"showRV with placement name %@"];
    r0 = [r0 retain];
    var_1F8 = r26;
    [r28 log:r0 level:0x1 tag:0x0];
    [r0 release];
    [r23 release];
    r0 = r28;
    r28 = var_1E8;
    [r0 release];
    r0 = [r20 getSmash:r28];
    r29 = r29;
    r0 = [r0 retain];
    var_1F0 = r0;
    if (r0 == 0x0) goto loc_1006cb8e0;

loc_1006cb500:
    var_210 = r20;
    r0 = [ISPlacementCappingManager sharedManager];
    r29 = r29;
    r0 = [r0 retain];
    r26 = var_1F8;
    r28 = [r0 isPlacementCappedRV:r26];
    [r0 release];
    if (r28 != 0x4) goto loc_1006cba68;

loc_1006cb554:
    r28 = (int64_t *)&var_210->_placement;
    objc_storeStrong(r28, var_218);
    [var_210 sendProviderEventWithPlacement:var_1F0 eventId:0x2];
    r0 = *(var_210 + sign_extend_64(*(int32_t *)ivar_offset(_smashDic)));
    r0 = [r0 retain];
    r25 = r0;
    objc_sync_enter(r0);
    r0 = *(var_210 + r19);
    r0 = [r0 allValues];
    r22 = @selector(dictionaryWithObjects:forKeys:count:);
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r21 == 0x0) goto loc_1006cb774;

loc_1006cb5fc:
    var_228 = r28;
    var_218 = @selector(countByEnumeratingWithState:objects:count:);
    goto loc_1006cb614;

loc_1006cb614:
    r20 = 0x0;
    r22 = var_210;
    goto loc_1006cb624;

loc_1006cb624:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r24);
    }
    r19 = *(0x0 + r20 * 0x8);
    if ([r19 mediationState] != 0x3) goto loc_1006cb6b4;

loc_1006cb658:
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    r28 = [r0 retain];
    [r22 sendProviderEvent:r2 eventId:r3 data:r4];
    goto loc_1006cb720;

loc_1006cb720:
    [r28 release];
    goto loc_1006cb728;

loc_1006cb728:
    r20 = r20 + 0x1;
    if (r20 < r21) goto loc_1006cb624;

loc_1006cb734:
    r21 = objc_msgSend(r24, var_218);
    r26 = var_1F8;
    r22 = @selector(dictionaryWithObjects:forKeys:count:);
    r28 = var_228;
    if (r21 != 0x0) goto loc_1006cb614;

loc_1006cb774:
    [r24 release];
    objc_sync_exit(r25);
    [r25 release];
    [var_1F0 preShow];
    r19 = [[r26 name] retain];
    r20 = var_200;
    [var_1F0 showRewardedVideoWithViewController:r20 placement:r19];
    [r19 release];
    r0 = [ISPlacementCappingManager sharedManager];
    r0 = [r0 retain];
    [r0 incrementShowCounterRV:r26];
    [r0 release];
    r19 = [[*r28 name] retain];
    r28 = var_1E8;
    r21 = [[var_210 getWaterfallPosition:r28] retain];
    r23 = [objc_msgSend(@class(NSDictionary), r22) retain];
    [var_210 sendProviderEvent:var_1F0 eventId:0x77 data:r23];
    [r23 release];
    [r21 release];
    [r19 release];
    goto loc_1006cbd40;

loc_1006cbd40:
    r0 = var_1F0;
    goto loc_1006cbd44;

loc_1006cb6b4:
    if ([r19 mediationState] != 0x4) goto loc_1006cb728;

loc_1006cb6c8:
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    r28 = [r0 retain];
    [r22 sendProviderEvent:r2 eventId:r3 data:r4];
    goto loc_1006cb720;

loc_1006cba68:
    [@"" retain];
    r27 = @selector(name);
    if (r28 != 0x1) {
            if (r28 != 0x3) {
                    r19 = @"";
                    if (r28 == 0x2) {
                            r23 = [objc_msgSend(r26, r27) retain];
                            r0 = [NSString stringWithFormat:@"Rewarded Video Show Fail - Placement %@ has reached its capping limit"];
                            r29 = r29;
                            r19 = [r0 retain];
                            [@"" release];
                            [r23 release];
                    }
            }
            else {
                    r23 = [objc_msgSend(r26, r27) retain];
                    r0 = [NSString stringWithFormat:@"Rewarded Video Show Fail - Placement %@ has reached its limit as defined per pace"];
                    r29 = r29;
                    r19 = [r0 retain];
                    [@"" release];
                    [r23 release];
            }
    }
    else {
            r23 = [objc_msgSend(r26, r27) retain];
            r0 = [NSString stringWithFormat:@"Rewarded Video Show Fail - Placement %@ is capped by disabled delivery"];
            r29 = r29;
            r19 = [r0 retain];
            [@"" release];
            [r23 release];
    }
    r21 = [[ISError createError:0x20c withMessage:r19] retain];
    r0 = @class(ISLoggerManager);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 log:r19 level:0x1 tag:0x6];
    [r0 release];
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    r28 = var_1E8;
    [r0 rewardedVideoDidFailToShowWithError:r21 instanceId:r28];
    [r0 release];
    [@(0x1) retain];
    [objc_msgSend(r26, r27) retain];
    [@(0x20c) retain];
    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r0 = [r0 retain];
    [var_210 sendMediationEvent:r2 data:r3];
    r0 = r26;
    r26 = r20;
    [r0 release];
    [r25 release];
    [r23 release];
    r0 = r24;
    goto loc_1006cbd28;

loc_1006cbd28:
    [r0 release];
    [r21 release];
    [r19 release];
    r20 = var_200;
    goto loc_1006cbd40;

loc_1006cb8e0:
    r19 = [[ISLoggerManager sharedInstance] retain];
    r21 = [[NSString stringWithFormat:@"showRewardedVideoWithViewController: %@ - The requested instance does not exist"] retain];
    [r19 log:r21 level:0x3 tag:0x0];
    [r21 release];
    [r19 release];
    r19 = [[ISError createError:0x20f withMessage:@"The requested instance does not exist"] retain];
    r0 = [ISRewardedVideoDelegateWrapper sharedInstance];
    r0 = [r0 retain];
    [r0 rewardedVideoDidFailToShowWithError:r19 instanceId:r28];
    [r0 release];
    r26 = var_1F8;
    r21 = [[r26 name] retain];
    [@(0x20f) retain];
    [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    [r20 sendMediationEvent:r2 data:r3];
    [r24 release];
    r0 = r23;
    goto loc_1006cbd28;

loc_1006cb388:
    [r21 release];
    goto loc_1006cb390;
}

-(void)sendProviderEvent:(void *)arg2 eventId:(long long)arg3 data:(void *)arg4 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r21 = arg3;
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    r20 = [NSMutableDictionary new];
    r0 = [arg2 adapter];
    r0 = [r0 retain];
    r27 = [[r0 version] retain];
    [r20 setObject:r27 forKeyedSubscript:@"providerAdapterVersion"];
    [r27 release];
    [r0 release];
    r0 = [arg2 adapter];
    r0 = [r0 retain];
    r26 = [[r0 sdkVersion] retain];
    [r20 setObject:r26 forKeyedSubscript:@"providerSDKVersion"];
    [r26 release];
    [r0 release];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r27 = [[r0 subAdapterId] retain];
    [r20 setObject:r27 forKeyedSubscript:@"spId"];
    [r27 release];
    [r0 release];
    r23 = [[arg2 adapterConfig] retain];
    [r22 release];
    r0 = [r23 adSourceNameForEvent];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r20 setObject:r22 forKeyedSubscript:@"provider"];
    [r22 release];
    [r23 release];
    [r20 setObject:@"true" forKeyedSubscript:@"networkInstance"];
    if (r19 != 0x0) {
            [r20 addEntriesFromDictionary:r19];
    }
    r22 = [ISEventData alloc];
    r21 = [[NSNumber numberWithInteger:r21] retain];
    r23 = [r20 copy];
    r22 = [r22 initWithEventId:r21 andAdditionData:r23];
    [r23 release];
    [r21 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)sendProviderEventWithPlacement:(void *)arg2 eventId:(long long)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r21 = self->_placement;
    r23 = [arg2 retain];
    r21 = [[r21 name] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1];
    r22 = [r0 retain];
    [self sendProviderEvent:r23 eventId:arg3 data:r22];
    [r23 release];
    [r22 release];
    [r21 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)didReceiveRewardForSMASH:(void *)arg2 {
    r31 = r31 - 0x1a0;
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
    var_138 = self;
    r0 = [arg2 retain];
    r24 = r0;
    r0 = [r0 adapterConfig];
    r0 = [r0 retain];
    r22 = [[r0 providerName] retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_placement));
    r23 = [[*(self + r27) name] retain];
    r28 = [[NSString stringWithFormat:@"%@:didReceiveRewardForPlacement:%@"] retain];
    [r23 release];
    [r22 release];
    [r0 release];
    r0 = [ISLoggerManager sharedInstance];
    r0 = [r0 retain];
    var_148 = r28;
    [r0 log:r28 level:0x1 tag:0x3];
    [r0 release];
    r28 = [[ISUtils timeInMilliSeconds] retain];
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r19 = r0;
    r22 = [[r0 appKey] retain];
    var_140 = r24;
    r0 = [r24 adapterConfig];
    r0 = [r0 retain];
    r25 = r0;
    r26 = [[r0 providerName] retain];
    var_158 = r28;
    r0 = [NSString stringWithFormat:@"%@%@%@"];
    r0 = [r0 retain];
    r20 = [[r0 SHA2String] retain];
    [r0 release];
    [r26 release];
    [r25 release];
    [r22 release];
    [r19 release];
    r28 = [NSMutableDictionary new];
    r19 = [[*(var_138 + r27) name] retain];
    [r28 setObject:r19 forKey:@"placement"];
    [r19 release];
    var_168 = r20;
    [r28 setObject:r20 forKey:@"transId"];
    r0 = *(var_138 + r27);
    r0 = [r0 placementInfo];
    r0 = [r0 retain];
    r22 = [[r0 rewardName] retain];
    [r28 setObject:r22 forKey:@"rewardName"];
    [r22 release];
    [r0 release];
    var_150 = r27;
    r0 = *(var_138 + r27);
    r0 = [r0 placementInfo];
    r0 = [r0 retain];
    r22 = [[r0 rewardAmount] retain];
    [r28 setObject:r22 forKey:@"rewardAmount"];
    [r22 release];
    [r0 release];
    r0 = @class(ISConfigurations);
    r0 = [r0 getConfigurations];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 dynamicUserId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 length];
    [r0 release];
    [r22 release];
    if (r25 != 0x0) {
            r0 = [ISConfigurations getConfigurations];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 dynamicUserId];
            r29 = r29;
            r19 = [r0 retain];
            [r28 setObject:r19 forKey:@"dynamicUserId"];
            [r19 release];
            [r22 release];
    }
    r0 = [ISConfigurations getConfigurations];
    r0 = [r0 retain];
    r20 = [[r0 rvServerParams] retain];
    [r0 release];
    var_108 = q0;
    var_120 = r20;
    r0 = [r20 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r21 = r0;
    var_130 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            r24 = *var_108;
            do {
                    r26 = 0x0;
                    do {
                            if (*var_108 != r24) {
                                    objc_enumerationMutation(r21);
                            }
                            r27 = @selector(objectForKey:);
                            [[NSString stringWithFormat:r2] retain];
                            r0 = objc_msgSend(var_120, r27);
                            r29 = r29;
                            [r0 retain];
                            [r28 setObject:r2 forKey:r3];
                            [r20 release];
                            [r25 release];
                            r26 = r26 + 0x1;
                    } while (r26 < r22);
                    r22 = objc_msgSend(r21, var_130);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    r19 = [r28 copy];
    [var_138 sendProviderEvent:var_140 eventId:0xa data:r19 timestamp:[var_158 longLongValue]];
    [r19 release];
    r19 = [[ISRewardedVideoDelegateWrapper sharedInstance] retain];
    r20 = [[*(var_138 + var_150) placementInfo] retain];
    r22 = [[var_140 instanceId] retain];
    [r19 didReceiveRewardForPlacement:r20 instanceId:r22];
    [r22 release];
    [r20 release];
    [r19 release];
    [var_120 release];
    [r28 release];
    [var_168 release];
    [var_158 release];
    [var_148 release];
    [var_140 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)sendProviderEvent:(void *)arg2 eventId:(long long)arg3 data:(void *)arg4 timestamp:(long long)arg5 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r21 = arg5;
    r22 = arg3;
    r23 = [arg2 retain];
    r19 = [arg4 retain];
    r20 = [NSMutableDictionary new];
    r0 = [arg2 adapter];
    r0 = [r0 retain];
    r28 = [[r0 version] retain];
    [r20 setObject:r28 forKeyedSubscript:@"providerAdapterVersion"];
    [r28 release];
    [r0 release];
    r0 = [arg2 adapter];
    r0 = [r0 retain];
    r27 = [[r0 sdkVersion] retain];
    [r20 setObject:r27 forKeyedSubscript:@"providerSDKVersion"];
    [r27 release];
    [r0 release];
    r0 = [arg2 adapterConfig];
    r0 = [r0 retain];
    r28 = [[r0 subAdapterId] retain];
    [r20 setObject:r28 forKeyedSubscript:@"spId"];
    [r28 release];
    [r0 release];
    r24 = [[arg2 adapterConfig] retain];
    [r23 release];
    r0 = [r24 adSourceNameForEvent];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r20 setObject:r23 forKeyedSubscript:@"provider"];
    [r23 release];
    [r24 release];
    [r20 setObject:@"true" forKeyedSubscript:@"networkInstance"];
    if (r19 != 0x0) {
            [r20 addEntriesFromDictionary:r19];
    }
    r23 = [ISEventData alloc];
    r22 = [[NSNumber numberWithInteger:r22] retain];
    r24 = [r20 copy];
    r21 = [r23 initWithEventId:r22 andAdditionData:r24 timeStamp:r21];
    [r24 release];
    [r22 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r21];
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)sendMediationEvent:(long long)arg2 data:(void *)arg3 {
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
    r21 = arg2;
    r19 = [arg3 retain];
    r0 = [NSMutableDictionary new];
    r20 = r0;
    [r0 setObject:*0x100e8cd00 forKeyedSubscript:@"provider"];
    [r20 setObject:@"true" forKeyedSubscript:@"networkInstance"];
    if (r19 != 0x0) {
            [r20 addEntriesFromDictionary:r19];
    }
    r22 = [ISEventData alloc];
    r21 = [[NSNumber numberWithInteger:r21] retain];
    r23 = [r20 copy];
    r22 = [r22 initWithEventId:r21 andAdditionData:r23];
    [r23 release];
    [r21 release];
    r0 = [ISRewardedVideoEventsEngine sharedInstance];
    r0 = [r0 retain];
    [r0 logEvent:r22];
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)setSmash:(void *)arg2 withInstanceId:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_smashDic)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [*(self + r23) setObject:r2 forKey:r3];
    objc_sync_exit(r21);
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)getSmash:(void *)arg2 {
    [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_smashDic)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [[*(self + r22) objectForKey:r2] retain];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(bool)isAtLeastOneSmashAvailable {
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
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_smashDic)));
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = *(self + r21);
    r0 = [r0 allValues];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_1006cdfc4;

loc_1006cdf60:
    r26 = 0x0;
    goto loc_1006cdf68;

loc_1006cdf68:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r20);
    }
    if ([*(0x0 + r26 * 0x8) mediationState] == 0x3) goto loc_1006cdfd4;

loc_1006cdf98:
    r26 = r26 + 0x1;
    if (r26 < r22) goto loc_1006cdf68;

loc_1006cdfa4:
    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) goto loc_1006cdf60;

loc_1006cdfc4:
    [r20 release];
    r20 = 0x0;
    goto loc_1006cdfe0;

loc_1006cdfe0:
    var_58 = **___stack_chk_guard;
    objc_sync_exit(r19);
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006cdfd4:
    [r20 release];
    r20 = 0x1;
    goto loc_1006cdfe0;
}

-(void)addWaterfallPosition:(void *)arg2 {
    [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_instanceIdToWaterfallPos)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r0 = *(self + r24);
    r0 = [r0 allKeys];
    r0 = [r0 retain];
    r22 = [r0 count];
    [r0 release];
    r22 = [[NSNumber numberWithInteger:r22] retain];
    [*(self + r24) setObject:r22 forKeyedSubscript:r19];
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(bool)doesAllSmashesHaveAvailability {
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
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_smashDic)));
    r0 = [r0 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = *(self + r21);
    r0 = [r0 allValues];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_1006ce170;

loc_1006ce0f8:
    r27 = 0x0;
    goto loc_1006ce100;

loc_1006ce100:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r20);
    }
    r24 = *(0x0 + r27 * 0x8);
    if ([r24 mediationState] == 0x0 || [r24 mediationState] == 0x7) goto loc_1006ce180;

loc_1006ce144:
    r27 = r27 + 0x1;
    if (r27 < r22) goto loc_1006ce100;

loc_1006ce150:
    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) goto loc_1006ce0f8;

loc_1006ce170:
    [r20 release];
    r20 = 0x1;
    goto loc_1006ce18c;

loc_1006ce18c:
    var_58 = **___stack_chk_guard;
    objc_sync_exit(r19);
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1006ce180:
    [r20 release];
    r20 = 0x0;
    goto loc_1006ce18c;
}

-(void *)getWaterfallPosition:(void *)arg2 {
    [arg2 retain];
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_instanceIdToWaterfallPos)));
    r0 = [r0 retain];
    objc_sync_enter(r0);
    [[*(self + r22) objectForKeyedSubscript:r19] retain];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_placement, 0x0);
    objc_storeStrong((int64_t *)&self->_instanceIdToWaterfallPos, 0x0);
    objc_storeStrong((int64_t *)&self->_smashDic, 0x0);
    return;
}

@end