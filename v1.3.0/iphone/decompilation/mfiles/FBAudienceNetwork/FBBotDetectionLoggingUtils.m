@implementation FBBotDetectionLoggingUtils

+(void)initializeWithConfigDelegate:(void *)arg2 withLoggerDelegate:(void *)arg3 withAppSessionId:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg4;
    r22 = arg3;
    r20 = arg2;
    r19 = [arg2 retain];
    r21 = [r22 retain];
    r24 = [r23 retain];
    r0 = [FBBotDetectionLoggingUtils self];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == self) {
            objc_storeStrong(0x1011de8d8, r23);
            objc_storeStrong(0x1011de8e8, r22);
            objc_storeStrong(0x1011de8e0, r20);
    }
    [r24 release];
    [r21 release];
    [r19 release];
    return;
}

+(void)logOperationData:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 mutableCopy];
    r19 = r0;
    [r0 setObject:@"ObjC" forKeyedSubscript:@"c"];
    r0 = [NSMutableDictionary new];
    r20 = r0;
    [r0 setObject:*0x1011de8d8 forKeyedSubscript:@"app_session_id"];
    r0 = [NSNumber numberWithInteger:[*0x1011de8e0 signalCollectionIntervalTime]];
    r0 = [r0 retain];
    r24 = [[r0 stringValue] retain];
    [r20 setObject:r24 forKeyedSubscript:@"timer_interval_time"];
    [r24 release];
    [r0 release];
    r0 = [NSNumber numberWithUnsignedInteger:[*0x1011de8e0 nativeSignalsBufferSize]];
    r0 = [r0 retain];
    r23 = [[r0 stringValue] retain];
    [r20 setObject:r23 forKeyedSubscript:@"max_buffer_size"];
    [r23 release];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:@"oi"];
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) {
            [NSDictionary class];
            if ([r22 isKindOfClass:r2] != 0x0) {
                    [r20 addEntriesFromDictionary:r22];
            }
    }
    [r19 setObject:r20 forKeyedSubscript:@"oi"];
    [*0x1011de8e8 logBotDetectionSignalData:r19 forProductName:@"SignalCollector" forLoggerEventName:@"bd_operation_event"];
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

@end