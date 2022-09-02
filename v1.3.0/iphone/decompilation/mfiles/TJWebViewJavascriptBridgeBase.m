@implementation TJWebViewJavascriptBridgeBase

+(void)enableLogging {
    *(int8_t *)0x1011dc108 = 0x1;
    return;
}

+(void)setLogMaxLength:(int)arg2 {
    *(int32_t *)0x1011c4740 = arg2;
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r21 = [[NSMutableDictionary dictionary] retain];
            [r19 setMessageHandlers:r21];
            [r21 release];
            r21 = [[NSMutableArray array] retain];
            [r19 setStartupMessageQueue:r21];
            [r21 release];
            r20 = [[NSMutableDictionary dictionary] retain];
            [r19 setResponseCallbacks:r20];
            [r20 release];
            r19->_uniqueId = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self setStartupMessageQueue:0x0];
    [self setResponseCallbacks:0x0];
    [self setMessageHandlers:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)reset {
    r20 = [[NSMutableArray array] retain];
    [self setStartupMessageQueue:r20];
    [r20 release];
    r20 = [[NSMutableDictionary dictionary] retain];
    [self setResponseCallbacks:r20];
    [r20 release];
    self->_uniqueId = 0x0;
    return;
}

-(void)sendData:(void *)arg2 responseCallback:(void *)arg3 handlerName:(void *)arg4 {
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
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r23 = [arg4 retain];
    r0 = [NSMutableDictionary dictionary];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r19 != 0x0) {
            [r22 setObject:r19 forKeyedSubscript:@"data"];
    }
    if (r21 != 0x0) {
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_uniqueId));
            *(r20 + r9) = *(r20 + r9) + 0x1;
            r24 = [[NSString stringWithFormat:r2] retain];
            r25 = [r21 copy];
            r0 = [r20 responseCallbacks];
            r0 = [r0 retain];
            [r0 setObject:r25 forKeyedSubscript:r24];
            [r0 release];
            [r25 release];
            [r22 setObject:r24 forKeyedSubscript:@"callbackId"];
            [r24 release];
    }
    if ([r23 isEqualToString:r2] != 0x0) goto loc_1009243fc;

loc_1009243dc:
    if (r23 == 0x0) goto loc_100924404;

loc_1009243e0:
    [r22 setObject:r23 forKeyedSubscript:@"handlerName"];
    goto loc_1009243fc;

loc_1009243fc:
    [r23 release];
    goto loc_100924404;

