@implementation ADCWebViewModule

-(void *)view {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 compare:@"8.0" options:0x40] != -0x1) {
            r22 = [r19 useUIWebView];
            [r21 release];
            [r20 release];
            if ((r22 & 0x1) == 0x0) {
                    r0 = [r19 wkWebView];
            }
            else {
                    r0 = [r19 uiWebView];
            }
    }
    else {
            [r21 release];
            [r20 release];
            r0 = [r19 uiWebView];
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void)setFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xe0;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 compare:@"8.0" options:0x40] != -0x1) {
            r22 = [r19 useUIWebView];
            [r21 release];
            [r20 release];
            if ((r22 & 0x1) == 0x0) {
                    r1 = &var_D0;
            }
            else {
                    r1 = &var_88;
            }
    }
    else {
            [r21 release];
            [r20 release];
            r1 = &var_88;
    }
    dispatch_async(*__dispatch_main_q, r1);
    return;
}

-(void *)initWithFrame:(struct CGRect)arg2 originID:(unsigned long long)arg3 info:(void *)arg4 filepath:(void *)arg5 useUIWebView:(bool)arg6 isDisplayModule:(bool)arg7 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x150;
    var_70 = d11;
    stack[-120] = d10;
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
    r24 = r6;
    r23 = r5;
    r19 = r2;
    var_F8 = [r3 retain];
    r20 = [r4 retain];
    r0 = [[r29 - 0x80 super] init];
    r21 = r0;
    [r0 setIsDisplayModule:r24];
    if (r24 != 0x0) {
            r25 = [[NSURL fileURLWithPath:r20 isDirectory:0x0] retain];
            [@"{}" retain];
            r0 = [var_F8 objectForKey:@"metadata"];
            r29 = r29;
            r27 = [r0 retain];
            if ([NSJSONSerialization isValidJSONObject:r27] != 0x0) {
                    r0 = [NSJSONSerialization dataWithJSONObject:r27 options:0x0 error:r29 - 0x88];
                    r29 = r29;
                    r22 = [r0 retain];
                    r26 = [0x0 retain];
                    if (r22 != 0x0 && r26 == 0x0) {
                            r28 = [[NSString alloc] initWithData:r22 encoding:0x4];
                            [r26 release];
                            [@"{}" release];
                    }
                    else {
                            r0 = [r26 localizedDescription];
                            r29 = r29;
                            r28 = [r0 retain];
                            r25 = r25;
                            r20 = r20;
                            r23 = r23;
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCWebViewModule initWithFrame:originID:info:filepath:useUIWebView:isDisplayModule:]" line:0x37 withFormat:@"Invalid input dictionary: %@ resulted in serialization error: %@"];
                            [r26 release];
                            [r28 release];
                            r28 = @"{}";
                    }
                    [r22 release];
                    r22 = r28;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCWebViewModule initWithFrame:originID:info:filepath:useUIWebView:isDisplayModule:]" line:0x3c withFormat:@"Tried to parse invalid JSON: %@"];
                    r22 = @"{}";
            }
            r0 = [NSString stringWithContentsOfURL:r25 encoding:0x4 error:0x0];
            r29 = r29;
            r26 = [r0 retain];
            if (r26 != 0x0) {
                    var_FC = r23;
                    var_108 = r19;
                    if ([r26 rangeOfString:@"ADC_DEVICE_INFO"] == 0x7fffffffffffffff) {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCWebViewModule initWithFrame:originID:info:filepath:useUIWebView:isDisplayModule:]" line:0x51 withFormat:@"ADC_DEVICE_INFO marker not found in data."];
                            r19 = var_108;
                            r23 = var_FC;
                    }
                    else {
                            var_118 = r25;
                            var_110 = r22;
                            r0 = [NSRegularExpression regularExpressionWithPattern:@"var\s*ADC_DEVICE_INFO\s*=\s*null\s*;" options:0x1 error:r29 - 0x90];
                            r29 = r29;
                            r19 = [r0 retain];
                            var_128 = [0x0 retain];
                            [r26 length];
                            r8 = &@selector(updateAppMetadata:error:);
                            r1 = *(r8 + 0xa70);
                            var_120 = r19;
                            r25 = objc_msgSend(r19, r1);
                            r22 = r1;
                            if (r25 == 0x7fffffffffffffff) {
                                    r8 = &@selector(updateAppMetadata:error:);
                                    if (CPU_FLAGS & E) {
                                            r8 = 0x1;
                                    }
                            }
                            if (r22 == 0x0) {
                                    if (CPU_FLAGS & E) {
                                            r9 = 0x1;
                                    }
                            }
                            if (r25 != 0x0 && (r8 & r9 & 0x1) == 0x0) {
                                    r28 = [[NSString stringWithFormat:@"var ADC_DEVICE_INFO = %@;"] retain];
                                    r0 = [r26 stringByReplacingCharactersInRange:r25 withString:r22];
                                    r29 = r29;
                                    r22 = [r0 retain];
                                    [r26 release];
                                    [r28 release];
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x3 function:"-[ADCWebViewModule initWithFrame:originID:info:filepath:useUIWebView:isDisplayModule:]" line:0x4c withFormat:@"ADC_DEVICE_INFO marker found"];
                                    r26 = r22;
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCWebViewModule initWithFrame:originID:info:filepath:useUIWebView:isDisplayModule:]" line:0x4e withFormat:@"ADC_DEVICE_INFO marker not found in data, but data hints it should be there."];
                            }
                            r19 = var_108;
                            r25 = var_118;
                            r23 = var_FC;
                            [var_120 release];
                            [var_128 release];
                            r22 = var_110;
                    }
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCWebViewModule initWithFrame:originID:info:filepath:useUIWebView:isDisplayModule:]" line:0x41 withFormat:@"No Ad Unit found at: %@"];
            }
            [r27 release];
            [r22 release];
            if (r21 != 0x0) {
                    [r21 setUseUIWebView:r23];
                    [r21 retain];
                    var_C8 = [r20 retain];
                    r26 = [r26 retain];
                    dispatch_sync(*__dispatch_main_q, &var_F0);
                    [r25 setActive:0x0];
                    [r25 setDisabled:0x0];
                    [r25 setAdc3InitCalled:0x0];
                    r0 = [r25 outbound];
                    r0 = [r0 retain];
                    objc_sync_enter(r0);
                    r27 = [NSMutableArray new];
                    [r25 setOutbound:r27];
                    [r27 release];
                    objc_sync_exit(r24);
                    [r24 release];
                    [r25 setNextBoundObjectIdentifier:0x0];
                    r22 = [NSMutableDictionary new];
                    [r25 setBoundObjects:r22];
                    [r22 release];
                    [r25 setInfo:var_F8];
                    [r25 setOriginNumber:r19];
                    [r26 release];
                    [var_C8 release];
                    [r25 release];
                    r25 = r28;
            }
    }
    else {
            r26 = 0x0;
            r25 = 0x0;
            if (r21 == 0x0) {
                    r26 = 0x0;
                    r25 = 0x0;
            }
            else {
                    [r21 setUseUIWebView:r23];
                    [r21 retain];
                    var_C8 = [r20 retain];
                    r26 = [r26 retain];
                    dispatch_sync(*__dispatch_main_q, &var_F0);
                    [r25 setActive:0x0];
                    [r25 setDisabled:0x0];
                    [r25 setAdc3InitCalled:0x0];
                    r0 = [r25 outbound];
                    r0 = [r0 retain];
                    objc_sync_enter(r0);
                    r27 = [NSMutableArray new];
                    [r25 setOutbound:r27];
                    [r27 release];
                    objc_sync_exit(r24);
                    [r24 release];
                    [r25 setNextBoundObjectIdentifier:0x0];
                    r22 = [NSMutableDictionary new];
                    [r25 setBoundObjects:r22];
                    [r22 release];
                    [r25 setInfo:var_F8];
                    [r25 setOriginNumber:r19];
                    [r26 release];
                    [var_C8 release];
                    [r25 release];
                    r25 = r28;
            }
    }
    [r26 release];
    [r25 release];
    [r20 release];
    [var_F8 release];
    r0 = r21;
    return r0;
}

