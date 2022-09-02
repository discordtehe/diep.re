@implementation VNGMoatLogging

+(void)initialize {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSArray arrayWithObjects:&var_70 count:0x9];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [[r0 componentsJoinedByString:@"_"] retain];
    r20 = [[NSString stringWithFormat:@"_%@_"] retain];
    [r21 release];
    if (([@"VNG" isEqualToString:r2] & 0x1) != 0x0) {
            r0 = 0x2;
    }
    else {
            r0 = [@"VNG" length];
    }
    var_28 = **___stack_chk_guard;
    *0x1011daa40 = r0;
    *0x1011daa48 = [VNGMoatOnOff getDebug];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

+(void)setLoggingType:(unsigned long long)arg2 {
    *0x1011daa48 = arg2;
    return;
}

+(void)setSamplingRate:(long long)arg2 {
    *0x1011c1510 = arg2;
    return;
}

+(void)reportDevLogWithObject:(void *)arg2 format:(void *)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    if (*qword_1011daa48 == 0x2) {
            r0 = [r19 class];
            r0 = NSStringFromClass(r0);
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 substringFromIndex:*0x1011daa40];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
            [VNGMoatBaseTracker class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r24 = [[r19 trackerID] retain];
                    r0 = [NSString stringWithFormat:r2];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r21 release];
                    [r24 release];
                    r21 = r23;
            }
            [r20 reportLogWithTag:r22 format:r21 args:r29 + 0x10];
            [r22 release];
    }
    [r21 release];
    [r19 release];
    return;
}

+(void)reportDevLogWithClass:(void *)arg2 format:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if (*qword_1011daa48 == 0x2) {
            r21 = [r3 retain];
            r0 = NSStringFromClass(r20);
            r0 = [r0 retain];
            r22 = [[r0 substringFromIndex:*0x1011daa40] retain];
            [r0 release];
            [r19 reportLogWithTag:r22 format:r21 args:r29 + 0x10];
            [r21 release];
            [r22 release];
    }
    return;
}

+(void)reportDevLogWithClassTag:(void *)arg2 format:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg3;
    r20 = self;
    r21 = [arg2 retain];
    if (*qword_1011daa48 == 0x2) {
            [r20 reportLogWithTag:r21 format:r19 args:r29 + 0x10];
    }
    [r21 release];
    return;
}

+(void)reportClientLog:(unsigned long long)arg2 format:(void *)arg3 {
    [self reportClientLog:arg2 trackerID:0x0 format:arg3 args:&saved_fp + 0x10];
    return;
}

+(void)reportClientLog:(unsigned long long)arg2 trackerID:(void *)arg3 format:(void *)arg4 {
    r22 = [arg3 retain];
    [self reportClientLog:arg2 trackerID:r22 format:arg4 args:&saved_fp + 0x10];
    [r22 release];
    return;
}

+(void)reportClientLog:(unsigned long long)arg2 trackerID:(void *)arg3 format:(void *)arg4 args:(char *)arg5 {
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
    r20 = arg5;
    r22 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [arg4 retain];
    r24 = r0;
    if (r22 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = @"MoatAnalytics:ERROR";
            }
            else {
                    r0 = @"MoatAnalytics:SUCCESS";
            }
    }
    r23 = [r0 retain];
    r24 = [r24 retain];
    if (r19 != 0x0) {
            r25 = [[NSString stringWithFormat:r2] retain];
            [r24 release];
    }
    else {
            r25 = r24;
    }
    if (*qword_1011daa48 == 0x1) {
            [r21 reportLogWithTag:r23 format:r25 args:r20];
    }
    if (r22 == 0x1) {
            [r21 reportRemoteLog:r24 args:r20];
    }
    [r25 release];
    [r23 release];
    [r24 release];
    [r19 release];
    return;
}

+(void)reportLogWithTag:(void *)arg2 format:(void *)arg3 args:(char *)arg4 {
    [arg2 retain];
    r20 = [arg3 retain];
    [[NSString alloc] initWithFormat:r2 arguments:arg4];
    [r20 release];
    NSLog(@"[%@] %@", @selector(initWithFormat:arguments:), r20);
    [r21 release];
    [r19 release];
    return;
}

+(void)reportRemoteLog:(void *)arg2 args:(char *)arg3 {
    var_40 = d9;
    stack[-72] = d8;
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
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if ([VNGMoatOnOff getStatus] != 0x0) {
            r0 = [VNGMoatAnalytics sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isInitialized];
            [r0 release];
            if (r23 != 0x0) {
                    if (*0x1011daa50 != 0x0) {
                            r0 = [NSDate date];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 timeIntervalSinceDate:*0x1011daa50];
                            [r0 release];
                            if (d8 >= *0x100ba2068) {
                                    if (*qword_1011c1510 > zero_extend_64(arc4random_uniform(0x64))) {
                                            r0 = [NSDate date];
                                            r0 = [r0 retain];
                                            r8 = *0x1011daa50;
                                            *0x1011daa50 = r0;
                                            [r8 release];
                                            r21 = [[NSString alloc] initWithFormat:r19 arguments:r21];
                                            [r20 reportRemoteLog:r21];
                                            [r21 release];
                                    }
                            }
                    }
                    else {
                            if (*qword_1011c1510 > zero_extend_64(arc4random_uniform(0x64))) {
                                    r0 = [NSDate date];
                                    r0 = [r0 retain];
                                    r8 = *0x1011daa50;
                                    *0x1011daa50 = r0;
                                    [r8 release];
                                    r21 = [[NSString alloc] initWithFormat:r19 arguments:r21];
                                    [r20 reportRemoteLog:r21];
                                    [r21 release];
                            }
                    }
            }
    }
    [r19 release];
    return;
}