loc_100924404:
    [r20 _queueMessage:r22];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)injectJavascriptFile {
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
    r19 = self;
    r20 = [sub_10091a5f8() retain];
    [r19 _evaluateJavascript:r20];
    r0 = [r19 startupMessageQueue];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r21 = [[r19 startupMessageQueue] retain];
            [r19 setStartupMessageQueue:0x0];
            var_108 = q0;
            r0 = [r21 retain];
            r21 = r0;
            r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r23 != 0x0) {
                    r25 = *var_108;
                    do {
                            r27 = 0x0;
                            do {
                                    if (*var_108 != r25) {
                                            objc_enumerationMutation(r21);
                                    }
                                    [r19 _dispatchMessage:r2];
                                    r27 = r27 + 0x1;
                            } while (r27 < r23);
                            r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r23 != 0x0);
            }
            [r21 release];
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)flushStartupMessage {
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
    r19 = self;
    r0 = [self startupMessageQueue];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 startupMessageQueue] retain];
            [r19 setStartupMessageQueue:0x0];
            var_108 = q0;
            r0 = [r20 retain];
            r20 = r0;
            r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
            if (r22 != 0x0) {
                    r24 = *var_108;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_108 != r24) {
                                            objc_enumerationMutation(r20);
                                    }
                                    [r19 _dispatchMessage:r2];
                                    r26 = r26 + 0x1;
                            } while (r26 < r22);
                            r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    } while (r22 != 0x0);
            }
            [r20 release];
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isWebViewJavascriptBridgeURL:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isSchemeMatch:r19] != 0x0) {
            if (([r20 isBridgeLoadedURL:r19] & 0x1) != 0x0) {
                    r20 = 0x1;
            }
            else {
                    r20 = [r20 isQueueMessageURL:r19];
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isSchemeMatch:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 scheme];
    r0 = [r0 retain];
    r19 = [[r0 lowercaseString] retain];
    [r0 release];
    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x1;
    }
    else {
            r20 = @selector(isEqualToString:);
            r20 = objc_msgSend(r19, r20);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isQueueMessageURL:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r0 = [arg2 host];
    r0 = [r0 retain];
    r19 = [[r0 lowercaseString] retain];
    [r0 release];
    r20 = [self isSchemeMatch:r22];
    [r22 release];
    if (r20 != 0x0) {
            r20 = [r19 isEqualToString:r2];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)isBridgeLoadedURL:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r0 = [arg2 host];
    r0 = [r0 retain];
    r19 = [[r0 lowercaseString] retain];
    [r0 release];
    r20 = [self isSchemeMatch:r22];
    [r22 release];
    if (r20 != 0x0) {
            r20 = [r19 isEqualToString:r2];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)flushMessageQueue:(void *)arg2 {
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
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffff90 - 0x280;
    r20 = self;
    r22 = [arg2 retain];
    if (r22 == 0x0 || [r22 length] == 0x0) goto loc_10092452c;

loc_1009244a8:
    r0 = [r22 rangeOfString:@"__WVJB_MESSAGE_SEPERATOR__" options:0x1];
    var_2C0 = r22;
    if (r0 != 0x7fffffffffffffff) goto loc_100924550;

loc_1009244d4:
    r0 = [r20 _deserializeMessageJSON:r22];
    r29 = r29;
    r21 = [r0 retain];
    [NSArray class];
    if ([r21 isKindOfClass:r2] == 0x0) goto loc_100924688;

loc_100924520:
    r0 = [r21 retain];
    goto loc_1009246b0;

loc_1009246b0:
    r19 = r0;
    goto loc_1009246b4;

loc_1009246b4:
    [r21 release];
    r23 = @selector(countByEnumeratingWithState:objects:count:);
    goto loc_1009246c4;

loc_1009246c4:
    var_1E0 = q0;
    r0 = [r19 retain];
    r26 = r0;
    r28 = objc_msgSend(r0, r23);
    if (r28 == 0x0) goto loc_100924ca8;

loc_1009246f8:
    r22 = 0x0;
    r19 = &@selector(platformType);
    var_228 = *var_1E0;
    var_2A0 = r26;
    var_2C8 = r23;
    goto loc_10092474c;

loc_10092474c:
    r25 = 0x0;
    var_250 = *(r19 + 0xb30);
    var_290 = r28;
    r23 = r19;
    goto loc_100924854;

loc_100924854:
    if (*var_1E0 != var_228) {
            objc_enumerationMutation(r26);
    }
    if ((r22 & 0x1) != 0x0) goto loc_100924ca8;

loc_100924874:
    var_230 = @selector(class);
    var_238 = @selector(isKindOfClass:);
    r21 = *(var_1E8 + r25 * 0x8);
    r22 = var_230;
    objc_msgSend(@class(NSDictionary), r22);
    if ((objc_msgSend(r21, var_238) & 0x1) != 0x0) {
            objc_msgSend(r20, var_250);
            r22 = @selector(objectForKeyedSubscript:);
            r0 = objc_msgSend(r21, r22);
            r29 = r29;
            r19 = [r0 retain];
            if (r19 != 0x0) {
                    var_270 = @selector(removeObjectForKey:);
                    r0 = r20->_responseCallbacks;
                    r0 = objc_msgSend(r0, r22);
                    r0 = [r0 retain];
                    (*(r0 + 0x10))(r0, [objc_msgSend(r21, r22) retain]);
                    [r21 release];
                    r0 = [r20 responseCallbacks];
                    r29 = r29;
                    r0 = [r0 retain];
                    objc_msgSend(r0, var_270);
                    [r21 release];
                    [r22 release];
                    r22 = 0x0;
            }
            else {
                    r0 = objc_msgSend(r21, r22);
                    r29 = r29;
                    r0 = [r0 retain];
                    var_278 = r0;
                    if (r0 != 0x0) {
                            var_200 = [r0 retain];
                            r0 = objc_retainBlock(&var_220);
                            var_260 = r0;
                            [var_200 release];
                    }
                    else {
                            var_260 = objc_retainBlock(0x100ea20d8);
                    }
                    r23 = [[r20 messageHandlers] retain];
                    r24 = [objc_msgSend(r21, r22) retain];
                    r0 = objc_msgSend(r23, r22);
                    r29 = r29;
                    r27 = [r0 retain];
                    [r24 release];
                    [r23 release];
                    var_248 = r27;
                    if (r27 == 0x0) {
                            r0 = [r20 messageHandlers];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = objc_msgSend(r0, r22);
                            r29 = r29;
                            r24 = [r0 retain];
                            [r23 release];
                            var_248 = r24;
                            if (r24 != 0x0) {
                                    r0 = objc_msgSend(r21, r22);
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    if (r26 != 0x0) {
                                            r0 = [NSNull null];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 release];
                                            if (r26 == r0) {
                                                    r0 = [NSDictionary dictionary];
                                                    r29 = r29;
                                                    r23 = [r0 retain];
                                                    [r26 release];
                                                    r26 = r23;
                                            }
                                    }
                                    else {
                                            r0 = [NSDictionary dictionary];
                                            r29 = r29;
                                            r23 = [r0 retain];
                                            [r26 release];
                                            r26 = r23;
                                    }
                                    var_298 = @selector(isEqualToString:);
                                    r0 = [r26 objectForKey:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r24 = r0;
                                    r27 = objc_msgSend(r0, var_298);
                                    if (objc_msgSend(r24, var_298) != 0x0) {
                                            r0 = [r26 objectForKey:r2];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r28 = [r0 boolValue];
                                            [r0 release];
                                    }
                                    else {
                                            r28 = 0x0;
                                    }
                                    r22 = r27 | r28;
                                    (*(var_248 + 0x10))(var_248, r26, var_260);
                                    [r24 release];
                                    [r26 release];
                                    [var_248 release];
                                    r26 = var_2A0;
                                    r28 = var_290;
                            }
                            else {
                                    [TJCLog logWithLevel:r2 format:r3];
                                    r22 = 0x0;
                            }
                    }
                    else {
                            r0 = objc_msgSend(r21, r22);
                            r29 = r29;
                            r26 = [r0 retain];
                            if (r26 != 0x0) {
                                    r0 = [NSNull null];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r26 == r0) {
                                            r0 = [NSDictionary dictionary];
                                            r29 = r29;
                                            r23 = [r0 retain];
                                            [r26 release];
                                            r26 = r23;
                                    }
                            }
                            else {
                                    r0 = [NSDictionary dictionary];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    [r26 release];
                                    r26 = r23;
                            }
                            var_298 = @selector(isEqualToString:);
                            r0 = [r26 objectForKey:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = r0;
                            r27 = objc_msgSend(r0, var_298);
                            if (objc_msgSend(r24, var_298) != 0x0) {
                                    r0 = [r26 objectForKey:r2];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r28 = [r0 boolValue];
                                    [r0 release];
                            }
                            else {
                                    r28 = 0x0;
                            }
                            r22 = r27 | r28;
                            (*(var_248 + 0x10))(var_248, r26, var_260);
                            [r24 release];
                            [r26 release];
                            [var_248 release];
                            r26 = var_2A0;
                            r28 = var_290;
                    }
                    [var_278 release];
                    [var_260 release];
                    r23 = &@selector(platformType);
            }
            [r19 release];
    }
    else {
            objc_msgSend(r21, r22);
            [TJCLog logWithLevel:r2 format:r3];
            r22 = 0x0;
    }
    r25 = r25 + 0x1;
    if (r25 < r28) goto loc_100924854;

loc_100924c5c:
    r19 = r23;
    r28 = objc_msgSend(r26, var_2C8);
    if (r28 != 0x0) goto loc_10092474c;

loc_100924ca8:
    [r26 release];
    [r26 release];
    r22 = var_2C0;
    goto loc_100924cbc;

loc_100924cbc:
    var_68 = **___stack_chk_guard;
    [r22 release];
    if (**___stack_chk_guard != var_68) {
            __stack_chk_fail();
    }
    return;

loc_100924688:
    if (r21 == 0x0) goto loc_100924d00;

loc_10092468c:
    r0 = [NSArray arrayWithObjects:r29 - 0xf0 count:0x1];
    r29 = r29;
    r0 = [r0 retain];
    goto loc_1009246b0;

loc_100924d00:
    r19 = 0x0;
    goto loc_1009246b4;

loc_100924550:
    r21 = [[r22 componentsSeparatedByString:@"__WVJB_MESSAGE_SEPERATOR__"] retain];
    r0 = [NSMutableArray array];
    r29 = r29;
    r19 = [r0 retain];
    r0 = [r21 retain];
    r21 = r0;
    r23 = @selector(countByEnumeratingWithState:objects:count:);
    r22 = objc_msgSend(r0, r23);
    if (r22 != 0x0) {
            do {
                    r28 = r23;
                    r27 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r24 = @selector(addObject:);
                            r0 = [r20 _deserializeMessageJSON:*(0x0 + r27 * 0x8)];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r19, r24);
                            [r25 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r22);
                    r23 = r28;
                    r22 = objc_msgSend(r21, r23);
            } while (r22 != 0x0);
    }
    [r21 release];
    [r21 release];
    goto loc_1009246c4;

loc_10092452c:
    [TJCLog logWithLevel:0x4 format:@"WebViewJavascriptBridge: WARNING: ObjC got nil while fetching the message queue JSON from webview. This can happen if the WebViewJavascriptBridge JS is not currently present in the webview, e.g if the webview just loaded a new page."];
    goto loc_100924cbc;
}

