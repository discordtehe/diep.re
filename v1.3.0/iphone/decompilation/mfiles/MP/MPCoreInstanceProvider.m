@implementation MPCoreInstanceProvider

-(void *)mraidJavascript {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if (*qword_1011d8248 != -0x1) {
            dispatch_once(0x1011d8248, 0x100e7e428);
    }
    r0 = *0x1011d8240;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)isMraidJavascriptAvailable {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self mraidJavascript];
    r0 = [r0 retain];
    if (r0 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r19 = 0x1;
            }
    }
    [r0 release];
    r0 = r19;
    return r0;
}

+(void *)sharedProvider {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d8480 != -0x1) {
            dispatch_once(0x1011d8480, &var_28);
    }
    r0 = *0x1011d8478;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)keepObjectAliveForCurrentRunLoopIteration:(void *)arg2 {
    [self performSelector:@selector(performNoOp:) withObject:r3 afterDelay:r4];
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r20 = [[NSMutableDictionary dictionary] retain];
            [r19 setSingletons:r20];
            [r20 release];
            [r19 initializeCarrierInfo];
    }
    r0 = r19;
    return r0;
}

-(void *)singletonForClass:(void *)arg2 provider:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [r21 singletons];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r24 release];
    if (r23 == 0x0) {
            r23 = [(*(r19 + 0x10))(r19) retain];
            r0 = [r21 singletons];
            r0 = [r0 retain];
            [r0 setObject:r2 forKey:r3];
            [r21 release];
    }
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void)performNoOp:(void *)arg2 {
    return;
}

-(void)initializeCarrierInfo {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[NSMutableDictionary dictionary] retain];
    [r19 setCarrierInfo:r20];
    [r20 release];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 dictionaryForKey:@"com.mopub.carrierinfo"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if (r20 != 0x0) {
            r0 = [r19 carrierInfo];
            r29 = r29;
            r0 = [r0 retain];
            [r0 addEntriesFromDictionary:r20];
            [r0 release];
    }
    r0 = dispatch_get_global_queue(0x0, 0x0);
    r0 = [r0 retain];
    dispatch_async(r0, &var_48);
    [r21 release];
    [r20 release];
    return;
}

-(void *)sharedMPGeolocationProvider {
    r0 = [self singletonForClass:[MPGeolocationProvider class] provider:0x100e7f928];
    return r0;
}

-(void)updateCarrierInfoForCTCarrier:(void *)arg2 {
    r21 = [arg2 retain];
    r23 = [[self carrierInfo] retain];
    r24 = [[r21 carrierName] retain];
    [r23 setValue:r24 forKey:@"carrierName"];
    [r24 release];
    [r23 release];
    r23 = [[self carrierInfo] retain];
    r24 = [[r21 isoCountryCode] retain];
    [r23 setValue:r24 forKey:@"isoCountryCode"];
    [r24 release];
    [r23 release];
    r23 = [[self carrierInfo] retain];
    r24 = [[r21 mobileCountryCode] retain];
    [r23 setValue:r24 forKey:@"mobileCountryCode"];
    [r24 release];
    [r23 release];
    r23 = [[self carrierInfo] retain];
    r24 = [[r21 mobileNetworkCode] retain];
    [r21 release];
    [r23 setValue:r24 forKey:@"mobileNetworkCode"];
    [r24 release];
    [r23 release];
    r22 = [[NSUserDefaults standardUserDefaults] retain];
    r19 = [[self carrierInfo] retain];
    [r22 setObject:r19 forKey:@"com.mopub.carrierinfo"];
    [r19 release];
    [r22 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r19 release];
    return;
}

-(void *)buildCLLocationManager {
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)buildMPAdAlertManagerWithDelegate:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (NSClassFromString(@"MPAdAlertManager") != 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            r20 = r0;
            [r0 performSelector:@selector(setDelegate:) withObject:r3];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)buildMPAdAlertGestureRecognizerWithTarget:(void *)arg2 action:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg3;
    r19 = [arg2 retain];
    if (NSClassFromString(@"MPAdAlertGestureRecognizer") != 0x0) {
            r20 = [objc_alloc() initWithTarget:r19 action:r20];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)sharedCarrierInfo {
    r0 = [self carrierInfo];
    return r0;
}

