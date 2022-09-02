@implementation TJYMoatBridge

-(void)markMoatActive {
    return;
}

-(void *)initWithDelegate:(void *)arg2 target:(void *)arg3 delegateProtocol:(void *)arg4 forNativeAd:(bool)arg5 {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = arg5;
    r23 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_40 super] initWithNested:r23 implementing:arg4];
    r21 = r0;
    [r23 release];
    if (r20 != 0x0) {
            asm { ccmp       x21, #0x0, #0x4, ne };
    }
    if (!CPU_FLAGS & E) {
            [r21 setTarget:r20];
            [r21 setIsNativeAd:r19];
            [r21 markMoatActive];
    }
    [r20 release];
    r0 = r21;
    return r0;
}

+(void *)logToConsole:(char *)arg2 ofSize:(int)arg3 {
    r3 = arg3;
    r1 = _cmd;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r8 = arg2;
    r19 = *___stack_chk_guard;
    r19 = *r19;
    var_18 = r19;
    r10 = &var_20;
    r2 = r10 - (r3 + 0x10 & 0xfffffffffffffff0);
    if (r3 >= 0x1) {
            r9 = 0x0;
            asm { ubfx       x10, x3, #0x0, #0x20 };
            do {
                    r13 = 0x100bf49c0 + r9;
                    r14 = r9 + 0x100bf49c2 - 0x2;
                    if (r9 < 0x2) {
                            if (!CPU_FLAGS & B) {
                                    r13 = r14;
                            }
                            else {
                                    r13 = r13;
                            }
                    }
                    *(int8_t *)(r2 + r9) = *(int8_t *)(r8 + r9) ^ *(int8_t *)r13;
                    r9 = r9 + 0x1;
            } while (r10 != r9);
    }
    *(int8_t *)(r2 + (r3 << r1)) = 0x0;
    r0 = [NSString stringWithCString:r2 encoding:0x1];
    if (r19 != var_18) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)isMoatRequest:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[[self class] logToConsole:0x100bf49e8 ofSize:0xc] retain];
    r19 = [arg2 hasPrefix:r20];
    [r22 release];
    [r20 release];
    r0 = r19;
    return r0;
}

+(void *)toJSON:(void *)arg2 {
    r31 = r31 + 0xffffffffffffffa0 - 0x110;
    r0 = [arg2 retain];
    r19 = r0;
    var_128 = [[NSMutableArray arrayWithCapacity:[r0 count]] retain];
    var_118 = 0x0;
    r0 = [r19 allKeys];
    r29 = &saved_fp;
    r0 = [r0 retain];
    var_120 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_140 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            var_130 = @selector(stringWithFormat:);
            var_138 = @selector(addObject:);
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_120);
                            }
                            r20 = *(0x0 + r21 * 0x8);
                            r0 = [r19 objectForKeyedSubscript:r20];
                            r29 = r29;
                            r22 = [r0 retain];
                            if ([r22 isKindOfClass:[NSString class]] != 0x0 && [r20 isKindOfClass:[NSString class]] != 0x0) {
                                    var_138 = @selector(addObject:);
                                    var_130 = @selector(stringWithFormat:);
                                    stack[-360] = r22;
                                    r0 = objc_msgSend(@class(NSString), var_130);
                                    r29 = r29;
                                    [r0 retain];
                                    objc_msgSend(var_128, var_138);
                                    [r20 release];
                            }
                            [r22 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r24);
                    r24 = objc_msgSend(var_120, var_140);
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [var_120 release];
    r21 = [[var_128 componentsJoinedByString:@","] retain];
    var_160 = r21;
    r0 = [NSString stringWithFormat:@"{%@}"];
    r29 = r29;
    r20 = [r0 retain];
    [r21 release];
    [var_128 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)getJSEnvString {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r21 = [[self getMetaData] retain];
    r0 = [NSJSONSerialization dataWithJSONObject:r21 options:0x0 error:&var_28];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [var_28 retain];
    [r21 release];
    if (r19 != 0x0) {
            r21 = [[NSString alloc] initWithData:r19 encoding:0x4];
    }
    else {
            r21 = @"{}";
            [r21 retain];
    }
    r22 = [NSString stringWithFormat:r2];
    [r20 release];
    r20 = [r22 retain];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)getMetaData {
    r25 = *___stack_chk_guard;
    r25 = *r25;
    r0 = @class(TJYMoatCoreUtil);
    r0 = [r0 getAppName];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 stringByReplacingOccurrencesOfString:@"\"" withString:@""];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    r0 = [r0 retain];
    r19 = [[r0 stringByReplacingOccurrencesOfString:@"\r" withString:@""] retain];
    [r0 release];
    [r23 release];
    [r21 release];
    r21 = [[NSNumber numberWithInt:[self isNativeAd]] retain];
    r22 = [[TJYMoatCoreUtil getSystemVersion] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_78 forKeys:&var_A8 count:0x6];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r22 release];
    [r21 release];
    [r19 release];
    if (r25 == r25) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)target {
    r0 = objc_loadWeakRetained((int64_t *)&self->_target);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setTarget:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_target, arg2);
    return;
}