+(void *)remoteLoggingSession {
    if (*qword_1011daa60 != -0x1) {
            dispatch_once(0x1011daa60, 0x100e8a398);
    }
    r0 = *0x1011daa58;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)reportRemoteLog:(void *)arg2 {
    r31 = r31 - 0x100;
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
    r27 = self;
    r0 = [arg2 retain];
    var_A0 = r0;
    var_98 = [[r0 dataUsingEncoding:0x4] retain];
    r0 = [NSThread callStackSymbols];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r8 = [r0 count] - 0x3;
    if (r8 < 0x5) {
    }
    r24 = [[r20 subarrayWithRange:0x3] retain];
    [r20 release];
    r21 = [*(&@class(MCConfigurationData) + 0x40) new];
    r0 = [NSRegularExpression regularExpressionWithPattern:@"0x[0-9a-f]++\s(.++)$" options:0x0 error:0x0];
    r0 = [r0 retain];
    var_60 = [r0 retain];
    r21 = [r21 retain];
    var_58 = r21;
    [r24 enumerateObjectsUsingBlock:&var_80];
    r0 = [r21 componentsJoinedByString:@","];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 dataUsingEncoding:0x4];
    var_A8 = r25;
    var_90 = [r0 retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    r19 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfa8);
    var_B0 = r0;
    [r0 timeIntervalSince1970];
    r0 = [r19 stringWithFormat:r2];
    var_88 = [r0 retain];
    arc4random();
    asm { ucvtf      d0, w0 };
    asm { fcvtzu     x8, d0 };
    r0 = *(r26 + 0xfa8);
    r0 = objc_msgSend(r0, r25);
    var_C8 = r21;
    var_C0 = r28;
    r28 = [r0 retain];
    r0 = [NSURLComponents componentsWithString:@"https://px.moatads.com/pixel.gif"];
    var_B8 = r27;
    r19 = [r0 retain];
    r20 = objc_msgSend(*(r22 + 0x40), r20);
    r22 = [[NSURLQueryItem queryItemWithName:@"e" value:@"0"] retain];
    [r20 addObject:r22];
    [r22 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"ac" value:@"1"] retain];
    [r20 addObject:r22];
    [r22 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"t" value:var_88] retain];
    [r20 addObject:r22];
    [r22 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"de" value:r28] retain];
    [r20 addObject:r22];
    [r22 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"i" value:@"MOATSDK1"] retain];
    [r20 addObject:r22];
    var_D8 = r28;
    [r22 release];
    r22 = *(r26 + 0xfa8);
    r26 = [[VNGMoatCoreUtil getBundleId] retain];
    r25 = [objc_msgSend(r22, r25) retain];
    [r26 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"d" value:r25] retain];
    [r20 addObject:r22];
    [r22 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"zMoatMMAKv" value:@"fe8a38d01af3d533b53f4a904cdfe24324c4913f"] retain];
    [r20 addObject:r22];
    [r22 release];
    r26 = @class(NSURLQueryItem);
    r22 = [[VNGMoatCoreUtil getAppName] retain];
    r26 = [[r26 queryItemWithName:@"zMoatMMAKan" value:r22] retain];
    [r20 addObject:r26];
    [r26 release];
    [r22 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"bo" value:@"3.7.5"] retain];
    [r20 addObject:r22];
    [r22 release];
    r22 = @class(NSURLQueryItem);
    r26 = [[VNGMoatCoreUtil getSystemVersion] retain];
    r22 = [[r22 queryItemWithName:@"bd" value:r26] retain];
    [r20 addObject:r22];
    [r22 release];
    [r26 release];
    r27 = @class(NSURLQueryItem);
    r22 = [[var_90 base64EncodedStringWithOptions:0x0] retain];
    r27 = [[r27 queryItemWithName:@"k" value:r22] retain];
    [r20 addObject:r27];
    [r27 release];
    [r22 release];
    r28 = @class(NSURLQueryItem);
    r0 = [NSNumber numberWithInteger:*0x1011c1510];
    r0 = [r0 retain];
    r22 = [[r0 stringValue] retain];
    r28 = [[r28 queryItemWithName:@"zr" value:r22] retain];
    [r20 addObject:r28];
    [r28 release];
    [r22 release];
    [r0 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"zt" value:@"1"] retain];
    [r20 addObject:r22];
    [r22 release];
    r27 = @class(NSURLQueryItem);
    r22 = [[var_98 base64EncodedStringWithOptions:0x0] retain];
    r26 = [[r27 queryItemWithName:@"zm" value:r22] retain];
    [r20 addObject:r26];
    [r26 release];
    [r22 release];
    r21 = [[NSURLQueryItem queryItemWithName:@"cs" value:@"0"] retain];
    [r20 addObject:r21];
    [r21 release];
    [r19 setQueryItems:r20];
    r21 = [[var_B8 remoteLoggingSession] retain];
    r23 = [[r19 URL] retain];
    r0 = [r21 dataTaskWithURL:r23];
    r0 = [r0 retain];
    [r0 resume];
    [r0 release];
    [r23 release];
    [r21 release];
    [r25 release];
    [r20 release];
    [r19 release];
    [var_D8 release];
    [var_88 release];
    [var_B0 release];
    [var_90 release];
    [var_A8 release];
    [var_58 release];
    [var_60 release];
    [var_C0 release];
    [var_C8 release];
    [r24 release];
    [var_98 release];
    [var_A0 release];
    return;
}

@end