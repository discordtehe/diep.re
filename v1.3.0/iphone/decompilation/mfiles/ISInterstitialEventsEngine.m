@implementation ISInterstitialEventsEngine

+(void *)sharedInstance {
    sub_1006df814(0x1011dac90, 0x100e8d278);
    r0 = *0x1011dac88;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)setServerEventsURL:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[self storage] retain];
    r19 = [[arg2 absoluteString] retain];
    [r22 release];
    [r20 saveValue:r19 forKey:@"SERVER_EVENTS_URL_KEY_IS"];
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
    r0 = [r0 getValueForKey:@"SERVER_EVENTS_URL_KEY_IS"];
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

-(void)initConnectivityEventsSet {
    r21 = [@(0x16) retain];
    r20 = [[NSSet setWithObjects:r21] retain];
    [self setConnectivitySensitiveEventsSet:r20];
    [r20 release];
    [r21 release];
    return;
}

-(void)setServerEventsType:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [self storage];
    r0 = [r0 retain];
    [r0 saveValue:arg2 forKey:@"SERV_TYPE_IS"];
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
    r20 = [[r0 getValueForKey:@"SERV_TYPE_IS"] retain];
    r0 = [r0 release];
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r20;
            }
            else {
                    r0 = @"ironbeast";
            }
    }
    r19 = [r0 retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)init {
    r21 = [[ISFormatterFabric getFormatterFromType:@"ironbeast"] retain];
    r0 = [[&var_30 super] initWithIdentifier:@"InterstitialEvents" formatter:r21 server:@"ironbeast"];
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
    if (r23 != 0x1a) goto loc_1006fcc88;

loc_1006fcc58:
    r20 = [[ISSessionDepthManager sharedManager] retain];
    goto loc_1006fcce8;

loc_1006fcce8:
    [r20 increaseSessionDepth:r2];
    [r20 release];
    goto loc_1006fccf8;

loc_1006fccf8:
    [r19 release];
    return 0x0;

loc_1006fcc88:
    r0 = [r19 eventId];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 longValue];
    [r0 release];
    if (r21 != 0xce9) goto loc_1006fccf8;

loc_1006fccbc:
    r20 = [[ISSessionDepthManager sharedManager] retain];
    goto loc_1006fcce8;
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
    r20 = [r21 gotResponse];
    r0 = [r19 eventId];
    r0 = [r0 retain];
    var_58 = [r0 integerValue];
    [r0 release];
    r0 = [r19 eventId];
    r0 = [r0 retain];
    r23 = [r0 integerValue];
    [r0 release];
    r0 = [r19 eventId];
    r0 = [r0 retain];
    r26 = [r0 integerValue];
    [r0 release];
    r0 = [r19 eventId];
    r0 = [r0 retain];
    r28 = [r0 integerValue];
    [r0 release];
    r27 = [r21 totalEvents];
    r22 = [r21 maxNumberOfEvents];
    r0 = [r19 eventId];
    r0 = [r0 retain];
    r25 = [r0 integerValue];
    [r0 release];
    if (([r21 hasTopPriortyEvent] & 0x1) != 0x0) {
            r2 = 0x1;
    }
    else {
            r2 = [r21 isTopPriorty:r19];
    }
    [r21 setHasTopPriortyEvent:r2];
    if (r27 < r22 && r23 != 0x19 && var_58 != 0x1a && r28 != 0xbc7 && r26 != 0xbbd) {
            if (r25 != 0xe) {
                    if ([r21 hasTopPriortyEvent] == 0x0) {
                            r20 = 0x0;
                    }
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(unsigned long long)getSessionDepth:(void *)arg2 {
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
    r20 = r0;
    if ([r0 integerValue] >= 0xbb8) {
            r0 = [r19 eventId];
            r29 = r29;
            r0 = [r0 retain];
            r23 = r0;
            if ([r0 integerValue] < 0xfa0) {
                    asm { cinc       x21, x8, lt };
            }
            r21 = @selector(eventId);
            [r23 release];
    }
    else {
            r21 = 0x2;
    }
    [r20 release];
    r0 = [ISSessionDepthManager sharedManager];
    r0 = [r0 retain];
    r21 = [r0 getSessionDepth:r21];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)generateEventBatchData {
    r0 = [[&var_30 super] generateEventBatchData];
    r20 = [r0 retain];
    r21 = [@(0x2) retain];
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