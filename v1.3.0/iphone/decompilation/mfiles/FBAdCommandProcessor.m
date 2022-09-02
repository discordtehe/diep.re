@implementation FBAdCommandProcessor

-(void)dealloc {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self->_interstitialAd setDelegate:0x0];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_productViewController);
    r21 = r0;
    if (r0 != 0x0) {
            [r21 dismissViewControllerAnimated:0x1 completion:0x0];
            [r21 setDelegate:0x0];
    }
    r0 = objc_loadWeakRetained((int64_t *)&r19->_skStoreProductViewController);
    r22 = r0;
    if (r0 != 0x0) {
            [r22 dismissViewControllerAnimated:0x1 completion:0x0];
            [r22 setDelegate:0x0];
    }
    [r22 release];
    [r21 release];
    [[&var_40 super] dealloc];
    return;
}

-(bool)processCommand:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = [[r0 host] retain];
    r22 = [[FBAdUtility parseQueryString:r0] retain];
    [r0 release];
    r21 = [[NSMutableDictionary dictionary] retain];
    r19 = [self openURL:r20 nameValuePairs:r22 mutableExtraData:r21 skipAppStore:0x0];
    [r21 release];
    [r22 release];
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)processCommand:(void *)arg2 inlineClientToken:(void *)arg3 completionHandler:(void *)arg4 {
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [self processCommand:r22 withExtraData:0x0 inlineClientToken:r20 skipAppStore:0x0 completionHandler:arg4];
    [r20 release];
    [r22 release];
    r0 = r19;
    return r0;
}

-(bool)processCommand:(void *)arg2 inlineClientToken:(void *)arg3 completionHandler:(void *)arg4 skipAppStore:(bool)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [self processCommand:r23 withExtraData:0x0 inlineClientToken:r21 skipAppStore:arg5 completionHandler:arg4];
    [r21 release];
    [r23 release];
    r0 = r19;
    return r0;
}

-(bool)openURL:(void *)arg2 nameValuePairs:(void *)arg3 mutableExtraData:(void *)arg4 skipAppStore:(bool)arg5 {
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
    r22 = arg5;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([r19 isEqual:r2] == 0x0) goto loc_100a29444;

loc_100a2942c:
    if ((r22 & 0x1) == 0x0) goto loc_100a294a8;

loc_100a29430:
    r23 = @"opened_store_in_app";
    [r23 retain];
    goto loc_100a29588;

loc_100a29588:
    r0 = @(YES);
    r0 = [r0 retain];
    r24 = r0;
    r25 = [[r0 stringValue] retain];
    [r21 setObject:r25 forKeyedSubscript:r23];
    [r25 release];
    goto loc_100a295e8;

loc_100a295e8:
    r22 = 0x1;
    [r24 release];
    goto loc_100a295f0;

loc_100a295f0:
    r0 = r23;
    goto loc_100a295f4;

loc_100a295f4:
    [r0 release];
    goto loc_100a2964c;

loc_100a2964c:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_100a294a8:
    if ([r23 launchAppForEngagement:r20] == 0x0) goto loc_100a29558;

loc_100a294c0:
    r0 = @(YES);
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 stringValue] retain];
    [r21 setObject:r24 forKeyedSubscript:@"opened_deeplink"];
    goto loc_100a295e8;

loc_100a29558:
    r0 = [r23 openAppStore:r20];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if (r0 == @"none") goto loc_100a29680;
    goto loc_100a29588;

loc_100a29680:
    r22 = 0x0;
    r23 = @"none";
    goto loc_100a295f0;

loc_100a29444:
    if ([r19 isEqual:r2] == 0x0) goto loc_100a29520;

loc_100a2945c:
    if ((r22 & 0x1) != 0x0) goto loc_100a2962c;

loc_100a29460:
    r24 = [[r20 objectForKeyOrNil:@"link"] retain];
    r22 = [r23 openLinkInApp:r24 withAdAction:0x1];
    r0 = r24;
    goto loc_100a295f4;

loc_100a2962c:
    r22 = 0x1;
    goto loc_100a2964c;

loc_100a29520:
    if ([r19 isEqual:r2] == 0x0) goto loc_100a295fc;

loc_100a29538:
    r22 = 0x1;
    [r23 callCompletionHandlerForCommand:0x1 withAdAction:0x2];
    goto loc_100a2964c;

