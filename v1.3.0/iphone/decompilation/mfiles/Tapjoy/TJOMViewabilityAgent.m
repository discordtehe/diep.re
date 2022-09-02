@implementation TJOMViewabilityAgent

+(void *)sharedInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dc1b0 != -0x1) {
            dispatch_once(0x1011dc1b0, &var_28);
    }
    r0 = *0x1011dc1a8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)isOMInitialized {
    return *(int8_t *)0x1011dc1b8;
}

-(void)initViewabilityTracker:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (*0x1011c4868 == 0x0) goto loc_100950a8c;

loc_100950a08:
    r22 = *0x1011c4868;
    r0 = [NSNull null];
    r29 = r29;
    r21 = [r0 retain];
    if (r22 == r21) goto loc_100950a84;

loc_100950a30:
    r22 = *0x1011c4868;
    [NSString class];
    if (([r22 isKindOfClass:r2] & 0x1) != 0x0) {
            r22 = [*0x1011c4868 length];
            [r21 release];
            if (r22 == 0x0) {
                    r21 = [[r19 objectForKeyedSubscript:@"omJavaScriptURL"] retain];
                    r22 = [[TJOMViewabilityAgent sharedInstance] retain];
                    var_40 = [r20 retain];
                    var_38 = [r19 retain];
                    [r22 getOmidJSResource:r21 completion:&var_60];
                    [r22 release];
                    [var_38 release];
                    [var_40 release];
            }
            else {
                    [TJCLog logWithLevel:0x6 format:@"OMID reusing prior JS file"];
                    r0 = [TJOMViewabilityAgent sharedInstance];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 parseResources:r19 callback:r20];
            }
    }
    else {
            [r21 release];
            [TJCLog logWithLevel:0x6 format:@"OMID reusing prior JS file"];
            r0 = [TJOMViewabilityAgent sharedInstance];
            r0 = [r0 retain];
            r21 = r0;
            [r0 parseResources:r19 callback:r20];
    }
    goto loc_100950ba8;

loc_100950ba8:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_100950a84:
    [r21 release];
    goto loc_100950a8c;

loc_100950a8c:
    r21 = [[r19 objectForKeyedSubscript:@"omJavaScriptURL"] retain];
    r22 = [[TJOMViewabilityAgent sharedInstance] retain];
    var_40 = [r20 retain];
    var_38 = [r19 retain];
    [r22 getOmidJSResource:r21 completion:&var_60];
    [r22 release];
    [var_38 release];
    [var_40 release];
    goto loc_100950ba8;
}

