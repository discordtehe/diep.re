@implementation GADSafeBrowsingMonitor

-(void *)initWithAdView:(void *)arg2 adRequestTransaction:(void *)arg3 baseURL:(void *)arg4 monitoredContext:(void *)arg5 configuration:(void *)arg6 {
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
    r29 = &saved_fp;
    r28 = arg5;
    r25 = [arg2 retain];
    r20 = [arg3 retain];
    r26 = [arg4 retain];
    r27 = [r28 retain];
    r24 = [arg6 retain];
    r0 = [[&var_60 super] init];
    r23 = r0;
    if (r23 == 0x0) goto loc_10085d968;

loc_10085d534:
    var_68 = @selector(init);
    r21 = [[r24 objectForKeyedSubscript:@"report_url"] retain];
    r0 = [NSURL URLWithString:r21];
    r29 = r29;
    r0 = [r0 retain];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_reportURL));
    r8 = *(r23 + r19);
    *(r23 + r19) = r0;
    [r8 release];
    [r21 release];
    if (*(r23 + r19) == 0x0) goto loc_10085d978;

loc_10085d5ac:
    var_80 = r27;
    r0 = [r24 objectForKeyedSubscript:@"non_malicious_reporting_enabled"];
    r0 = [r0 retain];
    *(int8_t *)(int64_t *)&r23->_shouldReportBenignAds = [r0 boolValue];
    [r0 release];
    r0 = [r24 objectForKeyedSubscript:@"malicious_reporting_enabled"];
    r0 = [r0 retain];
    *(int8_t *)(int64_t *)&r23->_shouldReportMaliciousAds = [r0 boolValue];
    [r0 release];
    var_B8 = [GADURLSessionTransaction alloc];
    r0 = [r20 serverRequest];
    r0 = [r0 retain];
    var_A8 = r0;
    r21 = [[r0 URLRequest] retain];
    r0 = [r20 serverRequest];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 context];
    r0 = [r0 retain];
    var_78 = r26;
    r26 = r0;
    r0 = [r20 serverResponse];
    r0 = [r0 retain];
    var_A0 = r28;
    var_B0 = r25;
    r25 = r0;
    r22 = [[r0 rawResponse] retain];
    var_70 = r20;
    r0 = [r20 serverResponse];
    r0 = [r0 retain];
    r20 = [[r0 rawResponseData] retain];
    r28 = r21;
    r21 = [var_B8 initWithURLRequest:r21 parentContext:r26 response:r22 responseBody:r20 requestError:0x0];
    [r20 release];
    [r0 release];
    r0 = r22;
    r22 = r21;
    [r0 release];
    r0 = r25;
    r25 = var_B0;
    [r0 release];
    r0 = r26;
    r26 = var_78;
    [r0 release];
    [r19 release];
    [r28 release];
    [var_A8 release];
    r0 = [GADSafeBrowsingReport alloc];
    r0 = [r0 initWithRootTransaction:r22 configuration:r24];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_report));
    r8 = *(r23 + r19);
    *(r23 + r19) = r0;
    [r8 release];
    [*(r23 + r19) setMainDocumentURL:r26];
    objc_storeWeak((int64_t *)&r23->_adView, r25);
    objc_storeStrong((int64_t *)&r23->_context, var_A0);
    r0 = [GADObserverCollection alloc];
    r0 = objc_msgSend(r0, var_68);
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    [r23 observeNotificationName:*0x100e9c1d8 usingBlock:0x100e97af8];
    [r23 observeNotificationName:*0x100e9c090 usingBlock:0x100e97b38];
    [r23 observeNotificationName:*0x100e9c0d0 usingBlock:0x100e97b78];
    r0 = [r24 objectForKeyedSubscript:@"rendered_ad_enabled"];
    r0 = [r0 retain];
    r21 = [r0 boolValue];
    [r0 release];
    if (r21 != 0x0) {
            [r23 observeNotificationName:*0x100e9c028 usingBlock:0x100e97bb8];
            [r23 observeNotificationName:*0x100e9c528 usingBlock:0x100e97bf8];
            [r23 observeNotificationName:*0x100e9c530 usingBlock:0x100e97c38];
    }
    [r22 release];
    r20 = var_70;
    r27 = var_80;
    goto loc_10085d968;

loc_10085d968:
    r19 = [r23 retain];
    goto loc_10085d97c;

loc_10085d97c:
    [r24 release];
    [r27 release];
    [r26 release];
    [r20 release];
    [r25 release];
    [r23 release];
    r0 = r19;
    return r0;

loc_10085d978:
    r19 = 0x0;
    goto loc_10085d97c;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r8 = 0x101171070;
    if ([r19->_report malicious] != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x101171070;
            }
            else {
                    r8 = 0x101171074;
            }
    }
    if (*(int8_t *)(r19 + sign_extend_64(*(int32_t *)r8)) != 0x0) {
            [r19 sendReport];
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)observeNotificationName:(void *)arg2 usingBlock:(void *)arg3 {
    [arg2 retain];
    [arg3 retain];
    objc_initWeak(&stack[-72], self);
    objc_copyWeak(&var_68 + 0x28, &stack[-72]);
    r21 = [r21 retain];
    r0 = objc_retainBlock(&var_68);
    [self->_observers addObserverForName:r19 object:0x0 queue:0x0 usingBlock:r0];
    [r0 release];
    [r21 release];
    objc_destroyWeak(&var_68 + 0x28);
    objc_destroyWeak(&stack[-72]);
    [r21 release];
    [r19 release];
    return;
}

-(void)sendReport {
    r20 = [self->_reportURL retain];
    r19 = [self->_report retain];
    var_28 = r20;
    r20 = [r20 retain];
    [r19 createDictionaryWithCompletionHandler:&var_48];
    [var_28 release];
    [r19 release];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_adView);
    objc_storeStrong((int64_t *)&self->_report, 0x0);
    objc_storeStrong((int64_t *)&self->_reportURL, 0x0);
    objc_storeStrong((int64_t *)&self->_context, 0x0);
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    return;
}

@end