-(void)setBounds:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xe0;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 compare:@"8.0" options:0x40] != -0x1) {
            r22 = [r19 useUIWebView];
            [r21 release];
            [r20 release];
            if ((r22 & 0x1) == 0x0) {
                    r1 = &var_D0;
            }
            else {
                    r1 = &var_88;
            }
    }
    else {
            [r21 release];
            [r20 release];
            r1 = &var_88;
    }
    dispatch_async(*__dispatch_main_q, r1);
    return;
}

-(void)setAutoResizingMask:(unsigned long long)arg2 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 compare:@"8.0" options:0x40] != -0x1) {
            r23 = [r20 useUIWebView];
            [r22 release];
            [r21 release];
            if ((r23 & 0x1) == 0x0) {
                    r1 = &var_90;
            }
            else {
                    r1 = &var_60;
            }
    }
    else {
            [r22 release];
            [r21 release];
            r1 = &var_60;
    }
    dispatch_async(*__dispatch_main_q, r1);
    return;
}

-(void)setBackgroundColor:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 compare:@"8.0" options:0x40] != -0x1) {
            r23 = [r20 useUIWebView];
            [r22 release];
            [r21 release];
            if ((r23 & 0x1) == 0x0) {
                    var_68 = r19;
                    r19 = [r19 retain];
                    dispatch_async(*__dispatch_main_q, &var_90);
                    r0 = var_68;
            }
            else {
                    var_38 = r19;
                    r19 = [r19 retain];
                    dispatch_async(*__dispatch_main_q, &var_60);
                    r0 = var_38;
            }
    }
    else {
            [r22 release];
            [r21 release];
            var_38 = r19;
            r19 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_60);
            r0 = var_38;
    }
    [r0 release];
    [r19 release];
    return;
}

