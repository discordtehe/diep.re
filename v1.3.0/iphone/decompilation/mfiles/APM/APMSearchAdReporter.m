@implementation APMSearchAdReporter

-(void *)initWithWorkerQueue:(void *)arg2 persistedConfig:(void *)arg3 {
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
    r22 = arg3;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [r22 retain];
    if (r19 == 0x0) goto loc_1001717ec;

loc_100171770:
    if (r20 == 0x0) goto loc_100171828;

loc_100171774:
    if ([r20 searchAdRetryCount] > 0x9) goto loc_100171870;

loc_10017178c:
    r0 = [r20 searchAdCampaignValue];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1001718a8;

loc_1001717b0:
    r22 = [[APMMeasurement monitor] retain];
    goto loc_100171860;

loc_100171860:
    [r22 logWithLevel:r2 messageCode:r3 message:r4];
    [r22 release];
    goto loc_100171870;

loc_100171870:
    r22 = 0x0;
    goto loc_100171874;

loc_100171874:
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;

loc_1001718a8:
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            r0 = [APMAlarm alloc];
            r0 = [r0 initWithDispatchQueue:r19 name:@"Search Ad campaign report alarm"];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_searchAdReporterAlarm));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            objc_storeStrong((int64_t *)&r21->_persistedConfig, r22);
    }
    r21 = [r21 retain];
    r22 = r21;
    goto loc_100171874;

loc_100171828:
    r22 = [[APMMeasurement monitor] retain];
    goto loc_100171860;

loc_1001717ec:
    r22 = [[APMMeasurement monitor] retain];
    goto loc_100171860;
}

-(void)dealloc {
    [self cancelScheduling];
    [[&var_20 super] dealloc];
    return;
}

-(void)start {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adClientInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r19 scheduleSearchAdReport];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x7 messageCode:0x7d03 message:@"iAd framework is not linked. Search Ad Attribution Reporter is disabled."];
            [r0 release];
    }
    return;
}

-(void)maybeLogIAdCampaignEvent {
    var_20 = d9;
    stack[-40] = d8;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self adClientInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            [r0 release];
            [r19->_persistedConfig setLastSearchAdLookUpTimestamp:r2];
            [r19 lookUpAdConversionDetails];
            [r19 scheduleSearchAdReport];
    }
    return;
}

-(void)scheduleSearchAdReport {
    r31 = r31 - 0x80;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_searchAdReporterAlarm));
    if (*(r19 + r22) == 0x0) goto loc_100171ba4;

loc_100171b0c:
    if (([r19 isSearchAdReporterEnabled] & 0x1) == 0x0) goto loc_100171c04;

loc_100171b20:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    r0 = *(r19 + r23);
    r0 = [r0 searchAdCampaignValue];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100171c2c;

loc_100171b4c:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100171b84;

loc_100171b84:
    [r20 logWithLevel:r2 messageCode:r3 message:r4];
    [r20 release];
    r1 = @selector(cancelScheduling);
    r0 = r19;
    goto loc_100171c10;

loc_100171c10:
    objc_msgSend(r0, r1);
    return;

loc_100171c2c:
    r0 = *(r19 + r22);
    r0 = [r0 scheduledTimestamp];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100171c8c;

loc_100171c50:
    r19 = [[APMMeasurement monitor] retain];
    goto loc_100171bdc;

loc_100171bdc:
    [r19 logWithLevel:r2 messageCode:r3 message:r4];
    [r19 release];
    return;

loc_100171c8c:
    r21 = [*(r19 + r23) searchAdRetryCount];
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r20 = [r0 retain];
    if (r21 < 0xa) goto loc_100171ce4;
    goto loc_100171b84;

loc_100171ce4:
    [r20 logWithLevel:r2 messageCode:r3 message:r4];
    [r20 release];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    [*(r19 + r23) lastSearchAdLookUpTimestamp];
    objc_initWeak(&stack[-88], r19);
    objc_copyWeak(&var_70 + 0x20, &stack[-88]);
    [r19 runAfterDelay:&var_70 withBlock:0x7d06];
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&stack[-88]);
    return;

loc_100171c04:
    r0 = *(r19 + r22);
    r1 = @selector(cancel);
    goto loc_100171c10;

loc_100171ba4:
    r19 = [[APMMeasurement monitor] retain];
    goto loc_100171bdc;
}

-(void *)adClientInstance {
    if (*qword_1011d1fa8 != -0x1) {
            dispatch_once(0x1011d1fa8, 0x100e6e6a0);
    }
    r0 = *0x1011d1fb0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)cancelScheduling {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_searchAdReporterAlarm));
    [*(self + r20) cancel];
    r0 = *(self + r20);
    *(self + r20) = 0x0;
    [r0 release];
    return;
}

-(void)logCampaignEventWithSearchAdCampaign:(bool)arg2 campaign:(void *)arg3 term:(void *)arg4 {
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
    r22 = arg2;
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r0 = [self retain];
    r21 = r0;
    objc_sync_enter(r0);
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_persistedConfig));
    r0 = *(r21 + r25);
    r0 = [r0 searchAdCampaignValue];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100171ff8;

loc_100171fa4:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x5 messageCode:0x7d08 message:@"Search Ad Campaign is already tracked"];
    [r0 release];
    objc_sync_exit(r21);
    r0 = r21;
    goto loc_1001721c8;

