@implementation IROMoatLogging

+(void)initialize {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r8 = [@"IRO" isEqualToString:@"IRO"];
    r0 = 0x2;
    if ((r8 & 0x1) == 0x0) {
            r0 = [@"IRO" length];
    }
    *0x1011dae70 = r0;
    *0x1011dae78 = [IROMoatOnOff getDebug];
    return;
}

+(void)setLoggingType:(unsigned long long)arg2 {
    *0x1011dae78 = arg2;
    return;
}

+(void)setSamplingRate:(long long)arg2 {
    *0x1011c26f0 = arg2;
    return;
}

+(void)reportDevLogWithObject:(void *)arg2 format:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    if (*qword_1011dae78 == 0x2) {
            r0 = [r19 class];
            r0 = NSStringFromClass(r0);
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 substringFromIndex:*0x1011dae70];
            r29 = r29;
            r22 = [r0 retain];
            [r24 release];
            [IROMoatBaseTracker class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r24 = [[r19 trackerID] retain];
                    var_50 = r24;
                    stack[-88] = r21;
                    r0 = [NSString stringWithFormat:r2];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r21 release];
                    [r24 release];
                    r21 = r23;
            }
            var_38 = r29 + 0x10;
            [r20 reportLogWithTag:r22 format:r21 args:r29 + 0x10];
            [r22 release];
    }
    [r21 release];
    [r19 release];
    return;
}

+(void)reportDevLogWithClass:(void *)arg2 format:(void *)arg3 {
    r3 = arg3;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = self;
    if (*qword_1011dae78 == 0x2) {
            r21 = [r3 retain];
            r0 = NSStringFromClass(r20);
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 substringFromIndex:*0x1011dae70];
            r29 = r29;
            r22 = [r0 retain];
            [r20 release];
            var_28 = r29 + 0x10;
            [r19 reportLogWithTag:r22 format:r21 args:r29 + 0x10];
            [r21 release];
            [r22 release];
    }
    return;
}

+(void)reportClientLog:(unsigned long long)arg2 format:(void *)arg3 {
    [self reportClientLog:arg2 trackerID:0x0 format:arg3 args:&saved_fp + 0x10];
    return;
}

+(void)reportDevLogWithClassTag:(void *)arg2 format:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r19 = arg3;
    r21 = self;
    r20 = [arg2 retain];
    if (*qword_1011dae78 == 0x2) {
            var_28 = r29 + 0x10;
            [r21 reportLogWithTag:r20 format:r19 args:r29 + 0x10];
    }
    [r20 release];
    return;
}

+(void)reportClientLog:(unsigned long long)arg2 trackerID:(void *)arg3 format:(void *)arg4 {
    r22 = [arg3 retain];
    [self reportClientLog:arg2 trackerID:r22 format:arg4 args:&saved_fp + 0x10];
    [r22 release];
    return;
}

+(void)reportLogWithTag:(void *)arg2 format:(void *)arg3 args:(char *)arg4 {
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [[NSString alloc] initWithFormat:r2 arguments:arg4];
    [r20 release];
    NSLog(@"[%@] %@", @selector(initWithFormat:arguments:), r20);
    [r21 release];
    [r19 release];
    return;
}