-(void)setVisible:(bool)arg2 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 compare:@"8.0" options:0x40] != -0x1) {
            r23 = [r20 useUIWebView];
            [r22 release];
            [r21 release];
            if ((r23 & 0x1) == 0x0) {
                    r1 = &var_90;
            }
            else {
                    r1 = &var_60;
            }
    }
    else {
            [r22 release];
            [r21 release];
            r1 = &var_60;
    }
    dispatch_async(*__dispatch_main_q, r1);
    return;
}

-(void)setOpaque:(bool)arg2 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 compare:@"8.0" options:0x40] != -0x1) {
            r23 = [r20 useUIWebView];
            [r22 release];
            [r21 release];
            if ((r23 & 0x1) == 0x0) {
                    r1 = &var_90;
            }
            else {
                    r1 = &var_60;
            }
    }
    else {
            [r22 release];
            [r21 release];
            r1 = &var_60;
    }
    dispatch_async(*__dispatch_main_q, r1);
    return;
}

-(void)setUserInteractionEnabled:(bool)arg2 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 compare:@"8.0" options:0x40] != -0x1) {
            r23 = [r20 useUIWebView];
            [r22 release];
            [r21 release];
            if ((r23 & 0x1) == 0x0) {
                    r1 = &var_90;
            }
            else {
                    r1 = &var_60;
            }
    }
    else {
            [r22 release];
            [r21 release];
            r1 = &var_60;
    }
    dispatch_async(*__dispatch_main_q, r1);
    return;
}

-(void)setScrollEnabled:(bool)arg2 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r22 = r0;
    if ([r0 compare:@"8.0" options:0x40] != -0x1) {
            r23 = [r20 useUIWebView];
            [r22 release];
            [r21 release];
            if ((r23 & 0x1) == 0x0) {
                    r1 = &var_90;
            }
            else {
                    r1 = &var_60;
            }
    }
    else {
            [r22 release];
            [r21 release];
            r1 = &var_60;
    }
    dispatch_async(*__dispatch_main_q, r1);
    return;
}

-(void)removeFromSuperview {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 compare:@"8.0" options:0x40] != -0x1) {
            r22 = [r19 useUIWebView];
            [r21 release];
            [r20 release];
            if ((r22 & 0x1) == 0x0) {
                    r1 = &var_70;
            }
            else {
                    r1 = &var_48;
            }
    }
    else {
            [r21 release];
            [r20 release];
            r1 = &var_48;
    }
    dispatch_async(*__dispatch_main_q, r1);
    return;
}

-(void)loadRequest:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    if (r19 != 0x0) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 systemVersion];
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 compare:@"8.0" options:0x40] != -0x1) {
                    r23 = [r20 useUIWebView];
                    [r22 release];
                    [r21 release];
                    if ((r23 & 0x1) == 0x0) {
                            var_68 = [r19 retain];
                            dispatch_async(*__dispatch_main_q, &var_90);
                            r0 = var_68;
                    }
                    else {
                            var_38 = [r19 retain];
                            dispatch_async(*__dispatch_main_q, &var_60);
                            r0 = var_38;
                    }
            }
            else {
                    [r22 release];
                    [r21 release];
                    var_38 = [r19 retain];
                    dispatch_async(*__dispatch_main_q, &var_60);
                    r0 = var_38;
            }
            [r0 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebViewModule loadRequest:]" line:0x139 withFormat:@"Tried to load an invalid URL request"];
    }
    [r19 release];
    return;
}