-(bool)createOmidSession:(void *)arg2 {
    r31 = r31 - 0xa0;
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
    r22 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 count] != 0x0) {
            r20 = [OMIDtapjoyPartner alloc];
            r0 = [Tapjoy getVersion];
            r29 = r29;
            r21 = [r0 retain];
            r20 = [r20 initWithName:@"Tapjoy" versionString:r21];
            [r21 release];
            r21 = [[OMIDtapjoyAdSessionContext alloc] initWithPartner:r20 script:*0x1011c4868 resources:r19 customReferenceIdentifier:0x0 error:&var_58];
            r25 = [var_58 retain];
            if (r25 != 0x0) {
                    [TJCLog logWithLevel:0x6 format:@"OMViewabilityAgent %@"];
                    r22 = 0x0;
                    *(int8_t *)0x1011dc1c8 = 0x0;
            }
            else {
                    r23 = [[OMIDtapjoyAdSessionConfiguration alloc] initWithImpressionOwner:0x2 videoEventsOwner:0x2 isolateVerificationScripts:0x0 error:&var_60];
                    r26 = [var_60 retain];
                    [r25 release];
                    if (r26 != 0x0) {
                            [TJCLog logWithLevel:0x6 format:@"OMViewabilityAgent %@"];
                            r22 = 0x0;
                            r25 = r26;
                    }
                    else {
                            r27 = [[OMIDtapjoyAdSession alloc] initWithConfiguration:r23 adSessionContext:r21 error:&var_68];
                            r25 = [var_68 retain];
                            [r26 release];
                            [r22 setOmidSession:r27];
                            [r27 release];
                            if (r25 != 0x0) {
                                    [TJCLog logWithLevel:0x6 format:@"OMViewabilityAgent %@"];
                                    r22 = 0x0;
                            }
                            else {
                                    r27 = [[r22 adView] retain];
                                    r0 = [r22 omidSession];
                                    r0 = [r0 retain];
                                    [r0 setMainAdView:r27];
                                    [r0 release];
                                    [r27 release];
                                    r27 = [OMIDtapjoyVideoEvents alloc];
                                    r0 = [r22 omidSession];
                                    r29 = r29;
                                    r28 = [r0 retain];
                                    r26 = [r27 initWithAdSession:r28 error:&var_70];
                                    r27 = [var_70 retain];
                                    [r25 release];
                                    [r22 setOmidVideoEvents:r26];
                                    [r26 release];
                                    [r28 release];
                                    if (r27 != 0x0) {
                                            [TJCLog logWithLevel:0x6 format:@"OMViewabilityAgent %@"];
                                            r22 = 0x0;
                                            r25 = r27;
                                    }
                                    else {
                                            r24 = [OMIDtapjoyAdEvents alloc];
                                            r26 = [[r22 omidSession] retain];
                                            r24 = [r24 initWithAdSession:r2 error:r3];
                                            r25 = [0x0 retain];
                                            [r27 release];
                                            [r22 setOmidAdEvents:r24];
                                            [r24 release];
                                            [r26 release];
                                            if (r25 == 0x0) {
                                                    r22 = 0x1;
                                            }
                                            else {
                                                    [TJCLog logWithLevel:0x6 format:@"OMViewabilityAgent %@"];
                                                    r22 = 0x0;
                                            }
                                    }
                            }
                    }
                    *(int8_t *)0x1011dc1c8 = r22;
                    [r23 release];
            }
            [r21 release];
            [r20 release];
            [r25 release];
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)getOmidJSResource:(void *)arg2 completion:(void *)arg3 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r20 == 0x0) goto loc_100951a80;

loc_100951854:
    if (*0x1011c4868 == 0x0) goto loc_1009518e4;

loc_100951860:
    r22 = *0x1011c4868;
    r0 = [NSNull null];
    r29 = r29;
    r21 = [r0 retain];
    if (r22 == r21) goto loc_1009518dc;

