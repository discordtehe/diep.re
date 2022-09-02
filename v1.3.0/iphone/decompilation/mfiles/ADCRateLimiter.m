@implementation ADCRateLimiter

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_zoneEvents));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_globalEvents));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableDictionary);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_rates));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void)addEventOfType:(unsigned long long)arg2 {
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
    r21 = arg2;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if ([r19 getLimitingRate:&var_40 eventType:r21] != 0x0) {
            r0 = [r19 pruneDatesOfType:r21 inZone:0x0];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    if ([r19 shouldLimitEvents:r20 ofType:r21 withRate:var_40] != 0x0) {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCRateLimiter addEventOfType:]" line:0x2e withFormat:@"Event of type [%d] will not be submitted because it is exceeding the rate limit for this event type"];
                    }
                    else {
                            r22 = r19->_globalEvents;
                            r21 = [[NSNumber numberWithUnsignedInteger:r21] retain];
                            r23 = [[NSDate date] retain];
                            r24 = [[r20 arrayByAddingObject:r23] retain];
                            [r22 setObject:r24 forKeyedSubscript:r21];
                            [r24 release];
                            [r23 release];
                            [r21 release];
                    }
            }
            [r20 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)addEventType:(unsigned long long)arg2 withRate:(union ?)arg3 {
    memcpy(&r3, &arg3, 0x8);
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
    r21 = arg2;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r20 = [[NSValue value:&var_60 withObjCType:"{?=qq}"] retain];
    r24 = r19->_rates;
    r25 = [[NSNumber numberWithUnsignedInteger:r21] retain];
    [r24 setObject:r20 forKeyedSubscript:r25];
    [r25 release];
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_globalEvents));
    r24 = *(r19 + r27);
    r25 = [[NSNumber numberWithUnsignedInteger:r21] retain];
    r0 = [r24 objectForKeyedSubscript:r25];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r25 release];
    if (r24 == 0x0) {
            r25 = *(r19 + r27);
            r21 = [[NSNumber numberWithUnsignedInteger:r21] retain];
            r23 = [NSArray new];
            [r25 setObject:r23 forKeyedSubscript:r21];
            [r23 release];
            [r21 release];
    }
    [r24 release];
    [r20 release];
    objc_sync_exit(r19);
    [r19 release];
    return;
}

-(void)addEventOfType:(unsigned long long)arg2 inZone:(void *)arg3 {
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
    r29 = &saved_fp;
    r22 = arg2;
    r20 = [arg3 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    if ([r19 getLimitingRate:&var_50 eventType:r22] != 0x0) {
            r0 = [r19 pruneDatesOfType:r22 inZone:r20];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    if ([r19 shouldLimitEvents:r21 ofType:r22 withRate:var_50] != 0x0) {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCRateLimiter addEventOfType:inZone:]" line:0x4d withFormat:@"Event of type [%d] will not be submitted because it is exceeding the rate limit for this event type"];
                    }
                    else {
                            r23 = [[r19->_zoneEvents objectForKeyedSubscript:r20] retain];
                            r22 = [[NSNumber numberWithUnsignedInteger:r22] retain];
                            r24 = [[NSDate date] retain];
                            r25 = [[r21 arrayByAddingObject:r24] retain];
                            [r23 setObject:r25 forKeyedSubscript:r22];
                            [r25 release];
                            [r24 release];
                            [r22 release];
                            [r23 release];
                    }
            }
            [r21 release];
    }
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    return;
}

-(void)addEventType:(unsigned long long)arg2 withRate:(union ?)arg3 inZone:(void *)arg4 {
    memcpy(&r3, &arg3, 0x8);
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
    r22 = arg2;
    [r5 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r20 = [[NSValue value:&var_60 withObjCType:"{?=qq}"] retain];
    r25 = r19->_rates;
    r21 = [[NSNumber numberWithUnsignedInteger:r22] retain];
    [r25 setObject:r20 forKeyedSubscript:r21];
    var_70 = r20;
    [r21 release];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_zoneEvents));
    var_68 = r27;
    r27 = [[*(r19 + r20) objectForKeyedSubscript:r27] retain];
    r28 = [[NSNumber numberWithUnsignedInteger:r22] retain];
    r0 = [r27 objectForKeyedSubscript:r28];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [r28 release];
    [r27 release];
    if (r25 == 0x0) {
            r28 = *(r19 + r20);
            r21 = [NSMutableDictionary new];
            [r28 setObject:r21 forKeyedSubscript:var_68];
            [r21 release];
            r26 = [[*(r19 + r20) objectForKeyedSubscript:var_68] retain];
            r22 = [[NSNumber numberWithUnsignedInteger:r22] retain];
            r21 = [NSArray new];
            [r26 setObject:r21 forKeyedSubscript:r22];
            [r21 release];
            [r22 release];
            [r26 release];
    }
    [r25 release];
    [var_70 release];
    objc_sync_exit(r19);
    [r19 release];
    [var_68 release];
    return;
}

