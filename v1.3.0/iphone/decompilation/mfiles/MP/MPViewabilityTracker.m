@implementation MPViewabilityTracker

+(void)initialize {
    r31 = r31 - 0xb0;
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
    r1 = @selector(class);
    var_88 = r1;
    r0 = objc_msgSend(@class(MPViewabilityTracker), r1);
    var_80 = self;
    if (r0 == self) {
            r23 = [@(0x2) retain];
            r22 = 0x1;
            r24 = [@(0x1) retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_68 forKeys:&var_78 count:0x2];
            r29 = r29;
            r0 = [r0 retain];
            r8 = *0x1011d8250;
            *0x1011d8250 = r0;
            [r8 release];
            [r24 release];
            [r23 release];
            do {
                    r28 = *0x1011d8250;
                    r27 = [[NSNumber numberWithInteger:r22] retain];
                    r0 = [r28 objectForKeyedSubscript:r27];
                    r29 = r29;
                    r28 = [r0 retain];
                    [r27 release];
                    if (NSClassFromString(r28) != 0x0) {
                            *0x1011d8258 = *0x1011d8258 | r22;
                            [[NSString stringWithFormat:@"%@ was found."] retain];
                            r0 = [MPLogEvent eventWithMessage:r2 level:r3];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(var_80, var_88);
                            objc_msgSend(@class(MPLogging), r26);
                            [r19 release];
                            [r20 release];
                    }
                    [r28 release];
                    r22 = r22 << 0x1;
            } while (r22 < 0x3);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void *)initializeTrackerWithClassName:(void *)arg2 forViewabilityOption:(long long)arg3 withAdView:(void *)arg4 isVideo:(bool)arg5 startTrackingImmediately:(bool)arg6 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg6;
    r22 = arg5;
    r23 = arg3;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r24 = 0x0;
    if (r23 != 0x0) {
            r24 = 0x0;
            if (r23 != 0x3) {
                    if ([r19 length] != 0x0 && NSClassFromString(r19) != 0x0) {
                            r8 = *qword_1011d8258;
                            reg_zero = r23 & !r8;
                            if (reg_zero == 0x0) {
                                    r24 = [objc_alloc() initWithAdView:r20 isVideo:r22 startTrackingImmediately:r21];
                            }
                            else {
                                    r24 = 0x0;
                            }
                    }
                    else {
                            r24 = 0x0;
                    }
            }
    }
    [r20 release];
    [r19 release];
    r0 = [r24 autorelease];
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [self stopTracking];
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithAdView:(void *)arg2 isVideo:(bool)arg3 startTrackingImmediately:(bool)arg4 {
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
    var_68 = arg3;
    stack[-116] = arg4;
    r22 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r23 = r0;
    if (r0 == 0x0) goto loc_1004743f4;

loc_100474254:
    r0 = [r22 containedWebView];
    r29 = r29;
    r0 = [r0 retain];
    r28 = r0;
    if (r0 == 0x0) goto loc_100474404;

loc_100474274:
    var_80 = r22;
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    r24 = r23;
    [r0 addObserver:r23 selector:@selector(onDisableViewabilityTrackingForNotification:) name:@"com.mopub.mopub-ios-sdk.viewability.disabletracking" object:0x0];
    [r0 release];
    r0 = [NSMutableDictionary dictionary];
    r29 = r29;
    var_70 = [r0 retain];
    r19 = 0x1;
    do {
            r20 = *0x1011d8250;
            r22 = [[NSNumber numberWithInteger:r19] retain];
            r21 = [[r20 objectForKeyedSubscript:r22] retain];
            [r22 release];
            r0 = [r24 initializeTrackerWithClassName:r21 forViewabilityOption:r19 withAdView:r28 isVideo:var_68 startTrackingImmediately:stack[-116]];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if (r0 != 0x0) {
                    r0 = [NSNumber numberWithInteger:r19];
                    r29 = r29;
                    [r0 retain];
                    [var_70 setObject:r2 forKeyedSubscript:r3];
                    [r22 release];
            }
            [r20 release];
            [r21 release];
            r19 = r19 << 0x1;
    } while (r19 < 0x3);
    r23 = r24;
    r0 = *(r24 + 0x8);
    *(r24 + 0x8) = var_70;
    [r0 release];
    [r28 release];
    r22 = var_80;
    goto loc_1004743f4;

loc_1004743f4:
    r19 = [r23 retain];
    goto loc_1004744b4;

loc_1004744b4:
    [r22 release];
    [r23 release];
    r0 = r19;
    return r0;

loc_100474404:
    r21 = [[NSString stringWithFormat:@"nil ad view passed into %s"] retain];
    r20 = [[MPLogEvent eventWithMessage:r21 level:0x1e] retain];
    [MPLogging logEvent:r20 source:0x0 fromClass:[r23 class]];
    [r20 release];
    [r21 release];
    [r28 release];
    r19 = 0x0;
    goto loc_1004744b4;
}

-(void)startTracking {
    r0 = [self trackers];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 allValues];
    r0 = [r0 retain];
    [r0 makeObjectsPerformSelector:@selector(startTracking)];
    [r0 release];
    [r19 release];
    return;
}