loc_100951888:
    r22 = *0x1011c4868;
    [NSString class];
    if (([r22 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1009519a4;

loc_1009518b8:
    r22 = [*0x1011c4868 length];
    [r21 release];
    if (r22 != 0x0) goto loc_1009519ac;

loc_1009518e4:
    r0 = [TJOMViewabilityAgent sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    [r0 fetchJSFromCache:r19 error:0x0];
    [r0 release];
    if (*0x1011c4868 == 0x0) goto loc_1009519c8;

loc_100951928:
    r22 = *0x1011c4868;
    r0 = [NSNull null];
    r29 = r29;
    r21 = [r0 retain];
    if (r22 == r21) goto loc_1009519c0;

loc_100951950:
    r22 = *0x1011c4868;
    [NSString class];
    if (([r22 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1009519a4;

loc_100951980:
    r22 = [*0x1011c4868 length];
    [r21 release];
    if (r22 == 0x0) {
            r22 = [@(0x83d600) retain];
            r23 = [r19 retain];
            var_38 = [r20 retain];
            [TJCacheProtocol cacheAssetWithURLAndCompletion:r23 offerID:@"none" timeToLive:r22 completion:&var_60];
            [r22 release];
            [var_38 release];
            [r23 release];
    }
    else {
            (*(r20 + 0x10))(r20, 0x1);
    }
    goto loc_100951a80;

loc_100951a80:
    [r20 release];
    [r19 release];
    return;

loc_1009519a4:
    [r21 release];
    goto loc_1009519ac;

loc_1009519ac:
    (*(r20 + 0x10))(r20, 0x1);
    goto loc_100951a80;

loc_1009519c0:
    [r21 release];
    goto loc_1009519c8;

loc_1009519c8:
    r22 = [@(0x83d600) retain];
    r23 = [r19 retain];
    var_38 = [r20 retain];
    [TJCacheProtocol cacheAssetWithURLAndCompletion:r23 offerID:@"none" timeToLive:r22 completion:&var_60];
    [r22 release];
    [var_38 release];
    [r23 release];
    goto loc_100951a80;

loc_1009518dc:
    [r21 release];
    goto loc_1009518e4;
}

-(void)fetchJSFromCache:(void *)arg2 error:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [TJCacheProtocol localCachePath:r21];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    if (r19 != 0x0) {
            r0 = [NSString stringWithContentsOfFile:r19 encoding:0x4 error:&var_28];
            r29 = r29;
            r22 = [r0 retain];
            r21 = [var_28 retain];
            [r20 release];
            r0 = *0x1011c4868;
            *0x1011c4868 = r22;
            [r0 release];
            if (r21 != 0x0) {
                    r22 = [[r21 localizedDescription] retain];
                    [TJCLog logWithLevel:0x6 format:@"Loading Cached OM JS Error %@"];
                    [r22 release];
                    r20 = r21;
            }
            else {
                    r20 = 0x0;
            }
    }
    [r19 release];
    [r20 release];
    return;
}

-(void)setAdView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adView, arg2);
    return;
}

-(void)startViewabilityTracker:(void *)arg2 callback:(void *)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg3 retain];
    if ((*(int8_t *)byte_1011dc1b8 & 0x1) != 0x0) {
            if (*(int8_t *)byte_1011dc1c8 != 0x1 && ([r20 createOmidSession:*0x1011dc1c0] & 0x1) == 0x0) {
                    [TJCLog logWithLevel:0x6 format:@"OM Viewability Agent could not generate a session"];
                    r0 = [NSNumber numberWithBool:r2];
            }
            else {
                    [TJCLog logWithLevel:0x6 format:@"OMViewabilityAgent startViewabilityTracker"];
                    r0 = [r20 omidSession];
                    r0 = [r0 retain];
                    [r0 start];
                    [r0 release];
                    r0 = [NSNumber numberWithBool:r2];
            }
    }
    else {
            [TJCLog logWithLevel:0x6 format:@"Must initialize OM before calling startViewabilityTracker"];
            r0 = [NSNumber numberWithBool:r2];
    }
    (*(r19 + 0x10))(r19, [r0 retain]);
    [r20 release];
    [r19 release];
    return;
}

-(void)parseResources:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0xe0;
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
    var_C0 = self;
    r21 = [arg2 retain];
    var_B8 = [arg3 retain];
    r0 = [NSMutableArray new];
    r8 = *0x1011dc1c0;
    *0x1011dc1c0 = r0;
    [r8 release];
    r0 = [arg2 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    if ([r20 count] == 0x0) goto loc_1009512f4;

loc_100950f70:
    r23 = 0x0;
    goto loc_100951000;

loc_100951000:
    r0 = [r20 objectAtIndexedSubscript:r23];
    r0 = [r0 retain];
    r21 = r0;
    r19 = [[r0 objectForKeyedSubscript:r2] retain];
    r28 = [[r21 objectForKeyedSubscript:r2] retain];
    r24 = [[r21 objectForKeyedSubscript:r2] retain];
    r26 = [[r28 stringByReplacingOccurrencesOfString:@" " withString:@""] retain];
    r0 = [NSURL URLWithString:r26];
    r29 = r29;
    r25 = [r0 retain];
    [r26 release];
    if (r28 == 0x0 || r25 == 0x0) goto loc_1009512b4;

loc_1009510d4:
    r0 = [NSNull null];
    r29 = r29;
    r26 = [r0 retain];
    if (r28 == r26) goto loc_1009511a0;

loc_1009510f8:
    var_88 = @selector(isKindOfClass:);
    [NSString class];
    if ((objc_msgSend(r28, var_88) & 0x1) == 0x0) goto loc_1009511a8;

loc_10095111c:
    r27 = [r28 length];
    [r26 release];
    if (r27 == 0x0) goto loc_1009512b4;

loc_100951138:
    if (r24 != 0x0) {
            r0 = [NSNull null];
            r29 = r29;
            r26 = [r0 retain];
            if (r24 != r26) {
                    var_88 = @selector(isKindOfClass:);
                    [NSString class];
                    if (objc_msgSend(r24, var_88) != 0x0) {
                            r0 = [r24 length];
                            r27 = 0x1;
                            if (r19 != 0x0) {
                                    r27 = 0x1;
                                    if (r0 == 0x0) {
                                            r27 = 0x1;
                                    }
                                    else {
                                            r0 = [NSNull null];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            if (r19 != r0) {
                                                    var_88 = @selector(isKindOfClass:);
                                                    var_C8 = r0;
                                                    [NSString class];
                                                    if (objc_msgSend(r19, var_88) != 0x0) {
                                                            if ([r19 length] == 0x0) {
                                                                    if (CPU_FLAGS & E) {
                                                                            r27 = 0x1;
                                                                    }
                                                            }
                                                    }
                                                    else {
                                                            r27 = 0x0;
                                                    }
                                                    r0 = var_C8;
                                            }
                                            else {
                                                    r27 = 0x1;
                                            }
                                            [r0 release];
                                    }
                            }
                    }
                    else {
                            if (r19 != 0x0) {
                                    r0 = [NSNull null];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    if (r19 != r0) {
                                            var_88 = @selector(isKindOfClass:);
                                            var_C8 = r0;
                                            [NSString class];
                                            if (objc_msgSend(r19, var_88) != 0x0) {
                                                    if ([r19 length] == 0x0) {
                                                            if (CPU_FLAGS & E) {
                                                                    r27 = 0x1;
                                                            }
                                                    }
                                            }
                                            else {
                                                    r27 = 0x0;
                                            }
                                            r0 = var_C8;
                                    }
                                    else {
                                            r27 = 0x1;
                                    }
                                    [r0 release];
                            }
                            else {
                                    r27 = 0x1;
                            }
                    }
            }
            else {
                    r27 = 0x1;
            }
            [r26 release];
            r0 = [OMIDtapjoyVerificationScriptResource alloc];
            if (r27 != 0x0) {
                    r0 = [r0 initWithURL:r2];
            }
            else {
                    r0 = [r0 initWithURL:r2 vendorKey:r3 parameters:r4];
            }
    }
    else {
            r0 = [OMIDtapjoyVerificationScriptResource alloc];
            r0 = [r0 initWithURL:r2];
    }
    goto loc_100951298;

loc_100951298:
    r27 = r0;
    [*0x1011dc1c0 addObject:r2];
    r0 = r27;
    goto loc_1009512b0;

loc_1009512b0:
    [r0 release];
    goto loc_1009512b4;

loc_1009512b4:
    var_70 = @selector(count);
    [r25 release];
    [r24 release];
    [r28 release];
    [r19 release];
    [r21 release];
    r23 = r23 + 0x1;
    if (objc_msgSend(r20, var_70) > r23) goto loc_100951000;

loc_1009512f4:
    if (([var_C0 createOmidSession:*0x1011dc1c0] & 0x1) != 0x0) {
            [TJCLog logWithLevel:r2 format:r3];
            *(int8_t *)0x1011dc1b8 = 0x1;
            r0 = [NSNumber numberWithBool:r2];
    }
    else {
            [TJCLog logWithLevel:r2 format:r3];
            *(int8_t *)0x1011dc1b8 = 0x0;
            r0 = [NSNumber numberWithBool:r2];
    }
    (*(var_B8 + 0x10))(var_B8, [r0 retain]);
    [r19 release];
    [r20 release];
    [var_B8 release];
    return;

loc_1009511a8:
    [r26 release];
    if (r24 == 0x0) {
            r0 = [OMIDtapjoyVerificationScriptResource alloc];
            r0 = [r0 initWithURL:r2];
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r26 = [r0 retain];
            if (r24 != r26) {
                    var_88 = @selector(isKindOfClass:);
                    [NSString class];
                    if (objc_msgSend(r24, var_88) != 0x0) {
                            r0 = [r24 length];
                            r27 = 0x1;
                            if (r19 != 0x0) {
                                    r27 = 0x1;
                                    if (r0 == 0x0) {
                                            r27 = 0x1;
                                    }
                                    else {
                                            r0 = [NSNull null];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            if (r19 != r0) {
                                                    var_88 = @selector(isKindOfClass:);
                                                    var_C8 = r0;
                                                    [NSString class];
                                                    if (objc_msgSend(r19, var_88) != 0x0) {
                                                            if ([r19 length] == 0x0) {
                                                                    if (CPU_FLAGS & E) {
                                                                            r27 = 0x1;
                                                                    }
                                                            }
                                                    }
                                                    else {
                                                            r27 = 0x0;
                                                    }
                                                    r0 = var_C8;
                                            }
                                            else {
                                                    r27 = 0x1;
                                            }
                                            [r0 release];
                                    }
                            }
                    }
                    else {
                            if (r19 != 0x0) {
                                    r0 = [NSNull null];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    if (r19 != r0) {
                                            var_88 = @selector(isKindOfClass:);
                                            var_C8 = r0;
                                            [NSString class];
                                            if (objc_msgSend(r19, var_88) != 0x0) {
                                                    if ([r19 length] == 0x0) {
                                                            if (CPU_FLAGS & E) {
                                                                    r27 = 0x1;
                                                            }
                                                    }
                                            }
                                            else {
                                                    r27 = 0x0;
                                            }
                                            r0 = var_C8;
                                    }
                                    else {
                                            r27 = 0x1;
                                    }
                                    [r0 release];
                            }
                            else {
                                    r27 = 0x1;
                            }
                    }
            }
            else {
                    r27 = 0x1;
            }
            [r26 release];
            r0 = [OMIDtapjoyVerificationScriptResource alloc];
            if (r27 != 0x0) {
                    r0 = [r0 initWithURL:r2];
            }
            else {
                    r0 = [r0 initWithURL:r2 vendorKey:r3 parameters:r4];
            }
    }
    goto loc_100951298;

loc_1009511a0:
    r0 = r28;
    goto loc_1009512b0;
}

-(void)rendered {
    r20 = [[OMIDtapjoyVASTProperties alloc] initWithAutoPlay:0x1 position:0x3];
    r0 = [self omidVideoEvents];
    r0 = [r0 retain];
    [r0 loadedWithVastProperties:r20];
    [r0 release];
    r0 = [self omidAdEvents];
    r0 = [r0 retain];
    [r0 impressionOccurredWithError:0x0];
    [r0 release];
    [r20 release];
    return;
}

-(void)bufferStart {
    r0 = [self omidVideoEvents];
    r0 = [r0 retain];
    [r0 bufferStart];
    [r0 release];
    return;
}

-(void)bufferFinish {
    r0 = [self omidVideoEvents];
    r0 = [r0 retain];
    [r0 bufferFinish];
    [r0 release];
    return;
}

-(void)triggerViewabilityEvent:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x60;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ((*(int8_t *)byte_1011dc1b8 & 0x1) == 0x0) goto loc_100951fc8;

loc_100951e90:
    if ((*(int8_t *)byte_1011dc1c8 & 0x1) != 0x0 || ([r22 createOmidSession:*0x1011dc1c0] & 0x1) != 0x0) goto loc_100951eb8;

loc_100952020:
    [TJCLog logWithLevel:0x6 format:@"Cannot triggerViewabilityEvent - no valid OM Session"];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_100952004;

loc_100952004:
    r21 = [r0 retain];
    (*(r20 + 0x10))(r20, r21);
    goto loc_1009520bc;

loc_1009520bc:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_100951eb8:
    r21 = [[r19 objectForKeyedSubscript:@"eventName"] retain];
    r0 = r22->_adView;
    r0 = [r0 videoView];
    r0 = [r0 retain];
    r23 = r0;
    [r0 getVideoDuration];
    r0 = [NSNumber numberWithDouble:@"eventName"];
    r29 = r29;
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_videoLength));
    r8 = *(r22 + r9);
    *(r22 + r9) = r0;
    [r8 release];
    [r23 release];
    if (r21 == 0x0) goto loc_100952068;

