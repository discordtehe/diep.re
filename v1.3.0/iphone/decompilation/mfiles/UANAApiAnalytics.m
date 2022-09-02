@implementation UANAApiAnalytics

+(void *)getAnalyticsDelegate {
    r0 = *0x1011d1d38;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setAnalyticsDelegate:(void *)arg2 {
    objc_storeStrong(0x1011d1d38, arg2);
    return;
}

+(void)WebViewExposed_addExtras:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [UANAApiAnalytics getAnalyticsDelegate];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1000f87a8;

loc_1000f86bc:
    r0 = [UANAApiAnalytics getAnalyticsDelegate];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 conformsToProtocol:@protocol(UANAEngineDelegate)];
    [r0 release];
    [r22 release];
    if (r24 == 0x0) goto loc_1000f87a8;

loc_1000f8700:
    r0 = [UANAApiAnalytics getAnalyticsDelegate];
    r0 = [r0 retain];
    r22 = [r0 respondsToSelector:@selector(addExtras:)];
    [r0 release];
    if (r22 == 0x0) goto loc_1000f8800;

loc_1000f873c:
    var_48 = [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_68);
    [r20 invoke:0x0];
    [var_48 release];
    goto loc_1000f87d4;

loc_1000f87d4:
    [r20 release];
    [r19 release];
    return;

loc_1000f8800:
    r21 = @"API_SIGNATURE_MISMATCH";
    goto loc_1000f87b0;

loc_1000f87b0:
    objc_retainAutorelease(r21);
    [r20 error:r21 arg1:r19];
    goto loc_1000f87d4;

loc_1000f87a8:
    r21 = @"API_NOT_FOUND";
    goto loc_1000f87b0;
}

@end