-(void)stopTracking {
    [self stopTracking:0x3];
    return;
}

-(void)stopTracking:(long long)arg2 {
    r31 = r31 - 0x70;
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
    r19 = arg2;
    r20 = self;
    r25 = 0x1;
    do {
            reg_zero = r25 & !r19;
            if (reg_zero == 0x0) {
                    r26 = [[r20 trackers] retain];
                    r27 = [[NSNumber numberWithInteger:r25] retain];
                    r0 = [r26 objectForKeyedSubscript:r27];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r27 release];
                    [r26 release];
                    if (r0 != 0x0) {
                            r26 = [[r20 trackers] retain];
                            r27 = [[NSNumber numberWithInteger:r25] retain];
                            r0 = [r26 objectForKeyedSubscript:r27];
                            r29 = r29;
                            r28 = [r0 retain];
                            [r27 release];
                            [r26 release];
                            [r28 stopTracking];
                            [r28 release];
                    }
            }
            r25 = r25 << 0x1;
    } while (r25 < 0x3);
    return;
}

-(void)registerFriendlyObstructionView:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self trackers];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 allValues];
    r0 = [r0 retain];
    [r0 makeObjectsPerformSelector:@selector(registerFriendlyObstructionView:) withObject:r21];
    [r21 release];
    [r0 release];
    [r19 release];
    return;
}

+(long long)enabledViewabilityVendors {
    return *0x1011d8258;
}

-(void *)trackers {
    r0 = *(self + 0x8);
    return r0;
}

+(void)disableViewability:(long long)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r11 = 0x1;
    r10 = *0x1011d8258;
    do {
            reg_zero = r11 & !r19;
            if (reg_zero == 0x0) {
                    r10 = r10 & !r11;
                    *0x1011d8258 = r10;
            }
            r11 = r11 << 0x1;
    } while (r11 < 0x3);
    if (r19 != 0x0 && *0x1011d8258 != r10) {
            r20 = [[NSNotificationCenter defaultCenter] retain];
            r19 = [[NSNumber numberWithInteger:r19] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
            r21 = [r0 retain];
            [r20 postNotificationName:@"com.mopub.mopub-ios-sdk.viewability.disabletracking" object:0x0 userInfo:r21];
            [r21 release];
            [r19 release];
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)setTrackers:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void)onDisableViewabilityTrackingForNotification:(void *)arg2 {
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
    var_58 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 userInfo];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    var_68 = r19;
    if (r0 == 0x0) goto loc_100474af8;

loc_100474a54:
    r0 = [r19 userInfo];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    [r22 release];
    if (r0 == 0x0) goto loc_100474b08;

loc_100474aa8:
    r23 = @selector(objectForKey:);
    r0 = [r19 userInfo];
    r0 = [r0 retain];
    r22 = r0;
    r0 = objc_msgSend(r0, r23);
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 integerValue];
    [r0 release];
    goto loc_100474afc;

loc_100474afc:
    [r22 release];
    goto loc_100474b0c;

loc_100474b0c:
    [var_58 stopTracking:r21];
    r0 = [var_58 trackers];
    r29 = r29;
    r0 = [r0 retain];
    var_60 = [r0 mutableCopy];
    [r0 release];
    r27 = 0x1;
    do {
            reg_zero = r27 & !r21;
            if (reg_zero == 0x0) {
                    r28 = [[var_58 trackers] retain];
                    r19 = [[NSNumber numberWithInteger:r27] retain];
                    r0 = [r28 objectForKeyedSubscript:r19];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    [r19 release];
                    [r28 release];
                    if (r0 != 0x0) {
                            r26 = @selector(removeObjectForKey:);
                            r0 = [NSNumber numberWithInteger:r27];
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(var_60, r26);
                            [r19 release];
                    }
            }
            r27 = r27 << 0x1;
    } while (r27 < 0x3);
    [var_58 setTrackers:var_60];
    [var_60 release];
    [var_68 release];
    return;

loc_100474b08:
    r21 = 0x0;
    goto loc_100474b0c;

loc_100474af8:
    r21 = 0x0;
    goto loc_100474afc;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end