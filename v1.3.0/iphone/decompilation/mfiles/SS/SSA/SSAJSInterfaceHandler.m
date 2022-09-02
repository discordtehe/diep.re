@implementation SSAJSInterfaceHandler

-(void *)initWithPublisherAgent:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_publisherAgent, r19);
            r0 = [ISHTTPRequestsDispatcher alloc];
            r0 = objc_msgSend(r0, r21);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_requestsDispatcher));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)sendHTTPRequest:(void *)arg2 {
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
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 requestFromControllerParams:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r22 = [r0 boolValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            r23 = [r0 integerValue];
            [r0 release];
            r25 = [[r20 getISuniqueIdentifier] retain];
            r26 = [[r21 convertToString:0x1] retain];
            r27 = [[NSDictionary dictionaryWithObjects:&stack[-120] forKeys:&var_78 count:0x2] retain];
            r24 = [[r19 objectForKeyedSubscript:r2] retain];
            [r21 sendSuccessCallbackWithParams:r27 callback:r24];
            [r24 release];
            [r27 release];
            [r26 release];
            [r25 release];
            r24 = [[r21 requestsDispatcher] retain];
            var_88 = [r19 retain];
            r0 = [r20 retain];
            [r24 sendHTTPRequest:r0 isbackground:r22 retries:r23 completion:&var_B0];
            [r24 release];
            [r0 release];
            r0 = var_88;
    }
    else {
            r22 = [[r19 objectForKeyedSubscript:r2] retain];
            r23 = [[r20 getISuniqueIdentifier] retain];
            [r21 sendErrorCallbackWithReason:@"unable to create request object" callback:r22 requestIdentifier:r23];
            [r23 release];
            r0 = r22;
    }
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)adClicked:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isEqualToString:r2];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r22 = [[SSADemandSourcesCollection sharedInstance] retain];
                    r23 = [[r19 objectForKeyedSubscript:r2] retain];
                    r21 = [[r22 demandSourceForProductType:0x1 demandSourceName:r23] retain];
                    [r23 release];
                    [r22 release];
                    r0 = [r21 delegate];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r24 != 0x0) {
                            r0 = [r21 delegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = [r0 respondsToSelector:r2];
                            [r0 release];
                            [r24 release];
                            if (r26 != 0x0) {
                                    r0 = [r21 delegate];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 supersonicISAdClicked];
                                    [r0 release];
                            }
                    }
                    [r21 release];
            }
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isEqualToString:r2];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r22 = [[SSADemandSourcesCollection sharedInstance] retain];
                    r23 = [[r19 objectForKeyedSubscript:r2] retain];
                    r21 = [[r22 demandSourceForProductType:0x0 demandSourceName:r23] retain];
                    [r23 release];
                    [r22 release];
                    r0 = [r21 delegate];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r24 != 0x0) {
                            r0 = [r21 delegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = [r0 respondsToSelector:r2];
                            [r0 release];
                            [r24 release];
                            if (r26 != 0x0) {
                                    r0 = [r21 delegate];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 ssaRewardedVideoAdClicked];
                                    [r0 release];
                            }
                    }
                    [r21 release];
            }
    }
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isEqualToString:r2];
            [r0 release];
            [r21 release];
            if (r23 != 0x0) {
                    r21 = [[SSADemandSourcesCollection sharedInstance] retain];
                    r22 = [[r19 objectForKeyedSubscript:r2] retain];
                    r20 = [[r21 demandSourceForProductType:0x4 demandSourceName:r22] retain];
                    [r22 release];
                    [r21 release];
                    r0 = [r20 delegate];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r23 != 0x0) {
                            r0 = [r20 delegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            r25 = [r0 respondsToSelector:r2];
                            [r0 release];
                            [r23 release];
                            if (r25 != 0x0) {
                                    r0 = [r20 delegate];
                                    r0 = [r0 retain];
                                    [r0 ISNBannerAdClicked];
                                    [r0 release];
                            }
                    }
                    [r20 release];
            }
    }
    [r19 release];
    return;
}

