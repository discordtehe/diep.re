@implementation ISRewardedVideoEventsEngine

+(void *)sharedInstance {
    sub_1006df814(0x1011dabe8, 0x100e8ba60);
    r0 = *0x1011dabe0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setServerEventsURL:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[self storage] retain];
    r19 = [[arg2 absoluteString] retain];
    [r22 release];
    [r20 saveValue:r19 forKey:@"SERVER_EVENTS_URL_KEY_RV"];
    [r19 release];
    [r20 release];
    return;
}

-(void *)serverEventsURL {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self storage];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 getValueForKey:@"SERVER_EVENTS_URL_KEY_RV"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r19 release];
    if (r20 == 0x0) {
    }
    r19 = [[NSURL URLWithString:r2] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setServerEventsType:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 saveValue:arg2 forKey:@"SERV_TYPE_RV"];
    [r22 release];
    [r0 release];
    return;
}

-(void *)serverEventsType {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self storage];
    r0 = [r0 retain];
    r20 = [[r0 getValueForKey:@"SERV_TYPE_RV"] retain];
    r0 = [r0 release];
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r20;
            }
            else {
                    r0 = @"outcome";
            }
    }
    r19 = [r0 retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)initConnectivityEventsSet {
    r19 = [@(0x3) retain];
    r22 = [@(0x7) retain];
    r24 = [@(0x13) retain];
    r23 = [@(0x77) retain];
    r21 = [[NSSet setWithObjects:r19] retain];
    [self setConnectivitySensitiveEventsSet:r21];
    [r21 release];
    [r23 release];
    [r24 release];
    [r22 release];
    [r19 release];
    return;
}

-(void *)init {
    r21 = [[ISFormatterFabric getFormatterFromType:@"outcome"] retain];
    r0 = [[&var_30 super] initWithIdentifier:@"events" formatter:r21 server:@"outcome"];
    [r21 release];
    r0 = r0;
    return r0;
}

-(bool)shouldBackupEvents:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self localEvents];
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 count] >= [r19 backupThreshold]) {
            if (CPU_FLAGS & NB) {
                    r19 = 0x1;
            }
    }
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)shouldSendEvents:(void *)arg2 {
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
    r21 = self;
    r19 = [arg2 retain];
    var_54 = [r21 gotResponse];
    r22 = [r21 totalEvents];
    r23 = [r21 maxNumberOfEvents];
    r0 = [r19 eventId];
    r0 = [r0 retain];
    r24 = [r0 longValue];
    [r0 release];
    r0 = [r19 eventId];
    r0 = [r0 retain];
    r25 = [r0 longValue];
    [r0 release];
    r0 = [r19 eventId];
    r0 = [r0 retain];
    r26 = [r0 longValue];
    [r0 release];
    r0 = [r19 eventId];
    r0 = [r0 retain];
    r28 = [r0 longValue];
    [r0 release];
    if (([r21 hasTopPriortyEvent] & 0x1) != 0x0) {
            r2 = 0x1;
    }
    else {
            r2 = [r21 isTopPriorty:r19];
    }
    [r21 setHasTopPriortyEvent:r2];
    if (r26 != 0x5 && r25 != 0x6 && r22 < r23 && r24 != 0xa) {
            if (r28 != 0x131) {
                    if ([r21 hasTopPriortyEvent] != 0x0) {
                            r20 = var_54;
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r20 = var_54;
            }
    }
    else {
            r20 = var_54;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)increaseSessionDepthIfNeeded:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 eventId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 longValue];
    [r0 release];
    if (r23 != 0x6) goto loc_1006d3324;

loc_1006d32f4:
    r0 = [ISSessionDepthManager sharedManager];
    r0 = [r0 retain];
    r20 = r0;
    goto loc_1006d3384;

loc_1006d3384:
    [r0 increaseSessionDepth:r2];
    [r20 release];
    goto loc_1006d3390;

loc_1006d3390:
    [r19 release];
    return 0x0;

loc_1006d3324:
    r0 = [r19 eventId];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 longValue];
    [r0 release];
    if (r21 != 0x131) goto loc_1006d3390;

loc_1006d3358:
    r0 = [ISSessionDepthManager sharedManager];
    r0 = [r0 retain];
    r20 = r0;
    goto loc_1006d3384;
}

-(unsigned long long)getSessionDepth:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [ISSessionDepthManager sharedManager];
    r0 = [r0 retain];
    r22 = [r0 getSessionDepth:0x1];
    [r0 release];
    r0 = [r19 eventId];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 longValue] != 0xf) goto loc_1006d3460;

loc_1006d3454:
    [r23 release];
    goto loc_1006d34cc;

loc_1006d34cc:
    r0 = [ISSessionDepthManager sharedManager];
    r0 = [r0 retain];
    r22 = [r0 getSessionDepth:0x0];
    r0 = r0;
    goto loc_1006d3508;

loc_1006d3508:
    [r0 release];
    goto loc_1006d350c;

loc_1006d350c:
    [r19 release];
    r0 = r22;
    return r0;

loc_1006d3460:
    r0 = [r19 eventId];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if ([r0 longValue] < 0x12c) goto loc_1006d34fc;

loc_1006d3488:
    r0 = [r19 eventId];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 longValue];
    [r0 release];
    [r26 release];
    [r23 release];
    if (r25 > 0x18f) goto loc_1006d350c;
    goto loc_1006d34cc;

loc_1006d34fc:
    [r26 release];
    r0 = r23;
    goto loc_1006d3508;
}

-(void *)generateEventBatchData {
    r0 = [[&var_30 super] generateEventBatchData];
    r20 = [r0 retain];
    r21 = [@(0x3) retain];
    [[&var_40 super] addObject:r21 forKey:@"adUnit" inDic:r20];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)isTopPriorty:(void *)arg2 {
    r0 = [[&var_10 super] isTopPriorty:arg2];
    return r0;
}

@end