loc_100951f50:
    r23 = [[NSNull null] retain];
    if (r21 == r23) goto loc_100952060;

loc_100951f78:
    [NSString class];
    if (([r21 isKindOfClass:r2] & 0x1) != 0x0) {
            r24 = [r21 length];
            [r23 release];
            if (r24 == 0x0) {
                    [TJCLog logWithLevel:0x6 format:@"Viewability Event Name is nil or empty"];
                    r22 = [@(NO) retain];
                    (*(r20 + 0x10))(r20, r22);
            }
            else {
                    r23 = NSSelectorFromString(r21);
                    if ([r22 respondsToSelector:r23] != 0x0) {
                            [TJCLog logWithLevel:r2 format:r3];
                            [r22 performSelector:r23];
                            r22 = [@(YES) retain];
                            (*(r20 + 0x10))(r20, r22);
                    }
                    else {
                            [TJCLog logWithLevel:r2 format:r3];
                            r22 = [@(NO) retain];
                            (*(r20 + 0x10))(r20, r22);
                    }
            }
    }
    else {
            [r23 release];
            r23 = NSSelectorFromString(r21);
            if ([r22 respondsToSelector:r23] != 0x0) {
                    [TJCLog logWithLevel:r2 format:r3];
                    [r22 performSelector:r23];
                    r22 = [@(YES) retain];
                    (*(r20 + 0x10))(r20, r22);
            }
            else {
                    [TJCLog logWithLevel:r2 format:r3];
                    r22 = [@(NO) retain];
                    (*(r20 + 0x10))(r20, r22);
            }
    }
    goto loc_1009520b4;

