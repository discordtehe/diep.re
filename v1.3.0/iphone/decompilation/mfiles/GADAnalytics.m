@implementation GADAnalytics

-(void)startAppMeasurement {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    sub_100858054();
    r0 = [GADMobileAds sharedInstance];
    r0 = [r0 retain];
    r19 = [[r0 googleMobileAdsAppID] retain];
    [r0 release];
    r0 = NSClassFromString(@"APMAnalytics");
    r20 = r0;
    if ([r0 respondsToSelector:@selector(startWithAppID:origin:options:), r3, r4] != 0x0) {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            sub_100822058(r0, @"app_measurement_log_tag", @"<Google>");
            [r20 startWithAppID:r19 origin:@"am" options:r22];
            [r22 release];
    }
    [r19 release];
    return;
}

+(void *)sharedInstance {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 boolForKey:*0x100e9b7a8];
    [r0 release];
    if (r21 != 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 objectForInfoDictionaryKey:@"GADDelayAppMeasurementInit"];
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
            if ([r20 respondsToSelector:r2] != 0x0 && [r20 boolValue] != 0x0) {
                    r0 = [GADApplication sharedInstance];
                    r0 = [r0 retain];
                    r21 = [r0 additionalEarlyActivitiesCalled];
                    [r0 release];
                    if (r21 != 0x0) {
                            if (*qword_1011dbf30 != -0x1) {
                                    dispatch_once(0x1011dbf30, 0x100e9dde0);
                            }
                            r19 = [*0x1011dbf38 retain];
                    }
                    else {
                            r19 = 0x0;
                    }
            }
            else {
                    if (*qword_1011dbf30 != -0x1) {
                            dispatch_once(0x1011dbf30, 0x100e9dde0);
                    }
                    r19 = [*0x1011dbf38 retain];
            }
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithFIRFramework {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 startAppMeasurement];
            r0 = NSClassFromString(@"FIRAIdentifiers");
            r22 = r0;
            if ([r0 respondsToSelector:r2] != 0x0) {
                    r0 = [r22 sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_analyticsIdentifiers));
                    r8 = *(r19 + r9);
                    *(r19 + r9) = r0;
                    [r8 release];
            }
            r21 = @selector(respondsToSelector:);
            r0 = NSClassFromString(@"FIRAnalytics");
            r22 = r0;
            if (objc_msgSend(r0, r21) != 0x0) {
                    r0 = [r22 sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_analytics));
                    r8 = *(r19 + r9);
                    *(r19 + r9) = r0;
                    [r8 release];
            }
            r21 = @selector(respondsToSelector:);
            r0 = NSClassFromString(@"FIRAAdExposureReporter");
            r22 = r0;
            if (objc_msgSend(r0, r21) != 0x0) {
                    r0 = [r22 sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adExposureReporter));
                    r8 = *(r19 + r9);
                    *(r19 + r9) = r0;
                    [r8 release];
            }
            r21 = @selector(respondsToSelector:);
            r0 = NSClassFromString(@"FIRAScreenViewReporter");
            r22 = r0;
            if (objc_msgSend(r0, r21) != 0x0) {
                    r0 = [r22 sharedInstance];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_screenViewReporter));
                    r8 = *(r19 + r9);
                    *(r19 + r9) = r0;
                    [r8 release];
            }
            asm { stlrb      w9, [x8] };
    }
    r0 = r19;
    return r0;
}