loc_100a295fc:
    if ([r19 isEqual:r2] == 0x0) goto loc_100a29634;

loc_100a29614:
    [r23 callCompletionHandlerForCommand:0x2 withAdAction:0x5];
    goto loc_100a2962c;

loc_100a29634:
    r22 = [r19 isEqual:r2];
    goto loc_100a2964c;
}

-(bool)launchAppForEngagement:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 stringForKeyOrNil:@"appsite_data"];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 stringByReplacingPercentEscapesUsingEncoding:0x4];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if (r19 == 0x0) goto loc_100a29828;

loc_100a29710:
    r21 = [[r19 dataUsingEncoding:0x4] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r21 options:0x0 error:0x0];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 count] == 0x0) goto loc_100a29844;

loc_100a2976c:
    var_110 = q0;
    r0 = [r22 retain];
    r23 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 == 0x0) goto loc_100a29820;

loc_100a297a4:
    r25 = r0;
    r27 = *var_110;
    goto loc_100a297b4;

loc_100a297b4:
    r28 = 0x0;
    goto loc_100a297bc;

loc_100a297bc:
    if (*var_110 != r27) {
            objc_enumerationMutation(r23);
    }
    if (([r20 launchURLOutOfApp:r2 withAdAction:r3] & 0x1) != 0x0) goto loc_100a29830;

loc_100a297f0:
    r28 = r28 + 0x1;
    if (r28 < r25) goto loc_100a297bc;

loc_100a297fc:
    r0 = [r23 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r25 = r0;
    if (r0 != 0x0) goto loc_100a297b4;

loc_100a29820:
    r20 = 0x0;
    goto loc_100a29838;

loc_100a29838:
    [r23 release];
    goto loc_100a29848;

loc_100a29848:
    [r22 release];
    [r21 release];
    goto loc_100a29858;

loc_100a29858:
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_60) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100a29830:
    r20 = 0x1;
    r22 = r23;
    goto loc_100a29838;

loc_100a29844:
    r20 = 0x0;
    goto loc_100a29848;

loc_100a29828:
    r20 = 0x0;
    goto loc_100a29858;
}

-(bool)processCommand:(void *)arg2 withExtraData:(void *)arg3 inlineClientToken:(void *)arg4 skipAppStore:(bool)arg5 completionHandler:(void *)arg6 {
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
    r29 = &saved_fp;
    var_64 = arg5;
    r23 = self;
    r20 = [arg2 retain];
    r24 = [arg3 retain];
    var_60 = [arg4 retain];
    [arg6 retain];
    objc_storeStrong((int64_t *)&r23->_inlineClientToken, arg4);
    r21 = objc_retainBlock(r19);
    [r19 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
    r0 = *(r23 + r8);
    *(r23 + r8) = r21;
    [r0 release];
    var_58 = r24;
    if (r24 != 0x0) {
            r0 = [r24 mutableCopy];
    }
    else {
            r0 = [NSMutableDictionary dictionary];
            r29 = r29;
            r0 = [r0 retain];
    }
    r21 = r0;
    r19 = [[r20 host] retain];
    r24 = [[FBAdUtility parseQueryString:r20] retain];
    [r20 release];
    r0 = [r23 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 respondsToSelector:@selector(commandProcessorTouchInformation:)];
    var_80 = r22;
    if (r0 != 0x0) {
            r0 = [r22 commandProcessorTouchInformation:r23];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
    }
    else {
            r20 = 0x0;
    }
    r8 = *___NSDictionary0__;
    r8 = *r8;
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r20;
            }
            else {
                    r0 = r8;
            }
    }
    r22 = [r0 retain];
    [r20 release];
    var_70 = r22;
    r27 = [[FBAdUtility getJSONStringFromObject:r22] retain];
    r25 = [sub_1009ff3d8() retain];
    r19 = [r19 retain];
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r2 = @"analog";
            if (r25 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = r25;
                    }
                    else {
                            r2 = @"";
                    }
            }
            [r21 setObject:r2 forKeyedSubscript:@"analog"];
    }
    r0 = [r21 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            r2 = @"touch";
            if (r27 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r2 = r27;
                    }
                    else {
                            r2 = @"";
                    }
            }
            [r21 setObject:r2 forKeyedSubscript:@"touch"];
    }
    var_78 = r27;
    if ([r19 isEqualToString:r2] != 0x0) {
            r27 = [[r24 objectForKeyedSubscript:r2] retain];
            [r19 release];
            r22 = @class(FBAdUtility);
            r28 = [[r24 objectForKeyedSubscript:r2] retain];
            r22 = [[r22 getObjectFromJSONString:r28] retain];
            [r28 release];
            r0 = [r24 objectForKeyedSubscript:r2];
            r29 = r29;
            r20 = [r0 retain];
            r28 = [FBAdUtility isStringEmpty:r20];
            [r21 addEntriesFromDictionary:r22];
            if ((r28 & 0x1) != 0x0) {
                    r28 = 0x0;
            }
            else {
                    r28 = [r20 integerValue];
            }
            [r20 release];
            [r22 release];
    }
    else {
            r0 = [r24 objectForKeyOrNil:@"data"];
            r29 = r29;
            r20 = [r0 retain];
            if (([FBAdUtility isStringEmpty:r20] & 0x1) == 0x0) {
                    r0 = [FBAdUtility getObjectFromJSONString:r20];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = r0;
                    if (r0 != 0x0) {
                            [r21 addEntriesFromDictionary:r22];
                    }
                    [r22 release];
            }
            if (([r19 isEqualToString:r2] & 0x1) == 0x0 && [r19 isEqualToString:r2] == 0x0) {
                    r28 = 0x0;
            }
            else {
                    r28 = 0x1;
            }
            [r20 release];
            r27 = r19;
    }
    r20 = [r23 openURL:r19 nameValuePairs:r24 mutableExtraData:r21 skipAppStore:var_64];
    r0 = [FBAdEventManager sharedManager];
    r0 = [r0 retain];
    r23 = [[r0 funnelLoggingDataForAdEvent:r27 withToken:var_60 withExtraData:r21] retain];
    [r0 logEventOfType:r27 withPriority:r28 withToken:var_60 withExtraData:r23];
    [r23 release];
    [r0 release];
    [r27 release];
    [r25 release];
    [var_78 release];
    [var_70 release];
    [var_80 release];
    [r24 release];
    [r19 release];
    [r21 release];
    [var_60 release];
    [var_58 release];
    r0 = r20;
    return r0;
}

