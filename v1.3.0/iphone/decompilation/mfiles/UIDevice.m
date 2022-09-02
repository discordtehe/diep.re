@implementation UIDevice

-(void *)mp_hardwareDeviceName {
    sysctlbyname("hw.machine", 0x0, &var_18, 0x0, 0x0);
    sysctlbyname("hw.machine", malloc(var_18), &var_18, 0x0, 0x0);
    [[NSString stringWithCString:r20 encoding:0x4] retain];
    free(r20);
    r0 = [r19 autorelease];
    return r0;
}

-(void *)adjFbAttributionId {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIPasteboard pasteboardWithName:@"fb_app_attribution" create:0x0];
    r0 = [r0 retain];
    r19 = [[r0 string] retain];
    [r0 release];
    if (r19 != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = @"";
            [r20 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)adjDeviceType {
    r0 = [self model];
    r0 = [r0 retain];
    r20 = [[r0 stringByReplacingOccurrencesOfString:@" " withString:@""] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)adjTrackingEnabled {
    r31 = r31 - 0x70;
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
    r0 = [NSString adjJoin:@"A"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    r22 = NSClassFromString(r0);
    if (r22 != 0x0) {
            r0 = [NSString adjJoin:@"shared"];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            r25 = NSSelectorFromString(r0);
            if ([r22 respondsToSelector:r2] != 0x0) {
                    r23 = @selector(respondsToSelector:);
                    r22 = [[r22 performSelector:r25] retain];
                    r0 = @class(NSString);
                    r0 = [r0 adjJoin:@"is"];
                    r0 = [r0 retain];
                    r21 = r0;
                    r25 = NSSelectorFromString(r0);
                    if (objc_msgSend(r22, r23) != 0x0) {
                            if ([r22 performSelector:r25] != 0x0) {
                                    if (CPU_FLAGS & NE) {
                                            r23 = 0x1;
                                    }
                            }
                    }
                    else {
                            r23 = 0x0;
                    }
                    [r21 release];
                    [r22 release];
            }
            else {
                    r23 = 0x0;
            }
            [r20 release];
    }
    else {
            r23 = 0x0;
    }
    [r19 release];
    r0 = r23;
    return r0;
}

-(void *)adjIdForAdvertisers {
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
    r0 = [NSString adjJoin:@"A"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    r22 = NSClassFromString(r0);
    if (r22 != 0x0) {
            r0 = [NSString adjJoin:@"shared"];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            r23 = NSSelectorFromString(r0);
            if (([r22 respondsToSelector:r2] & 0x1) != 0x0) {
                    r24 = @selector(respondsToSelector:);
                    r22 = [[r22 performSelector:r2] retain];
                    r0 = @class(NSString);
                    r0 = [r0 adjJoin:@"advertising"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = r0;
                    r26 = NSSelectorFromString(r0);
                    if ((objc_msgSend(r22, r24) & 0x1) != 0x0) {
                            r25 = @selector(performSelector:);
                            r24 = @selector(respondsToSelector:);
                            r26 = [objc_msgSend(r22, r25) retain];
                            r0 = @class(NSString);
                            r0 = [r0 adjJoin:@"UUID"];
                            r29 = r29;
                            r0 = [r0 retain];
                            r27 = r0;
                            r21 = NSSelectorFromString(r0);
                            if ((objc_msgSend(r26, r24) & 0x1) != 0x0) {
                                    r21 = [[r26 performSelector:r2] retain];
                            }
                            else {
                                    r21 = @"";
                                    [r21 retain];
                            }
                            [r27 release];
                            [r26 release];
                    }
                    else {
                            r21 = @"";
                            [r21 retain];
                    }
                    [r23 release];
                    [r22 release];
            }
            else {
                    r21 = @"";
                    [r21 retain];
            }
            [r20 release];
    }
    else {
            r21 = @"";
            [r21 retain];
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)adjDeviceName {
    sysctlbyname("hw.machine", 0x0, &var_18, 0x0, 0x0);
    sysctlbyname("hw.machine", malloc(var_18), &var_18, 0x0, 0x0);
    [[NSString stringWithUTF8String:r2] retain];
    free(r20);
    r0 = [r19 autorelease];
    return r0;
}

-(void *)adjCreateUuid {
    r19 = **_kCFAllocatorDefault;
    r20 = CFUUIDCreate(r19);
    r0 = CFUUIDCreateString(r19, r20);
    [[r0 lowercaseString] retain];
    CFRelease(r20);
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)adjVendorId {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [UIDevice currentDevice];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 respondsToSelector:r2];
    [r0 release];
    if (r22 != 0x0) {
            r20 = @selector(identifierForVendor);
            r0 = [UIDevice currentDevice];
            r0 = [r0 retain];
            r21 = r0;
            r0 = objc_msgSend(r0, r20);
            r0 = [r0 retain];
            r19 = [[r0 UUIDString] retain];
            [r0 release];
            [r21 release];
    }
    else {
            r19 = @"";
            [r19 retain];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)adjSetIad:(void *)arg2 triesV3Left:(int)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [ADJAdjustFactory logger];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    [r0 debug:@"iAd with %d tries to read v3"];
    [r21 debug:@"ADJUST_NO_IAD or TARGET_OS_TV not set"];
    r23 = NSClassFromString(@"ADClient");
    if (r23 != 0x0) {
            r24 = NSSelectorFromString(@"sharedClient");
            if ([r23 respondsToSelector:r2] != 0x0) {
                    r23 = [[r23 performSelector:r2] retain];
                    if (r23 != 0x0) {
                            if (r22 == 0x0 || ([r20 adjSetIadWithDetails:r19 ADClientSharedClientInstance:r23 retriesLeft:r22 - 0x1] & 0x1) == 0x0) {
                                    [r21 warn:r2];
                                    [r20 adjSetIadWithDates:r19 ADClientSharedClientInstance:r23];
                            }
                    }
                    [r23 release];
            }
    }
    [r21 release];
    [r19 release];
    return;
}

-(bool)adjSetIadWithDetails:(void *)arg2 ADClientSharedClientInstance:(void *)arg3 retriesLeft:(int)arg4 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = NSSelectorFromString(@"requestAttributionDetailsWithBlock:");
    if ([r20 respondsToSelector:r2] != 0x0) {
            var_30 = [r19 retain];
            r0 = objc_retainBlock(&var_50);
            [r20 performSelector:r2 withObject:r3];
            [r21 release];
            [var_30 release];
            r21 = 0x1;
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)adjSetIadWithDates:(void *)arg2 ADClientSharedClientInstance:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = NSSelectorFromString(@"lookupAdConversionDetails:");
    if ([r20 respondsToSelector:r2] != 0x0) {
            var_28 = [r19 retain];
            r0 = objc_retainBlock(&var_48);
            [r20 performSelector:r2 withObject:r3];
            [r22 release];
            [var_28 release];
            r21 = 0x1;
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

@end