-(void *)initWithAPMFramework {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 startAppMeasurement];
            r0 = NSClassFromString(@"APMIdentifiers");
            r23 = r0;
            if ([r0 respondsToSelector:r2] != 0x0) {
                    r0 = [r23 sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_analyticsIdentifiers));
                    r8 = *(r19 + r9);
                    *(r19 + r9) = r0;
                    [r8 release];
            }
            r22 = @selector(respondsToSelector:);
            r0 = NSClassFromString(@"APMAnalytics");
            r23 = r0;
            if (objc_msgSend(r0, r22) != 0x0) {
                    r0 = [r23 sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_analytics));
                    r8 = *(r19 + r9);
                    *(r19 + r9) = r0;
                    [r8 release];
            }
            r22 = @selector(respondsToSelector:);
            r0 = NSClassFromString(@"APMAdExposureReporter");
            r23 = r0;
            if (objc_msgSend(r0, r22) != 0x0) {
                    r0 = [r23 sharedInstance];
                    r29 = r29;
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_adExposureReporter));
                    r8 = *(r19 + r9);
                    *(r19 + r9) = r0;
                    [r8 release];
            }
            r22 = @selector(respondsToSelector:);
            r0 = NSClassFromString(@"APMScreenViewReporter");
            r23 = r0;
            if (objc_msgSend(r0, r22) != 0x0) {
                    r0 = [r23 sharedInstance];
                    r0 = [r0 retain];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_screenViewReporter));
                    r8 = *(r19 + r9);
                    *(r19 + r9) = r0;
                    [r8 release];
            }
            if (r19->_analytics != 0x0) {
                    r20 = @selector(init);
                    [r19 updateNPABit];
                    r0 = [GADObserverCollection alloc];
                    r0 = objc_msgSend(r0, r20);
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
                    r8 = *(r19 + r21);
                    *(r19 + r21) = r0;
                    [r8 release];
                    objc_initWeak(&stack[-88], r19);
                    objc_copyWeak(&var_70 + 0x20, &stack[-88]);
                    [r21 addObserverForName:*0x100e9c6a0 object:0x0 queue:0x0 usingBlock:&var_70];
                    objc_destroyWeak(&var_70 + 0x20);
                    objc_destroyWeak(&stack[-88]);
            }
            asm { stlrb      w9, [x8] };
    }
    r0 = r19;
    return r0;
}

-(void)updateNPABit {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = NSClassFromString(@"APMAnalytics");
    r19 = r0;
    if (([r0 respondsToSelector:@selector(setUserPropertyString:forName:), r3] & 0x1) != 0x0) {
            r0 = [GADUserPreferences sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 NPA];
            r29 = r29;
            r21 = [r0 retain];
            [r22 release];
            if (r21 != 0x0) {
                    r0 = [NSNumber numberWithBool:[r21 boolValue] ^ 0x1];
                    r0 = [r0 retain];
                    r23 = [[r0 stringValue] retain];
                    [r19 setUserPropertyString:r23 forName:@"_ap"];
                    [r23 release];
                    [r0 release];
            }
            else {
                    [r19 setUserPropertyString:0x0 forName:@"_ap"];
            }
            [r21 release];
    }
    else {
            sub_1007ce06c(0x0, @"Cannot update APMAnalytics user property. Class: %@");
    }
    return;
}

-(bool)validateAnalytics {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_analyticsIdentifiers));
    if (([*(r19 + r21) respondsToSelector:r2] & 0x1) == 0x0) {
            r20 = @selector(respondsToSelector:);
            r0 = *(r19 + r21);
            r0 = objc_msgSend(r0, r20);
            if (r0 != 0x0) {
                    r20 = @selector(respondsToSelector:);
                    r0 = *(r19 + r21);
                    r0 = objc_msgSend(r0, r20);
                    if (r0 != 0x0) {
                            r20 = @selector(respondsToSelector:);
                            r0 = *(r19 + r21);
                            r0 = objc_msgSend(r0, r20);
                            if (r0 != 0x0) {
                                    r20 = @selector(respondsToSelector:);
                                    r0 = r19->_analytics;
                                    r0 = objc_msgSend(r0, r20, @selector(logInternalEventWithOrigin:name:parameters:), r3, r4);
                                    if (r0 != 0x0) {
                                            r20 = @selector(respondsToSelector:);
                                            r21 = sign_extend_64(*(int32_t *)ivar_offset(_adExposureReporter));
                                            if (objc_msgSend(*(r19 + r21), r20, @selector(beginAdUnitExposure:)) == 0x0 || ([*(r19 + r21) respondsToSelector:@selector(endAdUnitExposure:)] & 0x1) == 0x0) {
                                                    r0 = *(r19 + r21);
                                                    *(r19 + r21) = 0x0;
                                                    [r0 release];
                                            }
                                            r20 = @selector(respondsToSelector:);
                                            r21 = sign_extend_64(*(int32_t *)ivar_offset(_screenViewReporter));
                                            if ((objc_msgSend(*(r19 + r21), r20, @selector(setScreenName:screenClass:), r3) & 0x1) == 0x0) {
                                                    r0 = *(r19 + r21);
                                                    *(r19 + r21) = 0x0;
                                                    [r0 release];
                                            }
                                            r0 = 0x1;
                                    }
                            }
                    }
            }
    }
    else {
            r20 = @selector(respondsToSelector:);
            r0 = *(r19 + r21);
            r0 = objc_msgSend(r0, r20);
            if (r0 != 0x0) {
                    r20 = @selector(respondsToSelector:);
                    r0 = *(r19 + r21);
                    r0 = objc_msgSend(r0, r20);
                    if (r0 != 0x0) {
                            r20 = @selector(respondsToSelector:);
                            r0 = r19->_analytics;
                            r0 = objc_msgSend(r0, r20, @selector(logInternalEventWithOrigin:name:parameters:), r3, r4);
                            if (r0 != 0x0) {
                                    r20 = @selector(respondsToSelector:);
                                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_adExposureReporter));
                                    if (objc_msgSend(*(r19 + r21), r20, @selector(beginAdUnitExposure:)) == 0x0 || ([*(r19 + r21) respondsToSelector:@selector(endAdUnitExposure:)] & 0x1) == 0x0) {
                                            r0 = *(r19 + r21);
                                            *(r19 + r21) = 0x0;
                                            [r0 release];
                                    }
                                    r20 = @selector(respondsToSelector:);
                                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_screenViewReporter));
                                    if ((objc_msgSend(*(r19 + r21), r20, @selector(setScreenName:screenClass:), r3) & 0x1) == 0x0) {
                                            r0 = *(r19 + r21);
                                            *(r19 + r21) = 0x0;
                                            [r0 release];
                                    }
                                    r0 = 0x1;
                            }
                    }
            }
    }
    return r0;
}