loc_1009520b4:
    [r22 release];
    goto loc_1009520bc;

loc_100952060:
    [r21 release];
    goto loc_100952068;

loc_100952068:
    [TJCLog logWithLevel:0x6 format:@"Viewability Event Name is nil or empty"];
    r22 = [@(NO) retain];
    (*(r20 + 0x10))(r20, r22);
    goto loc_1009520b4;

loc_100951fc8:
    [TJCLog logWithLevel:0x6 format:@"OM not initialized. Cannot call triggerViewabilityEvent"];
    r0 = [NSNumber numberWithBool:r2];
    goto loc_100952004;
}

-(void)start {
    r20 = [[self omidVideoEvents] retain];
    [self->_videoLength doubleValue];
    [TJCUtil getCurrentVolume];
    asm { fcvt       d1, s0 };
    [r20 startWithDuration:r2 videoPlayerVolume:r3];
    [r20 release];
    return;
}

-(void)firstQuartile {
    r0 = [self omidVideoEvents];
    r0 = [r0 retain];
    [r0 firstQuartile];
    [r0 release];
    return;
}

-(void)thirdQuartile {
    r0 = [self omidVideoEvents];
    r0 = [r0 retain];
    [r0 thirdQuartile];
    [r0 release];
    return;
}

-(void)midpoint {
    r0 = [self omidVideoEvents];
    r0 = [r0 retain];
    [r0 midpoint];
    [r0 release];
    return;
}

