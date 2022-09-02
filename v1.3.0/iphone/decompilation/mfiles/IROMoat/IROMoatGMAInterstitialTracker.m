@implementation IROMoatGMAInterstitialTracker

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
    [IROMoatLogging reportDevLogWithClass:r19 format:@"startTracking called"];
    if ([IROMoatOnOff getStatus] == 0x0) goto loc_10074b478;

loc_10074b3f4:
    r0 = [IROMoatAnalytics sharedInstance];
    r0 = [r0 retain];
    r22 = [r0 isInitialized];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_10074b478;

loc_10074b430:
    *(int8_t *)0x1011dade8 = 0x0;
    if (*(int32_t *)0x1011dadec == 0x0) goto loc_10074b4a4;

loc_10074b448:
    [IROMoatLogging reportDevLogWithClass:r19 format:@"can't startTracking, still searching or already tracking"];
    r0 = @class(IROMoatLogging);
    r1 = @selector(reportClientLog:format:);
    goto loc_10074b48c;

loc_10074b48c:
    objc_msgSend(r0, r1);
    return;

loc_10074b4a4:
    [IROMoatLogging reportDevLogWithClass:r19 format:@"starting search"];
    [NSDate timeIntervalSinceReferenceDate];
    *0x1011dadf0 = d0;
    [IROMoatGMAInterstitialTracker findWebviewAndCreateTracker];
    return;

loc_10074b478:
    r0 = @class(IROMoatLogging);
    r1 = @selector(reportDevLogWithClass:format:);
    goto loc_10074b48c;
}

+(void)findWebviewAndCreateTracker {
    *(int32_t *)0x1011dadec = *(int32_t *)0x1011dadec + 0x1;
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
    if ([IROMoatOnOff getStatus] != 0x0) {
            r0 = [IROMoatAnalytics sharedInstance];
            r0 = [r0 retain];
            r21 = [r0 isInitialized];
            [r0 release];
            if (r21 != 0x0) {
                    *(int8_t *)0x1011dade8 = 0x1;
                    [IROMoatLogging reportDevLogWithClass:r2 format:r3];
                    if (*0x1011dadf8 != 0x0) {
                            [*0x1011dadf8 stopTracking];
                            r0 = *0x1011dadf8;
                            *0x1011dadf8 = 0x0;
                            [r0 release];
                            [IROMoatLogging reportDevLogWithClass:r2 format:r3];
                            [IROMoatLogging reportClientLog:0x0 format:@"MoatGMAInterstitialTracker stopTracking succeeded"];
                    }
            }
    }
    return;
}

+(void *)getWebView {
    r31 = r31 + 0xffffffffffffffa0 - 0xe0;
    r22 = *___stack_chk_guard;
    r22 = *r22;
    var_58 = r22;
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
    var_118 = 0x0;
    r0 = [r21 retain];
    r19 = r0;
    r21 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r25 = 0x0;
    if (r21 == 0x0) goto loc_10074bafc;

loc_10074b9e4:
    var_128 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r10;
    goto loc_10074ba04;

loc_10074ba04:
    r20 = 0x0;
    goto loc_10074ba10;

loc_10074ba10:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r19);
    }
    r26 = *(0x0 + r20 * 0x8);
    r0 = [IROMoatUIUtil digForUIWebView:r2 allowMultiple:r3];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) goto loc_10074baf0;

loc_10074ba54:
    r0 = [IROMoatUIUtil digForWKWebView:r2 allowMultiple:r3];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            var_120 = [r26 retain];
            r22 = 0x0;
    }
    else {
            r22 = 0x1;
    }
    [r26 release];
    [r25 release];
    if (r22 == 0x0) goto loc_10074baec;

loc_10074baa4:
    r20 = r20 + 0x1;
    if (r20 < r21) goto loc_10074ba10;

loc_10074bab0:
    var_128 = @selector(countByEnumeratingWithState:objects:count:);
    r21 = objc_msgSend(r19, var_128);
    r22 = *___stack_chk_guard;
    r22 = *r22;
    if (r21 != 0x0) goto loc_10074ba04;

loc_10074bae8:
    r25 = 0x0;
    goto loc_10074bafc;

loc_10074bafc:
    [r19 release];
    [r19 release];
    if (r22 == var_58) {
            r0 = [r25 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10074baec:
    r25 = var_120;
    goto loc_10074baf0;

loc_10074baf0:
    r22 = *___stack_chk_guard;
    r22 = *r22;
    goto loc_10074bafc;
}

@end