-(void)logUnkownMessage:(void *)arg2 {
    r20 = [[arg2 absoluteString] retain];
    [TJCLog logWithLevel:0x4 format:@"WebViewJavascriptBridge: WARNING: Received unknown WebViewJavascriptBridge command %@"];
    [r20 release];
    return;
}

-(void *)webViewJavascriptCheckCommand {
    objc_retainAutorelease(@"typeof WebViewJavascriptBridge == 'object';");
    return @"typeof WebViewJavascriptBridge == 'object';";
}

-(void *)webViewJavascriptFetchQueyCommand {
    objc_retainAutorelease(@"WebViewJavascriptBridge._fetchQueue();");
    return @"WebViewJavascriptBridge._fetchQueue();";
}

-(void)disableJavscriptAlertBoxSafetyTimeout {
    [self sendData:0x0 responseCallback:0x0 handlerName:@"_disableJavascriptAlertBoxSafetyTimeout"];
    return;
}

-(void)_evaluateJavascript:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 _evaluateJavascript:r21] retain];
    [r21 release];
    [r20 release];
    [r0 release];
    return;
}

-(void)_queueMessage:(struct NSDictionary *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 startupMessageQueue];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 startupMessageQueue];
            r0 = [r0 retain];
            [r0 addObject:r2];
            [r20 release];
    }
    else {
            [r20 _dispatchMessage:r19];
    }
    [r19 release];
    return;
}

