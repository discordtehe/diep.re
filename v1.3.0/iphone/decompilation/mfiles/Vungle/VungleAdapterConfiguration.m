@implementation VungleAdapterConfiguration

-(void *)moPubNetworkName {
    return @"vungle";
}

+(void)updateInitializationParameters:(void *)arg2 {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 objectForKeyedSubscript:*0x100e7e600];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1];
            r20 = [r0 retain];
            [VungleAdapterConfiguration setCachedInitializationParameters:r20];
            [r20 release];
    }
    var_18 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;
}

-(void *)biddingToken {
    return 0x0;
}

-(void *)adapterVersion {
    return @"6.4.5.1";
}

-(void)setShouldCollectDeviceId:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_shouldCollectDeviceId = arg2;
    return;
}

-(void *)networkSdkVersion {
    r0 = *0x1011c0ad8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)shouldCollectDeviceId {
    r0 = *(int8_t *)(int64_t *)&self->_shouldCollectDeviceId;
    return r0;
}

-(void)initializeNetworkWithConfiguration:(void *)arg2 complete:(void *)arg3 {
    r31 = r31 - 0x80;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[r19 objectForKeyedSubscript:*0x100e7e600] retain];
    r0 = [r19 objectForKeyedSubscript:*0x100e7e638];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:*0x100e7e638];
            r0 = [r0 retain];
            [r22 setShouldCollectDeviceId:[r0 boolValue]];
            [r0 release];
            r0 = @class(MPVungleRouter);
            r0 = [r0 sharedRouter];
            r29 = r29;
            r23 = [r0 retain];
            [r23 setShouldCollectDeviceId:[r22 shouldCollectDeviceId]];
            [r23 release];
    }
    r23 = [[NSMutableDictionary dictionary] retain];
    r0 = [r19 objectForKeyedSubscript:@"vngMinSpaceForInit"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"vngMinSpaceForInit"];
            r29 = r29;
    }
    else {
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
    }
    [r0 retain];
    [r23 setValue:r2 forKey:r3];
    [r26 release];
    r0 = [r19 objectForKeyedSubscript:@"vngMinSpaceForAdLoad"];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"vngMinSpaceForAdLoad"];
            r29 = r29;
            [r0 retain];
            [r23 setValue:r2 forKey:r3];
            [r27 release];
            r0 = [r19 objectForKeyedSubscript:@"vngMinSpaceForAdLoad"];
    }
    else {
            r0 = @class(NSNumber);
            r0 = [r0 numberWithInt:0x0];
            r29 = r29;
            [r0 retain];
            [r23 setValue:r2 forKey:r3];
            [r26 release];
            r0 = @class(NSNumber);
            r0 = [r0 numberWithInt:0x0];
    }
    r29 = r29;
    [r0 retain];
    [r23 setValue:r2 forKey:r3];
    [r24 release];
    if ([r23 count] != 0x0) {
            r0 = [MPVungleRouter sharedRouter];
            r29 = r29;
            r0 = [r0 retain];
            [r0 setSDKOptions:r23];
            [r0 release];
    }
    if (r21 != 0x0) {
            r0 = [MPVungleRouter sharedRouter];
            r0 = [r0 retain];
            [r0 initializeSdkWithInfo:r19];
            [r0 release];
            if (r20 != 0x0) {
                    (*(r20 + 0x10))(r20, 0x0);
            }
    }
    else {
            r25 = [[NSDictionary dictionaryWithObjects:&stack[-112] forKeys:&var_68 count:0x1] retain];
            r24 = [[NSError errorWithDomain:@"com.mopub.mopub-ios-sdk.mopub-vungle-adapters" code:0x0 userInfo:r25] retain];
            [r25 release];
            r26 = [[MPLogEvent error:r24 message:0x0] retain];
            [MPLogging logEvent:r26 source:0x0 fromClass:[r22 class]];
            [r26 release];
            if (r20 != 0x0) {
                    (*(r20 + 0x10))(r20, r24);
            }
            [r24 release];
    }
    var_58 = **___stack_chk_guard;
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end