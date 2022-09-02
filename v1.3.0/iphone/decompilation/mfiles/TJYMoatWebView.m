@implementation TJYMoatWebView

+(void *)withPartnerCode:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[TJYMoatWebView alloc] initWithPartnerCode:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithPartnerCode:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 doInit:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)doInit:(void *)arg2 {
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    *(int8_t *)(int64_t *)&r19->_amITracking = 0x0;
    *(int8_t *)(int64_t *)&r19->_amCleanedUp = 0x0;
    r22 = @selector(alloc);
    r21 = [r20 retain];
    r0 = objc_msgSend(@class(NSMutableArray), r22);
    r23 = @selector(init);
    r0 = objc_msgSend(r0, r23);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_queuedCalls));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r0 = arc4random();
    asm { ucvtf      d0, w0 };
    asm { fcvt       s0, d0 };
    lroundf(r0);
    r0 = [NSString stringWithFormat:@"_moatTracker%ld"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_moatTrackerName));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r0 = objc_msgSend(@class(NSMutableDictionary), r22);
    r0 = objc_msgSend(r0, r23);
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_adParams));
    r8 = *(r19 + r22);
    *(r19 + r22) = r0;
    [r8 release];
    [*(r19 + r22) setObject:r20 forKeyedSubscript:@"partnerCode"];
    [r21 release];
    [r19 prepareWebView];
    return;
}

-(void)prepareWebView {
    r0 = [UIWebView alloc];
    r0 = [r0 initWithFrame:r2];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_moatWebView));
    r8 = *(self + r23);
    *(self + r23) = r0;
    [r8 release];
    [*(self + r23) setUserInteractionEnabled:0x0];
    r0 = *(self + r23);
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 setUserInteractionEnabled:0x0];
    [r0 release];
    r0 = *(self + r23);
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 setScrollEnabled:0x0];
    [r0 release];
    r0 = *(self + r23);
    r0 = [r0 scrollView];
    r0 = [r0 retain];
    [r0 setScrollsToTop:0x0];
    [r0 release];
    return;
}

-(void)startTracking:(void *)arg2 withPlayerDims:(struct CGRect)arg3 withAttachmentView:(void *)arg4 withLayerToTrack:(void *)arg5 {
    memcpy(&r3, &arg3, 0x8);
    r25 = [arg2 retain];
    [r3 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_adParams));
    r26 = *(self + r27);
    [r4 retain];
    [r26 setObject:arg2 forKeyedSubscript:@"adIds"];
    [r25 release];
    r24 = *(self + r27);
    r26 = [[NSNumber numberWithDouble:arg2] retain];
    [r24 setObject:r26 forKeyedSubscript:@"playerW"];
    [r26 release];
    r24 = *(self + r27);
    r25 = [[NSNumber numberWithDouble:r26] retain];
    [r24 setObject:r25 forKeyedSubscript:@"playerH"];
    [r25 release];
    objc_storeWeak((int64_t *)&self->_attachmentView, r3);
    [r22 release];
    r21 = [[TJYMoatUIWebViewBridge alloc] initWithDelegate:self target:r20 withWebView:self->_moatWebView forNativeAd:0x1];
    [r20 release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_delegateDecorator));
    r0 = *(self + r20);
    *(self + r20) = r21;
    [r0 release];
    [*(self + r20) setClient:self];
    [self vivifyWebView];
    return;
}

