@implementation TJPlacement

-(bool)isContentReady {
    r0 = self->_placementContentTracker;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_internalContentReady));
    [r0 didCallIsContentReady:*(int8_t *)(self + r20)];
    r0 = *(int8_t *)(self + r20);
    return r0;
}

-(bool)isContentAvailable {
    [self->_placementContentTracker didCallIsContentAvailable];
    r0 = *(int8_t *)(int64_t *)&self->_internalContentAvailable;
    return r0;
}

-(void *)internalPlacementName {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_placementName));
    r19 = [*(r20 + r21) retain];
    if ([r20 isLimited] != 0x0) {
            r20 = [[NSString stringWithFormat:@"%@_%@"] retain];
            [r19 release];
            r19 = r20;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 resetPlacement];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self->_adView removeFromSuperview];
    [[&var_20 super] dealloc];
    return;
}

+(void *)placementWithName:(void *)arg2 delegate:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self placementWithName:r21 mediationAgent:0x0 mediationId:0x0 delegate:arg3 systemFlag:0x0 requestFor:0x0] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)placementWithName:(void *)arg2 mediationAgent:(void *)arg3 mediationId:(void *)arg4 delegate:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r19 = [[self placementWithName:r23 mediationAgent:r21 mediationId:r20 delegate:arg5 systemFlag:0x0 requestFor:0x0] retain];
    [r20 release];
    [r21 release];
    [r23 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)placementWithName:(void *)arg2 delegate:(void *)arg3 systemFlag:(bool)arg4 {
    r22 = [arg2 retain];
    r19 = [[self placementWithName:r22 mediationAgent:0x0 mediationId:0x0 delegate:arg3 systemFlag:arg4 requestFor:0x0] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)placementWithNameForOfferwallURL:(void *)arg2 delegate:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [[self placementWithName:r21 mediationAgent:0x0 mediationId:0x0 delegate:arg3 systemFlag:0x0 requestFor:@"offerwall_url"] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)placementWithName:(void *)arg2 mediationAgent:(void *)arg3 mediationId:(void *)arg4 delegate:(void *)arg5 systemFlag:(bool)arg6 requestFor:(void *)arg7 {
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
    r23 = arg6;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r24 = [arg7 retain];
    if ([TJCUtil isSDKEnabled] != 0x0) {
            r23 = [[TJPlacement createPlacement:r19 mediationAgent:r20 mediationId:r21 delegate:r22 systemFlag:r23 requestFor:r24 isLimited:0x0] retain];
    }
    else {
            r23 = 0x0;
    }
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

+(void *)limitedPlacementWithName:(void *)arg2 mediationAgent:(void *)arg3 delegate:(void *)arg4 {
    r31 = r31 - 0x40;
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
    if ([TJCUtil isLimitedSDKEnabled] != 0x0) {
            r22 = [[TJPlacement createPlacement:r19 mediationAgent:r20 mediationId:0x0 delegate:r21 systemFlag:0x0 requestFor:0x0 isLimited:0x1] retain];
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

+(void *)createPlacement:(void *)arg2 mediationAgent:(void *)arg3 mediationId:(void *)arg4 delegate:(void *)arg5 systemFlag:(bool)arg6 requestFor:(void *)arg7 isLimited:(bool)arg8 {
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
    r25 = arg6;
    r27 = arg8;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r23 = [arg5 retain];
    r24 = [arg7 retain];
    r0 = [self retain];
    r22 = r0;
    objc_sync_enter(r0);
    if (*qword_1011dc1a0 != -0x1) {
            dispatch_once(0x1011dc1a0, 0x100ea2d78);
    }
    var_54 = r25;
    r26 = [[TJPlacement generatePlacementDictKeyWithName:r19 systemFlag:r25 requestFor:r24 mediationAgent:r20 mediationId:r21 isLimited:r27] retain];
    r0 = *0x1011dc190;
    r0 = [r0 valueForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = *0x1011dc190;
            r0 = [r0 valueForKey:r2];
            r0 = [r0 retain];
            r28 = r0;
            [r0 setIsLimited:r27];
            [r28 setDelegate:r23];
    }
    else {
            r28 = [[[r22 class] alloc] init];
            [r28 setPlacementName:r19];
            [r28 setDelegate:r23];
            [r28 setIsLimited:r27];
            [r28 setMediationAgent:r20];
            [r28 setMediationId:r21];
            [r28 setMediationSource:r20];
            [*0x1011dc190 setObject:r28 forKey:r26];
            [r28 setSystemFlag:var_54];
            [r28 setRequestFor:r24];
    }
    [r26 release];
    objc_sync_exit(r22);
    [r22 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r28 autorelease];
    return r0;
}

-(void *)getContentTypeForUsageTracking {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self fiveRocksContent];
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r19 = @"mm";
    }
    else {
            if ([r19 internalContentAvailable] != 0x0) {
                    r19 = @"ad";
            }
            else {
                    r19 = @"none";
            }
    }
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)getPlacementType {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_mediationAgent));
    r8 = *(r0 + r8);
    if (r8 != 0x0) {
            r19 = [r8 retain];
    }
    else {
            if ([r0 systemFlag] != 0x0) {
                    r19 = @"sdk";
            }
            else {
                    r19 = @"app";
            }
            [r19 retain];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)notifyRequestDidFail:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [self retain];
    r20 = r0;
    objc_sync_enter(r0);
    r21 = *0x1011dc190;
    r0 = [r20 generatePlacementDictKey];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r21 removeObjectForKey:r22];
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    r22 = (int64_t *)&r20->_delegate;
    r0 = objc_loadWeakRetained(r22);
    r24 = [r0 respondsToSelector:@selector(requestDidFail:error:), r3];
    [r0 release];
    if (r24 != 0x0) {
            r22 = objc_loadWeakRetained(r22);
            r23 = [[TJCUtil createErrorWithString:r19] retain];
            [r22 requestDidFail:r20 error:r23];
            [r23 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)didReadyPlacementContent:(void *)arg2 {
    *(int8_t *)(int64_t *)&self->_internalContentAvailable = 0x1;
    [self notifyRequestDidSucceed];
    [self notifyContentIsReady];
    return;
}

-(void)notifyRequestDidSucceed {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = r19->_placementContentTracker;
    r21 = [[self internalPlacementName] retain];
    r22 = [[r19 getPlacementType] retain];
    r23 = [[r19 getContentTypeForUsageTracking] retain];
    [r20 didReceiveRequestForPlacement:r21 withPlacementType:r22 withContentType:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    r21 = [[r19 placementName] retain];
    [TJCLog logWithLevel:0x4 format:@"Content request delivered successfully for placement %@, contentAvailable: %d, mediationAgent: %@"];
    [r21 release];
    r20 = (int64_t *)&r19->_delegate;
    r0 = objc_loadWeakRetained(r20);
    r23 = [r0 respondsToSelector:@selector(requestDidSucceed:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            [r0 requestDidSucceed:r19];
            [r0 release];
    }
    return;
}

-(void)didFailToReadyPlacementContent:(void *)arg2 {
    [arg2 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r21 = *0x1011dc190;
    [[r20 generatePlacementDictKey] retain];
    [r21 removeObjectForKey:r2];
    [r22 release];
    objc_sync_exit(r20);
    [r20 release];
    [r19 release];
    return;
}

-(void)didClosePlacementContent:(void *)arg2 {
    return;
}

-(void)didShowPlacementContent:(void *)arg2 {
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
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_placementContentTracker));
    [*(r19 + r20) didShowContent];
    [*(r19 + r20) contentDidRender];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 respondsToSelector:@selector(contentDidAppear:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 delegate];
            r0 = [r0 retain];
            [r0 contentDidAppear:r19];
            [r0 release];
    }
    return;
}

-(void)didClickPlacementContent:(void *)arg2 {
    return;
}

-(void)didClickPlacementContent:(void *)arg2 purchaseRequestForProductId:(void *)arg3 withCampaignId:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 respondsToSelector:@selector(placement:didRequestPurchase:productId:), r3, r4];
    [r0 release];
    if (r25 != 0x0) {
            r0 = [TJActionRequest alloc];
            r0 = [r0 init];
            r24 = r0;
            [r0 setRequestId:r20];
            [r24 setToken:0x0];
            r0 = [r21 delegate];
            r0 = [r0 retain];
            [r0 placement:r21 didRequestPurchase:r24 productId:r19];
            [r0 release];
            [r24 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)didClickPlacementContent:(void *)arg2 rewardRequestForRewardId:(void *)arg3 name:(void *)arg4 quantity:(unsigned long long)arg5 token:(void *)arg6 {
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
    r22 = arg5;
    r21 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r23 = [arg6 retain];
    r0 = [r21 delegate];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(placement:didRequestReward:itemId:quantity:), r3, r4, r5];
    [r0 release];
    if (r27 != 0x0) {
            r0 = [TJActionRequest alloc];
            r0 = [r0 init];
            r26 = r0;
            [r0 setRequestId:r19];
            [r26 setToken:r23];
            r0 = [r21 delegate];
            r0 = [r0 retain];
            [r0 placement:r21 didRequestReward:r26 itemId:r20 quantity:r22];
            [r0 release];
            [r26 release];
    }
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)didDismissPlacementContent:(void *)arg2 {
    [self didDismissPlacementContentWithBlock:0x0];
    return;
}