-(void *)serializeData:(void *)arg2 {
    r0 = [SSAHelperMethods stringFromData:arg2 encoding:0x4];
    return r0;
}

-(void *)convertToString:(long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 != 0x3) {
            if (r2 != 0x2) {
                    if (r2 == 0x1) {
                            r19 = @"requestStarted";
                    }
                    else {
                            r19 = @"requestUnknown";
                    }
            }
            else {
                    r19 = @"responseReceived";
            }
    }
    else {
            r19 = @"requestError";
    }
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;
}

-(void)sendErrorCallbackWithReason:(void *)arg2 callback:(void *)arg3 requestIdentifier:(void *)arg4 {
    r31 = r31 - 0x90;
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
    r21 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [NSMutableDictionary new];
    r22 = r0;
    [r0 setObject:arg2 forKey:@"errMsg"];
    [r25 release];
    r24 = [[r20 convertToString:0x3] retain];
    [r22 setObject:r24 forKey:@"status"];
    [r24 release];
    if (r19 != 0x0) {
            [r22 setObject:r19 forKey:@"identifier"];
    }
    var_50 = r21;
    [r21 retain];
    [r22 retain];
    dispatch_async(*__dispatch_main_q, &var_78);
    [r22 release];
    [var_50 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)sendSuccessCallbackWithParams:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    [[arg3 retain] retain];
    [r21 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    [r21 release];
    [r0 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleAdEventNotification:(void *)arg2 {
    r31 = r31 - 0x100;
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
    r20 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_100713650;

loc_100713398:
    r0 = [NSArray arrayWithObjects:r29 - 0x68 count:0x2];
    r29 = r29;
    r22 = [r0 retain];
    r21 = [SSAHelperMethods areKeysExistInDictionary:r19 keys:r22];
    [r22 release];
    if ((r21 & 0x1) == 0x0) goto loc_100713650;

loc_100713404:
    var_B8 = [[r19 objectForKeyedSubscript:@"eventName"] retain];
    var_C0 = [[r19 objectForKeyedSubscript:@"dsName"] retain];
    r22 = @class(SSAHelperMethods);
    r21 = [[r19 objectForKeyedSubscript:@"extData"] retain];
    r0 = [r22 dictionaryFromJsonString:r21 error:&var_A8];
    r29 = r29;
    r24 = [r0 retain];
    r23 = [var_A8 retain];
    [r21 release];
    if (r23 != 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r21 = [r0 retain];
            [r24 release];
            r24 = r21;
    }
    r0 = [r19 objectForKeyedSubscript:@"productType"];
    r29 = r29;
    r27 = [r0 retain];
    r22 = [ISProductContext convertProductNameToProductType:r27 error:&var_B0];
    r25 = [var_B0 retain];
    [r27 release];
    if (r25 == 0x0) goto loc_100713710;

loc_100713548:
    r27 = [[r20 publisherAgent] retain];
    r26 = [[r19 objectForKeyedSubscript:@"fail"] retain];
    r28 = [[r25 localizedDescription] retain];
    r21 = [[NSString stringWithFormat:@"%@"] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_80 forKeys:&var_88 count:0x1];
    r22 = [r0 retain];
    [r27 runCommand:r26 andParameters:r22 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
    [r22 release];
    [r21 release];
    [r28 release];
    r0 = r26;
    goto loc_100713b40;

loc_100713b40:
    [r0 release];
    [r27 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [var_C0 release];
    r0 = var_B8;
    goto loc_100713b70;

loc_100713b70:
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100713710:
    r0 = [SSADemandSourcesCollection sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r3 = var_C0;
    r0 = [r0 demandSourceForProductType:r22 demandSourceName:r3];
    r29 = r29;
    r27 = [r0 retain];
    [r21 release];
    var_C8 = r27;
    if (r22 == 0x0) goto loc_10071389c;

loc_100713760:
    if (r22 == 0x1) goto loc_100713828;

loc_100713768:
    if (r22 != 0x2) goto loc_100713914;

loc_100713770:
    r0 = [r20 publisherAgent];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 offerWallDelegate];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(ssaOfferwallDidReceiveNotificationOnEvent:extData:), r3];
    [r0 release];
    [r22 release];
    if (r27 == 0x0) goto loc_100713914;

loc_1007137dc:
    r0 = [r20 publisherAgent];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 offerWallDelegate];
    r29 = r29;
    r0 = [r0 retain];
    [r0 ssaOfferwallDidReceiveNotificationOnEvent:var_B8 extData:r24];
    [r0 release];
    r0 = r22;
    goto loc_100713910;

loc_100713910:
    [r0 release];
    goto loc_100713914;

loc_100713914:
    r22 = [[SupersonicLogManager sharedManager] retain];
    r21 = [[r19 objectForKeyedSubscript:@"productType"] retain];
    r28 = [[NSString stringWithFormat:@"Native - Received event:%@, In product:%@"] retain];
    [r22 log:r28 withLevel:0x1 withTag:0x8];
    [r28 release];
    [r21 release];
    [r22 release];
    r28 = [NSMutableDictionary new];
    r27 = var_C8;
    [[r19 objectForKeyedSubscript:@"productType"] retain];
    [r28 setObject:r2 forKeyedSubscript:r3];
    [r21 release];
    r0 = [r19 objectForKeyedSubscript:@"eventName"];
    r29 = r29;
    [r0 retain];
    objc_msgSend(r28, r22);
    [r21 release];
    if (r27 != 0x0) {
            r0 = [r27 name];
            r29 = r29;
            [r0 retain];
            [r28 setObject:r2 forKeyedSubscript:r3];
            [r21 release];
    }
    r22 = [[r20 publisherAgent] retain];
    r21 = [[r19 objectForKeyedSubscript:@"success"] retain];
    r26 = [[NSDictionary dictionaryWithDictionary:r28] retain];
    [r22 runCommand:r21 andParameters:r26 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r26 release];
    [r21 release];
    [r22 release];
    r0 = r28;
    goto loc_100713b40;

loc_100713828:
    r0 = [r27 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(supersonicISAdDidReceiveNotificationOnEvent:extData:), r3];
    [r0 release];
    if (r27 == 0x0) goto loc_100713914;

loc_100713870:
    r0 = [var_C8 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 supersonicISAdDidReceiveNotificationOnEvent:var_B8 extData:r24];
    goto loc_10071390c;

loc_10071390c:
    r0 = r21;
    goto loc_100713910;

loc_10071389c:
    r0 = [r27 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 respondsToSelector:@selector(ssaRewardedVideoAdDidReceiveNotificationOnEvent:extData:), r3];
    [r0 release];
    if (r27 == 0x0) goto loc_100713914;

loc_1007138e4:
    r0 = [var_C8 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 ssaRewardedVideoAdDidReceiveNotificationOnEvent:var_B8 extData:r24];
    goto loc_10071390c;

loc_100713650:
    r21 = [[r20 publisherAgent] retain];
    r22 = [[r19 objectForKeyedSubscript:@"fail"] retain];
    r0 = [NSDictionary dictionaryWithObjects:r29 - 0x70 forKeys:&var_78 count:0x1];
    r23 = [r0 retain];
    [r21 runCommand:r22 andParameters:r23 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
    [r23 release];
    [r22 release];
    r0 = r21;
    goto loc_100713b70;
}

-(void *)responseDictionaryFromSerializedResponse:(void *)arg2 serializedData:(void *)arg3 requestIdentifier:(void *)arg4 {
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
    r29 = &saved_fp;
    r20 = self;
    r23 = [arg2 retain];
    r24 = [arg3 retain];
    r26 = [arg4 retain];
    r0 = [NSMutableDictionary new];
    r19 = r0;
    [r0 setObject:arg4 forKey:@"identifier"];
    [r26 release];
    [r19 setObject:arg2 forKey:@"responseParams"];
    [r23 release];
    if (r24 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r24;
            }
            else {
                    r2 = @"";
            }
    }
    [r19 setObject:r2 forKey:@"data"];
    [r24 release];
    r20 = [[r20 convertToString:0x2] retain];
    [r19 setObject:r20 forKey:@"status"];
    [r20 release];
    r20 = [r19 copy];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)requestFromControllerParams:(void *)arg2 {
    r31 = r31 - 0x80;
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
    r0 = [arg2 retain];
    r19 = r0;
    r21 = [[r0 objectForKeyedSubscript:@"url"] retain];
    r20 = [[SSAHelperMethods decodeFromPercentEscapeString:r2] retain];
    [r21 release];
    r21 = [[r19 objectForKeyedSubscript:@"identifier"] retain];
    r22 = [[r19 objectForKeyedSubscript:@"type"] retain];
    r0 = [r19 objectForKeyedSubscript:@"headers"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = [SSAHelperMethods decodeFromPercentEscapeString:r2];
            r0 = [r0 retain];
            r26 = r0;
            r27 = [[r0 dataUsingEncoding:0x4] retain];
            r0 = [NSJSONSerialization JSONObjectWithData:r27 options:0x1 error:&var_68];
            r29 = r29;
            r25 = [r0 retain];
            [r27 release];
            [r26 release];
            if (var_68 != 0x0) {
                    r23 = 0x0;
            }
            else {
                    r26 = [[r19 objectForKeyedSubscript:@"data"] retain];
                    r0 = [r19 objectForKeyedSubscript:@"cache"];
                    r0 = [r0 retain];
                    r27 = [r0 boolValue];
                    [r0 release];
                    r0 = [r19 objectForKeyedSubscript:@"timeout"];
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    [r0 release];
                    r23 = [[NSURLRequest requestWithUrlString:r20 ISuniqueIdentifier:r21 method:r22 headers:r25 data:r26 cache:r27 timeout:stack[-128]] retain];
                    [r26 release];
                    r23 = [r23 autorelease];
            }
    }
    else {
            r25 = 0x0;
            r26 = [[r19 objectForKeyedSubscript:@"data"] retain];
            r0 = [r19 objectForKeyedSubscript:@"cache"];
            r0 = [r0 retain];
            r27 = [r0 boolValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"timeout"];
            r0 = [r0 retain];
            [r0 doubleValue];
            [r0 release];
            r23 = [[NSURLRequest requestWithUrlString:r20 ISuniqueIdentifier:r21 method:r22 headers:r25 data:r26 cache:r27 timeout:stack[-128]] retain];
            [r26 release];
            r23 = [r23 autorelease];
    }
    [r25 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)getControllerConfig:(void *)arg2 withConfiguration:(void *)arg3 {
    r31 = r31 - 0x90;
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            if (r20 != 0x0) {
                    r0 = [SSAHelperMethods dictionaryFromJsonString:r20 error:&var_70];
                    r29 = r29;
                    r22 = [r0 retain];
                    r21 = [var_70 retain];
                    if (r21 != 0x0) {
                            r24 = [[r23 publisherAgent] retain];
                            r25 = [[r19 objectForKeyedSubscript:@"fail"] retain];
                            r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
                            r29 = r29;
                            r26 = [r0 retain];
                            [r24 runCommand:r25 andParameters:r26 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
                            [r26 release];
                            [r25 release];
                            [r24 release];
                    }
                    r0 = [SupersonicAdsPublisher getUserGroup];
                    r29 = r29;
                    r24 = [r0 retain];
                    if ([SSAJSInterfaceHandler isUserGroupValid:r24] != 0x0) {
                            r0 = [SSAJSInterfaceHandler addUserGroupToConfig:r22 userGroup:r24];
                            r29 = r29;
                            r25 = [r0 retain];
                            [r22 release];
                            r22 = r25;
                    }
                    r23 = [[r23 publisherAgent] retain];
                    r25 = [[r19 objectForKeyedSubscript:@"success"] retain];
                    [r23 runCommand:r25 andParameters:r22 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
                    [r25 release];
                    [r23 release];
                    r0 = r24;
            }
            else {
                    r21 = [[r23 publisherAgent] retain];
                    r22 = [[r19 objectForKeyedSubscript:@"fail"] retain];
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1];
                    r23 = [r0 retain];
                    [r21 runCommand:r22 andParameters:r23 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
                    r0 = r23;
            }
            [r0 release];
            [r22 release];
            [r21 release];
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void *)publisherAgent {
    r0 = objc_loadWeakRetained((int64_t *)&self->_publisherAgent);
    r0 = [r0 autorelease];
    return r0;
}

+(bool)isUserGroupValid:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            if ([r19 rangeOfString:@"-1"] == 0x7fffffffffffffff) {
                    if (CPU_FLAGS & E) {
                            r20 = 0x1;
                    }
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)requestsDispatcher {
    r0 = self->_requestsDispatcher;
    return r0;
}

-(void)setRequestsDispatcher:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_requestsDispatcher, arg2);
    return;
}

+(void *)addUserGroupToConfig:(void *)arg2 userGroup:(void *)arg3 {
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
    r19 = [arg2 retain];
    r0 = [SSAHelperMethods dictionaryFromJsonString:arg3 error:&var_70];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [var_70 retain];
    if (r21 != 0x0) {
            r22 = [[SupersonicLogManager sharedManager] retain];
            r24 = [[r21 localizedDescription] retain];
            r23 = [[NSString stringWithFormat:@"Native - addUserGroupToConfig JSON Parsing Error :%@"] retain];
            [r22 log:r23 withLevel:0x1 withTag:0x8];
            [r23 release];
            [r24 release];
            r0 = r22;
    }
    else {
            r27 = [r19 mutableCopy];
            r23 = @class(SSAHelperMethods);
            r0 = [NSArray arrayWithObjects:&var_68 count:0x2];
            r29 = r29;
            r24 = [r0 retain];
            r23 = [r23 areKeysExistInDictionary:r20 keys:r24];
            [r24 release];
            if (r23 != 0x0) {
                    var_78 = r27;
                    r0 = [r20 objectForKeyedSubscript:@"testerABGroup"];
                    r29 = r29;
                    r25 = [r0 retain];
                    if (([SSAHelperMethods isStringExistAndNotEmpty:r2] & 0x1) != 0x0) {
                            r0 = [r20 objectForKeyedSubscript:@"testFriendlyName"];
                            r29 = r29;
                            r28 = [r0 retain];
                            r26 = [SSAHelperMethods isStringExistAndNotEmpty:r2];
                            [r28 release];
                            [r25 release];
                            if (r26 != 0x0) {
                                    [[r20 objectForKeyedSubscript:@"testerABGroup"] retain];
                                    r27 = var_78;
                                    [r27 setObject:r2 forKey:r3];
                                    [r25 release];
                                    [[r20 objectForKeyedSubscript:@"testFriendlyName"] retain];
                                    objc_msgSend(r27, r26);
                                    [r23 release];
                                    r23 = [r27 retain];
                                    [r19 release];
                                    r19 = r23;
                            }
                            else {
                                    r23 = [[SupersonicLogManager sharedManager] retain];
                                    r24 = [[NSString stringWithFormat:@"Native - addUserGroupToConfig %@ and %@ do not exist in dictionary"] retain];
                                    [r23 log:r24 withLevel:0x1 withTag:0x8];
                                    [r24 release];
                                    [r23 release];
                                    r27 = var_78;
                            }
                    }
                    else {
                            [r25 release];
                            r23 = [[SupersonicLogManager sharedManager] retain];
                            r24 = [[NSString stringWithFormat:@"Native - addUserGroupToConfig %@ and %@ do not exist in dictionary"] retain];
                            [r23 log:r24 withLevel:0x1 withTag:0x8];
                            [r24 release];
                            [r23 release];
                            r27 = var_78;
                    }
            }
            else {
                    r23 = [[SupersonicLogManager sharedManager] retain];
                    r24 = [[NSString stringWithFormat:@"Native - addUserGroupToConfig %@ and %@ are empty values inside testerParameters dictionary"] retain];
                    [r23 log:r24 withLevel:0x1 withTag:0x8];
                    [r24 release];
                    [r23 release];
            }
            r0 = r27;
    }
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r20 release];
    [r21 release];
    [r19 autorelease];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_requestsDispatcher, 0x0);
    objc_destroyWeak((int64_t *)&self->_publisherAgent);
    return;
}

@end