-(void *)openAppStore:(void *)arg2 {
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
    var_60 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r28 = [[r0 objectForKeyOrNil:@"store_id"] retain];
    r0 = [r19 objectForKeyOrNil:@"store_url"];
    r0 = [r0 retain];
    r21 = [[r0 stringByReplacingPercentEscapesUsingEncoding:0x4] retain];
    [r0 release];
    r0 = [r19 objectForKeyOrNil:@"store_url_web_fallback"];
    r0 = [r0 retain];
    r23 = [[r0 stringByReplacingPercentEscapesUsingEncoding:0x4] retain];
    [r0 release];
    r26 = [[NSCharacterSet URLQueryAllowedCharacterSet] retain];
    var_58 = r21;
    r24 = [[r21 stringByAddingPercentEncodingWithAllowedCharacters:r26] retain];
    [r26 release];
    r26 = [[NSCharacterSet URLQueryAllowedCharacterSet] retain];
    r0 = [r23 stringByAddingPercentEncodingWithAllowedCharacters:r26];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [r26 release];
    r21 = r28;
    if (r28 != 0x0) {
            r0 = [FBAdConfigManager sharedManager];
            r29 = r29;
            r0 = [r0 retain];
            r28 = [r0 isInAppAppStoreDisabled];
            [r0 release];
            if ((r28 & 0x1) != 0x0) {
                    if (r24 != 0x0) {
                            r0 = [FBAdConfigManager sharedManager];
                            r0 = [r0 retain];
                            r27 = [r0 useStoreURL];
                            [r0 release];
                            if (r27 != 0x0 && [var_60 launchURLOutOfApp:r24 withAdAction:0x0] != 0x0) {
                                    r22 = @"opened_store_url";
                            }
                            else {
                                    if (r25 != 0x0) {
                                            if ([var_60 openLinkInApp:r25 withAdAction:0x0] != 0x0) {
                                                    r22 = @"opened_store_fallback_url";
                                            }
                                            else {
                                                    r22 = @"none";
                                            }
                                    }
                                    else {
                                            r22 = @"none";
                                    }
                            }
                    }
                    else {
                            if (r25 != 0x0) {
                                    if ([var_60 openLinkInApp:r25 withAdAction:0x0] != 0x0) {
                                            r22 = @"opened_store_fallback_url";
                                    }
                                    else {
                                            r22 = @"none";
                                    }
                            }
                            else {
                                    r22 = @"none";
                            }
                    }
                    [r22 retain];
            }
            else {
                    r0 = [FBAdConfigManager sharedManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = [r0 shouldUseSKAppStore];
                    [r0 release];
                    if (r27 != 0x0) {
                            r0 = [var_60 openInAppAppStoreUsingSK:r19];
                    }
                    else {
                            r0 = [var_60 openInAppAppStoreUsingFB:r19];
                    }
                    r22 = [r0 retain];
            }
    }
    else {
            if (r24 != 0x0) {
                    r0 = [FBAdConfigManager sharedManager];
                    r0 = [r0 retain];
                    r27 = [r0 useStoreURL];
                    [r0 release];
                    if (r27 != 0x0 && [var_60 launchURLOutOfApp:r24 withAdAction:0x0] != 0x0) {
                            r22 = @"opened_store_url";
                    }
                    else {
                            if (r25 != 0x0) {
                                    if ([var_60 openLinkInApp:r25 withAdAction:0x0] != 0x0) {
                                            r22 = @"opened_store_fallback_url";
                                    }
                                    else {
                                            r22 = @"none";
                                    }
                            }
                            else {
                                    r22 = @"none";
                            }
                    }
            }
            else {
                    if (r25 != 0x0) {
                            if ([var_60 openLinkInApp:r25 withAdAction:0x0] != 0x0) {
                                    r22 = @"opened_store_fallback_url";
                            }
                            else {
                                    r22 = @"none";
                            }
                    }
                    else {
                            r22 = @"none";
                    }
            }
            [r22 retain];
    }
    [r25 release];
    [r24 release];
    [r23 release];
    [var_58 release];
    [r21 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void *)openInAppAppStoreUsingFB:(void *)arg2 {
    r31 = r31 - 0x150;
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
    r23 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [[r0 objectForKeyOrNil:@"store_id"] retain];
    r0 = [r19 objectForKeyOrNil:@"store_url"];
    r0 = [r0 retain];
    r21 = [[r0 stringByReplacingPercentEscapesUsingEncoding:0x4] retain];
    [r0 release];
    r0 = [r23 delegate];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 viewControllerForPresentingModalView];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r25 release];
    if ([r22 isBeingPresented] == 0x0 && r20 != 0x0) {
            r2 = 0x4;
            if ([r23 isValidViewController:r22] != 0x0) {
                    r0 = [FBStoreProductViewController new];
                    r28 = r0;
                    [r0 setDelegate:r23];
                    [r23 setProductViewController:r28];
                    if (*qword_1011dd0e8 != -0x1) {
                            dispatch_once_f(0x1011dd0e8, 0x1011c61a8, 0x100a3d91c);
                    }
                    r26 = [**qword_1011dd0f0 retain];
                    var_130 = [[NSMutableDictionary dictionaryWithObject:r20 forKey:r26] retain];
                    [r26 release];
                    r0 = [r19 objectForKeyOrNil:@"store_affiliate_token"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = r0;
                    if (r0 != 0x0) {
                            r2 = @"store_affiliate_token";
                            [var_130 setObject:r25 forKeyedSubscript:@"at"];
                    }
                    var_138 = r25;
                    r0 = [r19 objectForKeyOrNil:@"store_campaign_token"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = r0;
                    if (r0 != 0x0) {
                            r2 = @"store_campaign_token";
                            [var_130 setObject:r27 forKeyedSubscript:@"ct"];
                    }
                    [r23 callCompletionHandlerForCommand:0x0 withAdAction:0x0];
                    r0 = [r28 retain];
                    r28 = r0;
                    var_D0 = r0;
                    var_C0 = [r21 retain];
                    [r28 reliablyLoadProductWithParameters:var_130 completionBlock:&var_F0];
                    r0 = [r23 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    if ([r0 respondsToSelector:@selector(willPresentViewController:)] != 0x0) {
                            [r24 willPresentViewController:r23];
                    }
                    if (*qword_1011dcd88 != -0x1) {
                            dispatch_once_f(0x1011dcd88, 0x1011c5d28, 0x100a3d91c);
                    }
                    qword_1011dcd90();
                    [r23 setAppStoreSheetOpenTimeMs:r2];
                    r0 = [r28 retain];
                    [r22 presentViewController:r0 animated:0x1 completion:&var_128];
                    r23 = @"opened_store_url";
                    [r23 retain];
                    [r0 release];
                    [r24 release];
                    [var_C0 release];
                    [var_D0 release];
                    [r27 release];
                    [var_138 release];
                    [var_130 release];
                    [r0 release];
                    _Block_object_dispose(&var_A8, 0x8);
                    _Block_object_dispose(r29 - 0x88, 0x8);
            }
            else {
                    r23 = @"none";
                    [r23 retain];
            }
    }
    else {
            r23 = @"none";
            [r23 retain];
    }
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)openInAppAppStoreUsingSK:(void *)arg2 {
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
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [[r0 objectForKeyOrNil:@"store_id"] retain];
    r0 = [r19 objectForKeyOrNil:@"store_url"];
    r0 = [r0 retain];
    r21 = [[r0 stringByReplacingPercentEscapesUsingEncoding:0x4] retain];
    [r0 release];
    r0 = [r22 delegate];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 viewControllerForPresentingModalView];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r24 release];
    if ([r23 isBeingPresented] == 0x0 && r20 != 0x0) {
            r2 = 0x4;
            if ([r22 isValidViewController:r23] != 0x0) {
                    if (*qword_1011dd0c8 != -0x1) {
                            dispatch_once_f(0x1011dd0c8, 0x1011c6190, 0x100a3d91c);
                    }
                    r0 = *0x1011dd0d0;
                    r0 = [r0 new];
                    [r0 setDelegate:r22];
                    [r22 setSkStoreProductViewController:r0];
                    var_90 = r0;
                    if (*qword_1011dd0e8 != -0x1) {
                            dispatch_once_f(0x1011dd0e8, 0x1011c61a8, 0x100a3d91c);
                    }
                    r28 = [**qword_1011dd0f0 retain];
                    r24 = [[NSMutableDictionary dictionaryWithObject:r20 forKey:r28] retain];
                    [r28 release];
                    r0 = [r19 objectForKeyOrNil:@"store_affiliate_token"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = r0;
                    if (r0 != 0x0) {
                            r2 = @"store_affiliate_token";
                            [r24 setObject:r26 forKeyedSubscript:@"at"];
                    }
                    var_A0 = r26;
                    r0 = [r19 objectForKeyOrNil:@"store_campaign_token"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = r0;
                    r26 = r24;
                    if (r0 != 0x0) {
                            r2 = @"store_campaign_token";
                            [r26 setObject:r27 forKeyedSubscript:@"ct"];
                    }
                    [r22 callCompletionHandlerForCommand:0x0 withAdAction:0x0];
                    objc_initWeak(&stack[-104], r22);
                    var_98 = &var_88 + 0x28;
                    objc_copyWeak(&var_88 + 0x28, &stack[-104]);
                    var_68 = [r21 retain];
                    r24 = var_90;
                    [r24 loadProductWithParameters:r26 completionBlock:&var_88];
                    r0 = [r22 delegate];
                    r0 = [r0 retain];
                    r25 = r0;
                    if ([r0 respondsToSelector:@selector(willPresentViewController:)] != 0x0) {
                            [r25 willPresentViewController:r22];
                    }
                    if (*qword_1011dcd88 != -0x1) {
                            dispatch_once_f(0x1011dcd88, 0x1011c5d28, 0x100a3d91c);
                    }
                    qword_1011dcd90();
                    [r22 setAppStoreSheetOpenTimeMs:r2];
                    [r23 presentViewController:r24 animated:0x1 completion:0x0];
                    r22 = @"opened_store_url";
                    [r22 retain];
                    [r25 release];
                    [var_68 release];
                    objc_destroyWeak(var_98);
                    objc_destroyWeak(&stack[-104]);
                    [r27 release];
                    [var_A0 release];
                    [r26 release];
                    [r24 release];
            }
            else {
                    r22 = @"none";
                    [r22 retain];
            }
    }
    else {
            r22 = @"none";
            [r22 retain];
    }
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)callCompletionHandlerForCommand:(long long)arg2 withAdAction:(long long)arg3 {
    r3 = arg3;
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_completionHandler));
    r0 = *(self + r20);
    if (r0 != 0x0) {
            (*(r0 + 0x10))();
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void)doneCommandProcessing {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 respondsToSelector:@selector(viewControllerDismissed:)] != 0x0) {
            [r20 viewControllerDismissed:r19];
    }
    [r20 release];
    return;
}