-(void)didDismissPlacementContentWithBlock:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    [r20 setFiveRocksContent:0x0];
    if (([r20 redirected] & 0x1) == 0x0) {
            if (r19 != 0x0) {
                    (*(r19 + 0x10))(r19);
            }
            r0 = [r20 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(contentDidDisappear:)];
            [r0 release];
            if (r24 != 0x0) {
                    r0 = [r20 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 contentDidDisappear:r20];
                    [r0 release];
            }
            r0 = [r20 retain];
            objc_sync_enter(r0);
            r21 = *0x1011dc190;
            [[r20 generatePlacementDictKey] retain];
            [r21 removeObjectForKey:r2];
            [r22 release];
            objc_sync_exit(r20);
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)didDismissPlacementContent:(void *)arg2 purchaseRequestForProductId:(void *)arg3 withCampaignId:(void *)arg4 {
    [self didDismissPlacementContentWithBlock:0x0];
    return;
}

-(void)didClickPlacementContent:(void *)arg2 redirectURL:(void *)arg3 adContent:(void *)arg4 {
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
    r21 = self;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r23 = [TJCUIWebPageView alloc];
    r0 = [UIScreen mainScreen];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    [r0 bounds];
    r0 = [r23 initWithFrame:r21 placement:r3];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
    r8 = *(r21 + r27);
    *(r21 + r27) = r0;
    [r8 release];
    [r24 release];
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_adContentTracker));
    r25 = *(r21 + r24);
    if (r25 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r25 != r0) {
                    [*(r21 + r27) setAdContentTracker:*(r21 + r24)];
                    r0 = *(r21 + r24);
                    r0 = [r0 startContentRenderTracking];
                    r29 = r29;
                    [[r0 retain] release];
            }
    }
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 viewHandler];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 isViewOpen];
    [r0 release];
    [r24 release];
    if (r26 != 0x0) {
            [TJCLog logWithLevel:0x3 format:@"Only one view can be presented at a time."];
    }
    [r21 setRedirected:0x1];
    r0 = [r21 viewControllerBeforeRedirect];
    r29 = r29;
    r24 = [r0 retain];
    [r21 setupAdViewDisplay:r24];
    [r24 release];
    if (r19 == 0x0) goto loc_10094970c;

loc_10094968c:
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == r19) goto loc_100949704;

loc_1009496b4:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_100949718;

loc_1009496e0:
    r25 = [r19 length];
    [r24 release];
    if (r25 != 0x0) goto loc_100949720;

loc_10094970c:
    r24 = 0x0;
    if (r20 != 0x0) goto loc_100949748;

loc_100949714:
    r24 = 0x0;
    goto loc_1009497c8;

loc_1009497c8:
    r22 = [[NSURLRequest alloc] initWithURL:r24 cachePolicy:0x0 timeoutInterval:r4];
    r25 = [[NSOperationQueue mainQueue] retain];
    var_58 = [r24 retain];
    [NSURLConnection sendAsynchronousRequest:r22 queue:r25 completionHandler:&var_80];
    [r25 release];
    [var_58 release];
    goto loc_10094991c;

loc_10094991c:
    [r22 release];
    goto loc_100949924;

loc_100949924:
    [r24 release];
    [r20 release];
    [r19 release];
    return;

loc_100949748:
    r0 = [NSNull null];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == r20) goto loc_1009497c0;

loc_100949770:
    [NSString class];
    if (([r20 isKindOfClass:r2] & 0x1) == 0x0) goto loc_10094988c;

loc_10094979c:
    r26 = [r20 length];
    [r25 release];
    if (r26 != 0x0) goto loc_100949894;
    goto loc_1009497c8;

loc_100949894:
    r0 = *(r21 + r27);
    r0 = [r0 mainWebView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100949924;

loc_1009498bc:
    r0 = *(r21 + r27);
    r0 = [r0 mainWebView];
    r0 = [r0 retain];
    [r0 loadHTMLCreative:r20 creativeURL:r24];
    [r0 release];
    r0 = *(r21 + r27);
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    r22 = r0;
    [r0 animateTJCView:*(r21 + r27) isClosing:0x0];
    goto loc_10094991c;

loc_10094988c:
    [r25 release];
    goto loc_100949894;

loc_1009497c0:
    [r25 release];
    goto loc_1009497c8;

loc_100949720:
    r0 = [NSURL URLWithString:r2];
    r29 = r29;
    r24 = [r0 retain];
    if (r20 == 0x0) goto loc_1009497c8;
    goto loc_100949748;

loc_100949718:
    [r24 release];
    goto loc_100949720;

loc_100949704:
    [r24 release];
    goto loc_10094970c;
}

-(void)didDismissPlacementContent:(void *)arg2 rewardRequestForRewardId:(void *)arg3 name:(void *)arg4 quantity:(unsigned long long)arg5 token:(void *)arg6 {
    r23 = [arg3 retain];
    r21 = [arg4 retain];
    r19 = [arg6 retain];
    var_50 = r23;
    r23 = [r23 retain];
    var_48 = r19;
    r19 = [r19 retain];
    var_40 = r21;
    r21 = [r21 retain];
    [self didDismissPlacementContentWithBlock:&var_78];
    [var_40 release];
    [var_48 release];
    [var_50 release];
    [r21 release];
    [r19 release];
    [r23 release];
    return;
}

-(void)resetPlacement {
    *(int8_t *)(int64_t *)&self->_didFireReady = 0x0;
    *(int8_t *)(int64_t *)&self->_prerenderingRequested = 0x0;
    *(int8_t *)(int64_t *)&self->_internalContentAvailable = 0x0;
    *(int8_t *)(int64_t *)&self->_internalContentReady = 0x0;
    *(int8_t *)(int64_t *)&self->_disablePreload = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_content));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    objc_storeStrong((int64_t *)&self->_redirectURL, @"");
    r0 = [TJPlacementContentTracker alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_placementContentTracker));
    r8 = *(self + r9);
    *(self + r9) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_adContentTracker));
    r0 = *(self + r8);
    *(self + r8) = 0x0;
    [r0 release];
    return;
}

