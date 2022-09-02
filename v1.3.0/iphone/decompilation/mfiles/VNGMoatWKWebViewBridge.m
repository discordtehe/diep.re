@implementation VNGMoatWKWebViewBridge

-(void *)initWithWebView:(void *)arg2 forNativeAd:(bool)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] initWithWebView:r19 forNativeAds:arg3];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [[NSMutableArray alloc] init];
            [r20 setQueuedCalls:r21];
            [r21 release];
            [r20 setWebView:r19];
            [VNGMoatLogging reportDevLogWithObject:r20 format:@"setting environment variables."];
            [r20 markMoatActive];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)checkAndSendJS:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 webView];
            r0 = [r0 retain];
            [r0 evaluateJavaScript:r19 completionHandler:0x0];
            [r0 release];
    }
    else {
            [VNGMoatLogging reportDevLogWithObject:r20 format:@"Unable to send command |%@| WebView is nil"];
    }
    [r19 release];
    return;
}

-(void)handleJSResponse:(void *)arg2 {
    r31 = r31 - 0xd0;
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
    r0 = [r21 webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = objc_retainBlock(&var_A0);
            objc_storeWeak(&var_70 + 0x28, r0);
            r24 = [[VNGMoatAnalytics sharedInstance] retain];
            r25 = objc_retainBlock(r23);
            [r24 registerCompletionBlock:r25];
            [r25 release];
            [r24 release];
            r0 = [r21 webView];
            r0 = [r0 retain];
            [r0 evaluateJavaScript:r19 completionHandler:r23];
            [r0 release];
            [r23 release];
            _Block_object_dispose(&var_70, 0x8);
            objc_destroyWeak(&var_70 + 0x28);
    }
    else {
            [VNGMoatLogging reportDevLogWithObject:r21 format:@"Unable to send command |%@| WebView became nil"];
            [[&var_B0 super] stopJSLoopNotifications];
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
    r31 = r31 - 0x50;
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
    r20 = [[r21 checkAndFormatEvent:r19] retain];
    r0 = [r21 serializeEvent:r20];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (([r21 webViewLoaded] & 0x1) != 0x0) {
            r24 = [[r21 videoTrackerName] retain];
            r23 = [[NSString stringWithFormat:@"%@.dispatchEvent(%@);"] retain];
            [r24 release];
            r0 = [r21 webView];
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
    r31 = r31 - 0x170;
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
    r0 = [self queuedCalls];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_10066c5e4;

loc_10066c33c:
    r0 = [r19 queuedCalls];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    [r20 release];
    if (r23 == 0x0) goto loc_10066c5ec;

loc_10066c378:
    r21 = [[NSMutableArray alloc] init];
    r0 = [r19 queuedCalls];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    var_138 = r0;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_138);
                            }
                            r26 = @selector(addObject:);
                            r0 = [r19 serializeEvent:[[r19 checkAndFormatEvent:*(0x0 + r20 * 0x8)] retain]];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r21, r26);
                            [r28 release];
                            [r27 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r23);
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
    r23 = [[NSString stringWithFormat:@"%@.dispatchMany(%@);"] retain];
    [r22 evaluateJavaScript:r23 completionHandler:0x0];
    [r23 release];
    [r24 release];
    [r22 release];
    [r21 release];
    goto loc_10066c5e4;

loc_10066c5e4:
    [r20 release];
    goto loc_10066c5ec;

loc_10066c5ec:
    var_58 = **___stack_chk_guard;
    [r19 setQueuedCalls:0x0];
    if (**___stack_chk_guard != var_58) {
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
    r25 = [arg2 retain];
    r0 = [r20 queuedCalls];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r23 == 0x0) goto loc_10066be6c;

loc_10066be08:
    r24 = [VNGMoatVideoUtil isFinalEvent:r25];
    r0 = [r20 queuedCalls];
    r29 = r29;
    r21 = [r0 retain];
    if (r24 == 0x0) goto loc_10066be9c;

loc_10066be40:
    [r21 removeAllObjects];
    [r21 release];
    r0 = [r20 queuedCalls];
    goto loc_10066be7c;

loc_10066be7c:
    r0 = [r0 retain];
    [r0 addObject:r2];
    r0 = r20;
    goto loc_10066c2c0;

loc_10066c2c0:
    [r0 release];
    [r25 release];
    return;

loc_10066be9c:
    r0 = [r21 objectAtIndexedSubscript:r23 - 0x1];
    r29 = r29;
    r26 = [r0 retain];
    [r21 release];
    r24 = @selector(eventType);
    if (objc_msgSend(r26, r24) == objc_msgSend(r25, r24)) goto loc_10066c2bc;

