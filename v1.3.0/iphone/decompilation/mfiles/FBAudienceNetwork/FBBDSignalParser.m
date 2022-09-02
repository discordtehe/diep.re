@implementation FBBDSignalParser

+(void *)signalConfigTimestamp {
    r0 = *0x1011de8b0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)initialize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [FBBDSignalParser self];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == self) {
            r0 = @class(NSMutableSet);
            r0 = [r0 new];
            r8 = *0x1011de8c0;
            *0x1011de8c0 = r0;
            [r8 release];
            r0 = @class(NSMutableSet);
            r0 = [r0 new];
            r8 = *0x1011de8c8;
            *0x1011de8c8 = r0;
            [r8 release];
            r0 = @class(NSMutableSet);
            r0 = [r0 new];
            r8 = *0x1011de8b8;
            *0x1011de8b8 = r0;
            [r8 release];
            r0 = *0x1011de8b0;
            *0x1011de8b0 = 0x0;
            [r0 release];
    }
    return;
}

+(void)setSignalConfigTimestamp:(void *)arg2 {
    objc_storeStrong(0x1011de8b0, arg2);
    return;
}

+(void *)bdDynamicSignals {
    r0 = *0x1011de8c0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setBDDynamicSignals:(void *)arg2 {
    objc_storeStrong(0x1011de8c0, arg2);
    return;
}

+(void *)bdStaticSignals {
    r0 = *0x1011de8c8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setBDStaticSignals:(void *)arg2 {
    objc_storeStrong(0x1011de8c8, arg2);
    return;
}

+(void *)bdBiometricSignals {
    r0 = *0x1011de8b8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)setBDBiometricSignals:(void *)arg2 {
    objc_storeStrong(0x1011de8b8, arg2);
    return;
}

+(void)initWithSignalConfig:(void *)arg2 onSurface:(int)arg3 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    var_30 = r0;
    if (*qword_1011de8d0 == -0x1) {
            r0 = [r0 retain];
    }
    else {
            [r0 retain];
            dispatch_once(0x1011de8d0, &var_58);
            r0 = var_30;
    }
    [r0 release];
    [r19 release];
    return;
}

+(void)generateSignalsFromSignalConfig:(void *)arg2 onSurface:(int)arg3 {
    r31 = r31 - 0xc0;
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
    r22 = arg3;
    r19 = [arg2 retain];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 new];
    r20 = r0;
    [r0 setObject:@"config_parsing" forKeyedSubscript:@"o"];
    [r20 setObject:@"error" forKeyedSubscript:@"l"];
    [r20 setObject:@"InvalidBDJson" forKeyedSubscript:@"et"];
    r0 = @class(NSMutableDictionary);
    r0 = [r0 new];
    r21 = r0;
    if (r19 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r19;
            }
            else {
                    r2 = @"";
            }
    }
    [r0 setObject:r2 forKeyedSubscript:@"signal_parsing_info"];
    [r20 setObject:r21 forKeyedSubscript:@"oi"];
    r23 = [[r19 dataUsingEncoding:0x4] retain];
    r0 = [NSJSONSerialization JSONObjectWithData:r23 options:0x1 error:&var_58];
    r29 = r29;
    r25 = [r0 retain];
    r0 = [var_58 retain];
    r24 = r0;
    if (r0 != 0x0) {
            [FBBotDetectionLoggingUtils logOperationData:r20];
    }
    else {
            r0 = [r25 objectForKeyedSubscript:@"t"];
            r0 = [r0 retain];
            r8 = *0x1011de8b0;
            *0x1011de8b0 = r0;
            [r8 release];
            r26 = [[r25 objectForKeyedSubscript:@"c"] retain];
            if (*0x1011de8b0 != 0x0) {
                    [NSArray class];
                    if (([r26 isKindOfClass:r2] & 0x1) != 0x0) {
                            [r26 enumerateObjectsUsingBlock:&var_A8];
                            if (*(int8_t *)(&var_78 + 0x18) != 0x0) {
                                    [FBBotDetectionLoggingUtils logOperationData:r20];
                            }
                            _Block_object_dispose(&var_78, 0x8);
                    }
                    else {
                            [FBBotDetectionLoggingUtils logOperationData:r20];
                    }
            }
            else {
                    [FBBotDetectionLoggingUtils logOperationData:r20];
            }
            [r26 release];
    }
    [r25 release];
    [r23 release];
    [r24 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end