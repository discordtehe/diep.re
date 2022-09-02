@implementation MPAnalyticsTracker

+(void *)sharedTracker {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d8298 != -0x1) {
            dispatch_once(0x1011d8298, &var_28);
    }
    r0 = *0x1011d8290;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)trackClickForConfiguration:(void *)arg2 {
    r0 = [arg2 retain];
    r23 = [[r0 clickTrackingURL] retain];
    r25 = [[NSString stringWithFormat:@"Tracking click: %@"] retain];
    r24 = [[MPLogEvent eventWithMessage:r25 level:0x14] retain];
    [MPLogging logEvent:r24 source:0x0 fromClass:[self class]];
    [r24 release];
    [r25 release];
    [r23 release];
    r21 = objc_alloc();
    r20 = [[r0 clickTrackingURL] retain];
    [r0 release];
    r19 = [r21 initWithURL:r20];
    [r20 release];
    [[[MPHTTPNetworkSession startTaskWithHttpRequest:r19] retain] release];
    [r19 release];
    return;
}

-(void)trackImpressionForConfiguration:(void *)arg2 {
    r0 = [arg2 retain];
    r20 = r0;
    r0 = [r0 impressionTrackingURLs];
    r0 = [r0 retain];
    r24 = [[r0 firstObject] retain];
    r26 = [[NSString stringWithFormat:@"Tracking impression: %@"] retain];
    r25 = [[MPLogEvent eventWithMessage:r26 level:0x14] retain];
    [MPLogging logEvent:r25 source:0x0 fromClass:[self class]];
    [r25 release];
    [r26 release];
    [r24 release];
    [r0 release];
    r21 = [[r20 impressionTrackingURLs] retain];
    [r20 release];
    [self sendTrackingRequestForURLs:r21];
    [r21 release];
    return;
}

-(void)sendTrackingRequestForURLs:(void *)arg2 {
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
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    var_110 = q0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r21 = r0;
            r25 = *var_110;
            do {
                    r27 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r19);
                            }
                            r24 = *(var_118 + r27 * 0x8);
                            r24 = [objc_alloc() initWithURL:r24];
                            r0 = @class(MPHTTPNetworkSession);
                            r0 = [r0 startTaskWithHttpRequest:r2];
                            r29 = r29;
                            [[r0 retain] release];
                            [r24 release];
                            r27 = r27 + 0x1;
                    } while (r27 < r21);
                    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r21 = r0;
            } while (r0 != 0x0);
    }
    var_60 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_60) {
            __stack_chk_fail();
    }
    return;
}

@end