-(bool)isFullScreen {
    r0 = *(int8_t *)(int64_t *)&self->_isFullScreen;
    return r0;
}

-(void)setIsFullScreen:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isFullScreen = arg2;
    return;
}

-(void *)client {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_client)), 0x1);
    return r0;
}

-(void)setClient:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void)addDebugInfoTo:(void *)arg2 windowId:(int)arg3 topLayer:(void *)arg4 topLayerName:(void *)arg5 window:(void *)arg6 adLayer:(void *)arg7 {
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80 - 0x70;
    r24 = arg3;
    r26 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r28 = [arg6 retain];
    r23 = [arg7 retain];
    r22 = [TJYMoatUIUtil isLayerDescendant:r2 ofLayer:r20];
    r1 = @selector(stringWithFormat:);
    var_88 = r1;
    var_E0 = r21;
    var_D8 = r24;
    r2 = @"inWindow%@%d";
    r0 = objc_msgSend(@class(NSString), r1);
    r29 = &saved_fp;
    r27 = [r0 retain];
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"0";
            }
            else {
                    r2 = @"1";
            }
    }
    [r26 setObject:r2 forKeyedSubscript:r27];
    [r27 release];
    if (r22 == 0x0) goto loc_10096c048;

loc_10096baec:
    var_A0 = r23;
    [r23 bounds];
    var_90 = r20;
    [r23 convertRect:r2 toLayer:r3];
    var_D0 = [[*(&@class(MCPromoSystemNotificationCenter) + 0xea0) getRectAsJson:r2] retain];
    var_98 = r24;
    var_C0 = r21;
    [objc_msgSend(@class(NSString), var_88) retain];
    r21 = @selector(setObject:forKeyedSubscript:);
    objc_msgSend(r26, r21);
    [r27 release];
    r0 = *(r20 + 0xea0);
    var_C8 = @selector(isLayerVisible:atPoint:ofSuperLayer:);
    v0 = v0;
    v1 = v1;
    r22 = var_90;
    r0 = [r0 isLayerVisible:r2 atPoint:r3 ofSuperLayer:r4];
    var_A8 = r28;
    r28 = r0;
    r0 = @class(NSString);
    r0 = objc_msgSend(r0, var_88);
    r29 = r29;
    r27 = [r0 retain];
    r23 = r26;
    objc_msgSend(r26, r21);
    [r27 release];
    r24 = var_A0;
    r27 = [*(&@class(MCPromoSystemNotificationCenter) + 0xea0) isLayerVisible:r2 atPoint:r3 ofSuperLayer:r4];
    r20 = var_98;
    r22 = var_C0;
    r21 = var_88;
    r0 = objc_msgSend(@class(NSString), r21);
    r29 = r29;
    r28 = [r0 retain];
    [r23 setObject:r2 forKeyedSubscript:r3];
    [r28 release];
    [TJYMoatUIUtil getVisibleRect:r24 deduceNestedRect:0x0 inWindow:var_A8];
    [objc_msgSend(@class(NSString), r21) retain];
    r0 = @class(TJYMoatUIUtil);
    r0 = [r0 getRectAsJson:r2];
    r29 = r29;
    [r0 retain];
    var_B0 = r23;
    [r23 setObject:r2 forKeyedSubscript:r3];
    [r28 release];
    [r27 release];
    [var_D0 release];
    r0 = *(r25 + 0xea0);
    r0 = [r0 getNestedRectOfLayer:r24 inLayer:var_90 nestAlgoRet:&var_78];
    v9 = v0;
    v8 = v1;
    v11 = v2;
    v10 = v3;
    r26 = @"unknown";
    [r26 retain];
    r8 = var_78;
    if (r8 > 0x4) goto loc_10096be14;