-(bool)shouldLimitEventType:(unsigned long long)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r19 pruneDatesOfType:r21 inZone:0x0];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r23 = r19->_rates;
            r22 = [[NSNumber numberWithUnsignedInteger:r21] retain];
            r0 = [r23 objectForKeyedSubscript:r22];
            r0 = [r0 retain];
            [r0 getValue:&var_40];
            [r0 release];
            [r22 release];
            r21 = [r19 shouldLimitEvents:r20 ofType:r21 withRate:var_40];
    }
    else {
            r22 = r19->_globalEvents;
            r21 = [[NSNumber numberWithUnsignedInteger:r21] retain];
            r23 = [NSMutableArray new];
            [r22 setObject:r23 forKeyedSubscript:r21];
            [r23 release];
            [r21 release];
            r21 = 0x0;
    }
    [r20 release];
    objc_sync_exit(r19);
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)pruneDatesOfType:(unsigned long long)arg2 inZone:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self getEventsForType:r2 inZone:arg3];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if ([r20 getLimitingRate:&var_30 eventType:arg2] != 0x0) {
            r20 = [[r20 pruneDatesInArray:r19 withRate:var_30] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)shouldLimitEventType:(unsigned long long)arg2 inZone:(void *)arg3 {
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
    r22 = arg2;
    r20 = [arg3 retain];
    r0 = [self retain];
    r19 = r0;
    objc_sync_enter(r0);
    r0 = [r19 pruneDatesOfType:r22 inZone:r20];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r24 = r19->_rates;
            r23 = [[NSNumber numberWithUnsignedInteger:r22] retain];
            r0 = [r24 objectForKeyedSubscript:r23];
            r0 = [r0 retain];
            [r0 getValue:&var_60];
            [r0 release];
            [r23 release];
            r22 = [r19 shouldLimitEvents:r21 ofType:r22 withRate:var_60];
    }
    else {
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_zoneEvents));
            r25 = *(r19 + r27);
            r26 = [NSMutableDictionary new];
            [r25 setObject:r26 forKeyedSubscript:r20];
            [r26 release];
            r25 = [[*(r19 + r27) objectForKeyedSubscript:r20] retain];
            r22 = [[NSNumber numberWithUnsignedInteger:r22] retain];
            r23 = [NSArray new];
            [r25 setObject:r23 forKeyedSubscript:r22];
            [r23 release];
            [r22 release];
            [r25 release];
            r22 = 0x0;
    }
    [r21 release];
    objc_sync_exit(r19);
    [r19 release];
    [r20 release];
    r0 = r22;
    return r0;
}

-(void *)pruneDatesInArray:(void *)arg2 withRate:(union ?)arg3 {
    memcpy(&r3, &arg3, 0x8);
    r22 = [arg2 retain];
    r20 = [[NSPredicate predicateWithBlock:&var_50] retain];
    r19 = [[arg2 filteredArrayUsingPredicate:r20] retain];
    [r22 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(unsigned long long)getEventCountForEventType:(unsigned long long)arg2 inZone:(void *)arg3 {
    r0 = [self getEventsForType:arg2 inZone:arg3];
    r0 = [r0 retain];
    r20 = [r0 count];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)shouldLimitEvents:(void *)arg2 ofType:(unsigned long long)arg3 withRate:(union ?)arg4 {
    memcpy(&r4, &arg4, 0x8);
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 count];
    if (r0 >= r4) {
            if (CPU_FLAGS & NB) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)getEventsForType:(unsigned long long)arg2 inZone:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r22 = self;
    r19 = [arg3 retain];
    if (r19 == 0x0) goto loc_100251a00;

loc_100251964:
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_zoneEvents));
    r0 = *(r22 + r24);
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100251a5c;

loc_100251998:
    r22 = [[*(r22 + r24) objectForKeyedSubscript:r2] retain];
    r23 = [[NSNumber numberWithUnsignedInteger:r20] retain];
    r20 = [[r22 objectForKeyedSubscript:r2] retain];
    [r23 release];
    goto loc_100251a50;

loc_100251a50:
    [r22 release];
    goto loc_100251a60;

loc_100251a60:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_100251a5c:
    r20 = 0x0;
    goto loc_100251a60;

loc_100251a00:
    r21 = r22->_globalEvents;
    r22 = [[NSNumber numberWithUnsignedInteger:r20] retain];
    r20 = [[r21 objectForKeyedSubscript:r22] retain];
    goto loc_100251a50;
}

-(bool)getLimitingRate:(union ? *)arg2 eventType:(unsigned long long)arg3 {
    r0 = self;
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r20 = arg2;
    if (r20 != 0x0) {
            r0 = [r0 retain];
            r19 = r0;
            objc_sync_enter(r0);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_rates));
            r21 = *(r19 + r26);
            r25 = [[NSNumber numberWithUnsignedInteger:r22] retain];
            r0 = [r21 objectForKeyedSubscript:r2];
            r29 = r29;
            r21 = [r0 retain];
            [r25 release];
            if (r21 != 0x0) {
                    r25 = *(r19 + r26);
                    r22 = [[NSNumber numberWithUnsignedInteger:r22] retain];
                    r0 = [r25 objectForKeyedSubscript:r2];
                    r0 = [r0 retain];
                    [r0 getValue:r20];
                    [r0 release];
                    [r22 release];
                    r20 = 0x1;
            }
            else {
                    r20 = 0x0;
            }
            [r21 release];
            objc_sync_exit(r19);
            [r19 release];
            r0 = r20;
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rates, 0x0);
    objc_storeStrong((int64_t *)&self->_globalEvents, 0x0);
    objc_storeStrong((int64_t *)&self->_zoneEvents, 0x0);
    return;
}

@end