-(bool)isConnected {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [self isLimited];
    r19 = [[self placementName] retain];
    r21 = [[NSString stringWithFormat:r2] retain];
    if ((r22 & 0x1) != 0x0) {
            r1 = @selector(checkHasLimitedConnected:);
    }
    else {
            r1 = @selector(checkHasConnected:);
    }
    r20 = objc_msgSend(@class(TJCUtil), r1);
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)getAppID {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [self isLimited];
    r0 = [Tapjoy sharedTapjoyConnect];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if ((r20 & 0x1) != 0x0) {
            r0 = [r19 limitedAppID];
    }
    else {
            r0 = [r19 appID];
    }
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)placementServiceURL {
    r20 = [[self getAppID] retain];
    r19 = [[NSString stringWithFormat:@"%@%@/%@/%@"] retain];
    [r20 release];
    r20 = [[NSURL URLWithString:r2] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)mediationContentURL {
    r20 = [[self getAppID] retain];
    r19 = [[NSString stringWithFormat:@"%@%@/%@/%@"] retain];
    [r20 release];
    r20 = [[NSURL URLWithString:r2] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)auctionContentURL {
    r20 = [[self getAppID] retain];
    r19 = [[NSString stringWithFormat:@"%@%@/%@/%@"] retain];
    [r20 release];
    r20 = [[NSURL URLWithString:r2] retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)sendRequestWithURL:(void *)arg2 params:(void *)arg3 usageTracker:(void *)arg4 {
    r20 = [arg2 retain];
    r25 = [arg3 retain];
    var_A0 = [arg4 retain];
    r19 = [[FRUtils postStringFromDictionary:r25 multiDepths:0x0 last:0x1] retain];
    var_98 = r19;
    r0 = [NSMutableURLRequest alloc];
    r0 = [r0 initWithURL:r20 cachePolicy:0x1 timeoutInterval:0x1];
    r24 = r0;
    [r0 setValue:@"gzip, deflate" forHTTPHeaderField:@"Accept-Encoding"];
    r0 = [r19 dataUsingEncoding:0x4];
    r0 = [r0 retain];
    [r0 length];
    r26 = [[NSString stringWithFormat:@"%d"] retain];
    [r24 setHTTPMethod:@"POST"];
    [r24 setValue:r26 forHTTPHeaderField:@"Content-Length"];
    [r24 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [r24 setHTTPBody:r0];
    r27 = @class(TJCLog);
    r28 = [[self placementName] retain];
    r19 = [[self mediationAgent] retain];
    [r27 logWithLevel:0x4 format:@"Sending content request for placement %@, mediationAgent: %@"];
    [r19 release];
    [r28 release];
    r19 = @class(TJCLog);
    r27 = [[r20 absoluteString] retain];
    [r19 logWithBaseURL:r27 path:@"" params:r25];
    [r25 release];
    [r27 release];
    [self setIsRequesting:0x1];
    r25 = [[NSOperationQueue mainQueue] retain];
    r21 = [var_A0 retain];
    r22 = [r24 retain];
    var_58 = r20;
    r20 = [r20 retain];
    [NSURLConnection sendAsynchronousRequest:r22 queue:r25 completionHandler:&var_90];
    [r25 release];
    [var_58 release];
    [r24 release];
    [var_A0 release];
    [r20 release];
    [r22 release];
    [r21 release];
    [r26 release];
    [r0 release];
    [var_98 release];
    return;
}

-(void)requestContent {
    r31 = r31 - 0xb0;
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
    r19 = self;
    r0 = [TJRegulations getUserConsent];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_10094a1b4;

loc_10094a0c8:
    r21 = [[TJRegulations getUserConsent] retain];
    r0 = [NSNull null];
    r29 = r29;
    r23 = [r0 retain];
    if (r21 == r23) goto loc_10094a1a4;

loc_10094a108:
    r0 = [TJRegulations getUserConsent];
    r29 = r29;
    r24 = [r0 retain];
    [NSString class];
    if ([r24 isKindOfClass:r2] != 0x0) {
            r0 = [TJRegulations getUserConsent];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 length];
            [r0 release];
            [r24 release];
            [r23 release];
            [r21 release];
            [r20 release];
            if (r25 == 0x0) {
                    [TJCLog logWithLevel:0x3 format:@"[INFO] Your application calls requestContent without having previously called setUserConsent. You can review Tapjoy supported consent API here - https://dev.tapjoy.com/sdk-integration/#sdk11122_gdpr_release."];
            }
    }
    else {
            [r24 release];
            [r23 release];
            [r21 release];
            [r20 release];
    }
    goto loc_10094a200;

loc_10094a200:
    r0 = [r19 placementName];
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_10094a314;

loc_10094a224:
    r22 = [[r19 placementName] retain];
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r22 == r24) goto loc_10094a304;

loc_10094a268:
    r0 = [r19 placementName];
    r29 = r29;
    r25 = [r0 retain];
    r2 = [NSString class];
    if ([r25 isKindOfClass:r2] == 0x0) goto loc_10094a460;

loc_10094a2ac:
    r0 = [r19 placementName];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 length];
    [r0 release];
    [r25 release];
    [r24 release];
    [r22 release];
    [r20 release];
    if (r27 != 0x0) goto loc_10094a480;

loc_10094a31c:
    r0 = [TJUsageTracking startUsage:@"TJPlacement.requestContent"];
    r0 = [r0 retain];
    r22 = [[r0 addDimensionName:@"placement" value:@""] retain];
    r23 = [[r19 getPlacementType] retain];
    r20 = [[r22 addDimensionName:@"placement_type" value:r23] retain];
    [r23 release];
    [r22 release];
    [r0 release];
    r0 = [r20 end];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 addMisuse:@"invalid name"];
    r0 = [r0 retain];
    [r0 track];
    [r0 release];
    [r21 release];
    [r19 notifyRequestDidFail:@"Invalid placement name -- TJPlacement requires a valid placement name."];
    r0 = r20;
    goto loc_10094a43c;

loc_10094a43c:
    [r0 release];
    return;

loc_10094a480:
    if ([r19 retryQueued] == 0x0) goto loc_10094a4dc;

loc_10094a494:
    r19 = [[r19 placementName] retain];
    [TJCLog logWithLevel:0x4 format:@"Placement %@ is already requesting content"];
    r0 = r19;
    goto loc_10094a43c;

loc_10094a4dc:
    [r19 setRetryTimeout:[TJSdkConfiguration requestContentRetryTimeout]];
    if ([r19 retryTimeout] >= 0x1) {
            [r19 retryTimeout];
            asm { scvtf      d0, w0 };
            asm { fdiv       d8, d0, d1 };
            r0 = [NSDate date];
            r0 = [r0 retain];
            r20 = r0;
            v0 = v8;
            r0 = [r0 dateByAddingTimeInterval:r2];
            r29 = r29;
            r22 = [r0 retain];
            [r19 setRetryDeadline:r22];
            [r22 release];
            [r20 release];
            r20 = [*(r24 + 0xbc8) newRequestContentRetryBackoff];
            [r19 setRetryBackoff:r20];
            [r20 release];
    }
    else {
            [r19 setRetryDeadline:0x0];
            [r19 setRetryBackoff:0x0];
    }
    r24 = [[TJUsageTracking startUsage:@"TJPlacement.requestContent"] retain];
    r25 = [[r19 internalPlacementName] retain];
    r26 = [[r24 addDimensionName:@"placement" value:r25] retain];
    r27 = [[r19 getPlacementType] retain];
    r0 = [r26 addDimensionName:@"placement_type" value:r27];
    r29 = r29;
    r20 = [r0 retain];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    if ([r19 isRequesting] == 0x0) goto loc_10094a77c;

loc_10094a6dc:
    r19 = [[r19 placementName] retain];
    [TJCLog logWithLevel:0x4 format:@"Placement %@ is already requesting content"];
    [r19 release];
    r0 = [r20 end];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 addMisuse:@"already doing"];
    r0 = [r0 retain];
    [r0 track];
    [r0 release];
    r0 = r19;
    goto loc_10094abac;