-(bool)launchURLOutOfApp:(void *)arg2 withAdAction:(long long)arg3 {
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
    r22 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [NSNull class];
            if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
                    r22 = 0x0;
            }
            else {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    if (r0 != 0x0) {
                            [r20 callCompletionHandlerForCommand:0x0 withAdAction:r22];
                            r0 = [UIApplication sharedApplication];
                            r0 = [r0 retain];
                            r22 = [r0 openURL:r21];
                            [r0 release];
                            r24 = [[r20 inlineClientToken] retain];
                            [FBAdUserReturnHandler moveOutOfApp:r22 withToken:r24];
                            [r24 release];
                            [r20 doneCommandProcessing];
                    }
                    else {
                            r22 = 0x0;
                    }
                    [r21 release];
            }
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)openLinkInApp:(void *)arg2 withAdAction:(long long)arg3 {
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
    r23 = arg3;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r20 delegate];
            r0 = [r0 retain];
            r21 = [[r0 viewControllerForPresentingModalView] retain];
            [r0 release];
            r0 = [NSURL URLWithString:r19];
            r29 = r29;
            r22 = [r0 retain];
            if (([r21 isBeingPresented] & 0x1) != 0x0) {
                    r20 = 0x0;
            }
            else {
                    r0 = [r20 isValidViewController:r21];
                    if (r22 != 0x0 && r0 != 0x0) {
                            r0 = [r22 scheme];
                            r0 = [r0 retain];
                            var_58 = r0;
                            r0 = [r0 lowercaseString];
                            r29 = r29;
                            r0 = [r0 retain];
                            r26 = r0;
                            if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
                                    [r26 release];
                                    [var_58 release];
                                    r0 = [r20 delegate];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r23 = r0;
                                    if ([r0 respondsToSelector:@selector(willPresentViewController:)] != 0x0) {
                                            [r23 willPresentViewController:r20];
                                    }
                                    r24 = @class(FBAdSafariViewController);
                                    r25 = [[r20 inlineClientToken] retain];
                                    [r24 presentSafariViewControllerWithURL:r22 withRootViewController:r21 withInlineClientToken:r25 withHandlerTime:[FBAdSafariViewController currentTimeMs] withDelegate:r20];
                                    [r25 release];
                                    [r23 release];
                                    r20 = 0x1;
                            }
                            else {
                                    r25 = @selector(isEqualToString:);
                                    r0 = [r22 scheme];
                                    r0 = [r0 retain];
                                    r27 = r0;
                                    r0 = [r0 lowercaseString];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r25 = objc_msgSend(r0, r25);
                                    [r0 release];
                                    [r27 release];
                                    [r26 release];
                                    [var_58 release];
                                    if ((r25 & 0x1) != 0x0) {
                                            r0 = [r20 delegate];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r23 = r0;
                                            if ([r0 respondsToSelector:@selector(willPresentViewController:)] != 0x0) {
                                                    [r23 willPresentViewController:r20];
                                            }
                                            r24 = @class(FBAdSafariViewController);
                                            r25 = [[r20 inlineClientToken] retain];
                                            [r24 presentSafariViewControllerWithURL:r22 withRootViewController:r21 withInlineClientToken:r25 withHandlerTime:[FBAdSafariViewController currentTimeMs] withDelegate:r20];
                                            [r25 release];
                                            [r23 release];
                                            r20 = 0x1;
                                    }
                                    else {
                                            r20 = [r20 launchURLOutOfApp:r19 withAdAction:r23];
                                    }
                            }
                    }
                    else {
                            r20 = [r20 launchURLOutOfApp:r19 withAdAction:r23];
                    }
            }
            [r22 release];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)logLocalUserReturnEvent {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r20 = [[self inlineClientToken] retain];
    [r21 appStoreSheetOpenTimeMs];
    asm { fcvtzu     x21, d0 };
    if (*qword_1011dcd88 != -0x1) {
            dispatch_once_f(0x1011dcd88, 0x1011c5d28, 0x100a3d91c);
    }
    qword_1011dcd90();
    asm { fcvtzu     x4, d0 };
    [r19 logLocalUserReturnEventWithToken:r20 openInterval:r21 closeInterval:r4];
    [r20 release];
    return;
}