-(void)complete {
    r0 = [self omidVideoEvents];
    r0 = [r0 retain];
    [r0 complete];
    [r0 release];
    r0 = [self omidSession];
    r0 = [r0 retain];
    [r0 finish];
    [r0 release];
    [self setOmidSession:0x0];
    [self setOmidVideoEvents:0x0];
    [self setOmidAdEvents:0x0];
    *(int8_t *)0x1011dc1c8 = 0x0;
    return;
}

-(void)paused {
    r0 = [self omidVideoEvents];
    r0 = [r0 retain];
    [r0 pause];
    [r0 release];
    return;
}

-(void)playing {
    r0 = [self omidVideoEvents];
    r0 = [r0 retain];
    [r0 resume];
    [r0 release];
    return;
}

-(void)skipped {
    r0 = [self omidVideoEvents];
    r0 = [r0 retain];
    [r0 skipped];
    [r0 release];
    return;
}

-(void)volumeChanged {
    r19 = [[self omidVideoEvents] retain];
    [TJCUtil getCurrentVolume];
    asm { fcvt       d0, s0 };
    [r19 volumeChangeTo:r2];
    [r19 release];
    return;
}

-(void *)omidSession {
    r0 = self->_omidSession;
    return r0;
}

-(void)setOmidSession:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_omidSession, arg2);
    return;
}

-(void *)omidVideoEvents {
    r0 = self->_omidVideoEvents;
    return r0;
}

-(void)setOmidVideoEvents:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_omidVideoEvents, arg2);
    return;
}

-(void *)omidAdEvents {
    r0 = self->_omidAdEvents;
    return r0;
}

-(void)setOmidAdEvents:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_omidAdEvents, arg2);
    return;
}

-(void *)adView {
    r0 = self->_adView;
    return r0;
}

-(void *)videoLength {
    r0 = self->_videoLength;
    return r0;
}

-(void)setVideoLength:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_videoLength, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_videoLength, 0x0);
    objc_storeStrong((int64_t *)&self->_adView, 0x0);
    objc_storeStrong((int64_t *)&self->_omidAdEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_omidVideoEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_omidSession, 0x0);
    return;
}

@end