loc_1001721c8:
    [r0 release];
    goto loc_1001721cc;

loc_1001721cc:
    [r20 release];
    [r19 release];
    return;

loc_100171ff8:
    r0 = [NSNumber numberWithBool:r22];
    r29 = r29;
    r23 = [r0 retain];
    [*(r21 + r25) setSearchAdCampaignValue:r23];
    [r23 release];
    objc_sync_exit(r21);
    [r21 release];
    if (r22 == 0x0) goto loc_1001721cc;

loc_10017204c:
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 init];
    r22 = r0;
    [r0 setObject:@"Apple" forKeyedSubscript:@"source"];
    [r22 setObject:@"search" forKeyedSubscript:@"medium"];
    if ([r19 length] != 0x0) {
            [r22 setObject:r19 forKeyedSubscript:@"campaign"];
    }
    if ([r20 length] != 0x0) {
            [r22 setObject:r20 forKeyedSubscript:@"term"];
    }
    r0 = *(r21 + r25);
    r0 = [r0 firstOpenTimestampMilliseconds];
    if (r0 >= 0x2) {
            r21 = [[NSNumber numberWithLongLong:r0 - 0x1] retain];
            [r22 setObject:r21 forKeyedSubscript:@"click_timestamp"];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            r21 = r0;
            [r0 logWithLevel:0x5 messageCode:0x7d09 message:@"Search Ad Campaign does not have click_timestamp."];
    }
    [r21 release];
    [APMAnalytics logInternalEventWithOrigin:@"auto" name:@"_cmp" parameters:r22];
    r0 = r22;
    goto loc_1001721c8;
}

-(void)lookUpAdConversionDetails {
    r31 = r31 - 0xd0;
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
    r19 = self;
    objc_initWeak(&saved_fp - 0x48, r19);
    r20 = r19->_persistedConfig;
    [r20 setSearchAdRetryCount:[r20 searchAdRetryCount] + 0x1];
    r0 = [r19 adClientInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(requestAttributionDetailsWithBlock:)];
    [r0 release];
    if (r24 == 0x0) goto loc_100172370;

loc_1001722b0:
    r23 = &var_70 + 0x20;
    objc_copyWeak(r23, r29 - 0x48);
    r0 = objc_retainBlock(&var_70);
    r24 = r0;
    r0 = [r19 adClientInstance];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 methodForSelector:@selector(requestAttributionDetailsWithBlock:)];
    [r0 release];
    if (r25 == 0x0) goto loc_100172360;

loc_100172338:
    r0 = [r19 adClientInstance];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    (r25)(r0, @selector(requestAttributionDetailsWithBlock:), r24);
    goto loc_100172458;

loc_100172458:
    [r19 release];
    [r24 release];
    r0 = r23;
    goto loc_10017257c;

loc_10017257c:
    objc_destroyWeak(r0);
    goto loc_100172580;

loc_100172580:
    objc_destroyWeak(r29 - 0x48);
    return;

loc_100172360:
    [r24 release];
    objc_destroyWeak(r23);
    goto loc_100172370;

loc_100172370:
    r21 = @selector(respondsToSelector:);
    r0 = [r19 adClientInstance];
    r29 = r29;
    r0 = [r0 retain];
    r24 = objc_msgSend(r0, r21, @selector(lookupAdConversionDetails:));
    [r0 release];
    if (r24 == 0x0) goto loc_100172480;

loc_1001723ac:
    r23 = &var_98 + 0x20;
    objc_copyWeak(r23, r29 - 0x48);
    r0 = objc_retainBlock(&var_98);
    r24 = r0;
    r0 = [r19 adClientInstance];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 methodForSelector:r22];
    [r0 release];
    if (r25 == 0x0) goto loc_100172470;

loc_100172434:
    r0 = [r19 adClientInstance];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    (r25)(r0, @selector(lookupAdConversionDetails:), r24);
    goto loc_100172458;

loc_100172470:
    [r24 release];
    objc_destroyWeak(r23);
    goto loc_100172480;

loc_100172480:
    r21 = @selector(respondsToSelector:);
    r0 = [r19 adClientInstance];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r21, @selector(determineAppInstallationAttributionWithCompletionHandler:));
    [r0 release];
    if (r21 == 0x0) goto loc_100172580;

loc_1001724bc:
    r21 = &var_C0 + 0x20;
    objc_copyWeak(r21, r29 - 0x48);
    r0 = objc_retainBlock(&var_C0);
    r23 = r0;
    r0 = [r19 adClientInstance];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 methodForSelector:r22];
    [r0 release];
    if (r24 != 0x0) {
            r0 = [r19 adClientInstance];
            r29 = r29;
            r0 = [r0 retain];
            (r24)(r0, @selector(determineAppInstallationAttributionWithCompletionHandler:), r23);
            [r19 release];
    }
    [r23 release];
    r0 = r21;
    goto loc_10017257c;
}

-(bool)isSearchAdReporterEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_searchAdReporterEnabled;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_persistedConfig, 0x0);
    objc_storeStrong((int64_t *)&self->_searchAdReporterAlarm, 0x0);
    return;
}

-(void)setSearchAdReporterEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_searchAdReporterEnabled = arg2;
    return;
}

@end