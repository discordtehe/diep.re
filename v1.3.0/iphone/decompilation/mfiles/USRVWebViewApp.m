@implementation USRVWebViewApp

+(void *)getCurrentApp {
    r0 = *0x1011d1ad8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)create:(void *)arg2 {
    r19 = [arg2 retain];
    [NSURLProtocol registerClass:[USRVURLProtocol class]];
    [[[USRVWebViewApp alloc] initWithConfiguration:r19] retain];
    var_28 = r19;
    [r19 retain];
    dispatch_sync(*__dispatch_main_q, &var_50);
    [USRVWebViewApp setCurrentApp:r20];
    [var_28 release];
    [r0 release];
    [r19 release];
    [r20 release];
    return;
}

+(void)setCurrentApp:(void *)arg2 {
    objc_storeStrong(0x1011d1ad8, arg2);
    return;
}

+(void *)urlEncode:(void *)arg2 {
    r20 = [arg2 retain];
    r0 = [NSMutableCharacterSet alphanumericCharacterSet];
    r0 = [r0 retain];
    [r0 addCharactersInString:@"-._"];
    r19 = [[arg2 stringByAddingPercentEncodingWithAllowedCharacters:r0] retain];
    [r20 release];
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithConfiguration:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setConfiguration:r19];
            r22 = [[r19 getWebAppApiClassList] retain];
            [USRVInvocation setClassTable:r22];
            [r22 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)invokeJavascriptMethod:(void *)arg2 className:(void *)arg3 params:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    r31 = r31 - 0x70;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [r3 retain];
    r21 = [r4 retain];
    r2 = r21;
    if ([NSJSONSerialization isValidJSONObject:r2] == 0x0) goto loc_1000d3cec;

loc_1000d3bf8:
    r23 = [[NSJSONSerialization dataWithJSONObject:r21 options:0x0 error:0x0] retain];
    r24 = [[NSString alloc] initWithData:r23 encoding:0x4];
    r25 = [[NSString alloc] initWithFormat:@"window.%@.%@(%@);"];
    if ([USRVDeviceLog getLogLevel] >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: JS_STRING: %@", @selector(getLogLevel), @"window.%@.%@(%@);", 0x4, 0x0);
    }
    [r22 invokeJavascriptString:r25];
    [r25 release];
    [r24 release];
    r0 = r23;
    goto loc_1000d3d50;

loc_1000d3d50:
    [r0 release];
    goto loc_1000d3d54;

loc_1000d3d54:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1000d3cec:
    if ([USRVDeviceLog getLogLevel] < 0x1) goto loc_1000d3d54;

loc_1000d3d08:
    [[r21 description] retain];
    NSLog(@"%@/UnityAds: %s (line:%d) :: FATAL_ERROR: Tried to invoke javascript with data that could not be parsed to JSON: %@", @selector(description), r2, r3, r4);
    r0 = r22;
    goto loc_1000d3d50;
}

-(void)invokeJavascriptString:(void *)arg2 {
    [[arg2 retain] retain];
    dispatch_async(*__dispatch_main_q, &var_40);
    [r0 release];
    [r19 release];
    return;
}