-(bool)isValidViewController:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 view];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 window];
    r0 = [r0 retain];
    r19 = r0;
    [r0 release];
    r0 = [r20 release];
    if (r19 == 0x0) {
            r0 = [FBAdLogger logAtLevel:0x2 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/adapters/FBAdCommandProcessor.m" lineNumber:0x1f3 format:@"The UIViewController passed in is not valid to present modal view. Please make sure your UIViewController's view is in the window hierarchy and provide the correct one at initialization, and in the delegate function viewControllerForPresentingModalView if …"];
    }
    if (r19 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [FBStoreProductViewController class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100a2abe8;

loc_100a2ab9c:
    r0 = [r19 retain];
    r20 = r0;
    goto loc_100a2ac58;

loc_100a2ac58:
    [r0 dismissViewControllerAnimated:r2 completion:r3];
    [r20 setDelegate:0x0];
    [r20 release];
    goto loc_100a2ac80;

loc_100a2ac80:
    [r19 release];
    return;

loc_100a2abe8:
    if (*qword_1011dd0c8 != -0x1) {
            dispatch_once_f(0x1011dd0c8, 0x1011c6190, 0x100a3d91c);
    }
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100a2ac80;

loc_100a2ac10:
    r0 = [r19 retain];
    r20 = r0;
    goto loc_100a2ac58;
}

-(void)viewControllerCompleted:(void *)arg2 {
    [self callCompletionHandlerForCommand:0x0 withAdAction:0x1];
    return;
}

-(void)viewControllerDismissed:(void *)arg2 {
    [self doneCommandProcessing];
    return;
}

-(void)interstitialAdDidClose:(void *)arg2 {
    [self doneCommandProcessing];
    [self->_interstitialAd setDelegate:0x0];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_skStoreProductViewController);
    objc_destroyWeak((int64_t *)&self->_productViewController);
    objc_storeStrong((int64_t *)&self->_interstitialAd, 0x0);
    objc_storeStrong((int64_t *)&self->_completionHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_inlineClientToken, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
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

-(void *)inlineClientToken {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_inlineClientToken)), 0x0);
    return r0;
}

