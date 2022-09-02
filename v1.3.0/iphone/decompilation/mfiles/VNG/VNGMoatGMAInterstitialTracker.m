@implementation VNGMoatGMAInterstitialTracker

+(void)startTracking {
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
    r19 = self;
    [VNGMoatLogging reportDevLogWithClass:r19 format:@"startTracking called"];
    if ([VNGMoatOnOff getStatus] == 0x0) goto loc_100672784;

loc_100672700:
    r0 = [VNGMoatAnalytics sharedInstance];
    r0 = [r0 retain];
    r22 = [r0 isInitialized];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_100672784;

loc_10067273c:
    *(int8_t *)0x1011da9d0 = 0x0;
    if (*(int32_t *)0x1011da9d4 == 0x0) goto loc_1006727b0;

loc_100672754:
    [VNGMoatLogging reportDevLogWithClass:r19 format:@"can't startTracking, still searching or already tracking"];
    r0 = @class(VNGMoatLogging);
    r1 = @selector(reportClientLog:format:);
    goto loc_100672798;

loc_100672798:
    objc_msgSend(r0, r1);
    return;

loc_1006727b0:
    [VNGMoatLogging reportDevLogWithClass:r19 format:@"starting search"];
    [NSDate timeIntervalSinceReferenceDate];
    *0x1011da9d8 = d0;
    [VNGMoatGMAInterstitialTracker findWebviewAndCreateTracker];
    return;

loc_100672784:
    r0 = @class(VNGMoatLogging);
    r1 = @selector(reportDevLogWithClass:format:);
    goto loc_100672798;
}

+(void)findWebviewAndCreateTracker {
    *(int32_t *)0x1011da9d4 = *(int32_t *)0x1011da9d4 + 0x1;
    dispatch_after(dispatch_time(0x0, 0x2faf080), *__dispatch_main_q, &var_38);
    return;
}

+(void)stopTracking {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([VNGMoatOnOff getStatus] != 0x0) {
            r0 = [VNGMoatAnalytics sharedInstance];
            r0 = [r0 retain];
            r21 = [r0 isInitialized];
            [r0 release];
            if (r21 != 0x0) {
                    *(int8_t *)0x1011da9d0 = 0x1;
                    [VNGMoatLogging reportDevLogWithClass:r2 format:r3];
                    if (*0x1011da9e0 != 0x0) {
                            [*0x1011da9e0 stopTracking];
                            r0 = *0x1011da9e0;
                            *0x1011da9e0 = 0x0;
                            [r0 release];
                            [VNGMoatLogging reportDevLogWithClass:r2 format:r3];
                            [VNGMoatLogging reportClientLog:0x0 format:@"MoatGMAInterstitialTracker stopTracking succeeded"];
                    }
            }
    }
    return;
}

+(void *)getWebView {
    r31 = r31 - 0x140;
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
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 keyWindow];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 subviews];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r20 release];
    [r19 release];
    var_108 = q0;
    r0 = [r21 retain];
    r19 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 == 0x0) goto loc_100672db0;

loc_100672ccc:
    r20 = @selector(countByEnumeratingWithState:objects:count:);
    r26 = *var_108;
    var_120 = r20;
    goto loc_100672ce4;

loc_100672ce4:
    r28 = 0x0;
    goto loc_100672cf0;

loc_100672cf0:
    if (*var_108 != r26) {
            objc_enumerationMutation(r19);
    }
    r25 = *(var_110 + r28 * 0x8);
    r0 = [VNGMoatUIUtil digForUIWebView:r2 allowMultiple:r3];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 != 0x0) goto loc_100672dc0;

loc_100672d30:
    r0 = [VNGMoatUIUtil digForWKWebView:r2 allowMultiple:r3];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) {
            r21 = [r25 retain];
            r20 = 0x0;
    }
    else {
            r20 = 0x1;
    }
    [r25 release];
    if (r20 == 0x0) goto loc_100672dc4;

loc_100672d78:
    r28 = r28 + 0x1;
    if (r28 < r22) goto loc_100672cf0;

loc_100672d84:
    r22 = objc_msgSend(r19, var_120);
    if (r22 != 0x0) goto loc_100672ce4;

loc_100672db0:
    [r19 release];
    r21 = 0x0;
    goto loc_100672dcc;

loc_100672dcc:
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100672dc4:
    [r19 release];
    goto loc_100672dcc;

loc_100672dc0:
    r21 = r0;
    goto loc_100672dc4;
}

@end