-(void)evaluateJS:(void *)arg2 withCompletionHandler:(void *)arg3 {
    r31 = r31 - 0xb0;
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
    if (r19 != 0x0) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 systemVersion];
            r0 = [r0 retain];
            r23 = r0;
            if ([r0 compare:@"8.0" options:0x40] != -0x1) {
                    r24 = [r21 useUIWebView];
                    [r23 release];
                    [r22 release];
                    if ((r24 & 0x1) == 0x0) {
                            var_78 = [r19 retain];
                            var_70 = [r20 retain];
                            dispatch_async(*__dispatch_main_q, &var_A0);
                            [var_70 release];
                            r0 = var_78;
                    }
                    else {
                            var_40 = [r19 retain];
                            var_38 = [r20 retain];
                            dispatch_async(*__dispatch_main_q, &var_68);
                            [var_38 release];
                            r0 = var_40;
                    }
            }
            else {
                    [r23 release];
                    [r22 release];
                    var_40 = [r19 retain];
                    var_38 = [r20 retain];
                    dispatch_async(*__dispatch_main_q, &var_68);
                    [var_38 release];
                    r0 = var_40;
            }
            [r0 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebViewModule evaluateJS:withCompletionHandler:]" line:0x14a withFormat:@"Tried to load invalid source code into a web view"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)loadHTMLString:(void *)arg2 baseURL:(void *)arg3 {
    r31 = r31 - 0xb0;
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
    if (r19 != 0x0) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 systemVersion];
            r0 = [r0 retain];
            r23 = r0;
            if ([r0 compare:@"8.0" options:0x40] != -0x1) {
                    r24 = [r21 useUIWebView];
                    [r23 release];
                    [r22 release];
                    if ((r24 & 0x1) == 0x0) {
                            var_78 = [r19 retain];
                            var_70 = [r20 retain];
                            dispatch_async(*__dispatch_main_q, &var_A0);
                            [var_70 release];
                            r0 = var_78;
                    }
                    else {
                            var_40 = [r19 retain];
                            var_38 = [r20 retain];
                            dispatch_async(*__dispatch_main_q, &var_68);
                            [var_38 release];
                            r0 = var_40;
                    }
            }
            else {
                    [r23 release];
                    [r22 release];
                    var_40 = [r19 retain];
                    var_38 = [r20 retain];
                    dispatch_async(*__dispatch_main_q, &var_68);
                    [var_38 release];
                    r0 = var_40;
            }
            [r0 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebViewModule loadHTMLString:baseURL:]" line:0x161 withFormat:@"Tried to load an invalid source string"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)beginMessagePassing:(void *)arg2 {
    r31 = r31 - 0x120;
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
    r22 = self;
    r19 = [arg2 retain];
    [r22 setAdc3InitCalled:0x1];
    objc_initWeak(r29 - 0x68, r22);
    r20 = &var_90 + 0x20;
    objc_copyWeak(r20, r29 - 0x68);
    r0 = objc_retainBlock(&var_90);
    r21 = r0;
    if (r19 != 0x0) {
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 systemVersion];
            r29 = r29;
            r0 = [r0 retain];
            r24 = r0;
            if ([r0 compare:@"8.0" options:0x40] != -0x1) {
                    r25 = [r22 useUIWebView];
                    [r24 release];
                    [r23 release];
                    if ((r25 & 0x1) == 0x0) {
                            var_E8 = [r19 retain];
                            var_E0 = [r21 retain];
                            objc_copyWeak(&var_110 + 0x38, r29 - 0x68);
                            dispatch_async(*__dispatch_main_q, &var_110);
                            objc_destroyWeak(&var_110 + 0x38);
                            [var_E0 release];
                            r0 = var_E8;
                    }
                    else {
                            var_A8 = [r19 retain];
                            objc_copyWeak(&var_D0 + 0x38, r29 - 0x68);
                            var_A0 = [r21 retain];
                            dispatch_async(*__dispatch_main_q, &var_D0);
                            [var_A0 release];
                            objc_destroyWeak(&var_D0 + 0x38);
                            r0 = var_A8;
                    }
            }
            else {
                    [r24 release];
                    [r23 release];
                    var_A8 = [r19 retain];
                    objc_copyWeak(&var_D0 + 0x38, r29 - 0x68);
                    var_A0 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_D0);
                    [var_A0 release];
                    objc_destroyWeak(&var_D0 + 0x38);
                    r0 = var_A8;
            }
            [r0 release];
    }
    else {
            [r22 beginMessagePassingWithInfoString:r21];
    }
    [r21 release];
    objc_destroyWeak(r20);
    objc_destroyWeak(r29 - 0x68);
    [r19 release];
    return;
}

-(void)initializeWKWebViewModule:(void *)arg2 withString:(void *)arg3 {
    r19 = [arg2 retain];
    [arg3 retain];
    objc_initWeak(&stack[-72], r19);
    [[self wkWebView] retain];
    objc_copyWeak(&var_68 + 0x28, &stack[-72]);
    [r23 evaluateJavaScript:r20 completionHandler:&var_68];
    [r23 release];
    objc_destroyWeak(&var_68 + 0x28);
    objc_destroyWeak(&stack[-72]);
    [r20 release];
    [r19 release];
    return;
}