-(void)setInlineClientToken:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)completionHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completionHandler)), 0x0);
    return r0;
}

-(void)setCompletionHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)productViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_productViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)interstitialAd {
    r0 = self->_interstitialAd;
    return r0;
}

-(void)setInterstitialAd:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interstitialAd, arg2);
    return;
}

-(void)setProductViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_productViewController, arg2);
    return;
}

-(void *)skStoreProductViewController {
    r0 = objc_loadWeakRetained((int64_t *)&self->_skStoreProductViewController);
    r0 = [r0 autorelease];
    return r0;
}

-(double)appStoreSheetOpenTimeMs {
    r0 = self;
    return r0;
}

-(void)setSkStoreProductViewController:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_skStoreProductViewController, arg2);
    return;
}

-(void)setAppStoreSheetOpenTimeMs:(double)arg2 {
    self->_appStoreSheetOpenTimeMs = d0;
    return;
}

+(bool)shouldInvalidate:(void *)arg2 {
    r0 = self;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (arg2 == 0x0) {
            if (CPU_FLAGS & E) {
                    r0 = 0x1;
            }
    }
    return r0;
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
    r0 = objc_getClass("FBAdCommandProcessor");
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

+(bool)isValidOpenAppStoreCommand:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if ([FBAdUtility isFBAdScheme:r19] != 0x0) {
            r21 = [[NSString stringWithFormat:@"%@?%@="] retain];
            r0 = [r19 absoluteString];
            r0 = [r0 retain];
            r20 = [r0 containsString:r21];
            [r0 release];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)isValidBrowseCommand:(void *)arg2 {
    r0 = [arg2 host];
    r0 = [r0 retain];
    r20 = [r0 isEqual:r2];
    [r0 release];
    r0 = r20;
    return r0;
}

+(void *)getLinkFromCommandURL:(void *)arg2 {
    r0 = [FBAdUtility parseQueryString:arg2];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyOrNil:@"link"] retain];
    r21 = [[NSURL URLWithString:r2] retain];
    [r20 release];
    [r0 release];
    r0 = [r21 autorelease];
    return r0;
}

@end