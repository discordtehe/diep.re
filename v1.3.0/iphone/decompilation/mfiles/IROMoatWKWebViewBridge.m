@implementation IROMoatWKWebViewBridge

-(void *)initWithWebView:(void *)arg2 forNativeAd:(bool)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] initWithWebView:r19 forNativeAds:arg3];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [[NSMutableArray alloc] init];
            [r20 setQueuedCalls:r21];
            [r21 release];
            [r20 setWebView:r19];
            [IROMoatLogging reportDevLogWithObject:r20 format:@"setting environment variables."];
            [r20 markMoatActive];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)checkAndSendJS:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 webView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 evaluateJavaScript:r19 completionHandler:0x0];
            [r0 release];
    }
    else {
            var_30 = r19;
            [IROMoatLogging reportDevLogWithObject:r20 format:@"Unable to send command |%@| WebView is nil"];
    }
    [r19 release];
    return;
}

-(void)handleJSResponse:(void *)arg2 {
    r31 = r31 + 0xffffffffffffffb0 - 0x80;
    r22 = self;
    r19 = [arg2 retain];
    r0 = [r22 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_98 = 0xffffffffc2000000;
            var_90 = 0x100743f64;
            var_88 = 0x100e8e740;
            var_80 = [r22 retain];
            stack[-136] = &var_70;
            r0 = objc_retainBlock(&var_A0);
            objc_storeWeak(&var_70 + 0x28, r0);
            r24 = [[IROMoatAnalytics sharedInstance] retain];
            r25 = objc_retainBlock(r22);
            [r24 registerCompletionBlock:r25];
            [r25 release];
            [r24 release];
            r0 = [r23 webView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 evaluateJavaScript:r19 completionHandler:r22];
            [r0 release];
            [r22 release];
            [var_80 release];
            _Block_object_dispose(&var_70, 0x8);
            objc_destroyWeak(&var_70 + 0x28);
    }
    else {
            var_C0 = r19;
            [IROMoatLogging reportDevLogWithObject:r22 format:@"Unable to send command |%@| WebView became nil"];
            var_A8 = *0x101167f08;
            r0 = [[&var_B0 super] stopJSLoopNotifications];
    }
    [r19 release];
    return;
}

-(void *)checkAndFormatEvent:(void *)arg2 {
    r0 = [arg2 asDict];
    return r0;
}

-(void *)serializeEvent:(void *)arg2 {
    r19 = [[NSJSONSerialization dataWithJSONObject:arg2 options:0x0 error:0x0] retain];
    r20 = [[NSString alloc] initWithData:r19 encoding:0x4];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)dispatchEvent:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [[r21 checkAndFormatEvent:r19] retain];
    r0 = [r21 serializeEvent:r20];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (([r21 webViewLoaded] & 0x1) != 0x0) {
            r24 = [[r21 videoTrackerName] retain];
            var_40 = r24;
            stack[-72] = r22;
            r23 = [[NSString stringWithFormat:@"%@.dispatchEvent(%@);"] retain];
            [r24 release];
            r0 = [r21 webView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 evaluateJavaScript:r23 completionHandler:0x0];
            [r0 release];
            [r23 release];
    }
    else {
            [r21 queueEvent:r19];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)videoTrackerName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoTrackerName)), 0x1);
    return r0;
}

