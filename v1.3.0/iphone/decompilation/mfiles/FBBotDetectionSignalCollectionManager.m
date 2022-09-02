@implementation FBBotDetectionSignalCollectionManager

+(void *)loggerDelegate {
    r0 = *0x1011de908;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setLoggerDelegate:(void *)arg2 {
    objc_storeStrong(0x1011de908, arg2);
    return;
}

+(void *)configDelegate {
    r0 = *0x1011de910;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setConfigDelegate:(void *)arg2 {
    objc_storeStrong(0x1011de910, arg2);
    return;
}

+(void *)signalsDelegate {
    r0 = *0x1011de920;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setSignalsDelegate:(void *)arg2 {
    objc_storeStrong(0x1011de920, arg2);
    return;
}

+(void *)dynamicLoadedLibraryProviderDelegate {
    r0 = *0x1011de928;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setDynamicLoadedLibraryProviderDelegate:(void *)arg2 {
    objc_storeStrong(0x1011de928, arg2);
    return;
}

+(void)loadBotDetection {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011de938 != -0x1) {
            dispatch_once(0x1011de938, 0x100eb1fe0);
    }
    return;
}

+(void)sendBotDetectionSignalsForEventId:(void *)arg2 productType:(unsigned long long)arg3 eventType:(void *)arg4 bdSessionIds:(void *)arg5 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    if (*(int8_t *)byte_1011de930 != 0x1) goto loc_100b7ddf0;

loc_100b7dd14:
    if (r21 == 0x0) goto loc_100b7dd78;

loc_100b7dd20:
    if (*(int8_t *)byte_1011de918 != 0x0) goto loc_100b7dd54;

loc_100b7dd24:
    if ([FBBDHelpers reputationTierFromBDSessionDict:r21] == 0x0) goto loc_100b7ddf0;

loc_100b7dd40:
    dispatch_async(*0x1011de8f0, 0x100eb1f70);
    goto loc_100b7dd54;

loc_100b7dd54:
    [r23 finalizeSignalsAndEvaluateLatestTierForEventId:r19 productType:r22 eventType:r20 bdSessionIds:r21];
    goto loc_100b7ddf0;

loc_100b7ddf0:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_100b7dd78:
    if ((*(int8_t *)byte_1011de918 & 0x1) == 0x0) {
            var_48 = [r19 retain];
            var_40 = [r20 retain];
            [FBBotDetectionWhiteOpsSignalCollector finalizeSignalsAndSendUsingCompletionBlock:&var_68];
            [var_40 release];
            [var_48 release];
    }
    goto loc_100b7ddf0;
}

+(void)finalizeSignalsAndEvaluateLatestTierForEventId:(void *)arg2 productType:(unsigned long long)arg3 eventType:(void *)arg4 bdSessionIds:(void *)arg5 {
    r22 = [arg2 retain];
    r20 = [arg4 retain];
    r19 = [arg5 retain];
    r23 = *0x1011de8f0;
    [r22 retain];
    var_48 = r20;
    [r20 retain];
    var_40 = r19;
    [r19 retain];
    dispatch_async(r23, &var_70);
    [var_40 release];
    [var_48 release];
    [r22 release];
    [r19 release];
    [r20 release];
    [r21 release];
    return;
}

@end