loc_10094abac:
    [r0 release];
    goto loc_10094abb0;

loc_10094abb0:
    [r20 release];
    return;

loc_10094a77c:
    r0 = [r19 retain];
    r19 = r0;
    objc_sync_enter(r0);
    r23 = [[r19 generatePlacementDictKey] retain];
    r0 = *0x1011dc190;
    r0 = [r0 valueForKey:r23];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [*0x1011dc190 setObject:r2 forKey:r3];
    }
    [r23 release];
    objc_sync_exit(r19);
    [r19 release];
    if (([r19 isConnected] & 0x1) == 0x0) goto loc_10094a904;

loc_10094a81c:
    r0 = *0x1011dc198;
    r0 = [r0 retain];
    r25 = r0;
    objc_sync_enter(r0);
    r23 = *0x1011dc198;
    r26 = [[r19 generatePlacementDictKey] retain];
    r0 = [r23 objectForKey:r2];
    r29 = r29;
    r23 = [r0 retain];
    [r26 release];
    if (r23 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r26 = [r0 retain];
            if (r23 != r26) {
                    [r23 timeIntervalSinceNow];
                    [r26 release];
                    if (d8 <= 0x0) {
                            r26 = *0x1011dc198;
                            r0 = [r19 generatePlacementDictKey];
                            r29 = r29;
                            [r0 retain];
                            [r26 removeObjectForKey:r2];
                            [r24 release];
                            [r23 release];
                            r23 = 0x0;
                    }
            }
            else {
                    [r23 release];
            }
    }
    objc_sync_exit(r25);
    [r25 release];
    if (r23 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r23 != r0) {
                    r23 = [r23 retain];
                    var_68 = [r20 retain];
                    dispatch_async(*__dispatch_main_q, &var_98);
                    [var_68 release];
                    r0 = r23;
            }
            else {
                    if (*(int8_t *)(int64_t *)&r19->_internalContentAvailable != 0x0) {
                            r21 = [[NSNumber numberWithBool:r2] retain];
                            r0 = [r20 addDimensionName:@"was_available" value:r21];
                            r29 = r29;
                            [[r0 retain] release];
                            [r21 release];
                    }
                    if (*(int8_t *)(int64_t *)&r19->_internalContentReady != 0x0) {
                            r21 = [[NSNumber numberWithBool:r2] retain];
                            r0 = [r20 addDimensionName:@"was_ready" value:r21];
                            r29 = r29;
                            [[r0 retain] release];
                            [r21 release];
                    }
                    [r19 resetPlacement];
                    if (r19->_mediationAgent != 0x0) {
                            if (r19->_auctionData != 0x0) {
                                    r0 = [r19 auctionContentURL];
                                    r29 = r29;
                            }
                            else {
                                    r0 = [r19 mediationContentURL];
                                    r29 = r29;
                            }
                    }
                    else {
                            r0 = [r19 placementServiceURL];
                            r29 = r29;
                    }
                    r21 = [r0 retain];
                    r22 = [[r19 requestParams] retain];
                    [r19 sendRequestWithURL:r21 params:r22 usageTracker:r20];
                    [r22 release];
                    r0 = r21;
            }
    }
    else {
            if (*(int8_t *)(int64_t *)&r19->_internalContentAvailable != 0x0) {
                    r21 = [[NSNumber numberWithBool:r2] retain];
                    r0 = [r20 addDimensionName:@"was_available" value:r21];
                    r29 = r29;
                    [[r0 retain] release];
                    [r21 release];
            }
            if (*(int8_t *)(int64_t *)&r19->_internalContentReady != 0x0) {
                    r21 = [[NSNumber numberWithBool:r2] retain];
                    r0 = [r20 addDimensionName:@"was_ready" value:r21];
                    r29 = r29;
                    [[r0 retain] release];
                    [r21 release];
            }
            [r19 resetPlacement];
            if (r19->_mediationAgent != 0x0) {
                    if (r19->_auctionData != 0x0) {
                            r0 = [r19 auctionContentURL];
                            r29 = r29;
                    }
                    else {
                            r0 = [r19 mediationContentURL];
                            r29 = r29;
                    }
            }
            else {
                    r0 = [r19 placementServiceURL];
                    r29 = r29;
            }
            r21 = [r0 retain];
            r22 = [[r19 requestParams] retain];
            [r19 sendRequestWithURL:r21 params:r22 usageTracker:r20];
            [r22 release];
            r0 = r21;
    }
    [r0 release];
    r0 = r23;
    goto loc_10094abac;

loc_10094a904:
    r0 = [r20 end];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 addMisuse:@"not connected"];
    r0 = [r0 retain];
    [r0 track];
    [r0 release];
    [r21 release];
    [r19 notifyRequestDidFail:@"Initial Connection Failed"];
    goto loc_10094abb0;

loc_10094a460:
    [r25 release];
    [r24 release];
    [r22 release];
    [r20 release];
    goto loc_10094a480;

loc_10094a304:
    [r24 release];
    [r22 release];
    goto loc_10094a314;

loc_10094a314:
    [r20 release];
    goto loc_10094a31c;

loc_10094a1a4:
    [r23 release];
    [r21 release];
    goto loc_10094a1b4;

loc_10094a1b4:
    [r20 release];
    [TJCLog logWithLevel:0x3 format:@"[INFO] Your application calls requestContent without having previously called setUserConsent. You can review Tapjoy supported consent API here - https://dev.tapjoy.com/sdk-integration/#sdk11122_gdpr_release."];
    goto loc_10094a200;
}

-(void)setupAdViewDisplay:(void *)arg2 {
    [self->_adView setupAndDisplay:arg2 placement:self];
    return;
}

-(void *)requestParams {
    r31 = r31 - 0x160;
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
    r27 = self;
    r24 = [self isLimited];
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 util];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if ((r24 & 0x1) != 0x0) {
            r24 = [[r23 genericLimitedParameters] retain];
            r0 = [NSMutableDictionary dictionaryWithDictionary:r24];
            r29 = r29;
    }
    else {
            r24 = [[r23 genericParametersWithUserID] retain];
            r0 = [NSMutableDictionary dictionaryWithDictionary:r24];
            r29 = r29;
    }
    r20 = [r0 retain];
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 setObject:r27->_placementName forKeyedSubscript:@"event_name"];
    [r20 setObject:@"true" forKeyedSubscript:@"event_preload"];
    r0 = @class(Tapjoy);
    r0 = [r0 sharedTapjoyConnect];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 analyticsApiKey];
    r29 = r29;
    r19 = [r0 retain];
    [r23 release];
    if (r19 != 0x0) {
            r2 = @"true";
            [r20 setObject:r19 forKeyedSubscript:@"analytics_api_key"];
    }
    if (r27->_mediationAgent != 0x0) {
            [r20 setObject:r2 forKeyedSubscript:@"mediation_agent"];
    }
    if (r27->_mediationId != 0x0) {
            [r20 setObject:r2 forKeyedSubscript:@"mediation_id"];
    }
    if (r27->_mediationSource != 0x0) {
            [r20 setObject:r2 forKeyedSubscript:@"mediation_source"];
    }
    var_138 = r19;
    if (r27->_adapterVersion != 0x0) {
            [r20 setObject:r2 forKeyedSubscript:@"adapter_version"];
    }
    r21 = @selector(setObject:forKeyedSubscript:);
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_auctionData));
    r19 = r8;
    r0 = *(r27 + r8);
    if (r0 != 0x0) {
            r26 = r20;
            r23 = r27;
            r0 = [r0 allKeys];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_130 = r1;
            var_128 = r0;
            r25 = objc_msgSend(r0, r1);
            if (r25 != 0x0) {
                    do {
                            r21 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_128);
                                    }
                                    [[NSString stringWithFormat:@"%@%@"] retain];
                                    r0 = *(r23 + r19);
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    [r0 retain];
                                    [r26 setObject:r2 forKeyedSubscript:r3];
                                    [r22 release];
                                    [r24 release];
                                    r21 = r21 + 0x1;
                            } while (r21 < r25);
                            r25 = objc_msgSend(var_128, var_130);
                    } while (r25 != 0x0);
            }
            [var_128 release];
            r27 = r23;
            r20 = r26;
            r21 = @selector(setObject:forKeyedSubscript:);
    }
    r0 = [r27 pushId];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_10094d938;