-(void)setVideoTrackerName:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)webView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)flushQueue {
    r31 = r31 + 0xffffffffffffffa0 - 0x110;
    r19 = self;
    r24 = *___stack_chk_guard;
    r24 = *r24;
    var_58 = r24;
    r0 = [self queuedCalls];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [r19 queuedCalls];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 count];
            [r0 release];
            [r20 release];
            if (r23 != 0x0) {
                    r21 = [[NSMutableArray alloc] init];
                    var_110 = 0x0;
                    stack[-280] = 0x0;
                    var_120 = 0x0;
                    stack[-296] = 0x0;
                    var_130 = 0x0;
                    var_128 = 0x0;
                    r0 = [r19 queuedCalls];
                    r29 = r29;
                    r0 = [r0 retain];
                    var_138 = r0;
                    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r23 != 0x0) {
                            do {
                                    r20 = 0x0;
                                    do {
                                            var_120 = 0x0;
                                            if (*var_120 != *0x0) {
                                                    objc_enumerationMutation(var_138);
                                            }
                                            r26 = @selector(addObject:);
                                            var_128 = 0x0;
                                            r0 = [r19 serializeEvent:[[r19 checkAndFormatEvent:*(var_128 + r20 * 0x8)] retain]];
                                            r29 = r29;
                                            [r0 retain];
                                            objc_msgSend(r21, r26);
                                            [r28 release];
                                            [r27 release];
                                            r20 = r20 + 0x1;
                                    } while (r20 < r23);
                                    var_140 = @selector(countByEnumeratingWithState:objects:count:);
                                    r23 = objc_msgSend(var_138, var_140);
                            } while (r23 != 0x0);
                    }
                    [var_138 release];
                    r20 = r21;
                    r22 = [[r20 componentsJoinedByString:@","] retain];
                    r0 = [NSArray arrayWithObjects:&var_F0 count:0x3];
                    r0 = [r0 retain];
                    r21 = [[r0 componentsJoinedByString:@""] retain];
                    [r0 release];
                    [r22 release];
                    r22 = [[r19 webView] retain];
                    r24 = [[r19 videoTrackerName] retain];
                    var_160 = r24;
                    stack[-360] = r21;
                    r0 = [NSString stringWithFormat:@"%@.dispatchMany(%@);"];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r22 evaluateJavaScript:r23 completionHandler:0x0];
                    [r23 release];
                    [r24 release];
                    [r22 release];
                    [r21 release];
                    [r20 release];
                    r24 = *___stack_chk_guard;
                    r24 = *r24;
            }
    }
    else {
            [r20 release];
    }
    [r19 setQueuedCalls:0x0];
    if (r24 != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setWebView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_webView, arg2);
    return;
}

-(void *)queuedCalls {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_queuedCalls)), 0x1);
    return r0;
}

-(void)setQueuedCalls:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)queueEvent:(void *)arg2 {
    r20 = self;
    r23 = [arg2 retain];
    r0 = [r20 queuedCalls];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r27 = [r0 count];
    var_58 = r27;
    [r0 release];
    if (r27 == 0x0) goto loc_10074436c;

loc_100744308:
    r22 = [IROMoatVideoUtil isFinalEvent:r23];
    r0 = [r20 queuedCalls];
    r29 = r29;
    r19 = [r0 retain];
    if (r22 == 0x0) goto loc_10074439c;

loc_100744340:
    [r19 removeAllObjects];
    [r19 release];
    r0 = [r20 queuedCalls];
    r29 = r29;
    goto loc_10074437c;

loc_10074437c:
    r0 = [r0 retain];
    [r0 addObject:r2];
    r0 = r19;
    goto loc_10074483c;

loc_10074483c:
    [r0 release];
    [r23 release];
    return;

loc_10074439c:
    r0 = [r19 objectAtIndexedSubscript:r27 - 0x1];
    r29 = r29;
    r22 = [r0 retain];
    [r19 release];
    if ([r22 eventType] == [r23 eventType]) goto loc_100744838;

loc_1007443f4:
    if (r27 < 0xa) goto loc_1007446a8;

loc_1007443fc:
    var_C0 = @selector(objectAtIndexedSubscript:);
    var_B8 = @selector(eventType);
    var_A8 = r23;
    var_A0 = @selector(count);
    var_B0 = r22;
    var_88 = [[NSMutableArray alloc] init];
    var_60 = [[NSMutableDictionary alloc] init];
    r28 = 0x0;
    var_64 = 0x0;
    r22 = @selector(queuedCalls);
    var_80 = r22;
    r24 = @selector(objectAtIndexedSubscript:);
    r26 = @selector(eventType);
    var_78 = r26;
    r23 = @selector(numberWithUnsignedInteger:);
    var_70 = @selector(objectForKeyedSubscript:);
    var_90 = @selector(addObject:);
    var_98 = @selector(setObject:forKeyedSubscript:);
    do {
            r0 = objc_msgSend(r20, r22);
            r0 = [r0 retain];
            r19 = r0;
            r0 = objc_msgSend(r0, r24);
            r29 = r29;
            r25 = [r0 retain];
            [r19 release];
            r19 = objc_msgSend(r25, r26);
            if (r19 <= 0x4) {
                    var_70 = @selector(objectForKeyedSubscript:);
                    r22 = r24;
                    r24 = r20;
                    r27 = r23;
                    r23 = [objc_msgSend(@class(NSNumber), r27) retain];
                    r26 = var_60;
                    r0 = objc_msgSend(r26, var_70);
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r23 release];
                    if (r0 != 0x0) {
                            r23 = r27;
                    }
                    else {
                            var_98 = @selector(setObject:forKeyedSubscript:);
                            var_90 = @selector(addObject:);
                            objc_msgSend(var_88, var_90);
                            [objc_msgSend(@class(NSNumber), r27) retain];
                            r0 = @class(NSNumber);
                            r23 = r27;
                            r0 = objc_msgSend(r0, r27);
                            r29 = r29;
                            r19 = [r0 retain];
                            objc_msgSend(r26, var_98);
                            [r19 release];
                            [r20 release];
                    }
                    var_64 = r28;
                    r20 = r24;
                    r24 = r22;
                    r22 = var_80;
                    r26 = var_78;
                    r27 = var_58;
            }
            [r25 release];
            r28 = r28 + 0x1;
    } while (r27 != r28);
    r8 = r27 - 0x1;
    r23 = var_64;
    r27 = var_88;
    if (r8 <= r23) goto loc_1007446f8;