-(void)destroy {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_amCleanedUp));
    if (*(int8_t *)(r19 + r20) == 0x0) {
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_moatWebView));
            r0 = *(r19 + r21);
            if (r0 != 0x0) {
                    [r0 removeFromSuperview];
                    r0 = *(r19 + r21);
                    *(r19 + r21) = 0x0;
                    [r0 release];
            }
            [r19->_delegateDecorator setClient:0x0];
            *(int8_t *)(r19 + r20) = 0x1;
    }
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
    if (*(int8_t *)(int64_t *)&r21->_webViewDidLoad != 0x0) {
            var_40 = r21->_moatTrackerName;
            stack[-72] = r22;
            r23 = [[NSString stringWithFormat:r2] retain];
            r0 = r21->_moatWebView;
            r0 = [r0 stringByEvaluatingJavaScriptFromString:r23];
            r29 = r29;
            [[r0 retain] release];
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

-(void)vivifyWebView {
    r19 = self;
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_wLoadStart));
    var_70 = r8;
    *(r19 + r8) = d0 * *0x100b9b058;
    [r0 release];
    *(int8_t *)(int64_t *)&r19->_webViewDidLoad = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_moatWebView));
    var_68 = r8;
    [*(r19 + r8) setDelegate:r19->_delegateDecorator];
    r0 = objc_loadWeakRetained((int64_t *)&r19->_attachmentView);
    [r0 addSubview:*(r19 + r8)];
    [r0 release];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_adParams));
    r0 = *(r19 + r27);
    r20 = @selector(objectForKeyedSubscript:);
    r0 = objc_msgSend(r0, r20);
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    r0 = *(r19 + r27);
    r0 = objc_msgSend(r0, r20);
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 floatValue];
    [r0 release];
    r28 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
    r0 = *(r28 + 0xfa8);
    asm { fcvt       d0, s8 };
    asm { fcvt       d1, s9 };
    r21 = [[r0 stringWithFormat:@"width:%0.0fpx;height:%0.0fpx;"] retain];
    r23 = [*(r28 + 0xfa8) alloc];
    r26 = [objc_msgSend(*(r19 + r27), r20) retain];
    r25 = [[NSJSONSerialization dataWithJSONObject:r26 options:0x0 error:0x0] retain];
    r23 = [r23 initWithData:r25 encoding:0x4];
    [r25 release];
    [r26 release];
    r25 = *(r28 + 0xfa8);
    r26 = [objc_msgSend(*(r19 + r27), r20) retain];
    r0 = *(r19 + r27);
    r0 = objc_msgSend(r0, r20);
    r0 = [r0 retain];
    r20 = [objc_msgSend(r0, r20) retain];
    r22 = [[r25 stringWithFormat:@"<html><head></head><body><div id=\"%@\" style=\"%@\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + '_moatElToTrack'] = document.getElementById('%@');var moatapi = {'dropTime':%f,'adData': {'ids': ids, '…"] retain];
    [r20 release];
    [r0 release];
    [r26 release];
    [*(r19 + var_68) loadHTMLString:r22 baseURL:0x0];
    [r22 release];
    [r23 release];
    [r21 release];
    return;
}

-(void)changeTargetLayer:(void *)arg2 {
    [self->_delegateDecorator setTarget:r2];
    return;
}

-(void)webViewDidFinishLoad:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (([arg2 isLoading] & 0x1) == 0x0) {
            *(int8_t *)(int64_t *)&r19->_webViewDidLoad = 0x1;
            if (r19->_queuedCalls != 0x0) {
                    [r19 flushQueue];
            }
    }
    return;
}

-(void)flushQueue {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x110;
    r19 = self;
    r20 = *___stack_chk_guard;
    r20 = *r20;
    var_58 = r20;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_queuedCalls));
    r0 = *(r19 + r22);
    if (r0 != 0x0 && [r0 count] != 0x0) {
            r21 = [[NSMutableArray alloc] init];
            var_110 = 0x0;
            stack[-280] = 0x0;
            var_120 = 0x0;
            stack[-296] = 0x0;
            var_130 = 0x0;
            var_128 = 0x0;
            r0 = *(r19 + r22);
            var_148 = r22;
            r0 = [r0 retain];
            var_138 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_140 = r1;
            r24 = objc_msgSend(r0, r1);
            if (r24 != 0x0) {
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
                            } while (r20 < r24);
                            r24 = objc_msgSend(var_138, var_140);
                    } while (r24 != 0x0);
            }
            [var_138 release];
            r20 = r21;
            r22 = [[r20 componentsJoinedByString:@","] retain];
            r21 = [[[NSArray arrayWithObjects:&var_F0 count:0x3] componentsJoinedByString:@""] retain];
            [r22 release];
            r22 = r19->_moatWebView;
            var_160 = r19->_moatTrackerName;
            stack[-360] = r21;
            r23 = [[NSString stringWithFormat:r2] retain];
            r0 = [r22 stringByEvaluatingJavaScriptFromString:r23];
            r29 = r29;
            [[r0 retain] release];
            [r23 release];
            [r21 release];
            [r20 release];
            r20 = *___stack_chk_guard;
            r20 = *r20;
            r22 = var_148;
    }
    r0 = *(r19 + r22);
    *(r19 + r22) = 0x0;
    [r0 release];
    if (r20 != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)queueEvent:(void *)arg2 {
    r29 = &saved_fp;
    r20 = self;
    var_60 = r20;
    r24 = [arg2 retain];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_queuedCalls));
    var_58 = r27;
    r0 = *(r20 + r27);
    r0 = [r0 count];
    r19 = r0;
    if (r0 == 0x0) goto loc_100970f54;