-(void)beginMessagePassingWithInfoString:(void *)arg2 {
    r31 = r31 - 0x190;
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
    r19 = [arg2 retain];
    r20 = [@(NO) retain];
    r0 = [r22 info];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [r22 info];
            r29 = r29;
            r24 = [r0 retain];
            r27 = 0x0;
            r26 = 0x1;
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r24 = [r0 retain];
            r26 = 0x0;
            r27 = 0x1;
    }
    r25 = @selector(dictionaryWithObjects:forKeys:count:);
    r25 = [objc_msgSend(@class(NSDictionary), r25) retain];
    r0 = [ADCDataTransform mergeDictionaries:r24];
    r29 = r29;
    r21 = [r0 retain];
    [r25 release];
    if (r27 != 0x0) {
            [r24 release];
    }
    if (r26 != 0x0) {
            [r24 release];
    }
    [r23 release];
    r23 = [[ADCUtil JSONStringFromJSONObject:r21] retain];
    [r22 setInfo:0x0];
    [r22 originNumber];
    r24 = [[NSString stringWithFormat:@"ADC3_init(%lu, %@);"] retain];
    objc_initWeak(r29 - 0x88, r22);
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 systemVersion];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if ([r0 compare:@"8.0" options:0x40] != -0x1) {
            r27 = [r22 useUIWebView];
            [r26 release];
            [r25 release];
            if ((r27 & 0x1) == 0x0) {
                    if ([NSThread isMainThread] != 0x0) {
                            r22 = &var_130 + 0x30;
                            objc_copyWeak(r22, r29 - 0x88);
                            var_110 = [r24 retain];
                            var_108 = [r19 retain];
                            sub_10021664c(&var_130);
                            [var_108 release];
                            r0 = var_110;
                    }
                    else {
                            r22 = &var_168 + 0x30;
                            objc_copyWeak(r22, r29 - 0x88);
                            var_148 = [r24 retain];
                            var_140 = [r19 retain];
                            dispatch_async(*__dispatch_main_q, &var_168);
                            [var_140 release];
                            r0 = var_148;
                    }
                    [r0 release];
                    objc_destroyWeak(r22);
            }
            else {
                    if ([NSThread isMainThread] != 0x0) {
                            var_98 = [r24 retain];
                            var_90 = [r19 retain];
                            sub_1002163dc(&var_C0);
                            [var_90 release];
                            r0 = var_98;
                    }
                    else {
                            var_D0 = [r24 retain];
                            var_C8 = [r19 retain];
                            dispatch_async(*__dispatch_main_q, &var_F8);
                            [var_C8 release];
                            r0 = var_D0;
                    }
                    [r0 release];
            }
    }
    else {
            [r26 release];
            [r25 release];
            if ([NSThread isMainThread] != 0x0) {
                    var_98 = [r24 retain];
                    var_90 = [r19 retain];
                    sub_1002163dc(&var_C0);
                    [var_90 release];
                    r0 = var_98;
            }
            else {
                    var_D0 = [r24 retain];
                    var_C8 = [r19 retain];
                    dispatch_async(*__dispatch_main_q, &var_F8);
                    [var_C8 release];
                    r0 = var_D0;
            }
            [r0 release];
    }
    var_58 = **___stack_chk_guard;
    objc_destroyWeak(r29 - 0x88);
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)onModuleInitError:(void *)arg2 {
    r21 = [[arg2 localizedDescription] retain];
    [self originNumber];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebViewModule onModuleInitError:]" line:0x1c9 withFormat:@"Error while evaluating ADC3_init %@ in module: %lu"];
    [r21 release];
    [self setDisabled:0x1];
    return;
}