-(bool)sendEvent:(void *)arg2 category:(void *)arg3 param1:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([r22 webAppLoaded] != 0x0) {
            var_38 = r29 + 0x10;
            r23 = [[NSMutableArray alloc] init];
            if (r21 != 0x0) {
                    r0 = r23;
                    r1 = @selector(addObject:);
                    do {
                            objc_msgSend(r0, r1);
                            r8 = var_38;
                            var_38 = r8 + 0x8;
                            if (*r8 == 0x0) {
                                break;
                            }
                            r0 = r23;
                            r1 = @selector(addObject:);
                    } while (true);
            }
            r22 = [r22 sendEvent:r19 category:r20 params:r23];
            [r23 release];
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)sendEvent:(void *)arg2 category:(void *)arg3 params:(void *)arg4 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([r22 webAppLoaded] != 0x0) {
            r0 = [NSMutableArray alloc];
            r0 = [r0 init];
            [r0 addObject:r20];
            [r0 addObject:r19];
            [r0 addObjectsFromArray:r21];
            r23 = [[NSArray alloc] initWithArray:r0];
            [r22 invokeJavascriptMethod:@"handleEvent" className:@"nativebridge" params:r23];
            [r23 release];
            [r0 release];
            r22 = 0x1;
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)invokeMethod:(void *)arg2 className:(void *)arg3 receiverClass:(void *)arg4 callback:(void *)arg5 params:(void *)arg6 {
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
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r24 = [arg6 retain];
    if ([r23 webAppLoaded] != 0x0) {
            r0 = [NSMutableArray alloc];
            r0 = [r0 init];
            r25 = r0;
            [r0 addObject:r2];
            objc_msgSend(r25, r26);
            if (r21 != 0x0 && r22 != 0x0) {
                    var_58 = r19;
                    r0 = [USRVNativeCallback alloc];
                    r0 = [r0 initWithCallback:r22 receiverClass:r21];
                    r27 = r0;
                    r0 = [r0 callbackId];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r26 = @selector(addObject:);
                            [r23 addCallback:r27];
                            [[r27 callbackId] retain];
                            objc_msgSend(r25, r26);
                            [r19 release];
                    }
                    [r27 release];
                    r19 = var_58;
            }
            [r25 addObjectsFromArray:r24];
            [r23 invokeJavascriptMethod:@"handleInvocation" className:@"nativebridge" params:r25];
            [r25 release];
            r23 = 0x1;
    }
    else {
            r23 = 0x0;
    }
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void)addCallback:(void *)arg2 {
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
    r19 = arg2;
    r21 = self;
    if (r19 != 0x0) {
            r20 = [r19 retain];
            r0 = [r21 nativeCallbacks];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r23 = [[NSMutableDictionary alloc] init];
                    [r21 setNativeCallbacks:r23];
                    [r23 release];
            }
            r21 = [[r21 nativeCallbacks] retain];
            [[r19 callbackId] retain];
            [r21 setObject:r2 forKey:r3];
            [r20 release];
            [r22 release];
            [r21 release];
    }
    return;
}