loc_10096bdb4:
    switch (sign_extend_64(*(int32_t *)(0x10096c098 + r8 * 0x4)) + 0x10096c098) {
        case 0:
            r26 = @"intersected";
            break;
        case 1:
            r26 = @"hidden-super";
            break;
        case 2:
            r26 = @"container-before-ad";
            break;
        case 3:
            r26 = @"container-after-ad";
            break;
        case 4:
            r26 = @"limit-exceeded";
            break;
    }
    [r26 retain];
    [@"unknown" release];
    goto loc_10096be14;

loc_10096be14:
    var_D0 = r26;
    [objc_msgSend(@class(NSString), r21) retain];
    [objc_msgSend(@class(NSString), r21) retain];
    [var_B0 setObject:r2 forKeyedSubscript:r3];
    [r28 release];
    [r27 release];
    var_B8 = [[*(&@class(MCPromoSystemNotificationCenter) + 0xea0) getRectAsJson:r2] retain];
    [objc_msgSend(@class(NSString), r21) retain];
    [var_B0 setObject:r2 forKeyedSubscript:r3];
    [r27 release];
    r19 = var_C8;
    r27 = objc_msgSend(*(&@class(MCPromoSystemNotificationCenter) + 0xea0), r19);
    r0 = @class(NSString);
    r0 = objc_msgSend(r0, r21);
    r29 = r29;
    r0 = [r0 retain];
    r24 = var_90;
    r20 = &@class(MCPromoSystemNotificationCenter);
    r22 = r0;
    r25 = var_A0;
    r23 = var_C0;
    r26 = var_B0;
    r28 = @selector(setObject:forKeyedSubscript:);
    objc_msgSend(r26, r28);
    [r22 release];
    r0 = *(r20 + 0xea0);
    r20 = r24;
    r22 = objc_msgSend(r0, r19);
    var_E0 = r23;
    var_D8 = var_98;
    r0 = objc_msgSend(@class(NSString), var_88);
    r29 = r29;
    r24 = [r0 retain];
    r21 = r23;
    r23 = r25;
    objc_msgSend(r26, r28);
    [r24 release];
    [var_B8 release];
    [var_D0 release];
    r28 = var_A8;
    goto loc_10096c048;

loc_10096c048:
    [r23 release];
    [r28 release];
    [r21 release];
    [r20 release];
    [r26 release];
    return;
}

-(int)isNativeAd {
    r0 = *(int32_t *)(int64_t *)&self->_isNativeAd;
    return r0;
}

-(void)setIsNativeAd:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_isNativeAd = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_client, 0x0);
    objc_destroyWeak((int64_t *)&self->_target);
    return;
}