loc_100970f24:
    r8 = [TJYMoatVideoUtil isFinalEvent:r24];
    r0 = *(r20 + r27);
    if (r8 == 0x0) goto loc_100970f6c;

loc_100970f48:
    [r0 removeAllObjects];
    goto loc_100970f54;

loc_100970f54:
    [*(r20 + r27) addObject:r2];
    goto loc_10097131c;

loc_10097131c:
    [r24 release];
    return;

loc_100970f6c:
    r21 = r19;
    r0 = [r0 objectAtIndexedSubscript:r21 - 0x1];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    r23 = @selector(eventType);
    if (objc_msgSend(r0, r23) == objc_msgSend(r24, r23)) goto loc_100971314;

loc_100970fb8:
    r28 = r21;
    if (r21 < 0xa) goto loc_1009711dc;

loc_100970fc4:
    r26 = @selector(objectAtIndexedSubscript:);
    var_A8 = r19;
    var_A0 = @selector(count);
    var_98 = r24;
    var_80 = [[NSMutableArray alloc] init];
    var_68 = [[NSMutableDictionary alloc] init];
    r22 = 0x0;
    r19 = 0x0;
    var_70 = @selector(objectForKeyedSubscript:);
    var_88 = @selector(addObject:);
    var_90 = @selector(setObject:forKeyedSubscript:);
    r25 = r28;
    var_78 = r25;
    do {
            r0 = *(r20 + r27);
            r0 = objc_msgSend(r0, r26);
            r29 = r29;
            r0 = [r0 retain];
            r28 = r0;
            r24 = objc_msgSend(r0, r23);
            if (r24 <= 0x4) {
                    var_70 = @selector(objectForKeyedSubscript:);
                    r20 = r23;
                    r23 = r26;
                    r25 = [[NSNumber numberWithUnsignedInteger:r24] retain];
                    r26 = var_68;
                    r0 = objc_msgSend(r26, var_70);
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r25 release];
                    if (r0 == 0x0) {
                            var_90 = @selector(setObject:forKeyedSubscript:);
                            var_88 = @selector(addObject:);
                            objc_msgSend(var_80, var_88);
                            [[NSNumber numberWithUnsignedInteger:r24] retain];
                            r0 = @class(NSNumber);
                            r0 = [r0 numberWithUnsignedInteger:r24];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(r26, var_90);
                            [r24 release];
                            [r19 release];
                    }
                    r19 = r22;
                    r26 = r23;
                    r23 = r20;
                    r20 = var_60;
                    r27 = var_58;
                    r25 = var_78;
            }
            [r28 release];
            r22 = r22 + 0x1;
    } while (r25 != r22);
    r8 = r25 - 0x1;
    r24 = var_98;
    r25 = var_80;
    if (r8 <= r19) goto loc_10097120c;

loc_100971180:
    r21 = @selector(numberWithUnsignedInteger:);
    asm { sxtw       x21, w8 };
    goto loc_100971184;

loc_100971184:
    r0 = *(r20 + r27);
    r0 = objc_msgSend(r0, r26);
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (objc_msgSend(r0, r23) == 0x7 || objc_msgSend(r22, r23) == 0x8) goto loc_1009711f4;

loc_1009711c4:
    [r22 release];
    r21 = r21 - 0x1;
    if (r21 > r19) goto loc_100971184;