-(void)pumpMessages:(void *)arg2 {
    r31 = r31 - 0x110;
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
    if (([r20 active] & 0x1) != 0x0) {
            r0 = [r20 outbound];
            r0 = [r0 retain];
            objc_sync_enter(r0);
            r24 = [[r20 outbound] retain];
            r25 = [[ADCMessage stringFromMessages:r24] retain];
            r0 = [NSString stringWithFormat:r2];
            r29 = r29;
            r21 = [r0 retain];
            [r25 release];
            [r24 release];
            objc_sync_exit(r23);
            [r23 release];
            if (r21 != 0x0) {
                    r0 = [r20 outbound];
                    r0 = [r0 retain];
                    objc_sync_enter(r0);
                    r0 = [r20 outbound];
                    r0 = [r0 retain];
                    [r0 removeAllObjects];
                    [r0 release];
                    objc_sync_exit(r23);
                    [r23 release];
                    r0 = [UIDevice currentDevice];
                    r0 = [r0 retain];
                    r22 = r0;
                    r0 = [r0 systemVersion];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    if ([r0 compare:@"8.0" options:0x40] != -0x1) {
                            r24 = [r20 useUIWebView];
                            [r23 release];
                            [r22 release];
                            if ((r24 & 0x1) == 0x0) {
                                    var_C8 = [r21 retain];
                                    var_C0 = [r19 retain];
                                    dispatch_async(*__dispatch_main_q, &var_F0);
                                    [var_C0 release];
                                    r0 = var_C8;
                            }
                            else {
                                    var_88 = [r21 retain];
                                    var_80 = [r19 retain];
                                    dispatch_async(*__dispatch_main_q, &var_B0);
                                    [var_80 release];
                                    r0 = var_88;
                            }
                    }
                    else {
                            [r23 release];
                            [r22 release];
                            var_88 = [r21 retain];
                            var_80 = [r19 retain];
                            dispatch_async(*__dispatch_main_q, &var_B0);
                            [var_80 release];
                            r0 = var_88;
                    }
                    [r0 release];
                    _Block_object_dispose(r29 - 0x70, 0x8);
                    [0x0 release];
                    [r21 release];
            }
            else {
                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x0 withFormat:@"Got a null pumpString from the messages."];
                    (*(r19 + 0x10))(r19, 0x0, 0x0);
            }
    }
    else {
            (*(r19 + 0x10))(r19, 0x1, 0x0);
    }
    [r19 release];
    return;
}

-(void)onMessagePumpError:(void *)arg2 {
    r22 = [arg2 retain];
    [self setDisabled:0x1];
    (*(r22 + 0x10))(arg2, 0x0, 0x0);
    [r22 release];
    return;
}

-(void *)messageArrayFromInboundMessageString:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 isEqualToString:r2] != 0x0) {
            r0 = @class(AdColony);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            r24 = [[r0 sessionFromID] retain];
            r25 = [[r20 adSessionID] retain];
            r21 = [[r24 objectForKeyedSubscript:r25] retain];
            [r25 release];
            [r24 release];
            [r0 release];
            r0 = @class(AdColony);
            r0 = [r0 sharedInstance];
            r29 = r29;
            r22 = [r0 retain];
            if (r21 != 0x0) {
                    r1 = @selector(onSessionError:);
                    r0 = r22;
            }
            else {
                    [r20 originNumber];
                    r1 = @selector(onModuleError:);
                    r0 = r22;
            }
            objc_msgSend(r0, r1);
            [r22 release];
            r0 = [NSArray arrayWithObjects:&stack[-88] count:0x0];
            r22 = [r0 retain];
            [r21 release];
    }
    else {
            r0 = [ADCMessage messagesFromJSONArrayString:r19];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            if ([r0 count] != 0x0) {
                    [r20 setPumpsSinceLastMessage:r2];
                    r23 = [[NSDate date] retain];
                    [r20 setDateOfLastMessage:r23];
                    [r23 release];
            }
            [r20 pumpsSinceLastMessage] + 0x1;
            [r20 setPumpsSinceLastMessage:r2];
    }
    [r19 release];
    r0 = [r22 autorelease];
    return r0;
}

-(void)webView:(void *)arg2 didFinishNavigation:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self identifier];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCWebViewModule webView:didFinishNavigation:]" line:0x240 withFormat:@"Web view: %ld successfully loaded"];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(onWebViewLoad:)];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    [r0 onWebViewLoad:r19];
                    [r0 release];
            }
            else {
                    if ([r19 isDisplayModule] != 0x0) {
                            r0 = [AdColony sharedInstance];
                            r0 = [r0 retain];
                            [r0 performBlockOnWorkerThread:&var_58 mode:0x1];
                            [r0 release];
                    }
            }
    }
    else {
            if ([r19 isDisplayModule] != 0x0) {
                    r0 = [AdColony sharedInstance];
                    r0 = [r0 retain];
                    [r0 performBlockOnWorkerThread:&var_58 mode:0x1];
                    [r0 release];
            }
    }
    return;
}

-(void)webView:(void *)arg2 decidePolicyForNavigationAction:(void *)arg3 decisionHandler:(void *)arg4 {
    r31 = r31 - 0xd0;
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
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [[r19 request] retain];
    r0 = [r19 sourceFrame];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_100217b64;

loc_1002178d0:
    r0 = [r19 sourceFrame];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (([r0 isMainFrame] & 0x1) != 0x0) goto loc_100217b5c;

loc_1002178fc:
    r0 = [r19 targetFrame];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) goto loc_100217b5c;