loc_10074460c:
    asm { sxtw       x19, w8 };
    goto loc_100744628;

loc_100744628:
    r26 = r20;
    r0 = [r20 queuedCalls];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectAtIndexedSubscript:r2];
    r29 = r29;
    r24 = [r0 retain];
    [r20 release];
    if ([r24 eventType] == 0x7 || [r24 eventType] == 0x8) goto loc_1007446d8;

loc_10074468c:
    [r24 release];
    r19 = r19 - 0x1;
    r20 = r26;
    if (r19 > r23) goto loc_100744628;

loc_1007446f8:
    r0 = objc_msgSend(r27, var_A0);
    if (r0 != 0x0) {
            var_C0 = @selector(objectAtIndexedSubscript:);
            r24 = r20;
            r21 = [objc_msgSend(r27, var_C0) retain];
            r19 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfc0);
            r23 = var_A8;
            r22 = var_B8;
            r19 = [[r19 numberWithUnsignedInteger:objc_msgSend(r23, r22)] retain];
            r25 = var_60;
            r0 = [r25 objectForKeyedSubscript:r19];
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    [r0 release];
                    [r19 release];
                    r20 = r24;
                    r22 = var_B0;
            }
            else {
                    r20 = objc_msgSend(r23, r22);
                    r22 = objc_msgSend(r21, r22);
                    [r19 release];
                    COND = r20 == r22;
                    r20 = r24;
                    r22 = var_B0;
                    if (!COND) {
                            [r27 addObject:r2];
                    }
            }
            [r21 release];
    }
    else {
            r23 = var_A8;
            [r27 addObject:r2];
            r22 = var_B0;
            r25 = var_60;
    }
    [r20 setQueuedCalls:r27];
    [r25 release];
    r0 = r27;
    goto loc_100744834;

loc_100744834:
    [r0 release];
    goto loc_100744838;

loc_100744838:
    r0 = r22;
    goto loc_10074483c;

loc_1007446d8:
    [r27 addObject:r2];
    [r24 release];
    r20 = r26;
    goto loc_1007446f8;

loc_1007446a8:
    r0 = [r20 queuedCalls];
    r29 = r29;
    r0 = [r0 retain];
    [r0 addObject:r2];
    r0 = r19;
    goto loc_100744834;

loc_10074436c:
    r0 = [r20 queuedCalls];
    r29 = r29;
    goto loc_10074437c;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queuedCalls, 0x0);
    objc_destroyWeak((int64_t *)&self->_webView);
    objc_storeStrong((int64_t *)&self->_videoTrackerName, 0x0);
    return;
}

@end