loc_10094d844:
    r25 = [[r27 pushId] retain];
    r0 = [NSNull null];
    r29 = r29;
    r26 = [r0 retain];
    if (r25 == r26) goto loc_10094d928;

loc_10094d884:
    r0 = [r27 pushId];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r27;
    r27 = r0;
    [NSString class];
    if ([r27 isKindOfClass:r2] == 0x0) goto loc_10094d940;

loc_10094d8cc:
    r0 = [r19 pushId];
    r29 = r29;
    r0 = [r0 retain];
    r28 = [r0 length];
    [r0 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    r27 = r19;
    if (r28 != 0x0) goto loc_10094d964;

loc_10094d99c:
    r0 = [r27 systemFlag];
    r24 = var_138;
    if (r0 != 0x0) {
            objc_msgSend(r20, r21);
    }
    r0 = [r27 requestFor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r27 requestFor];
            r29 = r29;
            [r0 retain];
            objc_msgSend(r20, r21);
            [r22 release];
    }
    if ([r27 retryCount] >= 0x1) {
            [r27 retryCount];
            [[NSNumber numberWithInt:r2] retain];
            objc_msgSend(r20, r21);
            [r19 release];
    }
    var_58 = **___stack_chk_guard;
    [r24 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10094d964:
    r0 = [r27 pushId];
    r29 = r29;
    [r0 retain];
    objc_msgSend(r20, r21);
    r0 = r22;
    goto loc_10094d998;

loc_10094d998:
    [r0 release];
    goto loc_10094d99c;

loc_10094d940:
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    r27 = r19;
    goto loc_10094d964;

loc_10094d928:
    [r26 release];
    [r25 release];
    goto loc_10094d938;

loc_10094d938:
    r0 = r24;
    goto loc_10094d998;
}

-(void)showContentWithViewController:(void *)arg2 {
    r31 = r31 - 0xe0;
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
    r21 = self;
    var_B0 = [arg2 retain];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_placementContentTracker));
    [*(r21 + r19) didCallShow];
    r23 = [[TJUsageTracking startUsage:@"TJPlacement.showContent"] retain];
    r24 = [[r21 internalPlacementName] retain];
    r25 = [[r23 addDimensionName:@"placement" value:r24] retain];
    r26 = [[r21 getPlacementType] retain];
    r27 = [[r25 addDimensionName:@"placement_type" value:r26] retain];
    r28 = [[r21 getContentTypeForUsageTracking] retain];
    r0 = [r27 addDimensionName:@"content_type" value:r28];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_internalContentReady));
    if (*(int8_t *)(r21 + r26) != 0x0) {
            r23 = [[NSNumber numberWithBool:r2] retain];
            r0 = [r20 addDimensionName:@"content_ready" value:r23];
            r29 = r29;
            [[r0 retain] release];
            [r23 release];
    }
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_adView));
    if ([*(r21 + r28) isPrerendered] != 0x0) {
            r23 = [[NSNumber numberWithBool:r2] retain];
            r0 = [r20 addDimensionName:@"prerendered" value:r23];
            r29 = r29;
            [[r0 retain] release];
            [r23 release];
    }
    [*(r21 + r19) setShowContentTracker:r20];
    r0 = [r21 retain];
    r22 = r0;
    objc_sync_enter(r0);
    r24 = [[r22 generatePlacementDictKey] retain];
    r0 = *0x1011dc190;
    r0 = [r0 valueForKey:r24];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [*0x1011dc190 setObject:r2 forKey:r3];
    }
    [r24 release];
    objc_sync_exit(r22);
    [r22 release];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_internalContentAvailable));
    if (*(int8_t *)(r22 + r9) == 0x0) goto loc_10094df04;

loc_10094ddec:
    var_B8 = r9;
    r0 = [r22 fiveRocksContent];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 == 0x0) goto loc_10094df9c;

loc_10094de14:
    r0 = [r22 fiveRocksContent];
    r0 = [r0 retain];
    r23 = r26;
    r26 = r0;
    r0 = [NSNull null];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r26 release];
    [r25 release];
    COND = r26 == r0;
    r26 = r23;
    if (COND) goto loc_10094dfa4;

loc_10094de78:
    [r22 setViewControllerBeforeRedirect:var_B0];
    r0 = [TJPlacement getCurrentViewType];
    if (r0 == 0x0) goto loc_10094e118;

loc_10094dea4:
    if (r0 != 0x3) goto loc_10094e150;

loc_10094deac:
    [FiveRocks closeFRPlacementContent];
    dispatch_async(*__dispatch_main_q, &var_A8);
    goto loc_10094e220;

loc_10094e220:
    r0 = *0x1011dc198;
    r0 = [r0 retain];
    objc_sync_enter(r0);
    r25 = *0x1011dc198;
    r23 = [[r22 generatePlacementDictKey] retain];
    [r25 removeObjectForKey:r23];
    [r23 release];
    objc_sync_exit(r24);
    [r24 release];
    *(int8_t *)(r22 + var_B8) = 0x0;
    *(int8_t *)(r21 + r26) = 0x0;
    goto loc_10094e288;

loc_10094e288:
    [r20 release];
    [var_B0 release];
    return;

loc_10094e150:
    [TJCLog logWithLevel:0x3 format:@"Another content is presented now."];
    r0 = [r20 addMisuse:@"another content showing"];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 end];
    goto loc_10094e1a4;

loc_10094e1a4:
    r0 = [r0 retain];
    [r0 track];
    [r0 release];
    r0 = r21;
    goto loc_10094e1c4;

loc_10094e1c4:
    [r0 release];
    goto loc_10094e288;

loc_10094e118:
    r0 = [r22 fiveRocksContent];
    r29 = r29;
    r24 = [r0 retain];
    [FiveRocks showFRPlacementContent:r24];
    goto loc_10094e218;

loc_10094e218:
    [r24 release];
    goto loc_10094e220;

loc_10094dfa4:
    [TJCLog logWithLevel:r2 format:r3];
    r0 = [TJPlacement getCurrentViewType];
    if (r0 >= 0x3) goto loc_10094e048;

loc_10094dff8:
    [TJCLog logWithLevel:r2 format:r3];
    r0 = [r20 addMisuse:@"another content showing"];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 end];
    goto loc_10094e1a4;

loc_10094e048:
    r3 = @"showContentWithViewController called for placement %@";
    if (r0 == 0x3) {
            r3 = @"Closing N2E content";
            [TJCLog logWithLevel:r2 format:r3];
            [FiveRocks closeFRPlacementContent];
    }
    if (*(int8_t *)(int64_t *)&r22->_disablePreload == 0x0) goto loc_10094e1d4;

loc_10094e08c:
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_redirectURL));
    r25 = *(r22 + r27);
    if (r25 == 0x0) goto loc_10094e1d4;

loc_10094e09c:
    r0 = [NSNull null];
    r29 = r29;
    r24 = [r0 retain];
    if (r25 == r24) goto loc_10094e1cc;

