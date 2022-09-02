@implementation MPMoPubNativeCustomEvent

-(void)requestAdWithCustomEventInfo:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1b0;
    r26 = self;
    r0 = [arg2 retain];
    r24 = r0;
    r25 = [[r0 objectForKeyedSubscript:*0x100e7ef08] retain];
    r20 = [NSStringFromClass([r26 class]) retain];
    r23 = [[r24 objectForKeyedSubscript:*0x100e7ef10] retain];
    r21 = [[r24 objectForKeyedSubscript:*0x100e7ef18] retain];
    r22 = [[MPLogEvent adLoadAttemptForAdapter:r20 dspCreativeId:r23 dspName:r21] retain];
    [MPLogging logEvent:r22 source:r25 fromClass:[r26 class]];
    [r22 release];
    [r21 release];
    r0 = r23;
    r23 = r24;
    [r0 release];
    [r20 release];
    r19 = objc_alloc();
    r20 = [r24 mutableCopy];
    r24 = [r19 initWithAdProperties:r20];
    [r20 release];
    r0 = [r24 properties];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10046e124;

loc_10046dcbc:
    var_1D0 = r26;
    var_1C8 = r25;
    r0 = objc_alloc();
    r0 = [r0 initWithAdAdapter:r24];
    r20 = [[r0 impressionTrackerURLs] retain];
    r19 = [[r24 impressionTrackerURLs] retain];
    [r20 addObjectsFromArray:r19];
    [r19 release];
    [r20 release];
    var_200 = r0;
    r20 = [[r0 clickTrackerURLs] retain];
    var_1F8 = r24;
    r19 = [[r24 clickTrackerURLs] retain];
    [r20 addObjectsFromArray:r19];
    [r19 release];
    [r20 release];
    var_1A0 = [[NSMutableArray array] retain];
    var_110 = q0;
    r0 = [r23 allKeys];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_180 = r0;
    var_1F0 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_10046e078;

loc_10046de0c:
    r25 = r0;
    r26 = *var_110;
    var_1E8 = r26;
    var_1E0 = r23;
    goto loc_10046de1c;

loc_10046de1c:
    r24 = 0x0;
    goto loc_10046de84;

loc_10046de84:
    if (*var_110 != r26) {
            objc_enumerationMutation(var_180);
    }
    r22 = *(var_118 + r24 * 0x8);
    r0 = [r22 lowercaseString];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 hasSuffix:@"image"] == 0x0) goto loc_10046e044;

loc_10046ded0:
    r0 = [r23 objectForKey:r2];
    r29 = r29;
    r21 = [r0 retain];
    r27 = [r21 isKindOfClass:[NSString class]];
    [r21 release];
    [r19 release];
    if (r27 == 0x0) goto loc_10046e04c;

loc_10046df24:
    r0 = [r23 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 length] != 0x0 && ([MPNativeAdUtils addURLString:r19 toURLArray:var_1A0] & 0x1) == 0x0) {
            r26 = [sub_1004fd940() retain];
            r27 = @class(MPLogEvent);
            [[r27 adLoadFailedForAdapter:[NSStringFromClass([var_1D0 class]) retain] error:r26] retain];
            [var_1D0 class];
            [MPLogging logEvent:r2 source:r3 fromClass:r4];
            [r27 release];
            r0 = r23;
            r23 = var_1E0;
            [r0 release];
            r0 = [var_1D0 delegate];
            r29 = r29;
            r0 = [r0 retain];
            r26 = var_1E8;
            [r0 nativeCustomEvent:r2 didFailToLoadAdWithError:r3];
            [r21 release];
            [r22 release];
    }
    goto loc_10046e044;

loc_10046e044:
    [r19 release];
    goto loc_10046e04c;

loc_10046e04c:
    r24 = r24 + 0x1;
    if (r24 < r25) goto loc_10046de84;

loc_10046e058:
    r0 = objc_msgSend(var_180, var_1F0);
    r25 = r0;
    if (r0 != 0x0) goto loc_10046de1c;

loc_10046e078:
    [var_180 release];
    r25 = var_1C8;
    var_130 = [r25 retain];
    r20 = [var_200 retain];
    [[&var_168 super] precacheImagesWithURLs:var_1A0 completionBlock:&var_158];
    [var_200 release];
    [var_130 release];
    [r20 release];
    [var_1A0 release];
    r24 = var_1F8;
    goto loc_10046e1fc;

loc_10046e1fc:
    var_60 = **___stack_chk_guard;
    [r24 release];
    [r25 release];
    [r23 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;

loc_10046e124:
    r19 = [sub_1004fd5b0() retain];
    r22 = [NSStringFromClass([r26 class]) retain];
    r21 = [[MPLogEvent adLoadFailedForAdapter:r22 error:r19] retain];
    [MPLogging logEvent:r21 source:r25 fromClass:[r26 class]];
    [r21 release];
    [r22 release];
    r0 = [r26 delegate];
    r0 = [r0 retain];
    [r0 nativeCustomEvent:r26 didFailToLoadAdWithError:r19];
    [r0 release];
    [r19 release];
    goto loc_10046e1fc;
}

@end