loc_100217920:
    r0 = [r19 targetFrame];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 isMainFrame];
    [r0 release];
    [r26 release];
    [r24 release];
    [r23 release];
    if (r25 != 0x0) {
            r25 = [[r21 URL] retain];
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            var_B8 = r25;
            [r0 openURL:r25];
            [r0 release];
            r24 = [@(0x0) retain];
            r26 = [@(0x0) retain];
            r27 = @class(NSNumber);
            r27 = [[r27 numberWithUnsignedInteger:[r22 identifier]] retain];
            r28 = [[r25 description] retain];
            r25 = [[NSDictionary dictionaryWithObjects:&var_80 forKeys:&stack[-184] count:0x5] retain];
            r23 = [[ADCMessage messageFromIncomingDict:r25] retain];
            [r22 queueMessage:r23];
            [r23 release];
            [r25 release];
            [r28 release];
            [r27 release];
            [r26 release];
            [r24 release];
            (*(r20 + 0x10))(r20, 0x0);
            [var_B8 release];
    }
    else {
            r0 = [r22 shouldLoadWebViewRequest:r21];
            r8 = *(r20 + 0x10);
            if (r0 != 0x0) {
                    r1 = 0x1;
                    r0 = r20;
            }
            else {
                    r0 = r20;
                    r1 = 0x0;
            }
            (r8)(r0, r1);
    }
    goto loc_100217ba0;

loc_100217ba0:
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;

loc_100217b5c:
    [r24 release];
    goto loc_100217b64;

loc_100217b64:
    [r23 release];
    r0 = [r22 shouldLoadWebViewRequest:r21];
    r8 = *(r20 + 0x10);
    if (r0 != 0x0) {
            r1 = 0x1;
            r0 = r20;
    }
    else {
            r0 = r20;
            r1 = 0x0;
    }
    (r8)(r0, r1);
    goto loc_100217ba0;
}

-(bool)webView:(void *)arg2 shouldStartLoadWithRequest:(void *)arg3 navigationType:(long long)arg4 {
    r0 = [self shouldLoadWebViewRequest:arg3];
    return r0;
}

-(void)webView:(void *)arg2 didFailNavigation:(void *)arg3 withError:(void *)arg4 {
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
    r23 = [arg4 retain];
    [r19 identifier];
    r20 = [[arg4 localizedDescription] retain];
    [r23 release];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCWebViewModule webView:didFailNavigation:withError:]" line:0x24c withFormat:@"Failed to prepare web view: %ld with error: %@"];
    [r20 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(onWebViewError:)];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    [r0 onWebViewError:r19];
                    [r0 release];
            }
    }
    return;
}

-(void)webViewDidFinishLoad:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [self identifier];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCWebViewModule webViewDidFinishLoad:]" line:0x259 withFormat:@"Web view: %ld successfully loaded"];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(onWebViewLoad:)];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    [r0 onWebViewLoad:r19];
                    [r0 release];
            }
            else {
                    if ([r19 isDisplayModule] != 0x0) {
                            r0 = [AdColony sharedInstance];
                            r0 = [r0 retain];
                            [r0 performBlockOnWorkerThread:&var_58 mode:0x1];
                            [r0 release];
                    }
            }
    }
    else {
            if ([r19 isDisplayModule] != 0x0) {
                    r0 = [AdColony sharedInstance];
                    r0 = [r0 retain];
                    [r0 performBlockOnWorkerThread:&var_58 mode:0x1];
                    [r0 release];
            }
    }
    return;
}

-(void)webView:(void *)arg2 didFailLoadWithError:(void *)arg3 {
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
    r23 = [arg3 retain];
    [r19 identifier];
    r20 = [[arg3 localizedDescription] retain];
    [r23 release];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x0 function:"-[ADCWebViewModule webView:didFailLoadWithError:]" line:0x265 withFormat:@"Failed to prepare web view: %ld with error: %@"];
    [r20 release];
    r0 = [r19 delegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r19 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 respondsToSelector:@selector(onWebViewError:)];
            [r0 release];
            [r22 release];
            if (r24 != 0x0) {
                    r0 = [r19 delegate];
                    r0 = [r0 retain];
                    [r0 onWebViewError:r19];
                    [r0 release];
            }
    }
    return;
}

-(void)stopWebServerNoDispatch {
    [self setActive:0x0];
    r0 = [self webserver];
    r0 = [r0 retain];
    [r0 stop];
    [r0 release];
    return;
}

-(bool)shouldLoadWebViewRequest:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 URL];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 scheme];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 isEqual:r2] != 0x0) goto loc_1002183bc;

loc_100218388:
    r22 = @selector(isEqual:);
    r0 = [r19 scheme];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if ((objc_msgSend(r0, r22) & 0x1) == 0x0) goto loc_1002183e8;