loc_10094e0c4:
    r25 = *(r22 + r27);
    [NSString class];
    if (([r25 isKindOfClass:r2] & 0x1) != 0x0) {
            r25 = [*(r22 + r27) length];
            [r24 release];
            if (r25 == 0x0) {
                    [r22 setupAdViewDisplay:var_B0];
                    r0 = *(r21 + r28);
                    r0 = [r0 viewHandler];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 animateTJCView:*(r21 + r28) isClosing:0x0];
            }
            else {
                    r25 = [TJCUIWebPageView alloc];
                    r0 = [UIScreen mainScreen];
                    r0 = [r0 retain];
                    var_C0 = r26;
                    r26 = r0;
                    [r0 bounds];
                    r0 = [r25 initWithFrame:r22 placement:r3];
                    r8 = *(r21 + r28);
                    *(r21 + r28) = r0;
                    [r8 release];
                    [r26 release];
                    [*(r21 + r28) setAdContentTracker:r22->_adContentTracker];
                    [r22 setupAdViewDisplay:var_B0];
                    [*(r21 + r28) setIsViewVisible:0x1];
                    r25 = [[NSURL URLWithString:*(r22 + r27)] retain];
                    r0 = [NSMutableURLRequest alloc];
                    r0 = [r0 initWithURL:r25 cachePolicy:0x0 timeoutInterval:r4];
                    r24 = r0;
                    [r0 setValue:@"gzip, deflate" forHTTPHeaderField:@"Accept-Encoding"];
                    [r24 setHTTPMethod:@"POST"];
                    [r24 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
                    r0 = [NSOperationQueue mainQueue];
                    r29 = r29;
                    r27 = [r0 retain];
                    var_58 = r25;
                    r25 = [r25 retain];
                    r26 = var_C0;
                    [NSURLConnection sendAsynchronousRequest:r24 queue:r27 completionHandler:&var_80];
                    [r27 release];
                    [var_58 release];
                    [r25 release];
            }
    }
    else {
            [r24 release];
            r25 = [TJCUIWebPageView alloc];
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            var_C0 = r26;
            r26 = r0;
            [r0 bounds];
            r0 = [r25 initWithFrame:r22 placement:r3];
            r8 = *(r21 + r28);
            *(r21 + r28) = r0;
            [r8 release];
            [r26 release];
            [*(r21 + r28) setAdContentTracker:r22->_adContentTracker];
            [r22 setupAdViewDisplay:var_B0];
            [*(r21 + r28) setIsViewVisible:0x1];
            r25 = [[NSURL URLWithString:*(r22 + r27)] retain];
            r0 = [NSMutableURLRequest alloc];
            r0 = [r0 initWithURL:r25 cachePolicy:0x0 timeoutInterval:r4];
            r24 = r0;
            [r0 setValue:@"gzip, deflate" forHTTPHeaderField:@"Accept-Encoding"];
            [r24 setHTTPMethod:@"POST"];
            [r24 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
            r0 = [NSOperationQueue mainQueue];
            r29 = r29;
            r27 = [r0 retain];
            var_58 = r25;
            r25 = [r25 retain];
            r26 = var_C0;
            [NSURLConnection sendAsynchronousRequest:r24 queue:r27 completionHandler:&var_80];
            [r27 release];
            [var_58 release];
            [r25 release];
    }
    goto loc_10094e218;

loc_10094e1cc:
    [r24 release];
    goto loc_10094e1d4;

loc_10094e1d4:
    [r22 setupAdViewDisplay:var_B0];
    r0 = *(r21 + r28);
    r0 = [r0 viewHandler];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    [r0 animateTJCView:*(r21 + r28) isClosing:0x0];
    goto loc_10094e218;

loc_10094df9c:
    [r25 release];
    goto loc_10094dfa4;

loc_10094df04:
    [TJCLog logWithLevel:0x3 format:@"No content available for event, cannot present"];
    r0 = [r20 end];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 addMisuse:@"no content"];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 end];
    r0 = [r0 retain];
    [r0 track];
    [r0 release];
    [r23 release];
    r0 = r22;
    goto loc_10094e1c4;
}

-(void)viewDidAppear {
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
    if (([self redirected] & 0x1) == 0x0) {
            [r19->_placementContentTracker didShowContent];
            r20 = (int64_t *)&r19->_delegate;
            r0 = objc_loadWeakRetained(r20);
            r23 = [r0 respondsToSelector:@selector(contentDidAppear:)];
            [r0 release];
            if (r23 != 0x0) {
                    r0 = objc_loadWeakRetained(r20);
                    [r0 contentDidAppear:r19];
                    [r0 release];
            }
    }
    return;
}

-(void)viewDidDisappear {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r20 = *0x1011dc190;
    r21 = [[r19 generatePlacementDictKey] retain];
    [r20 removeObjectForKey:r21];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_didIncrementCache));
    if (*(int8_t *)(r19 + r20) != 0x0) {
            [TJCacheProtocol decrementPlacementCacheCount];
            *(int8_t *)(r19 + r20) = 0x0;
    }
    [r19->_placementContentTracker didDismissContent];
    [r19->_adView clearWindow];
    r20 = (int64_t *)&r19->_delegate;
    r0 = objc_loadWeakRetained(r20);
    r23 = [r0 respondsToSelector:@selector(contentDidDisappear:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            [r0 contentDidDisappear:r19];
            [r0 release];
    }
    return;
}

-(void)notifyContentIsReady {
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
    r19 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_didFireReady));
    if (*(int8_t *)(r19 + r24) == 0x0) {
            r0 = [r19 placementName];
            r29 = r29;
            r21 = [r0 retain];
            [TJCLog logWithLevel:0x4 format:@"Content is ready for placement %@"];
            [r21 release];
            *(int8_t *)(int64_t *)&r19->_internalContentReady = 0x1;
            r0 = r19->_adView;
            r0 = [r0 isPrerendered];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_placementContentTracker));
            if (r0 != 0x0) {
                    r20 = *(r19 + r22);
                    r21 = [@(YES) retain];
                    [r20 addDimension:@"prerendered" withValue:r21];
                    [r21 release];
            }
            [*(r19 + r22) contentIsReady];
            r20 = (int64_t *)&r19->_delegate;
            r0 = objc_loadWeakRetained(r20);
            r23 = [r0 respondsToSelector:@selector(contentIsReady:)];
            [r0 release];
            if (r23 != 0x0) {
                    r0 = objc_loadWeakRetained(r20);
                    [r0 contentIsReady:r19];
                    [r0 release];
            }
            *(int8_t *)(r19 + r24) = 0x1;
    }
    return;
}

-(void)notifyContentDidDisappear {
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
    r20 = (int64_t *)&r19->_delegate;
    r0 = objc_loadWeakRetained(r20);
    r23 = [r0 respondsToSelector:@selector(contentDidDisappear:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            [r0 contentDidDisappear:r19];
            [r0 release];
    }
    return;
}

-(void)notifyContentDidAppear {
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
    r20 = (int64_t *)&r19->_delegate;
    r0 = objc_loadWeakRetained(r20);
    r23 = [r0 respondsToSelector:@selector(contentDidAppear:)];
    [r0 release];
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            [r0 contentDidAppear:r19];
            [r0 release];
    }
    return;
}

-(void)videoAdBegan {
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
    r20 = (int64_t *)&r19->_videoDelegate;
    r22 = objc_loadWeakRetained(r20);
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            r24 = [r0 respondsToSelector:@selector(videoDidStart:)];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r0 = objc_loadWeakRetained(r20);
                    [r0 videoDidStart:r19];
                    [r0 release];
            }
    }
    return;
}

-(void)handleDisablePreload:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [NSJSONSerialization JSONObjectWithData:arg2 options:0x4 error:0x0];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"redirect_url"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_redirectURL));
    r8 = *(r20 + r23);
    *(r20 + r23) = r0;
    [r8 release];
    r22 = *(r20 + r23);
    if (r22 == 0x0) goto loc_10094ee54;

loc_10094edd0:
    r0 = [NSNull null];
    r29 = r29;
    r21 = [r0 retain];
    if (r22 == r21) goto loc_10094ee4c;