-(void *)getResponseForMoatRequest:(void *)arg2 {
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r25 = self;
    r27 = *___stack_chk_guard;
    r27 = *r27;
    var_58 = r27;
    r21 = [arg2 retain];
    r22 = [r25 isFullScreen];
    var_120 = [[r25 target] retain];
    r0 = [r25 class];
    r0 = [r0 logToConsole:0x100bf49e8 ofSize:0xc];
    r29 = &saved_fp;
    r26 = [r0 retain];
    if ([r25 isMoatRequest:r21] == 0x0) goto loc_10096b20c;

loc_10096b020:
    r0 = [r25 class];
    r0 = [r0 logToConsole:0x100bf49f4 ofSize:0x4];
    r0 = [r0 retain];
    var_168 = r0;
    r28 = [[r26 stringByAppendingString:r0] retain];
    r0 = [r25 class];
    r0 = [r0 logToConsole:0x100bf49f8 ofSize:0x4];
    r0 = [r0 retain];
    var_170 = r0;
    r23 = [[r26 stringByAppendingString:r0] retain];
    r0 = [r25 class];
    r0 = [r0 logToConsole:0x100bf49fc ofSize:0x4];
    r0 = [r0 retain];
    var_180 = r0;
    r0 = [r26 stringByAppendingString:r0];
    r29 = r29;
    r20 = [r0 retain];
    if ([r21 hasPrefix:r2] == 0x0) goto loc_10096b214;

loc_10096b12c:
    var_188 = r20;
    var_178 = r23;
    r2 = [r28 length];
    var_160 = r21;
    r0 = [r21 substringFromIndex:r2];
    r29 = r29;
    r24 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [UIScreen mainScreen];
            r0 = [r0 retain];
            r21 = r0;
            [r0 bounds];
            r0 = [TJYMoatUIUtil getRectAsJson:r2];
            r29 = r29;
            r19 = [r0 retain];
            [r21 release];
            r21 = [TJYMoatUIUtil isAttached:var_120];
            if (([var_120 isHidden] & 0x1) == 0x0 && ((r21 ^ 0x1) & 0x1) == 0x0) {
                    r0 = [r19 retain];
            }
            else {
                    r0 = [TJYMoatUIUtil getRectAsJson:r2];
                    r29 = r29;
                    r0 = [r0 retain];
            }
            r21 = r0;
            r22 = var_178;
            var_1E0 = r21;
            r0 = [NSString stringWithFormat:r2];
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
            [r19 release];
    }
    else {
            r0 = [TJYMoatUIUtil getRectsAsJson:var_120];
            r29 = r29;
            r20 = [r0 retain];
            r22 = var_178;
    }
    var_1F0 = r24;
    var_1E8 = r20;
    r0 = [NSString stringWithFormat:r2];
    r29 = r29;
    r19 = [r0 retain];
    [r20 release];
    [r24 release];
    r20 = var_188;
    r21 = var_168;
    goto loc_10096b968;

loc_10096b968:
    [r20 release];
    [var_180 release];
    [r22 release];
    [var_170 release];
    [r28 release];
    [r21 release];
    r21 = var_160;
    goto loc_10096b99c;

loc_10096b99c:
    [r26 release];
    [var_120 release];
    [r21 release];
    if (r27 == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10096b214:
    if ([r21 hasPrefix:r2] == 0x0) goto loc_10096b694;

loc_10096b228:
    var_188 = r20;
    var_1A0 = r28;
    stack[-424] = r26;
    var_178 = r23;
    r2 = [r23 length];
    var_160 = r21;
    var_1A8 = [[r21 substringFromIndex:r2] retain];
    r2 = 0xa;
    r0 = [NSMutableDictionary dictionaryWithCapacity:r2];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (r22 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"0";
            }
            else {
                    r2 = @"1";
            }
    }
    [r0 setObject:r2 forKeyedSubscript:@"ignoreBounds"];
    r21 = var_120;
    if ([r21 isHidden] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"1";
            }
            else {
                    r2 = @"0";
            }
    }
    [r26 setObject:r2 forKeyedSubscript:@"isVisible"];
    if ([TJYMoatUIUtil isAttached:r21] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r2 = @"0";
            }
            else {
                    r2 = @"1";
            }
    }
    [r26 setObject:r2 forKeyedSubscript:@"isAttached"];
    r19 = @class(TJYMoatUIUtil);
    [r21 bounds];
    r19 = [[r19 getRectAsJson:r2] retain];
    [r26 setObject:r19 forKeyedSubscript:@"rectReported"];
    [r19 release];
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 windows];
    r29 = r29;
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 retain];
    var_158 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1B8 = r1;
    r0 = objc_msgSend(r0, r1);
    var_130 = r0;
    if (r0 == 0x0) goto loc_10096b580;

loc_10096b3f4:
    r8 = 0x0;
    r28 = var_120;
    goto loc_10096b434;