loc_10097120c:
    r0 = objc_msgSend(r25, var_A0);
    if (r0 != 0x0) {
            var_70 = @selector(objectForKeyedSubscript:);
            r21 = [objc_msgSend(r25, r26) retain];
            objc_msgSend(r24, r23);
            r22 = [[NSNumber numberWithUnsignedInteger:r2] retain];
            r26 = var_68;
            r0 = objc_msgSend(r26, var_70);
            r29 = r29;
            r0 = [r0 retain];
            if (r0 != 0x0) {
                    [r0 release];
                    [r22 release];
                    r19 = var_A8;
            }
            else {
                    r19 = objc_msgSend(r24, r23);
                    r23 = objc_msgSend(r21, r23);
                    [r22 release];
                    COND = r19 == r23;
                    r19 = var_A8;
                    if (!COND) {
                            var_88 = @selector(addObject:);
                            objc_msgSend(r25, var_88);
                    }
            }
            [r21 release];
    }
    else {
            var_88 = @selector(addObject:);
            objc_msgSend(r25, var_88);
            r19 = var_A8;
            r26 = var_68;
    }
    r0 = *(r20 + r27);
    *(r20 + r27) = r25;
    [r0 release];
    [r26 release];
    goto loc_100971314;

loc_100971314:
    [r19 release];
    goto loc_10097131c;

loc_1009711f4:
    var_88 = @selector(addObject:);
    objc_msgSend(r25, var_88);
    [r22 release];
    goto loc_10097120c;

loc_1009711dc:
    [*(r20 + r27) addObject:r2];
    goto loc_100971314;
}

-(void *)moatWebView {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_moatWebView)), 0x1);
    return r0;
}

-(void)changeAttachmentView:(void *)arg2 newTargetLayer:(void *)arg3 becauseFullScreen:(bool)arg4 {
    [arg2 retain];
    [self changeTargetLayer:arg3];
    objc_storeWeak((int64_t *)&self->_attachmentView, arg2);
    [r23 release];
    [self->_delegateDecorator setIsFullScreen:arg4];
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_moatWebView))) removeFromSuperview];
    r0 = objc_loadWeakRetained((int64_t *)&self->_attachmentView);
    [r0 addSubview:r2];
    [r19 release];
    return;
}

-(void)setMoatWebView:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(bool)webViewDidLoad {
    r0 = *(int8_t *)(int64_t *)&self->_webViewDidLoad & 0x1;
    return r0;
}

-(void)setWebViewDidLoad:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_webViewDidLoad = arg2;
    return;
}

-(bool)amITracking {
    r0 = *(int8_t *)(int64_t *)&self->_amITracking & 0x1;
    return r0;
}

-(void)setAmITracking:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_amITracking = arg2;
    return;
}

-(bool)amCleanedUp {
    r0 = *(int8_t *)(int64_t *)&self->_amCleanedUp & 0x1;
    return r0;
}

-(void)setAmCleanedUp:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_amCleanedUp = arg2;
    return;
}

-(bool)initialized {
    r0 = *(int8_t *)(int64_t *)&self->_initialized & 0x1;
    return r0;
}

-(void)setInitialized:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_initialized = arg2;
    return;
}

-(double)wLoadStart {
    r0 = self;
    return r0;
}

-(void)setWLoadStart:(double)arg2 {
    self->_wLoadStart = d0;
    return;
}

-(void *)adParams {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adParams)), 0x1);
    return r0;
}

-(void)setAdParams:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)moatTrackerName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_moatTrackerName)), 0x1);
    return r0;
}

-(void)setMoatTrackerName:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)attachmentView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_attachmentView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setAttachmentView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_attachmentView, arg2);
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

-(void *)delegateDecorator {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_delegateDecorator)), 0x1);
    return r0;
}

-(void)setDelegateDecorator:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_delegateDecorator, 0x0);
    objc_storeStrong((int64_t *)&self->_queuedCalls, 0x0);
    objc_destroyWeak((int64_t *)&self->_attachmentView);
    objc_storeStrong((int64_t *)&self->_moatTrackerName, 0x0);
    objc_storeStrong((int64_t *)&self->_adParams, 0x0);
    objc_storeStrong((int64_t *)&self->_moatWebView, 0x0);
    return;
}

@end