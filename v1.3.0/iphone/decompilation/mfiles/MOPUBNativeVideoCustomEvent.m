@implementation MOPUBNativeVideoCustomEvent

-(void)requestAdWithCustomEventInfo:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r20 = [[r0 objectForKeyedSubscript:*0x100e7ef08] retain];
    r25 = [NSStringFromClass([r21 class]) retain];
    r27 = [[r19 objectForKeyedSubscript:*0x100e7ef10] retain];
    r28 = [[r19 objectForKeyedSubscript:*0x100e7ef18] retain];
    r26 = [[MPLogEvent adLoadAttemptForAdapter:r25 dspCreativeId:r27 dspName:r28] retain];
    [MPLogging logEvent:r26 source:r20 fromClass:[r21 class]];
    [r26 release];
    [r28 release];
    [r27 release];
    [r25 release];
    r0 = [r19 objectForKey:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0 && [r22 isValid] != 0x0) {
            r0 = [r19 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            r25 = r0;
            if (r0 != 0x0) {
                    r24 = [[r25 dataUsingEncoding:0x4] retain];
                    var_60 = [r20 retain];
                    var_58 = [r19 retain];
                    [MPVASTManager fetchVASTWithData:r24 completion:&var_88];
                    [r24 release];
                    [var_58 release];
                    r0 = var_60;
            }
            else {
                    r26 = [sub_1004fda1c() retain];
                    r27 = [NSStringFromClass([r21 class]) retain];
                    r28 = [[MPLogEvent adLoadFailedForAdapter:r27 error:r26] retain];
                    [MPLogging logEvent:r28 source:r20 fromClass:[r21 class]];
                    [r28 release];
                    [r27 release];
                    r0 = [r21 delegate];
                    r0 = [r0 retain];
                    [r0 nativeCustomEvent:r21 didFailToLoadAdWithError:r26];
                    [r0 release];
                    r0 = r26;
            }
    }
    else {
            r25 = [sub_1004fdaec() retain];
            r28 = [NSStringFromClass([r21 class]) retain];
            r27 = [[MPLogEvent adLoadFailedForAdapter:r28 error:r25] retain];
            [MPLogging logEvent:r27 source:r20 fromClass:[r21 class]];
            [r27 release];
            [r28 release];
            r0 = [r21 delegate];
            r0 = [r0 retain];
            [r0 nativeCustomEvent:r21 didFailToLoadAdWithError:r25];
            r0 = r0;
    }
    [r0 release];
    [r25 release];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)handleSuccessfulVastParsing:(void *)arg2 info:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1c0;
    r28 = self;
    r24 = [arg2 retain];
    r0 = [arg3 retain];
    r26 = r0;
    r25 = [[r0 objectForKeyedSubscript:*0x100e7ef08] retain];
    r27 = [r26 mutableCopy];
    r20 = objc_alloc();
    r0 = [r26 objectForKeyedSubscript:*0x100e7eec0];
    r0 = [r0 retain];
    r21 = [[r0 trackers] retain];
    r20 = [r20 initWithVASTResponse:r24 additionalTrackers:r21];
    [r27 setObject:r20 forKey:*0x100e7eeb0];
    [r20 release];
    [r21 release];
    [r0 release];
    r0 = objc_alloc();
    r0 = [r0 initWithAdProperties:r27];
    r22 = r0;
    r0 = [r0 properties];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    var_1F8 = r22;
    if (r0 == 0x0) goto loc_1004bfdbc;

loc_1004bf944:
    var_1D8 = r28;
    var_1D0 = r25;
    var_208 = r27;
    stack[-528] = r24;
    r0 = objc_alloc();
    r0 = [r0 initWithAdAdapter:r22];
    r20 = [[r0 impressionTrackerURLs] retain];
    r19 = [[r22 impressionTrackerURLs] retain];
    [r20 addObjectsFromArray:r19];
    [r19 release];
    [r20 release];
    var_210 = r0;
    r20 = [[r0 clickTrackerURLs] retain];
    r19 = [[r22 clickTrackerURLs] retain];
    [r20 addObjectsFromArray:r19];
    [r19 release];
    [r20 release];
    var_1A0 = [[NSMutableArray array] retain];
    var_110 = q0;
    r0 = [r26 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_180 = r0;
    var_1F0 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1004bfd10;

loc_1004bfa8c:
    r19 = r0;
    r21 = *var_110;
    var_1E8 = r21;
    var_1E0 = r26;
    goto loc_1004bfa9c;

loc_1004bfa9c:
    r28 = 0x0;
    goto loc_1004bfb1c;

loc_1004bfb1c:
    if (*var_110 != r21) {
            objc_enumerationMutation(var_180);
    }
    r23 = *(var_118 + r28 * 0x8);
    r0 = [r23 lowercaseString];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 hasSuffix:@"image"] == 0x0) goto loc_1004bfcdc;

loc_1004bfb68:
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r27 = [r0 retain];
    r22 = [r27 isKindOfClass:[NSString class]];
    [r27 release];
    [r20 release];
    if (r22 == 0x0) goto loc_1004bfce4;

loc_1004bfbbc:
    r0 = [r26 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 length] != 0x0 && ([MPNativeAdUtils addURLString:r20 toURLArray:var_1A0] & 0x1) == 0x0) {
            r21 = [sub_1004fd940() retain];
            r26 = [NSStringFromClass([var_1D8 class]) retain];
            r27 = [[MPLogEvent adLoadFailedForAdapter:r26 error:r21] retain];
            [MPLogging logEvent:r27 source:var_1D0 fromClass:[var_1D8 class]];
            [r27 release];
            r0 = r26;
            r26 = var_1E0;
            [r0 release];
            r0 = [var_1D8 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r21 = var_1E8;
            [r0 nativeCustomEvent:r2 didFailToLoadAdWithError:r3];
            [r22 release];
            [r23 release];
    }
    goto loc_1004bfcdc;

loc_1004bfcdc:
    [r20 release];
    goto loc_1004bfce4;

loc_1004bfce4:
    r28 = r28 + 0x1;
    if (r28 < r19) goto loc_1004bfb1c;

loc_1004bfcf0:
    r0 = objc_msgSend(var_180, var_1F0);
    r19 = r0;
    if (r0 != 0x0) goto loc_1004bfa9c;

loc_1004bfd10:
    [var_180 release];
    r25 = var_1D0;
    var_130 = [r25 retain];
    r20 = [var_210 retain];
    [[&var_168 super] precacheImagesWithURLs:var_1A0 completionBlock:&var_158];
    [var_210 release];
    [var_130 release];
    [r20 release];
    [var_1A0 release];
    r27 = var_208;
    r24 = stack[-528];
    goto loc_1004bfea0;

loc_1004bfea0:
    var_60 = **___stack_chk_guard;
    [var_1F8 release];
    [r27 release];
    [r25 release];
    [r26 release];
    [r24 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_1004bfdbc:
    r19 = [sub_1004fd5b0() retain];
    r23 = [NSStringFromClass([r28 class]) retain];
    r21 = [[MPLogEvent adLoadFailedForAdapter:r23 error:r19] retain];
    [MPLogging logEvent:r21 source:r25 fromClass:[r28 class]];
    [r21 release];
    [r23 release];
    r0 = [r28 delegate];
    r0 = [r0 retain];
    [r0 nativeCustomEvent:r28 didFailToLoadAdWithError:r19];
    [r0 release];
    [r19 release];
    goto loc_1004bfea0;
}

@end