-(void *)singletons {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setSingletons:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(long long)currentRadioAccessTechnology {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (*0x1011d8498 == 0x0) {
            r0 = objc_alloc();
            r0 = [r0 init];
            r8 = *0x1011d8498;
            *0x1011d8498 = r0;
            [r8 release];
    }
    r0 = *0x1011d8498;
    r0 = [r0 currentRadioAccessTechnology];
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r20 = 0x6;
    }
    else {
            if (([r19 isEqualToString:r2] & 0x1) == 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0) {
                    if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                            if (([r19 isEqualToString:r2] & 0x1) == 0x0) {
                                    if (([r19 isEqualToString:r2] & 0x1) != 0x0) {
                                            r20 = 0x4;
                                    }
                                    else {
                                            r20 = @selector(isEqualToString:);
                                            if (objc_msgSend(r19, r20) != 0x0) {
                                                    asm { cinc       x20, x8, ne };
                                            }
                                    }
                            }
                            else {
                                    r20 = 0x4;
                            }
                    }
                    else {
                            r20 = 0x4;
                    }
            }
            else {
                    r20 = 0x5;
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)appTransportSecuritySettings {
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
    r29 = &saved_fp;
    if (*(int8_t *)0x1011d8488 != 0x1) {
            *0x1011d8490 = 0x0;
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 infoDictionary];
            r0 = [r0 retain];
            r19 = [[r0 objectForKeyedSubscript:@"NSAppTransportSecurity"] retain];
            [r0 release];
            [r21 release];
            r0 = [r19 objectForKeyedSubscript:@"NSAllowsArbitraryLoads"];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 boolValue];
            [r0 release];
            if (r23 != 0x0) {
                    *0x1011d8490 = *0x1011d8490 | 0x1;
            }
            if (sub_1009f787c(0x2, 0xa, 0x0, 0x0) != 0x0) {
                    r0 = [r19 objectForKeyedSubscript:@"NSAllowsArbitraryLoadsForMedia"];
                    r29 = r29;
                    r0 = [r0 retain];
                    if (r0 == 0x0) {
                            r0 = [r19 objectForKeyedSubscript:@"NSAllowsArbitraryLoadsInWebContent"];
                            r29 = r29;
                            r0 = [r0 retain];
                            if (r0 != 0x0) {
                                    [r0 release];
                                    *0x1011d8490 = *0x1011d8490 & 0xfffffffffffffffe;
                            }
                            else {
                                    r0 = [r19 objectForKeyedSubscript:@"NSAllowsLocalNetworking"];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 != 0x0) {
                                            *0x1011d8490 = *0x1011d8490 & 0xfffffffffffffffe;
                                    }
                            }
                    }
                    else {
                            [r0 release];
                            *0x1011d8490 = *0x1011d8490 & 0xfffffffffffffffe;
                    }
                    r0 = [r19 objectForKeyedSubscript:@"NSAllowsArbitraryLoadsForMedia"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 boolValue];
                    [r0 release];
                    if (r23 != 0x0) {
                            *0x1011d8490 = *0x1011d8490 | 0x2;
                    }
                    r0 = [r19 objectForKeyedSubscript:@"NSAllowsArbitraryLoadsInWebContent"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 boolValue];
                    [r0 release];
                    if (r23 != 0x0) {
                            *0x1011d8490 = *0x1011d8490 | 0x4;
                    }
                    r0 = [r19 objectForKeyedSubscript:@"NSRequiresCertificateTransparency"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 boolValue];
                    [r0 release];
                    if (r23 != 0x0) {
                            *0x1011d8490 = *0x1011d8490 | 0x8;
                    }
                    r0 = [r19 objectForKeyedSubscript:@"NSAllowsLocalNetworking"];
                    r0 = [r0 retain];
                    r21 = [r0 boolValue];
                    [r0 release];
                    if (r21 != 0x0) {
                            *0x1011d8490 = *0x1011d8490 | 0x10;
                    }
            }
            *(int8_t *)0x1011d8488 = 0x1;
            [r19 release];
    }
    r0 = *0x1011d8490;
    return r0;
}

-(void *)carrierInfo {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setCarrierInfo:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(int)twitterDeepLinkStatus {
    r0 = *(int32_t *)(self + 0x8);
    return r0;
}

-(void)setTwitterDeepLinkStatus:(int)arg2 {
    *(int32_t *)(self + 0x8) = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    return;
}

@end