loc_1002183b4:
    [r21 release];
    goto loc_1002183bc;

loc_1002183bc:
    r0 = r20;
    goto loc_1002183c0;

loc_1002183c0:
    [r0 release];
    goto loc_1002183c4;

loc_1002183c4:
    [r19 release];
    return 0x1;

loc_1002183e8:
    r0 = [UIApplication sharedApplication];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 canOpenURL:r19];
    [r0 release];
    [r21 release];
    [r20 release];
    if (r23 == 0x0) goto loc_1002183c4;

loc_100218438:
    r21 = [[r19 absoluteString] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCWebViewModule shouldLoadWebViewRequest:]" line:0x26e withFormat:@"Will try to open an external app url:  %@"];
    [r21 release];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&stack[-72] count:0x0];
    r21 = [r0 retain];
    [ADCSystemAPI openURL:r19 options:r21 completionHandler:0x0];
    r0 = r21;
    goto loc_1002183c0;
}

-(void)stopWebServer {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)resumeServer {
    dispatch_async(*__dispatch_main_q, &var_28);
    return;
}

-(void)webServer:(void *)arg2 didAbortRequest:(void *)arg3 withStatusCode:(long long)arg4 {
    r23 = [arg3 retain];
    r22 = [[arg3 method] retain];
    r20 = [[arg3 path] retain];
    [r23 release];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCWebViewModule webServer:didAbortRequest:withStatusCode:]" line:0x296 withFormat:@"Web server encountered an internal server error processing the request %@ %@"];
    [r20 release];
    [r22 release];
    r0 = @class(AdColony);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r22 = [[r0 sessionFromID] retain];
    r19 = [[self adSessionID] retain];
    r23 = [[r22 objectForKeyedSubscript:r19] retain];
    [r19 release];
    [r22 release];
    [r0 release];
    r0 = @class(AdColony);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    [r0 onSessionError:r23];
    [r0 release];
    [r23 release];
    return;
}

-(void)dealloc {
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"-[ADCWebViewModule dealloc]" line:0x29e withFormat:@"dealloc called on ADCWebViewModule"];
    [[&var_20 super] dealloc];
    return;
}

-(unsigned long long)identifier {
    r0 = self->_identifier;
    return r0;
}

-(void)setIdentifier:(unsigned long long)arg2 {
    self->_identifier = arg2;
    return;
}

-(void)setView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_view, arg2);
    return;
}

-(struct CGRect)frame {
    r0 = self;
    return r0;
}

-(struct CGRect)bounds {
    r0 = self;
    return r0;
}

-(unsigned long long)autoResizingMask {
    r0 = self->_autoResizingMask;
    return r0;
}

-(void *)backgroundColor {
    r0 = self->_backgroundColor;
    return r0;
}

-(bool)visible {
    r0 = *(int8_t *)(int64_t *)&self->_visible;
    return r0;
}

-(bool)opaque {
    r0 = *(int8_t *)(int64_t *)&self->_opaque;
    return r0;
}

-(bool)userInteractionEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_userInteractionEnabled;
    return r0;
}

-(bool)scrollEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_scrollEnabled;
    return r0;
}

-(bool)useUIWebView {
    r0 = *(int8_t *)(int64_t *)&self->_useUIWebView;
    return r0;
}

-(void)setUseUIWebView:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useUIWebView = arg2;
    return;
}

-(bool)isDisplayModule {
    r0 = *(int8_t *)(int64_t *)&self->_isDisplayModule;
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setIsDisplayModule:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isDisplayModule = arg2;
    return;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)uiWebView {
    r0 = self->_uiWebView;
    return r0;
}

-(void)setUiWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_uiWebView, arg2);
    return;
}

-(void *)wkWebView {
    r0 = self->_wkWebView;
    return r0;
}

-(void)setWkWebView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_wkWebView, arg2);
    return;
}

-(bool)directMessagingEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_directMessagingEnabled & 0x1;
    return r0;
}

-(void)setDirectMessagingEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_directMessagingEnabled = arg2;
    return;
}

-(void)setWebserver:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webserver, arg2);
    return;
}

-(void *)webserver {
    r0 = self->_webserver;
    return r0;
}

-(unsigned long long)gwsport {
    r0 = self->_gwsport;
    return r0;
}

-(void)setGwsport:(unsigned long long)arg2 {
    self->_gwsport = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_webserver, 0x0);
    objc_storeStrong((int64_t *)&self->_wkWebView, 0x0);
    objc_storeStrong((int64_t *)&self->_uiWebView, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    objc_storeStrong((int64_t *)&self->_backgroundColor, 0x0);
    objc_storeStrong((int64_t *)&self->_view, 0x0);
    return;
}

@end