-(void *)appInstanceID {
    r0 = self->_analyticsIdentifiers;
    r0 = [r0 appInstanceID];
    return r0;
}

-(void *)googleAppID {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_analyticsIdentifiers));
    r8 = [*(self + r21) respondsToSelector:@selector(analyticsAppID)];
    r0 = *(self + r21);
    if (r8 != 0x0) {
            r0 = [r0 analyticsAppID];
    }
    else {
            r0 = [r0 googleAppID];
    }
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)adEventID {
    r0 = self->_analyticsIdentifiers;
    r0 = [r0 adEventID];
    return r0;
}

-(void *)appIDOrigin {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_analyticsIdentifiers));
    if ([*(r19 + r21) respondsToSelector:r2] != 0x0) {
            r0 = *(r19 + r21);
            r0 = [r0 origin];
            r0 = [r0 retain];
    }
    else {
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void)logEventWithName:(void *)arg2 adEventID:(void *)arg3 parameters:(void *)arg4 {
    r31 = r31 - 0x80;
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
    r21 = [arg4 retain];
    if (r20 == 0x0 && r21 == 0x0) {
            sub_1007ce06c(0x0, @"Either ad event ID or parameters must be non-nil.");
    }
    else {
            r23 = [[NSMutableDictionary alloc] init];
            if ([r21 count] != 0x0) {
                    r24 = [r21 mutableCopy];
                    [r23 release];
                    r23 = r24;
            }
            if (r20 != 0x0) {
                    sub_100822058(r23, @"_aeid", r20);
            }
            if ([r19 isEqual:r2] != 0x0) {
                    sub_100822058(r23, @"_r", [[NSNumber numberWithInt:r2] retain]);
                    [r24 release];
            }
            var_48 = [r22 retain];
            var_40 = [r19 retain];
            [r23 retain];
            sub_100860a80();
            [r23 release];
            [var_40 release];
            [var_48 release];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)getScreenName:(void * *)arg2 screenClass:(void * *)arg3 {
    [self->_screenViewReporter getScreenName:arg2 screenClass:arg3];
    return;
}

-(void)setScreenName:(void *)arg2 screenClass:(void *)arg3 {
    r21 = [arg2 retain];
    [self->_screenViewReporter setScreenName:r21 screenClass:arg3];
    [r21 release];
    return;
}

-(void)beginAdUnitExposure:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0->_adExposureReporter beginAdUnitExposure:r2];
    }
    return;
}

-(void)endAdUnitExposure:(void *)arg2 {
    r0 = self;
    if (arg2 != 0x0) {
            [r0->_adExposureReporter endAdUnitExposure:r2];
    }
    return;
}

-(bool)analyticsEnabled {
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_analyticsEnabled));
    r8 = self + r8;
    asm { ldarb      w8, [x8] };
    r0 = r8 & 0x1;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_operationQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_screenViewReporter, 0x0);
    objc_storeStrong((int64_t *)&self->_analytics, 0x0);
    objc_storeStrong((int64_t *)&self->_analyticsIdentifiers, 0x0);
    objc_storeStrong((int64_t *)&self->_adExposureReporter, 0x0);
    return;
}

@end