loc_10094edf8:
    r22 = *(r20 + r23);
    [NSString class];
    if (([r22 isKindOfClass:r2] & 0x1) != 0x0) {
            r22 = [*(r20 + r23) length];
            [r21 release];
            if (r22 == 0x0) {
                    r21 = [[NSString stringWithFormat:@"TJPlacement request failed, malformed server response"] retain];
                    [r20 notifyRequestDidFail:r21];
                    [r21 release];
                    [TJCLog logWithLevel:0x6 format:@"TJPlacement request failed due to malformed or missing redirect_url field"];
            }
            else {
                    *(int8_t *)(int64_t *)&r20->_disablePreload = 0x1;
                    *(int8_t *)(int64_t *)&r20->_internalContentAvailable = 0x1;
                    [r20->_placementContentTracker setContentTracker:r20->_adContentTracker];
                    [r20 notifyRequestDidSucceed];
                    [r20 notifyContentIsReady];
            }
    }
    else {
            [r21 release];
            *(int8_t *)(int64_t *)&r20->_disablePreload = 0x1;
            *(int8_t *)(int64_t *)&r20->_internalContentAvailable = 0x1;
            [r20->_placementContentTracker setContentTracker:r20->_adContentTracker];
            [r20 notifyRequestDidSucceed];
            [r20 notifyContentIsReady];
    }
    goto loc_10094ef24;

loc_10094ef24:
    [r19 release];
    return;

loc_10094ee4c:
    [r21 release];
    goto loc_10094ee54;

loc_10094ee54:
    r21 = [[NSString stringWithFormat:@"TJPlacement request failed, malformed server response"] retain];
    [r20 notifyRequestDidFail:r21];
    [r21 release];
    [TJCLog logWithLevel:0x6 format:@"TJPlacement request failed due to malformed or missing redirect_url field"];
    goto loc_10094ef24;
}

-(void)videoAdCompleted {
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
    r20 = (int64_t *)&r19->_videoDelegate;
    r22 = objc_loadWeakRetained(r20);
    if (r22 != 0x0) {
            r0 = objc_loadWeakRetained(r20);
            r24 = [r0 respondsToSelector:@selector(videoDidComplete:)];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r0 = objc_loadWeakRetained(r20);
                    [r0 videoDidComplete:r19];
                    [r0 release];
            }
    }
    return;
}

-(void)videoAdError:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
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
    r21 = (int64_t *)&r20->_videoDelegate;
    r23 = objc_loadWeakRetained(r21);
    if (r23 != 0x0) {
            r0 = objc_loadWeakRetained(r21);
            r25 = [r0 respondsToSelector:@selector(videoDidFail:error:), r3];
            [r0 release];
            [r23 release];
            if (r25 != 0x0) {
                    r0 = objc_loadWeakRetained(r21);
                    [r0 videoDidFail:r20 error:r19];
                    [r0 release];
            }
    }
    [r19 release];
    return;
}

-(void *)generatePlacementDictKey {
    r0 = [TJPlacement generatePlacementDictKeyWithName:self->_placementName systemFlag:*(int8_t *)(int64_t *)&self->_systemFlag requestFor:self->_requestFor mediationAgent:self->_mediationAgent mediationId:self->_mediationId isLimited:*(int8_t *)(int64_t *)&self->_isLimited];
    return r0;
}

-(void)onCachingComplete {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*(int8_t *)(int64_t *)&r19->_prerenderingRequested != 0x0) {
            r20 = r19->_adView;
            r21 = [[r19 contentHTML] retain];
            r22 = [[r19 contentURL] retain];
            [r20 preloadAdUnit:r21 creativeURL:r22 completion:&var_48];
            [r22 release];
            [r21 release];
    }
    else {
            [r19 notifyContentIsReady];
    }
    return;
}

+(void *)generatePlacementDictKeyWithName:(void *)arg2 systemFlag:(bool)arg3 requestFor:(void *)arg4 mediationAgent:(void *)arg5 mediationId:(void *)arg6 isLimited:(bool)arg7 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg7;
    r20 = arg6;
    r23 = arg3;
    r24 = [arg2 retain];
    r22 = [arg4 retain];
    r21 = [arg5 retain];
    if (r24 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r9 = r24;
            }
            else {
                    r9 = @"";
            }
    }
    if (r22 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r10 = r22;
            }
            else {
                    r10 = @"";
            }
    }
    if (r21 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r11 = r21;
            }
            else {
                    r11 = @"";
            }
    }
    r8 = @"";
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r20;
            }
            else {
                    r8 = @"";
            }
    }
    r19 = [[NSString stringWithFormat:r2] retain];
    [r21 release];
    [r22 release];
    [r24 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void)dismissContent {
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 util];
    r0 = [r0 retain];
    r21 = [r0 dismissContentAll];
    [r0 release];
    [r19 release];
    [TJPlacement dismissContentIncludingAd:r21 then:0x0];
    return;
}

+(void)dismissContentIncludingAd:(bool)arg2 then:(void *)arg3 {
    r20 = [arg3 retain];
    [FiveRocks closeFRPlacementContent];
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r20 release];
    [r19 release];
    return;
}

+(bool)isFullScreenViewOpen {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = [TJPlacement getCurrentViewType];
    if (r0 < 0x3) {
            if (CPU_FLAGS & B) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(bool)shouldRetry {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self retryDeadline];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r22 = [[r19 retryDeadline] retain];
            r0 = [NSNull null];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r22 release];
            [r21 release];
            if (r22 != r0) {
                    r0 = [r19 retryDeadline];
                    r0 = [r0 retain];
                    r20 = r0;
                    [r0 timeIntervalSinceNow];
                    r0 = [r19 retryBackoff];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 backoff];
                    asm { scvtf      d0, w0 };
                    asm { fdiv       d0, d0, d1 };
                    if (d8 >= d0) {
                            if (CPU_FLAGS & GE) {
                                    r19 = 0x1;
                            }
                    }
                    [r21 release];
                    [r20 release];
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            [r21 release];
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

+(int)getCurrentViewType {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [Tapjoy sharedTapjoyConnect];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 viewHandler];
    r0 = [r0 retain];
    r21 = [r0 isViewOpen];
    [r0 release];
    [r19 release];
    if ((r21 & 0x1) != 0x0) {
            r0 = 0x1;
    }
    else {
            if (([FiveRocks isCurrentPlacementContentInterstitial] & 0x1) != 0x0) {
                    r0 = 0x2;
            }
            else {
                    r0 = [FiveRocks isCurrentPlacementContentContextual];
                    if (r0 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r0 = 0x0;
                            }
                            else {
                                    r0 = 0x3;
                            }
                    }
            }
    }
    return r0;
}

-(void)retryRequestContentURL:(void *)arg2 usageTracker:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    r0 = [self retain];
    objc_sync_enter(r0);
    r0 = [r19 retryBackoff];
    r0 = [r0 retain];
    [r0 getAndNext];
    [r0 release];
    r24 = [[r19 placementName] retain];
    [TJCLog logWithLevel:0x4 format:@"retry requestContent for placement %@ in %d ms."];
    [r24 release];
    [r19 setRetryQueued:r2];
    asm { smull      x1, w22, w8 };
    r22 = dispatch_time(0x0, r1);
    var_40 = r21;
    [r21 retain];
    var_38 = r20;
    [r20 retain];
    dispatch_after(r22, *__dispatch_main_q, &var_68);
    [var_38 release];
    [var_40 release];
    [r20 release];
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)setWebkitPreferredFromHeader:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 respondsToSelector:r2] != 0x0) {
            [r19 boolValue];
    }
    [r20 setWebkitPreferred:r2];
    [r19 release];
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)videoDelegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_videoDelegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setVideoDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_videoDelegate, arg2);
    return;
}

-(void *)placementName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_placementName)), 0x0);
    return r0;
}

-(void)setPlacementName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)presentationViewController {
    r0 = self->_presentationViewController;
    return r0;
}