loc_10096b434:
    r19 = 0x0;
    asm { ubfx       x8, x8, #0x0, #0x20 };
    var_128 = r8;
    goto loc_10096b440;

loc_10096b440:
    r20 = var_128 + r19;
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_158);
    }
    r27 = *(0x0 + r19 * 0x8);
    r24 = [[r27 layer] retain];
    r23 = r25;
    [r23 addDebugInfoTo:r26 windowId:r20 topLayer:r24 topLayerName:@"A" window:r27 adLayer:r28];
    [r24 release];
    r0 = [r27 rootViewController];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 view];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 layer];
    r29 = r29;
    r21 = [r0 retain];
    [r25 release];
    [r24 release];
    r25 = r23;
    [r23 addDebugInfoTo:r26 windowId:r20 topLayer:r21 topLayerName:@"B" window:r27 adLayer:r28];
    [r21 release];
    if (r20 > 0x1d) goto loc_10096b580;

loc_10096b548:
    r19 = r19 + 0x1;
    if (r19 < var_130) goto loc_10096b440;

loc_10096b558:
    r0 = objc_msgSend(var_158, var_1B8);
    r8 = var_128 + r19;
    var_130 = r0;
    if (r0 != 0x0) goto loc_10096b434;

loc_10096b580:
    var_1B0 = @selector(setObject:forKeyedSubscript:);
    [var_158 release];
    [[TJYMoatUIUtil getRectsAsJson:var_120] retain];
    objc_msgSend(r26, var_1B0);
    [r19 release];
    r20 = [[[r25 class] toJSON:r26] retain];
    var_1E8 = r20;
    var_1F0 = var_1A8;
    r0 = [NSString stringWithFormat:r2];
    r29 = r29;
    r19 = [r0 retain];
    [r20 release];
    [var_158 release];
    [r26 release];
    [var_1A8 release];
    r27 = *___stack_chk_guard;
    r27 = *r27;
    r28 = var_1A0;
    r26 = stack[-424];
    r21 = var_168;
    r22 = var_178;
    r20 = var_188;
    goto loc_10096b968;

loc_10096b694:
    var_178 = r23;
    var_1A0 = r28;
    stack[-424] = r26;
    if ([r21 hasPrefix:r2] != 0x0) {
            r2 = [r20 length];
            var_160 = r21;
            var_128 = [[r21 substringFromIndex:r2] retain];
            r0 = [r25 getMetaData];
            r0 = [r0 retain];
            r24 = r0;
            r19 = [[r0 objectForKeyedSubscript:@"versionHash"] retain];
            r23 = [[r24 objectForKeyedSubscript:@"appName"] retain];
            r0 = [r24 objectForKeyedSubscript:@"namespace"];
            r0 = [r0 retain];
            var_188 = r20;
            r20 = r0;
            r0 = [r24 objectForKeyedSubscript:@"isNative"];
            r0 = [r0 retain];
            r27 = [r0 integerValue];
            r28 = [[r24 objectForKeyedSubscript:@"version"] retain];
            r25 = [[r24 objectForKeyedSubscript:@"deviceOS"] retain];
            var_1D0 = r28;
            stack[-472] = r25;
            var_1E0 = r20;
            stack[-488] = r27;
            r21 = [[NSString stringWithFormat:@"{ar:\"%@\",lw:\"%@\",lu:\"%@\",ma:\"%ld\",sv:\"%@\",av:\"%@\"}"] retain];
            [r25 release];
            [r28 release];
            [r0 release];
            r0 = r20;
            r20 = var_188;
            [r0 release];
            [r23 release];
            [r19 release];
            var_1E8 = r21;
            var_1F0 = var_128;
            r0 = [NSString stringWithFormat:@"%@(%@);"];
            r29 = r29;
            r19 = [r0 retain];
            [r21 release];
            [r24 release];
            [var_128 release];
    }
    else {
            var_160 = r21;
            r19 = 0x0;
    }
    r27 = *___stack_chk_guard;
    r27 = *r27;
    r28 = var_1A0;
    r26 = stack[-424];
    r21 = var_168;
    r22 = var_178;
    goto loc_10096b968;

loc_10096b20c:
    r19 = 0x0;
    goto loc_10096b99c;
}

@end