+(void)reportClientLog:(unsigned long long)arg2 trackerID:(void *)arg3 format:(void *)arg4 args:(char *)arg5 {
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r20 = arg5;
    r22 = arg2;
    r21 = self;
    r19 = [arg3 retain];
    r0 = [arg4 retain];
    if (r22 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r24 = @"MoatAnalytics:ERROR";
            }
            else {
                    r24 = @"MoatAnalytics:SUCCESS";
            }
    }
    r23 = [r0 retain];
    r25 = r23;
    if (r19 != 0x0) {
            var_50 = r19;
            stack[-88] = r23;
            r0 = [NSString stringWithFormat:r2];
            r29 = r29;
            r25 = [r0 retain];
            [r23 release];
    }
    if (*qword_1011dae78 == 0x1) {
            [r21 reportLogWithTag:r24 format:r25 args:r20];
    }
    if (r22 == 0x1) {
            [r21 reportRemoteLog:r23 args:r20];
    }
    [r25 release];
    [r23 release];
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
    if ([IROMoatOnOff getStatus] != 0x0) {
            r0 = [IROMoatAnalytics sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r23 = [r0 isInitialized];
            [r0 release];
            if (r23 != 0x0) {
                    if (*0x1011dae80 != 0x0) {
                            r0 = [NSDate date];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 timeIntervalSinceDate:*0x1011dae80];
                            [r0 release];
                            if (d8 >= *0x100ba2068) {
                                    if (arc4random_uniform(0x64) < *qword_1011c26f0) {
                                            r0 = [NSDate date];
                                            r0 = [r0 retain];
                                            r8 = *0x1011dae80;
                                            *0x1011dae80 = r0;
                                            [r8 release];
                                            r21 = [[NSString alloc] initWithFormat:r19 arguments:r21];
                                            [r20 reportRemoteLog:r21];
                                            [r21 release];
                                    }
                            }
                    }
                    else {
                            if (arc4random_uniform(0x64) < *qword_1011c26f0) {
                                    r0 = [NSDate date];
                                    r0 = [r0 retain];
                                    r8 = *0x1011dae80;
                                    *0x1011dae80 = r0;
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
    if (*qword_1011dae90 != -0x1) {
            dispatch_once(0x1011dae90, 0x100e8ecd0);
    }
    r0 = *0x1011dae88;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)reportRemoteLog:(void *)arg2 {
    r31 = r31 + 0xffffffffffffffa0 - 0xa0;
    var_C0 = self;
    r0 = [arg2 retain];
    var_B8 = r0;
    var_B0 = [[r0 dataUsingEncoding:0x4] retain];
    r0 = [NSThread callStackSymbols];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    r8 = [r0 count] - 0x3;
    if (r8 < 0x5) {
    }
    var_88 = [[r20 subarrayWithRange:0x3] retain];
    [r20 release];
    r21 = [*(&@class(MCConfigurationData) + 0x40) new];
    r0 = [NSRegularExpression regularExpressionWithPattern:@"0x[0-9a-f]++\s(.++)$" options:0x0 error:0x0];
    r0 = [r0 retain];
    r0 = [r0 retain];
    var_C8 = r0;
    var_60 = r0;
    r0 = [r21 retain];
    var_90 = r0;
    var_58 = r0;
    [var_88 enumerateObjectsUsingBlock:&var_80];
    r0 = [var_90 componentsJoinedByString:@","];
    r0 = [r0 retain];
    var_D0 = r0;
    var_A8 = [[r0 dataUsingEncoding:0x4] retain];
    r0 = [NSDate date];
    r0 = [r0 retain];
    var_D8 = r0;
    r19 = *(&@selector(_decodeSizeForVideoSize:layerSize:scale:) + 0xfa8);
    [r0 timeIntervalSince1970];
    r0 = [r19 stringWithFormat:r2];
    var_98 = [r0 retain];
    arc4random();
    asm { ucvtf      d0, w0 };
    asm { fcvtzu     x8, d0 };
    var_A0 = [objc_msgSend(*(r26 + 0xfa8), r25) retain];
    r19 = [[NSURLComponents componentsWithString:@"https://px.moatads.com/pixel.gif"] retain];
    r20 = objc_msgSend(*(r22 + 0x40), r20);
    r22 = [[NSURLQueryItem queryItemWithName:@"e" value:@"0"] retain];
    [r20 addObject:r22];
    [r22 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"ac" value:@"1"] retain];
    [r20 addObject:r22];
    [r22 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"t" value:var_98] retain];
    [r20 addObject:r22];
    [r22 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"de" value:var_A0] retain];
    [r20 addObject:r22];
    [r22 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"i" value:@"MOATSDK1"] retain];
    [r20 addObject:r22];
    [r22 release];
    r22 = *(r26 + 0xfa8);
    r26 = [[IROMoatCoreUtil getBundleId] retain];
    r25 = [objc_msgSend(r22, r25) retain];
    [r26 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"d" value:r25] retain];
    [r20 addObject:r22];
    [r22 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"zMoatMMAKv" value:@"ebcaff90301390a6b947090cb72f2c7031e20e8c"] retain];
    [r20 addObject:r22];
    [r22 release];
    r26 = @class(NSURLQueryItem);
    r22 = [[IROMoatCoreUtil getAppName] retain];
    r26 = [[r26 queryItemWithName:@"zMoatMMAKan" value:r22] retain];
    [r20 addObject:r26];
    [r26 release];
    [r22 release];
    r22 = [[NSURLQueryItem queryItemWithName:@"bo" value:@"3.5.1"] retain];
    [r20 addObject:r22];
    [r22 release];
    r22 = @class(NSURLQueryItem);
    r26 = [[IROMoatCoreUtil getSystemVersion] retain];
    r22 = [[r22 queryItemWithName:@"bd" value:r26] retain];
    [r20 addObject:r22];
    [r22 release];
    [r26 release];
    r27 = @class(NSURLQueryItem);
    r22 = [[var_A8 base64EncodedStringWithOptions:0x0] retain];
    r27 = [[r27 queryItemWithName:@"k" value:r22] retain];
    [r20 addObject:r27];
    [r27 release];
    [r22 release];
    r28 = @class(NSURLQueryItem);
    r0 = [NSNumber numberWithInteger:*0x1011c26f0];
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
    r22 = [[var_B0 base64EncodedStringWithOptions:0x0] retain];
    r26 = [[r27 queryItemWithName:@"zm" value:r22] retain];
    [r20 addObject:r26];
    [r26 release];
    [r22 release];
    r21 = [[NSURLQueryItem queryItemWithName:@"cs" value:@"0"] retain];
    [r20 addObject:r21];
    [r21 release];
    [r19 setQueryItems:r20];
    r21 = [[var_C0 remoteLoggingSession] retain];
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
    [var_A0 release];
    [var_98 release];
    [var_D8 release];
    [var_A8 release];
    [var_D0 release];
    [var_58 release];
    [var_60 release];
    [var_C8 release];
    [var_90 release];
    [var_88 release];
    [var_B0 release];
    [var_B8 release];
    return;
}

@end