-(void)setPresentationViewController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_presentationViewController, arg2);
    return;
}

-(void *)topViewControllerClassName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_topViewControllerClassName)), 0x0);
    return r0;
}

-(void)setTopViewControllerClassName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)mediationAgent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mediationAgent)), 0x0);
    return r0;
}

-(void)setMediationAgent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)mediationId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mediationId)), 0x0);
    return r0;
}

-(void)setMediationId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setAdapterVersion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)adapterVersion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adapterVersion)), 0x0);
    return r0;
}

-(void *)auctionData {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_auctionData)), 0x0);
    return r0;
}

-(void)setAuctionData:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isLimited {
    r0 = *(int8_t *)(int64_t *)&self->_isLimited;
    return r0;
}

-(void)setIsLimited:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isLimited = arg2;
    return;
}

-(void *)adView {
    r0 = self->_adView;
    return r0;
}

-(void)setAdView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adView, arg2);
    return;
}

-(void *)contentHTML {
    r0 = self->_contentHTML;
    return r0;
}

-(void)setContentHTML:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_contentHTML, arg2);
    return;
}

-(void *)contentURL {
    r0 = self->_contentURL;
    return r0;
}

-(void)setContentURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_contentURL, arg2);
    return;
}

-(void *)redirectURL {
    r0 = self->_redirectURL;
    return r0;
}

-(void)setRedirectURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_redirectURL, arg2);
    return;
}

-(bool)isRequesting {
    r0 = *(int8_t *)(int64_t *)&self->_isRequesting;
    return r0;
}

-(void)setIsRequesting:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isRequesting = arg2;
    return;
}

-(bool)didIncrementCache {
    r0 = *(int8_t *)(int64_t *)&self->_didIncrementCache;
    return r0;
}

-(void)setDidIncrementCache:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didIncrementCache = arg2;
    return;
}

-(bool)redirected {
    r0 = *(int8_t *)(int64_t *)&self->_redirected;
    return r0;
}

-(void *)fiveRocksContent {
    r0 = self->_fiveRocksContent;
    return r0;
}

-(void)setRedirected:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_redirected = arg2;
    return;
}

-(void)setFiveRocksContent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fiveRocksContent, arg2);
    return;
}

-(void)setViewControllerBeforeRedirect:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_viewControllerBeforeRedirect, arg2);
    return;
}

-(void *)viewControllerBeforeRedirect {
    r0 = objc_loadWeakRetained((int64_t *)&self->_viewControllerBeforeRedirect);
    r0 = [r0 autorelease];
    return r0;
}

-(bool)didFireReady {
    r0 = *(int8_t *)(int64_t *)&self->_didFireReady;
    return r0;
}

-(bool)prerenderingRequested {
    r0 = *(int8_t *)(int64_t *)&self->_prerenderingRequested;
    return r0;
}

-(void)setDidFireReady:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_didFireReady = arg2;
    return;
}

-(void)setPrerenderingRequested:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_prerenderingRequested = arg2;
    return;
}

-(void *)pushId {
    r0 = self->_pushId;
    return r0;
}

-(void)setPushId:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_pushId, arg2);
    return;
}

-(bool)systemFlag {
    r0 = *(int8_t *)(int64_t *)&self->_systemFlag;
    return r0;
}

-(void)setSystemFlag:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_systemFlag = arg2;
    return;
}

-(void *)requestFor {
    r0 = self->_requestFor;
    return r0;
}

-(void)setRequestFor:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requestFor, arg2);
    return;
}

-(void *)mediationSource {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mediationSource)), 0x0);
    return r0;
}

-(bool)disablePreload {
    r0 = *(int8_t *)(int64_t *)&self->_disablePreload;
    return r0;
}

-(void)setMediationSource:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setDisablePreload:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_disablePreload = arg2;
    return;
}

-(bool)retryQueued {
    r0 = *(int8_t *)(int64_t *)&self->_retryQueued;
    return r0;
}

-(void *)retryBackoff {
    r0 = self->_retryBackoff;
    return r0;
}

-(void)setRetryQueued:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_retryQueued = arg2;
    return;
}

-(void *)retryDeadline {
    r0 = self->_retryDeadline;
    return r0;
}

-(void)setRetryBackoff:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_retryBackoff, arg2);
    return;
}

-(void)setRetryDeadline:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_retryDeadline, arg2);
    return;
}

-(int)retryCount {
    r0 = *(int32_t *)(int64_t *)&self->_retryCount;
    return r0;
}

-(int)retryTimeout {
    r0 = *(int32_t *)(int64_t *)&self->_retryTimeout;
    return r0;
}

-(void)setRetryCount:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_retryCount = arg2;
    return;
}

-(void)setRetryTimeout:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_retryTimeout = arg2;
    return;
}

-(void)setPlacementContentTracker:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_placementContentTracker, arg2);
    return;
}

-(void *)placementContentTracker {
    r0 = self->_placementContentTracker;
    return r0;
}

-(void)setAdContentTracker:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adContentTracker, arg2);
    return;
}

-(void *)adContentTracker {
    r0 = self->_adContentTracker;
    return r0;
}

-(bool)internalContentReady {
    r0 = *(int8_t *)(int64_t *)&self->_internalContentReady;
    return r0;
}

-(bool)internalContentAvailable {
    r0 = *(int8_t *)(int64_t *)&self->_internalContentAvailable;
    return r0;
}

-(void)setWebkitPreferred:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_webkitPreferred = arg2;
    return;
}

-(bool)webkitPreferred {
    r0 = *(int8_t *)(int64_t *)&self->_webkitPreferred;
    return r0;
}

-(bool)isForcedTopView {
    r0 = *(int8_t *)(int64_t *)&self->_isForcedTopView;
    return r0;
}

-(void)setIsForcedTopView:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isForcedTopView = arg2;
    return;
}

-(void)setUseNewAppStoreExperience:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useNewAppStoreExperience = arg2;
    return;
}

-(bool)useNewAppStoreExperience {
    r0 = *(int8_t *)(int64_t *)&self->_useNewAppStoreExperience;
    return r0;
}

-(void)setContent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_content, arg2);
    return;
}

-(void *)content {
    r0 = self->_content;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_content, 0x0);
    objc_storeStrong((int64_t *)&self->_adContentTracker, 0x0);
    objc_storeStrong((int64_t *)&self->_placementContentTracker, 0x0);
    objc_storeStrong((int64_t *)&self->_retryDeadline, 0x0);
    objc_storeStrong((int64_t *)&self->_retryBackoff, 0x0);
    objc_storeStrong((int64_t *)&self->_mediationSource, 0x0);
    objc_storeStrong((int64_t *)&self->_requestFor, 0x0);
    objc_storeStrong((int64_t *)&self->_pushId, 0x0);
    objc_destroyWeak((int64_t *)&self->_viewControllerBeforeRedirect);
    objc_storeStrong((int64_t *)&self->_fiveRocksContent, 0x0);
    objc_storeStrong((int64_t *)&self->_redirectURL, 0x0);
    objc_storeStrong((int64_t *)&self->_contentURL, 0x0);
    objc_storeStrong((int64_t *)&self->_contentHTML, 0x0);
    objc_storeStrong((int64_t *)&self->_adView, 0x0);
    objc_storeStrong((int64_t *)&self->_auctionData, 0x0);
    objc_storeStrong((int64_t *)&self->_adapterVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_mediationId, 0x0);
    objc_storeStrong((int64_t *)&self->_mediationAgent, 0x0);
    objc_storeStrong((int64_t *)&self->_topViewControllerClassName, 0x0);
    objc_storeStrong((int64_t *)&self->_presentationViewController, 0x0);
    objc_storeStrong((int64_t *)&self->_placementName, 0x0);
    objc_destroyWeak((int64_t *)&self->_videoDelegate);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

@end