-(void)_dispatchMessage:(struct NSDictionary *)arg2 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = [[self _serializeMessage:arg2 pretty:0x0] retain];
    [r19 _log:@"SEND" json:r21];
    r22 = [[r21 stringByReplacingOccurrencesOfString:@"\" withString:@"\\"] retain];
    [r21 release];
    r21 = [[r22 stringByReplacingOccurrencesOfString:@"\"" withString:@"\\""] retain];
    [r22 release];
    r22 = [[r21 stringByReplacingOccurrencesOfString:@"'" withString:@"\'"] retain];
    [r21 release];
    r21 = [[r22 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n"] retain];
    [r22 release];
    r22 = [[r21 stringByReplacingOccurrencesOfString:@"\r" withString:@"\r"] retain];
    [r21 release];
    r21 = [[r22 stringByReplacingOccurrencesOfString:@"\x0C" withString:@"\f"] retain];
    [r22 release];
    r22 = [[r21 stringByReplacingOccurrencesOfString:0x100f0f6d0 withString:@"\u2028"] retain];
    [r21 release];
    r20 = [[r22 stringByReplacingOccurrencesOfString:0x100f0f710 withString:@"\u2029"] retain];
    [r22 release];
    r21 = [[NSString stringWithFormat:@"WebViewJavascriptBridge._handleMessageFromObjC('%@');"] retain];
    r0 = [NSThread currentThread];
    r0 = [r0 retain];
    r23 = [r0 isMainThread];
    [r0 release];
    if (r23 != 0x0) {
            [r19 _evaluateJavascript:r21];
    }
    else {
            var_38 = [r21 retain];
            dispatch_sync(*__dispatch_main_q, &var_60);
            [var_38 release];
    }
    [r21 release];
    [r20 release];
    return;
}

-(void *)_serializeMessage:(void *)arg2 pretty:(bool)arg3 {
    r22 = [arg2 retain];
    r20 = [NSString alloc];
    r19 = [[NSJSONSerialization dataWithJSONObject:r22 options:arg3 error:0x0] retain];
    [r22 release];
    r20 = [r20 initWithData:r19 encoding:0x4];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)_deserializeMessageJSON:(void *)arg2 {
    r20 = [[arg2 dataUsingEncoding:0x4] retain];
    r19 = [[NSJSONSerialization JSONObjectWithData:r20 options:0x4 error:0x0] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
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

-(void)_log:(void *)arg2 json:(void *)arg3 {
    r31 = r31 - 0x40;
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
    if (*(int8_t *)byte_1011dc108 == 0x1) {
            r2 = [NSString class];
            if (([r20 isKindOfClass:r2] & 0x1) == 0x0) {
                    r0 = [r21 _serializeMessage:r20 pretty:0x1];
                    r29 = r29;
                    r21 = [r0 retain];
                    [r20 release];
                    r20 = r21;
            }
            if ([r20 length] >= sign_extend_64(*(int32_t *)0x1011c4740)) {
                    r22 = [[r20 substringToIndex:r2] retain];
                    [TJCLog logWithLevel:0x6 format:@"WVJB %@: %@ [...]"];
                    [r22 release];
            }
            else {
                    [TJCLog logWithLevel:0x6 format:@"WVJB %@: %@"];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)startupMessageQueue {
    r0 = self->_startupMessageQueue;
    return r0;
}

-(void)setStartupMessageQueue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_startupMessageQueue, arg2);
    return;
}

-(void *)responseCallbacks {
    r0 = self->_responseCallbacks;
    return r0;
}

-(void)setResponseCallbacks:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_responseCallbacks, arg2);
    return;
}

-(void *)messageHandlers {
    r0 = self->_messageHandlers;
    return r0;
}

-(void)setMessageHandlers:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_messageHandlers, arg2);
    return;
}

-(void *)messageHandler {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_messageHandler)), 0x0);
    return r0;
}

-(void)setMessageHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_messageHandler, 0x0);
    objc_storeStrong((int64_t *)&self->_messageHandlers, 0x0);
    objc_storeStrong((int64_t *)&self->_responseCallbacks, 0x0);
    objc_storeStrong((int64_t *)&self->_startupMessageQueue, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_destroyWeak((int64_t *)&self->_webViewDelegate);
    return;
}

@end