-(void)removeCallback:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 nativeCallbacks];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    [r0 release];
    if (r19 != 0x0 && r22 != 0x0) {
            r20 = [[r20 nativeCallbacks] retain];
            [[r19 callbackId] retain];
            [r20 removeObjectForKey:r2];
            [r21 release];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)getCallbackWithId:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [r20 nativeCallbacks];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    [r0 release];
    r22 = 0x0;
    if (r19 != 0x0) {
            r22 = 0x0;
            if (r23 != 0x0) {
                    r0 = [r20 nativeCallbacks];
                    r0 = [r0 retain];
                    r22 = [[r0 objectForKey:r2] retain];
                    [r0 release];
            }
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(bool)invokeCallback:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x1d0;
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
    r19 = self;
    r20 = [r2 retain];
    if ([r19 webAppLoaded] != 0x0) {
            var_1A0 = r19;
            var_168 = [[NSMutableArray alloc] init];
            var_198 = r20;
            r0 = [r20 responses];
            r29 = r29;
            r0 = [r0 retain];
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_190 = r1;
            var_188 = r0;
            r0 = objc_msgSend(r0, r1);
            var_138 = r0;
            if (r0 != 0x0) {
                    r27 = @selector(init);
                    do {
                            r22 = 0x0;
                            do {
                                    if (*0x0 != *0x0) {
                                            objc_enumerationMutation(var_188);
                                    }
                                    r19 = *(0x0 + r22 * 0x8);
                                    r0 = [r19 objectAtIndex:0x2];
                                    r0 = [r0 retain];
                                    r26 = [[r0 objectAtIndex:0x0] retain];
                                    [r0 count] - 0x1;
                                    var_130 = [[r0 subarrayWithRange:0x1] retain];
                                    [r0 release];
                                    r28 = [[r19 objectAtIndex:0x0] retain];
                                    r0 = @class(NSMutableArray);
                                    r0 = [r0 alloc];
                                    r0 = objc_msgSend(r0, r27);
                                    r25 = r0;
                                    var_128 = r26;
                                    [r0 addObject:r26];
                                    [r25 addObject:r28];
                                    r24 = objc_msgSend([NSMutableArray alloc], r27);
                                    r0 = [r19 objectAtIndex:0x1];
                                    r29 = r29;
                                    r19 = [r0 retain];
                                    if (r19 != 0x0 && [r19 length] != 0x0) {
                                            [r24 addObject:r19];
                                    }
                                    [r24 addObjectsFromArray:var_130];
                                    [r25 addObject:r24];
                                    r23 = [[NSArray alloc] initWithArray:r25];
                                    [var_168 addObject:r23];
                                    [r23 release];
                                    [r19 release];
                                    [r24 release];
                                    [r25 release];
                                    [r28 release];
                                    [var_128 release];
                                    [var_130 release];
                                    r22 = r22 + 0x1;
                            } while (r22 < var_138);
                            r0 = objc_msgSend(var_188, var_190);
                            var_138 = r0;
                    } while (r0 != 0x0);
            }
            [var_188 release];
            [var_1A0 invokeJavascriptMethod:@"handleCallback" className:@"nativebridge" params:var_168];
            [var_168 release];
            r19 = 0x1;
            r20 = var_198;
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: WebApp not loaded!", @selector(getLogLevel), r2, r3);
            }
            r19 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)placeWebViewToBackgroundView {
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
    r0 = [self webView];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1000d4b64;

loc_1000d4a44:
    r0 = [r19 backgroundView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 == 0x0) goto .l1;

loc_1000d4a74:
    r0 = [r19 webView];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 superview];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    if (r0 != 0x0) {
            r0 = [r19 webView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 removeFromSuperview];
            [r22 release];
    }
    r0 = [r19 webView];
    r0 = [r0 retain];
    [r0 setHidden:0x1];
    [r0 release];
    r21 = [[r19 backgroundView] retain];
    [[r19 webView] retain];
    [r21 addSubview:r2];
    [r19 release];
    r0 = r21;
    goto loc_1000d4b68;

loc_1000d4b68:
    [r0 release];
    return;

.l1:
    return;

loc_1000d4b64:
    r0 = r22;
    goto loc_1000d4b68;
}

-(bool)webAppLoaded {
    r0 = *(int8_t *)(int64_t *)&self->_webAppLoaded;
    return r0;
}

-(void)setWebAppLoaded:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_webAppLoaded = arg2;
    return;
}

-(void)createBackgroundView {
    r20 = [[USRVWebViewBackgroundView alloc] initWithFrame:r2];
    [self setBackgroundView:r20];
    [r20 release];
    r19 = [[self backgroundView] retain];
    r20 = [[UIColor clearColor] retain];
    [r19 setBackgroundColor:r20];
    [r20 release];
    [r19 release];
    return;
}

-(bool)webAppInitialized {
    r0 = *(int8_t *)(int64_t *)&self->_webAppInitialized;
    return r0;
}

-(void)setWebAppInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_webAppInitialized = arg2;
    return;
}

-(void *)webView {
    r0 = self->_webView;
    return r0;
}

-(void)setWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webView, arg2);
    return;
}

-(void *)backgroundView {
    r0 = self->_backgroundView;
    return r0;
}

-(void)setBackgroundView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_backgroundView, arg2);
    return;
}

-(void *)configuration {
    r0 = self->_configuration;
    return r0;
}

-(void)setConfiguration:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_configuration, arg2);
    return;
}

-(void *)nativeCallbacks {
    r0 = self->_nativeCallbacks;
    return r0;
}

-(void)setNativeCallbacks:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeCallbacks, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_nativeCallbacks, 0x0);
    objc_storeStrong((int64_t *)&self->_configuration, 0x0);
    objc_storeStrong((int64_t *)&self->_backgroundView, 0x0);
    objc_storeStrong((int64_t *)&self->_webView, 0x0);
    return;
}

@end