loc_10066bef4:
    if (r23 < 0xa) goto loc_10066c15c;

loc_10066befc:
    r27 = @selector(objectAtIndexedSubscript:);
    r22 = @selector(queuedCalls);
    var_A0 = @selector(count);
    var_98 = r26;
    var_A8 = r25;
    var_80 = [[NSMutableArray alloc] init];
    var_58 = [[NSMutableDictionary alloc] init];
    r28 = 0x0;
    r19 = 0x0;
    r21 = @selector(numberWithUnsignedInteger:);
    var_70 = r23;
    var_68 = r22;
    var_78 = r20;
    do {
            r0 = objc_msgSend(r20, r22);
            r0 = [r0 retain];
            r25 = r0;
            r0 = objc_msgSend(r0, r27);
            r29 = r29;
            r26 = [r0 retain];
            [r25 release];
            r25 = objc_msgSend(r26, r24);
            if (r25 <= 0x4) {
                    r20 = r24;
                    r24 = r27;
                    r19 = [objc_msgSend(@class(NSNumber), r21) retain];
                    r27 = var_58;
                    r0 = [r27 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r21;
                    [r0 release];
                    [r19 release];
                    if (r0 == 0x0) {
                            [var_80 addObject:r26];
                            [objc_msgSend(@class(NSNumber), r23) retain];
                            r0 = @class(NSNumber);
                            r0 = objc_msgSend(r0, r23);
                            r29 = r29;
                            [r0 retain];
                            [r27 setObject:r2 forKeyedSubscript:r3];
                            [r21 release];
                            [r19 release];
                    }
                    r19 = r28;
                    r27 = r24;
                    r24 = r20;
                    r22 = var_68;
                    r21 = r23;
                    r20 = var_78;
                    r23 = var_70;
            }
            [r26 release];
            r28 = r28 + 0x1;
    } while (r23 > r28);
    var_90 = r21;
    r28 = var_80;
    if (r23 - 0x1 <= r19) goto loc_10066c1a4;

loc_10066c0dc:
    asm { sxtw       x23, w8 };
    asm { sxtw       x21, w19 };
    goto loc_10066c0e4;

loc_10066c0e4:
    r0 = objc_msgSend(r20, r22);
    r0 = [r0 retain];
    r19 = r0;
    r0 = objc_msgSend(r0, r27);
    r29 = r29;
    r25 = [r0 retain];
    [r19 release];
    if (objc_msgSend(r25, r24) == 0x7 || objc_msgSend(r25, r24) == 0x8) goto loc_10066c18c;

loc_10066c144:
    [r25 release];
    r23 = r23 - 0x1;
    if (r23 > r21) goto loc_10066c0e4;

loc_10066c1a4:
    r0 = objc_msgSend(r28, var_A0);
    r26 = var_98;
    if (r0 != 0x0) {
            r22 = [objc_msgSend(r28, r27) retain];
            r25 = var_A8;
            objc_msgSend(r25, r24);
            r21 = [objc_msgSend(r19, var_90) retain];
            r27 = var_58;
            r0 = [r27 objectForKeyedSubscript:r2];
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    [r0 release];
                    [r21 release];
            }
            else {
                    r19 = objc_msgSend(r25, r24);
                    r23 = objc_msgSend(r22, r24);
                    [r21 release];
                    if (r19 != r23) {
                            [r28 addObject:r25];
                    }
            }
            [r22 release];
    }
    else {
            r25 = var_A8;
            [r28 addObject:r25];
            r27 = var_58;
    }
    [r20 setQueuedCalls:r28];
    [r27 release];
    r0 = r28;
    goto loc_10066c2b8;

loc_10066c2b8:
    [r0 release];
    goto loc_10066c2bc;

loc_10066c2bc:
    r0 = r26;
    goto loc_10066c2c0;

loc_10066c18c:
    [r28 addObject:r25];
    [r25 release];
    goto loc_10066c1a4;

loc_10066c15c:
    r0 = [r20 queuedCalls];
    r0 = [r0 retain];
    [r0 addObject:r2];
    r0 = r19;
    goto loc_10066c2b8;

loc_10066be6c:
    r0 = [r20 queuedCalls];
    goto loc_10066be7c;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_queuedCalls, 0x0);
    objc_destroyWeak((int64_t *)&self->_webView);
    objc_storeStrong((int64_t *)&self->_videoTrackerName, 0x0);
    return;
}

@end