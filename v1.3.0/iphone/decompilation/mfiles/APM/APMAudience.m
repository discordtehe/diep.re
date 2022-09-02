@implementation APMAudience

-(void *)initWithDatabase:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_database, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(bool)evaluateFiltersForUserProperty:(void *)arg2 {
    r0 = [self evaluateFiltersForUserProperty:arg2 cachedSequenceEvaluationTimestamps:0x0];
    return r0;
}

-(bool)evaluateFiltersForNanoUserProperty:(void *)arg2 cachedSequenceEvaluationTimestamps:(void *)arg3 {
    var_50 = d9;
    stack[-88] = d8;
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
    r21 = self;
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [r20 retain];
    r20 = r0;
    if (sub_1001a7578(r0, 0x2) == 0x0) goto loc_100142af8;

loc_100142aa8:
    r0 = sub_1001a7b3c(r20, 0x2);
    r29 = r29;
    r24 = [r0 retain];
    r23 = [[APMValue alloc] initWithString:r24];
    [r24 release];
    goto loc_100142b90;

loc_100142b90:
    r0 = sub_1001a7b3c(r20, 0x1);
    r29 = r29;
    [r0 retain];
    sub_1001a78e8(r20, 0x0);
    r0 = [APMUserAttribute alloc];
    asm { scvtf      d0, x25 };
    asm { fdiv       d0, d0, d1 };
    r22 = [r0 initWithOrigin:@"" name:r24 value:r23 lastSetTimestamp:r5];
    [r24 release];
    [r23 release];
    goto loc_100142c08;

loc_100142c08:
    [r20 release];
    if (r22 != 0x0) {
            r21 = [r21 evaluateFiltersForUserProperty:r22 cachedSequenceEvaluationTimestamps:r19];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x1797 message:@"Could not convert user property from nano format."];
            [r0 release];
            r21 = 0x0;
    }
    [r22 release];
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_100142af8:
    if (sub_1001a7578(r20, 0x5) == 0x0) goto loc_100142b44;

loc_100142b08:
    sub_1001a7a10(r20, 0x5);
    r0 = [APMValue alloc];
    r0 = [r0 initWithDouble:r2];
    goto loc_100142b8c;

loc_100142b8c:
    r23 = r0;
    goto loc_100142b90;

loc_100142b44:
    if (sub_1001a7578(r20, 0x3) == 0x0) goto loc_100142cb4;

loc_100142b54:
    r23 = sub_1001a78e8(r20, 0x3);
    r0 = [APMValue alloc];
    r0 = [r0 initWithInt64:r23];
    goto loc_100142b8c;

loc_100142cb4:
    r22 = 0x0;
    goto loc_100142c08;
}

-(bool)evaluateFiltersForEvent:(void *)arg2 eventAggregates:(void *)arg3 cachedSequenceEvaluationTimestamps:(void *)arg4 {
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
    r27 = self;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r26 = [arg4 retain];
    r0 = [r19 parameters];
    r0 = [r0 retain];
    r28 = [[r0 objectForKeyedSubscript:@"_eid"] retain];
    [r0 release];
    r25 = [[r19 name] retain];
    r0 = [r19 parameters];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r22 = [r22 retain];
    if (r28 == 0x0) goto loc_10013f6c8;

loc_10013f59c:
    var_98 = r25;
    var_90 = r21;
    var_A0 = r22;
    r0 = [r19 name];
    r0 = [r0 retain];
    r22 = [r0 isEqual:@"_ep"];
    [r0 release];
    var_A8 = r28;
    r28 = [r28 int64Value];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    var_B0 = r27;
    r0 = *(r27 + r21);
    r0 = [r0 mainEventAndChildCountPairWithEventID:r28 error:r29 - 0x58];
    r29 = r29;
    r27 = [r0 retain];
    r0 = [0x0 retain];
    var_88 = r27;
    if (r27 != 0x0 || r0 == 0x0) goto loc_10013f704;

loc_10013f640:
    r27 = r0;
    r20 = [[APMMeasurement monitor] retain];
    r25 = var_98;
    r22 = [sub_100197c2c() retain];
    [r20 logWithLevel:0x1 messageCode:0x178a message:@"Cannot query for the main event for complex event's audience evaluation. Event name, error" context:r22 context:r27];
    [r22 release];
    [r20 release];
    r28 = var_A8;
    r22 = var_A0;
    r20 = r22;
    goto loc_10013f6c0;

loc_10013f6c0:
    r23 = 0x0;
    r24 = var_88;
    goto loc_100140010;

loc_100140010:
    [r24 release];
    [r27 release];
    r21 = var_90;
    goto loc_100140024;

loc_100140024:
    [r20 release];
    [r21 release];
    [r25 release];
    [r28 release];
    [r26 release];
    [r22 release];
    [r19 release];
    r0 = r23;
    return r0;

loc_10013f704:
    r27 = r0;
    var_B8 = r26;
    r0 = [r19 parameters];
    r29 = r29;
    r26 = [r0 retain];
    if ((r22 & 0x1) == 0x0) goto loc_10013f85c;

loc_10013f728:
    r22 = [[r26 objectForKeyedSubscript:@"_en"] retain];
    [r26 release];
    r0 = [r22 stringValue];
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 length];
    var_C8 = r22;
    var_C0 = r26;
    if (r0 == 0x0) goto loc_10013fa44;

loc_10013f780:
    r24 = var_88;
    r0 = [r24 count];
    if (r27 != 0x0 || r0 != 0x0) goto loc_10013fa9c;

loc_10013f79c:
    r22 = [[APMMeasurement monitor] retain];
    r0 = sub_100197c2c();
    r29 = r29;
    r23 = [r0 retain];
    [r22 logWithLevel:0x4 messageCode:0x178f message:@"Cannot evaluate the audience for an extra parameter event. Complex event's main event pair doesn't exist in the database." context:r23];
    [r23 release];
    [r22 release];
    r22 = [*(var_B0 + r21) deleteComplexEventForAudienceEvaluationWithEventID:r28 error:&var_68];
    r24 = [var_68 retain];
    [r27 release];
    if ((r22 & 0x1) != 0x0) {
            r22 = var_A0;
            r20 = r22;
            r27 = r24;
            r23 = 0x1;
    }
    else {
            r20 = [[APMMeasurement monitor] retain];
            r22 = [sub_100197c2c() retain];
            [r20 logWithLevel:0x1 messageCode:0x1790 message:@"Cannot delete complex event's main event from the database. Event name, error" context:r22 context:r24];
            [r22 release];
            [r20 release];
            r23 = 0x0;
            r22 = var_A0;
            r20 = r22;
            r27 = r24;
    }
    goto loc_10013fcd4;

loc_10013fcd4:
    r21 = 0x1;
    r26 = var_B8;
    r28 = var_A8;
    r25 = var_98;
    r24 = var_88;
    goto loc_10013ffc8;

loc_10013ffc8:
    [var_C0 release];
    [var_C8 release];
    if (r21 == 0x0) {
            [r19 timestamp];
            r23 = [var_B0 evaluateFiltersForEventName:r25 eventParameters:var_90 eventAggregates:r20 eventTimestamp:r26 cachedSequenceEvaluationTimestamps:r6];
    }
    goto loc_100140010;

loc_10013fa9c:
    r0 = [r24 firstObject];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_10013fce8;

loc_10013fabc:
    r0 = [r24 objectAtIndexedSubscript:0x1];
    r29 = r29;
    r25 = [r0 retain];
    [NSNumber class];
    r0 = [r25 isKindOfClass:r2];
    r26 = var_B8;
    r22 = var_98;
    if ((r0 & 0x1) == 0x0) goto loc_10013fd68;

loc_10013fb10:
    r0 = [r23 parameters];
    r0 = [r0 retain];
    r24 = [r0 mutableCopy];
    [r0 release];
    r0 = [r19 parameters];
    r29 = r29;
    r20 = [r0 retain];
    var_D0 = r24;
    [r24 addEntriesFromDictionary:r20];
    [r20 release];
    [var_90 release];
    var_90 = r25;
    r8 = [r25 integerValue];
    r0 = *(var_B0 + r21);
    r3 = r8 - 0x1;
    if (r3 > 0x0) goto loc_10013fdf4;

loc_10013fba8:
    r20 = [r0 deleteComplexEventForAudienceEvaluationWithEventID:r28 error:&var_70];
    r24 = [var_70 retain];
    [r27 release];
    if ((r20 & 0x1) == 0x0) {
            r20 = [[APMMeasurement monitor] retain];
            r22 = [sub_100197c2c() retain];
            r21 = 0x1;
            [r20 logWithLevel:0x1 messageCode:0x178d message:@"Cannot delete complex event's main event from the database. Event name, error" context:r22 context:r24];
            [r22 release];
            [r20 release];
            r27 = r24;
            r20 = var_A0;
            r22 = var_98;
            r28 = var_A8;
    }
    else {
            r28 = var_A8;
            r0 = *(var_B0 + r21);
            r0 = [r0 eventAggregatesWithName:var_C0 error:&var_80];
            r29 = r29;
            r20 = [r0 retain];
            r25 = [var_80 retain];
            [r24 release];
            [var_A0 release];
            if (r20 == 0x0 && r25 != 0x0) {
                    r20 = [[APMMeasurement monitor] retain];
                    r22 = [sub_100197c2c() retain];
                    r21 = 0x1;
                    r27 = r25;
                    [r20 logWithLevel:0x1 messageCode:0x1792 message:@"Failed to query event aggregates. Name, error" context:r22 context:r25];
                    [r22 release];
                    [r20 release];
                    r20 = 0x0;
                    r22 = var_98;
            }
            else {
                    r27 = r25;
                    r22 = [var_C0 retain];
                    [var_98 release];
                    r21 = 0x0;
            }
    }
    goto loc_10013ffa4;

loc_10013ffa4:
    r0 = var_90;
    r24 = var_88;
    goto loc_10013ffa8;

loc_10013ffa8:
    r25 = var_D0;
    goto loc_10013ffac;

loc_10013ffac:
    [r0 release];
    var_90 = r25;
    r25 = r22;
    r22 = var_A0;
    goto loc_10013ffbc;

loc_10013ffbc:
    [r23 release];
    r23 = 0x0;
    goto loc_10013ffc8;

loc_10013fdf4:
    r20 = [r0 updateComplexEventForAudienceEvaluationWithEventID:r28 childEventCount:r3 mainEvent:r23 error:&var_78];
    r24 = [var_78 retain];
    [r27 release];
    if ((r20 & 0x1) == 0x0) goto loc_10013fefc;

loc_10013fe2c:
    r28 = var_A8;
    r0 = *(var_B0 + r21);
    r0 = [r0 eventAggregatesWithName:var_C0 error:&var_80];
    r29 = r29;
    r20 = [r0 retain];
    r25 = [var_80 retain];
    [r24 release];
    [var_A0 release];
    if (r20 == 0x0 && r25 != 0x0) {
            r20 = [[APMMeasurement monitor] retain];
            r22 = [sub_100197c2c() retain];
            r21 = 0x1;
            r27 = r25;
            [r20 logWithLevel:0x1 messageCode:0x1792 message:@"Failed to query event aggregates. Name, error" context:r22 context:r25];
            [r22 release];
            [r20 release];
            r20 = 0x0;
            r22 = var_98;
    }
    else {
            r27 = r25;
            r22 = [var_C0 retain];
            [var_98 release];
            r21 = 0x0;
    }
    goto loc_10013ffa4;

loc_10013fefc:
    r20 = [[APMMeasurement monitor] retain];
    r22 = [sub_100197c2c() retain];
    r21 = 0x1;
    [r20 logWithLevel:0x1 messageCode:0x178e message:@"Cannot update the remaining children to process of a complex event. Event name, error" context:r22 context:var_90];
    [r22 release];
    [r20 release];
    r0 = var_90;
    r27 = r24;
    r20 = var_A0;
    r22 = var_98;
    r28 = var_A8;
    r24 = var_88;
    goto loc_10013ffa8;

loc_10013fd68:
    r20 = [[APMMeasurement monitor] retain];
    r0 = sub_100197c2c();
    r0 = [r0 retain];
    r21 = 0x1;
    [r20 logWithLevel:0x1 messageCode:0x178c message:@"Complex event's children count is not a number for audience evaluation. Event name, children count" context:r0 context:r25];
    [r0 release];
    [r20 release];
    r22 = r22;
    r28 = var_A8;
    r20 = var_A0;
    r0 = r25;
    r25 = var_90;
    goto loc_10013ffac;

loc_10013fce8:
    r20 = [[APMMeasurement monitor] retain];
    r22 = [sub_100197c2c() retain];
    r21 = 0x1;
    [r20 logWithLevel:0x1 messageCode:0x178b message:@"Complex event's main event is nil for audience evaluation. Event name" context:r22];
    [r22 release];
    [r20 release];
    r28 = var_A8;
    r22 = var_A0;
    r20 = r22;
    r26 = var_B8;
    r25 = var_98;
    goto loc_10013ffbc;

loc_10013fa44:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x1789 message:@"Extra parameter event doesn't have the main event name."];
    [r0 release];
    r23 = 0x0;
    r22 = var_A0;
    r20 = r22;
    goto loc_10013fcd4;

loc_10013f85c:
    r0 = [r26 objectForKeyedSubscript:@"_epc"];
    r29 = r29;
    r20 = [r0 retain];
    [r26 release];
    if (var_88 != 0x0) {
            r22 = [[APMMeasurement monitor] retain];
            r23 = [sub_100197c2c() retain];
            r0 = [NSNumber numberWithLongLong:r28];
            r29 = r29;
            r26 = [r0 retain];
            [r22 logWithLevel:0x4 messageCode:0x1791 message:@"Found complex events that share the same event ID. Event name, event ID" context:r23 context:r26];
            [r26 release];
            [r23 release];
            [r22 release];
    }
    r22 = *(var_B0 + r21);
    r3 = [r20 int64Value];
    r21 = r27;
    r22 = [r22 updateComplexEventForAudienceEvaluationWithEventID:r28 childEventCount:r3 mainEvent:r19 error:r29 - 0x60];
    r27 = [r21 retain];
    [r21 release];
    if ((r22 & 0x1) == 0x0) goto loc_10013f99c;

loc_10013f97c:
    [r20 release];
    r28 = var_A8;
    r22 = var_A0;
    r20 = r22;
    r26 = var_B8;
    r25 = var_98;
    r24 = var_88;
    [r19 timestamp];
    r23 = [var_B0 evaluateFiltersForEventName:r25 eventParameters:var_90 eventAggregates:r20 eventTimestamp:r26 cachedSequenceEvaluationTimestamps:r6];
    goto loc_100140010;

loc_10013f99c:
    r22 = [[APMMeasurement monitor] retain];
    r23 = [[r19 name] retain];
    r24 = [sub_100197c2c() retain];
    [r22 logWithLevel:0x1 messageCode:0x1788 message:@"Cannot insert main event data for complex event's audience evaluation. Event name, error" context:r24 context:r27];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 release];
    r28 = var_A8;
    r22 = var_A0;
    r20 = r22;
    r26 = var_B8;
    r25 = var_98;
    goto loc_10013f6c0;

loc_10013f6c8:
    [r19 timestamp];
    r23 = [r27 evaluateFiltersForEventName:r25 eventParameters:r21 eventAggregates:r22 eventTimestamp:r26 cachedSequenceEvaluationTimestamps:r6];
    r20 = r22;
    goto loc_100140024;
}

-(bool)maybeDeleteStaleFilterResults:(void *)arg2 {
    r31 = r31 - 0x90;
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
    r22 = self;
    r23 = [arg2 retain];
    r19 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    r0 = *(r22 + r19);
    r0 = [r0 allFilterResults:&var_58];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r21 = [var_58 retain];
    if (r20 == 0x0) {
            asm { ccmp       x21, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & NE) {
            var_70 = r23;
            r23 = [r20 count];
            r0 = [APMMeasurement remoteConfig];
            r29 = r29;
            r0 = [r0 retain];
            r28 = [r0 maxFilterResultCount];
            [r0 release];
            if (r23 >= sign_extend_64(r28)) {
                    r24 = [[APMMeasurement monitor] retain];
                    r27 = [[NSNumber numberWithUnsignedInteger:[r20 count]] retain];
                    r28 = @class(NSNumber);
                    r0 = [APMMeasurement remoteConfig];
                    r0 = [r0 retain];
                    r26 = [[r28 numberWithInt:[r0 maxFilterResultCount]] retain];
                    [r24 logWithLevel:0x3 messageCode:0x1780 message:@"Too many Audience filter results. Deleting filter results for deleted Audiences. Filter result count, max filter result count" context:r27 context:r26];
                    [r26 release];
                    [r0 release];
                    [r27 release];
                    [r24 release];
                    r0 = *(r22 + r19);
                    r0 = [r0 allAudienceIDs:&var_60];
                    r29 = r29;
                    r24 = [r0 retain];
                    r26 = [var_60 retain];
                    [r21 release];
                    if (r24 == 0x0 && r26 != 0x0) {
                            r0 = [APMMeasurement monitor];
                            r0 = [r0 retain];
                            [r0 logWithLevel:0x1 messageCode:0x1781 message:@"Unable to query current Audience IDs. Audiences will not be saved. Error" context:r26];
                            [r0 release];
                            r22 = 0x0;
                            r21 = r26;
                            r23 = var_70;
                    }
                    else {
                            r0 = [r20 mutableCopy];
                            r25 = r0;
                            [r0 removeObjectsForKeys:r24];
                            r23 = var_70;
                            r27 = [[r23 allObjects] retain];
                            [r25 removeObjectsForKeys:r27];
                            [r27 release];
                            r21 = *(r22 + r19);
                            r0 = [r25 allValues];
                            r29 = r29;
                            r22 = [r0 retain];
                            r27 = [r21 deleteFilterResults:r22 error:&var_68];
                            r21 = [var_68 retain];
                            [r26 release];
                            [r22 release];
                            r22 = 0x1;
                            if (r21 != 0x0) {
                                    r22 = 0x1;
                                    if (r27 == 0x0) {
                                            r0 = *(&@class(MCConfigurationData) + 0xc40);
                                            r0 = [r0 monitor];
                                            r0 = [r0 retain];
                                            [r0 logWithLevel:0x1 messageCode:0x1782 message:@"Unable to delete stale Audience filter results. Audiences will not be saved. Error" context:r21];
                                            [r0 release];
                                            r22 = 0x0;
                                    }
                            }
                            [r25 release];
                    }
                    [r24 release];
            }
            else {
                    r22 = 0x1;
                    r23 = var_70;
            }
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x177f message:@"Unable to query Audience filter results. Audiences will not be saved. Error" context:r21];
            [r0 release];
            r22 = 0x0;
    }
    [r20 release];
    [r21 release];
    [r23 release];
    r0 = r22;
    return r0;
}

-(bool)resultsForBundling:(void * *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1e0;
    r21 = arg2;
    r24 = self;
    *r21 = [[[NSMutableArray alloc] init] autorelease];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    r0 = *(r24 + r26);
    r0 = [r0 allFilterResults:&saved_fp - 0xe0];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r23 = [0x0 retain];
    if (r22 == 0x0) {
            asm { ccmp       x23, #0x0, #0x4, eq };
    }
    if (!CPU_FLAGS & NE) {
            var_220 = r26;
            stack[-552] = r24;
            var_208 = r23;
            var_1D0 = r21;
            r24 = [[NSMutableArray alloc] init];
            r0 = [APMMeasurement remoteConfig];
            r29 = r29;
            r0 = [r0 retain];
            var_1E4 = [r0 isAudienceSequenceFiltersEnabled];
            [r0 release];
            var_110 = q0;
            var_210 = r22;
            r0 = [r22 retain];
            r28 = r0;
            r1 = @selector(countByEnumeratingWithState:objects:count:);
            var_200 = r1;
            r0 = objc_msgSend(r0, r1);
            var_140 = r0;
            if (r0 != 0x0) {
                    r25 = @selector(alloc);
                    var_150 = *var_110;
                    var_1A8 = r25;
                    var_1D8 = r24;
                    var_178 = r28;
                    do {
                            r26 = 0x0;
                            do {
                                    if (*var_110 != var_150) {
                                            objc_enumerationMutation(r28);
                                    }
                                    r23 = *(var_118 + r26 * 0x8);
                                    r20 = [[r28 objectForKeyedSubscript:r23] retain];
                                    r19 = objc_msgSend(@class(APMPBResultData), r25);
                                    r0 = [r20 currentResults];
                                    r29 = r29;
                                    r21 = [r0 retain];
                                    r22 = [r19 initWithBuffer:r21];
                                    [r21 release];
                                    if (r22 != 0x0) {
                                            r0 = [NSNumber class];
                                            r0 = sub_1001a80d8(r22, 0x0, r0);
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r19 = r0;
                                            if ([r0 count] != 0x0) {
                                                    r0 = [r19 firstObject];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    r28 = [r0 unsignedLongLongValue];
                                                    [r0 release];
                                                    if (r28 != 0x0) {
                                                            r23 = [objc_msgSend(@class(APMPBAudienceLeafFilterResult), r25) initWithMessageInfo:0x0];
                                                            sub_1001a7850(r23, 0x0, [r20 audienceID]);
                                                            r0 = [r20 currentResults];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            [r0 release];
                                                            if (r0 != 0x0) {
                                                                    sub_1001a7f90(r23, 0x1, r22);
                                                            }
                                                            r0 = [r20 previousResults];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            r28 = [r0 length];
                                                            [r0 release];
                                                            if (r28 != 0x0) {
                                                                    sub_1001a772c(r23, 0x3, 0x0);
                                                                    r21 = objc_msgSend(@class(APMPBResultData), r25);
                                                                    r28 = [[r20 previousResults] retain];
                                                                    r21 = [r21 initWithBuffer:r28];
                                                                    [r28 release];
                                                                    r28 = [[r21 protoBuffer] retain];
                                                                    r0 = [r22 protoBuffer];
                                                                    r29 = r29;
                                                                    r25 = [r0 retain];
                                                                    r24 = [r28 isEqual:r25];
                                                                    [r25 release];
                                                                    [r28 release];
                                                                    if (r24 != 0x0) {
                                                                            [r21 release];
                                                                            if (var_1E4 != 0x0) {
                                                                                    r0 = [APMPBSequenceFilterResultTimestamp class];
                                                                                    r0 = sub_1001a80d8(r22, 0x3, r0);
                                                                                    r29 = r29;
                                                                                    r0 = [r0 retain];
                                                                                    r27 = r0;
                                                                                    if ([r0 count] != 0x0) {
                                                                                            r24 = [[r27 firstObject] retain];
                                                                                            r0 = [NSNumber class];
                                                                                            r0 = sub_1001a80d8(r24, 0x1, r0);
                                                                                            r29 = r29;
                                                                                            r21 = [r0 retain];
                                                                                            [r24 release];
                                                                                            if ([r21 count] >= 0x2) {
                                                                                                    r25 = [[r21 lastObject] retain];
                                                                                                    r24 = [[NSArray arrayWithObject:r2] retain];
                                                                                                    [r25 release];
                                                                                                    r0 = [r27 firstObject];
                                                                                                    r29 = r29;
                                                                                                    r0 = [r0 retain];
                                                                                                    sub_1001a8480(r0, 0x1, r24);
                                                                                                    [r25 release];
                                                                                                    sub_1001a8480(r22, 0x3, r27);
                                                                                                    sub_1001a7f90(r23, 0x1, r22);
                                                                                                    [r24 release];
                                                                                            }
                                                                                            [r21 release];
                                                                                    }
                                                                                    [r27 release];
                                                                            }
                                                                            r21 = 0x0;
                                                                    }
                                                                    r0 = [r20 previousResults];
                                                                    r29 = r29;
                                                                    r0 = [r0 retain];
                                                                    r28 = r0;
                                                                    [r0 release];
                                                                    if (r21 != 0x0 && r28 != 0x0) {
                                                                            sub_1001a7f90(r23, 0x2, r21);
                                                                    }
                                                                    [r21 release];
                                                                    r25 = var_1A8;
                                                            }
                                                            else {
                                                                    sub_1001a772c(r23, 0x3, 0x1);
                                                                    sub_1001a761c(r23, 0x2);
                                                            }
                                                            [*var_1D0 addObject:r23];
                                                            r21 = objc_msgSend(@class(APMFilterResult), r25);
                                                            r24 = [r20 audienceID];
                                                            r25 = [[r22 protoBuffer] retain];
                                                            r0 = [r20 currentResults];
                                                            r29 = r29;
                                                            r28 = [r0 retain];
                                                            r21 = [r21 initWithAudienceID:r24 currentResults:r25 previousResults:r28];
                                                            [r28 release];
                                                            r0 = r25;
                                                            r25 = var_1A8;
                                                            [r0 release];
                                                            r24 = var_1D8;
                                                            [r24 addObject:r21];
                                                            [r21 release];
                                                            r0 = r23;
                                                    }
                                                    else {
                                                            r0 = [APMMeasurement monitor];
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            [r0 logWithLevel:0x1 messageCode:0x1785 message:@"Current result status is 0. Audience result will not be bundled. Audience ID" context:r23];
                                                            r0 = r0;
                                                    }
                                            }
                                            else {
                                                    r0 = [APMMeasurement monitor];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    [r0 logWithLevel:0x1 messageCode:0x1785 message:@"Current result status is 0. Audience result will not be bundled. Audience ID" context:r23];
                                                    r0 = r0;
                                            }
                                            [r0 release];
                                            [r19 release];
                                            r28 = var_178;
                                    }
                                    else {
                                            r0 = [APMMeasurement monitor];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 logWithLevel:0x1 messageCode:0x1784 message:@"Current result data is nil. Audience result will not be bundled. Audience ID" context:r23];
                                            [r0 release];
                                    }
                                    [r22 release];
                                    [r20 release];
                                    r26 = r26 + 0x1;
                            } while (r26 < var_140);
                            r0 = objc_msgSend(r28, var_200);
                            var_140 = r0;
                    } while (r0 != 0x0);
            }
            [r28 release];
            if ([r24 count] != 0x0) {
                    r21 = [*(stack[-552] + var_220) updateFilterResults:r24 error:&var_128];
                    r23 = [var_128 retain];
                    [var_208 release];
                    r19 = 0x1;
                    if (r23 != 0x0) {
                            r19 = 0x1;
                            if (r21 == 0x0) {
                                    r0 = [APMMeasurement monitor];
                                    r0 = [r0 retain];
                                    [r0 logWithLevel:0x1 messageCode:0x1786 message:@"Unable to save updated Audience filter results. Audience results will not be bundled. Error" context:r23];
                                    [r0 release];
                                    r19 = 0x0;
                                    *var_1D0 = 0x0;
                            }
                    }
                    r22 = var_210;
            }
            else {
                    r19 = 0x1;
                    r22 = var_210;
                    r23 = var_208;
            }
            [r24 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x1783 message:@"Unable to query Audience filter results. Audience results will not be bundled. Error" context:r23];
            [r0 release];
            r19 = 0x0;
            *r21 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    [r23 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)evaluateFiltersForEventName:(void *)arg2 eventParameters:(void *)arg3 eventAggregates:(void *)arg4 eventTimestamp:(double)arg5 cachedSequenceEvaluationTimestamps:(void *)arg6 {
    var_60 = d9;
    stack[-104] = d8;
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
    r31 = r31 + 0xffffffffffffff90 - 0x250;
    v8 = v0;
    r27 = [arg2 retain];
    var_208 = [arg3 retain];
    var_210 = [arg4 retain];
    var_1F0 = [arg5 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    var_240 = r8;
    stack[-584] = self;
    r0 = *(self + r8);
    r0 = [r0 eventFiltersForEventName:r27 error:&var_110];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r19 = [var_110 retain];
    if (r22 == 0x0) {
            asm { ccmp       x19, #0x0, #0x4, eq };
    }
    if (CPU_FLAGS & NE) goto loc_100140e28;

loc_100140144:
    r25 = [[NSMutableDictionary alloc] init];
    var_1D8 = [[NSMutableDictionary alloc] init];
    var_1D0 = [[NSMutableDictionary alloc] init];
    r0 = @class(APMMeasurement);
    r0 = [r0 remoteConfig];
    r0 = [r0 retain];
    r24 = [r0 isAudienceDynamicFiltersEnabled];
    [r0 release];
    r0 = @class(APMMeasurement);
    r0 = [r0 remoteConfig];
    r29 = r29;
    r0 = [r0 retain];
    var_1F4 = [r0 isAudienceSequenceFiltersEnabled];
    [r0 release];
    var_140 = q0;
    var_2A0 = r22;
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1E8 = r0;
    var_298 = r1;
    r0 = objc_msgSend(r0, r1);
    var_198 = r0;
    if (r0 == 0x0) goto loc_100140e9c;

loc_100140250:
    var_1B8 = *var_140;
    var_220 = r19;
    var_200 = r27;
    var_1BC = r24;
    r20 = r25;
    var_1C8 = r20;
    goto loc_100140270;

loc_100140270:
    r25 = 0x0;
    r26 = @selector(objectForKeyedSubscript:);
    var_1B0 = r26;
    goto loc_100140370;

loc_100140370:
    if (*var_140 != var_1B8) {
            objc_enumerationMutation(var_1E8);
    }
    r28 = *(var_148 + r25 * 0x8);
    r23 = [[NSNumber numberWithInt:[r28 audienceID]] retain];
    r0 = objc_msgSend(r20, r26);
    r29 = r29;
    r21 = [r0 retain];
    var_168 = r23;
    if (r21 != 0x0) goto loc_100140408;

loc_1001403e8:
    r0 = objc_msgSend(var_1D8, r26);
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_100140574;

loc_100140408:
    if (r24 != 0x0) {
            r0 = objc_msgSend(var_1D0, r26);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r19 = [APMPBResultData alloc];
                    r0 = [r21 currentResults];
                    r0 = [r0 retain];
                    r22 = r20;
                    r19 = [r19 initWithBuffer:r0];
                    [r0 release];
                    r0 = sub_1001410d4();
                    r29 = r29;
                    r20 = [r0 retain];
                    [var_1D0 setObject:r20 forKeyedSubscript:r23];
                    r0 = r20;
                    r20 = r22;
                    [r0 release];
                    [r19 release];
            }
            if (var_1F4 != 0x0) {
                    r0 = objc_msgSend(var_1F0, r26);
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            r19 = [APMPBResultData alloc];
                            r0 = [r21 currentResults];
                            r0 = [r0 retain];
                            r22 = r20;
                            r19 = [r19 initWithBuffer:r0];
                            [r0 release];
                            r0 = sub_1001412d4(r19, r23);
                            r29 = r29;
                            r20 = [r0 retain];
                            [var_1F0 setObject:r20 forKeyedSubscript:r23];
                            r0 = r20;
                            r20 = r22;
                            [r0 release];
                            [r19 release];
                    }
            }
    }
    goto loc_100140610;

loc_100140610:
    r22 = [APMAudience isFilterResult:r21 trueForFilterID:[r28 filterID]];
    if (r24 == 0x0) goto loc_1001408a4;

loc_100140640:
    r0 = [r28 retain];
    r19 = r0;
    r0 = [r0 data];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    [r0 release];
    if (r20 != 0x0) {
            r20 = [APMPBEventFilter alloc];
            r0 = [r19 data];
            r29 = r29;
            r26 = [r0 retain];
            r28 = [r20 initWithBuffer:r26];
            [r26 release];
            r20 = sub_1001a7698(r28, 0x5);
            [r28 release];
    }
    [r19 release];
    r0 = [r19 retain];
    r28 = r0;
    r0 = [r0 data];
    r29 = r29;
    r0 = [r0 retain];
    r19 = r0;
    [r0 release];
    if (r19 != 0x0) {
            r19 = [APMPBEventFilter alloc];
            r0 = [r28 data];
            r29 = r29;
            r26 = [r0 retain];
            r27 = [r19 initWithBuffer:r26];
            [r26 release];
            r19 = sub_1001a7698(r27, 0x6);
            r0 = r27;
            r27 = var_200;
            [r0 release];
    }
    r23 = var_1C8;
    r26 = var_1B0;
    [r28 release];
    r24 = r22 ^ 0x1;
    if (((r20 | r24) & 0x1) != 0x0 || r19 != 0x0) goto loc_100140780;

loc_100140bec:
    [r21 release];
    [var_168 release];
    goto loc_100140bfc;

loc_100140bfc:
    r25 = r25 + 0x1;
    r24 = var_1BC;
    r20 = r23;
    if (r25 < var_198) goto loc_100140370;

loc_100140e04:
    r0 = objc_msgSend(var_1E8, var_298);
    var_198 = r0;
    if (r0 != 0x0) goto loc_100140270;

loc_100140ea4:
    [var_1E8 release];
    if ([r20 count] == 0x0) goto loc_100141038;

loc_100140ec0:
    r19 = *(stack[-584] + var_240);
    r23 = r20;
    r0 = [r20 allValues];
    r29 = r29;
    r20 = [r0 retain];
    r21 = [r19 updateFilterResults:r20 error:&var_160];
    r19 = [var_160 retain];
    [var_220 release];
    [r20 release];
    r20 = 0x1;
    if (r19 != 0x0) {
            r20 = 0x1;
            r22 = var_2A0;
            if (r21 == 0x0) {
                    r20 = [[APMMeasurement monitor] retain];
                    r21 = [sub_100197c2c() retain];
                    [r20 logWithLevel:0x1 messageCode:0x1773 message:@"Unable to save updated Audience filter results. Event will not be evaluated. Event name, error" context:r21 context:r19];
                    [r21 release];
                    [r20 release];
                    r20 = 0x0;
            }
    }
    else {
            r22 = var_2A0;
    }
    goto loc_100141048;

loc_100141048:
    [var_1D0 release];
    [var_1D8 release];
    [r23 release];
    goto loc_100141060;

loc_100141060:
    var_68 = **___stack_chk_guard;
    [r22 release];
    [r19 release];
    [var_1F0 release];
    [var_210 release];
    [var_208 release];
    [r27 release];
    if (**___stack_chk_guard == var_68) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100141038:
    r23 = r20;
    r20 = 0x1;
    r19 = var_220;
    goto loc_100141044;

loc_100141044:
    r22 = var_2A0;
    goto loc_100141048;

loc_100140780:
    r22 = [APMPBEventFilter alloc];
    r0 = [r28 data];
    r29 = r29;
    r26 = [r0 retain];
    r22 = [r22 initWithBuffer:r26];
    [r26 release];
    if (r22 == 0x0) goto loc_100140990;

loc_1001407cc:
    r0 = sub_100172c50(r22, r27, var_208, var_210);
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) goto loc_100140bbc;

loc_1001407ec:
    if ([r26 boolValue] == 0x0) goto loc_100140c18;

loc_100140800:
    r23 = var_168;
    if (r19 == 0x0) goto loc_100140c60;

loc_100140808:
    r0 = objc_msgSend(var_1F0, var_1B0);
    r29 = r29;
    r19 = [r0 retain];
    if (r19 == 0x0) {
            r19 = [[APMSequenceTimestampsCache alloc] initWithAudienceID:r23];
            [var_1F0 setObject:r19 forKeyedSubscript:r23];
    }
    r0 = [NSNumber numberWithInt:[r28 filterID]];
    r29 = r29;
    r20 = [r0 retain];
    [r19 addTimestamp:r2 forFilterID:r3];
    goto loc_100140cc0;

loc_100140cc0:
    [r20 release];
    [r19 release];
    goto loc_100140cd0;

loc_100140cd0:
    r20 = [objc_msgSend(var_1D0, var_1B0) retain];
    r19 = [sub_100141668() retain];
    [r20 release];
    r0 = objc_msgSend(var_1F0, var_1B0);
    r0 = [r0 retain];
    r27 = [[r0 sequenceFilterResultTimestamps] retain];
    [r0 release];
    r0 = [APMAudience updatedFilterResultWithFilterID:[r28 filterID] audienceID:[r28 audienceID] currentFilterResult:r21 newEvaluationResult:r26 dynamicFilterTimestamps:r19 sequenceFilterTimestamps:r27];
    r29 = r29;
    r20 = [r0 retain];
    [var_1C8 setObject:r20 forKeyedSubscript:r23];
    [r20 release];
    [r27 release];
    [r19 release];
    [r26 release];
    r24 = 0x0;
    r27 = var_200;
    goto loc_100140dd0;

loc_100140dd0:
    [r22 release];
    r23 = var_1C8;
    r26 = var_1B0;
    if (r24 == 0x0) goto loc_100140bdc;

loc_100140de4:
    [r21 release];
    [var_168 release];
    if (r24 == 0x3 || r24 == 0x0) goto loc_100140bfc;

loc_100140fac:
    r19 = var_220;
    goto loc_100141028;

loc_100141028:
    [var_1E8 release];
    r20 = 0x0;
    goto loc_100141044;

loc_100140bdc:
    [var_1D8 removeObjectForKey:var_168];
    goto loc_100140bec;

loc_100140c60:
    if (r20 == 0x0) goto loc_100140cd0;

loc_100140c64:
    r19 = [objc_msgSend(var_1D0, var_1B0) retain];
    r0 = [NSNumber numberWithInt:[r28 filterID]];
    r29 = r29;
    r20 = [r0 retain];
    sub_100141554(r19, r20);
    goto loc_100140cc0;

loc_100140c18:
    r0 = [r26 boolValue];
    r23 = var_168;
    if (((r0 | r24) & 0x1) == 0x0) {
            r0 = @(YES);
            r29 = r29;
            r19 = [r0 retain];
            [r26 release];
            r26 = r19;
    }
    goto loc_100140cd0;

loc_100140bbc:
    r24 = 0x3;
    goto loc_100140dd0;

loc_100140990:
    r22 = [sub_100197c2c() retain];
    r19 = @class(NSNumber);
    r19 = [[r19 numberWithInt:[r28 filterID]] retain];
    r26 = @class(NSNumber);
    r26 = [[r26 numberWithInt:[r28 audienceID]] retain];
    r20 = [[NSNumber numberWithBool:r20] retain];
    r27 = [[NSArray arrayWithObjects:&var_108 count:0x4] retain];
    [r20 release];
    [r26 release];
    [r19 release];
    [r22 release];
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x1793 message:@"Event filter contains no data or corrupt data. Event will not be evaluated. Event name, filter ID, audience ID, dynamic" contexts:r27];
    [r0 release];
    r0 = r27;
    r27 = var_200;
    [r0 release];
    r23 = var_1C8;
    r26 = var_1B0;
    goto loc_100140bec;

loc_1001408a4:
    r23 = r20;
    if ((r22 & 0x1) != 0x0) goto loc_100140bec;

loc_1001408ac:
    r19 = [APMPBEventFilter alloc];
    r0 = [r28 data];
    r29 = r29;
    r22 = [r0 retain];
    r20 = [r19 initWithBuffer:r22];
    [r22 release];
    if (r20 == 0x0) goto loc_100140ad0;

loc_1001408f8:
    r0 = sub_100172c50(r20, r27, var_208, var_210);
    r29 = r29;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [APMAudience updatedFilterResultWithFilterID:[r28 filterID] audienceID:[r28 audienceID] currentFilterResult:r21 newEvaluationResult:r19 dynamicFilterTimestamps:0x0 sequenceFilterTimestamps:0x0];
            r29 = r29;
            r22 = [r0 retain];
            [r23 setObject:r22 forKeyedSubscript:var_168];
            [r22 release];
            r24 = 0x0;
    }
    else {
            r24 = 0x3;
    }
    [r19 release];
    [r20 release];
    if (r24 != 0x0) goto loc_100140de4;
    goto loc_100140bdc;

loc_100140ad0:
    r19 = [[APMMeasurement monitor] retain];
    r20 = [sub_100197c2c() retain];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithInt:[r28 filterID]] retain];
    r24 = @class(NSNumber);
    r2 = [r28 audienceID];
    r27 = r27;
    r26 = var_1B0;
    r0 = [r24 numberWithInt:r2];
    r29 = r29;
    r24 = [r0 retain];
    [r19 logWithLevel:0x1 messageCode:0x1772 message:@"Event filter contains no data. Event will not be evaluated. Event name, filter ID, audience ID" context:r20 context:r22 context:r24];
    [r24 release];
    [r22 release];
    [r20 release];
    [r19 release];
    goto loc_100140bec;

loc_100140574:
    r23 = r20;
    r19 = *(stack[-584] + var_240);
    r0 = [r28 audienceID];
    r0 = [r19 filterResultForAudienceID:r0 error:&var_158];
    r29 = r29;
    r21 = [r0 retain];
    r20 = [var_158 retain];
    [var_220 release];
    if (r21 == 0x0) {
            asm { ccmp       x20, #0x0, #0x4, eq };
    }
    if (CPU_FLAGS & NE) goto loc_100140fb4;

loc_1001405d4:
    if (r21 != 0x0) {
            [var_1D8 setObject:r21 forKeyedSubscript:var_168];
            var_220 = r20;
            r20 = r23;
            r23 = var_168;
            if (r24 != 0x0) {
                    r0 = objc_msgSend(var_1D0, r26);
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            r19 = [APMPBResultData alloc];
                            r0 = [r21 currentResults];
                            r0 = [r0 retain];
                            r22 = r20;
                            r19 = [r19 initWithBuffer:r0];
                            [r0 release];
                            r0 = sub_1001410d4();
                            r29 = r29;
                            r20 = [r0 retain];
                            [var_1D0 setObject:r20 forKeyedSubscript:r23];
                            r0 = r20;
                            r20 = r22;
                            [r0 release];
                            [r19 release];
                    }
                    if (var_1F4 != 0x0) {
                            r0 = objc_msgSend(var_1F0, r26);
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 == 0x0) {
                                    r19 = [APMPBResultData alloc];
                                    r0 = [r21 currentResults];
                                    r0 = [r0 retain];
                                    r22 = r20;
                                    r19 = [r19 initWithBuffer:r0];
                                    [r0 release];
                                    r0 = sub_1001412d4(r19, r23);
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [var_1F0 setObject:r20 forKeyedSubscript:r23];
                                    r0 = r20;
                                    r20 = r22;
                                    [r0 release];
                                    [r19 release];
                            }
                    }
            }
    }
    else {
            var_220 = r20;
            r20 = r23;
            r23 = var_168;
            if (r24 != 0x0) {
                    r0 = objc_msgSend(var_1D0, r26);
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            r19 = [APMPBResultData alloc];
                            r0 = [r21 currentResults];
                            r0 = [r0 retain];
                            r22 = r20;
                            r19 = [r19 initWithBuffer:r0];
                            [r0 release];
                            r0 = sub_1001410d4();
                            r29 = r29;
                            r20 = [r0 retain];
                            [var_1D0 setObject:r20 forKeyedSubscript:r23];
                            r0 = r20;
                            r20 = r22;
                            [r0 release];
                            [r19 release];
                    }
                    if (var_1F4 != 0x0) {
                            r0 = objc_msgSend(var_1F0, r26);
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 == 0x0) {
                                    r19 = [APMPBResultData alloc];
                                    r0 = [r21 currentResults];
                                    r0 = [r0 retain];
                                    r22 = r20;
                                    r19 = [r19 initWithBuffer:r0];
                                    [r0 release];
                                    r0 = sub_1001412d4(r19, r23);
                                    r29 = r29;
                                    r20 = [r0 retain];
                                    [var_1F0 setObject:r20 forKeyedSubscript:r23];
                                    r0 = r20;
                                    r20 = r22;
                                    [r0 release];
                                    [r19 release];
                            }
                    }
            }
    }
    goto loc_100140610;

loc_100140fb4:
    r19 = [[APMMeasurement monitor] retain];
    r21 = [sub_100197c2c() retain];
    [r19 logWithLevel:0x1 messageCode:0x1771 message:@"Unable to query filter result for audience. Event will not be evaluated. Event name, error" context:r21 context:r20];
    [r21 release];
    [r19 release];
    [var_168 release];
    r19 = r20;
    goto loc_100141028;

loc_100140e9c:
    var_220 = r19;
    r20 = r25;
    goto loc_100140ea4;

loc_100140e28:
    r20 = [[APMMeasurement monitor] retain];
    r21 = [sub_100197c2c() retain];
    [r20 logWithLevel:0x1 messageCode:0x1770 message:@"Unable to query event filters for event. Event will not be evaluated. Event name, error" context:r21 context:r19];
    [r21 release];
    [r20 release];
    r20 = 0x0;
    goto loc_100141060;
}

-(bool)updateAudiences:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x5a0;
    r25 = self;
    r0 = [arg2 retain];
    r24 = r0;
    r19 = [r0 count];
    r0 = [APMMeasurement remoteConfig];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = [r0 maxAudienceCount];
    [r0 release];
    if (r19 < sign_extend_64(r21)) goto loc_100142dd8;

loc_100142d50:
    r19 = [[APMMeasurement monitor] retain];
    r21 = [[NSNumber numberWithUnsignedInteger:[r24 count]] retain];
    r20 = 0x1;
    [r19 logWithLevel:0x1 messageCode:0x1778 message:@"Configuration contains too many audiences. Audiences will not be saved. Audience count" context:r21];
    [r21 release];
    r0 = r19;
    goto loc_100143928;

loc_100143928:
    var_58 = **___stack_chk_guard;
    [r0 release];
    [r24 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100142dd8:
    var_5D8 = r25;
    var_568 = [[NSMutableArray alloc] init];
    r28 = [[NSMutableArray alloc] init];
    r19 = [[NSMutableSet alloc] init];
    r0 = [r24 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_5B0 = r0;
    var_508 = r1;
    r0 = objc_msgSend(r0, r1);
    var_588 = r0;
    if (r0 != 0x0) {
            var_598 = r19;
            var_5D0 = r24;
            var_558 = r28;
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_5B0);
                            }
                            var_580 = r20;
                            r22 = *(0x0 + r20 * 0x8);
                            r0 = [APMAudience isValidAudienceProto:r22 usedAudienceIDs:r19 error:&var_3A0];
                            r20 = r19;
                            r21 = [var_3A0 retain];
                            if ((r0 & 0x1) != 0x0) {
                                    var_5A8 = r21;
                                    r9 = sub_1001a77c0(r22, 0x0);
                                    var_514 = r9;
                                    r19 = [[NSNumber numberWithInt:r9] retain];
                                    [r20 addObject:r19];
                                    [r19 release];
                                    r0 = [APMPBEventFilter class];
                                    r0 = sub_1001a80d8(r22, 0x2, r0);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    var_578 = r0;
                                    r0 = objc_msgSend(r0, var_508);
                                    var_548 = r0;
                                    if (r0 != 0x0) {
                                            var_570 = r22;
                                            do {
                                                    r20 = 0x0;
                                                    do {
                                                            if (*0x0 != *0x0) {
                                                                    objc_enumerationMutation(var_578);
                                                            }
                                                            r24 = *(0x0 + r20 * 0x8);
                                                            r21 = [sub_1001a7b3c(r24, 0x1) retain];
                                                            r0 = sub_10018cef8();
                                                            r0 = [r0 retain];
                                                            r19 = r0;
                                                            r0 = [r0 objectForKeyedSubscript:r2];
                                                            r29 = r29;
                                                            r26 = [r0 retain];
                                                            [r19 release];
                                                            if (r26 != 0x0) {
                                                                    sub_1001a7bf8(r24, 0x1, r26);
                                                            }
                                                            r0 = [APMPBFilter class];
                                                            r0 = sub_1001a80d8(r24, 0x2, r0);
                                                            r29 = r29;
                                                            r0 = [r0 retain];
                                                            r23 = r0;
                                                            r25 = objc_msgSend(r0, var_508);
                                                            if (r25 != 0x0) {
                                                                    var_540 = r26;
                                                                    stack[-1352] = r24;
                                                                    var_530 = r21;
                                                                    var_528 = r20;
                                                                    r27 = 0x0;
                                                                    do {
                                                                            r21 = 0x0;
                                                                            do {
                                                                                    if (*0x0 != *0x0) {
                                                                                            objc_enumerationMutation(r23);
                                                                                    }
                                                                                    r22 = *(0x0 + r21 * 0x8);
                                                                                    r24 = [sub_1001a7b3c(r22, 0x3) retain];
                                                                                    r0 = sub_10018d20c();
                                                                                    r0 = [r0 retain];
                                                                                    r20 = r0;
                                                                                    r0 = [r0 objectForKeyedSubscript:r2];
                                                                                    r29 = r29;
                                                                                    r19 = [r0 retain];
                                                                                    [r20 release];
                                                                                    if (r19 != 0x0) {
                                                                                            sub_1001a7bf8(r22, 0x3, r19);
                                                                                            r27 = 0x1;
                                                                                    }
                                                                                    [r19 release];
                                                                                    [r24 release];
                                                                                    r21 = r21 + 0x1;
                                                                            } while (r21 < r25);
                                                                            r25 = objc_msgSend(r23, var_508);
                                                                    } while (r25 != 0x0);
                                                                    r22 = var_570;
                                                                    r21 = var_530;
                                                                    r20 = var_528;
                                                                    r26 = var_540;
                                                                    r0 = stack[-1352];
                                                                    if ((r27 & 0x1) != 0x0) {
                                                                            sub_1001a8480(r0, 0x2, r23);
                                                                    }
                                                            }
                                                            [r23 release];
                                                            [r26 release];
                                                            [r21 release];
                                                            r20 = r20 + 0x1;
                                                    } while (r20 < var_548);
                                                    r0 = objc_msgSend(var_578, var_508);
                                                    var_548 = r0;
                                            } while (r0 != 0x0);
                                    }
                                    r0 = [APMPBPropertyFilter class];
                                    r0 = sub_1001a80d8(r22, 0x1, r0);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r28 = r0;
                                    r19 = objc_msgSend(r0, var_508);
                                    if (r19 != 0x0) {
                                            do {
                                                    r26 = 0x0;
                                                    do {
                                                            if (*0x0 != *0x0) {
                                                                    objc_enumerationMutation(r28);
                                                            }
                                                            r21 = *(0x0 + r26 * 0x8);
                                                            r22 = [sub_1001a7b3c(r21, 0x1) retain];
                                                            r0 = sub_10018d6e8();
                                                            r0 = [r0 retain];
                                                            r24 = r0;
                                                            r0 = [r0 objectForKeyedSubscript:r2];
                                                            r29 = r29;
                                                            r23 = [r0 retain];
                                                            [r24 release];
                                                            if (r23 != 0x0) {
                                                                    sub_1001a7bf8(r21, 0x1, r23);
                                                            }
                                                            [r23 release];
                                                            [r22 release];
                                                            r26 = r26 + 0x1;
                                                    } while (r26 < r19);
                                                    r19 = objc_msgSend(r28, var_508);
                                            } while (r19 != 0x0);
                                    }
                                    var_490 = q0;
                                    r0 = [var_578 retain];
                                    var_528 = r0;
                                    r19 = objc_msgSend(r0, var_508);
                                    if (r19 != 0x0) {
                                            r23 = *var_490;
                                            do {
                                                    r27 = 0x0;
                                                    do {
                                                            if (*var_490 != r23) {
                                                                    objc_enumerationMutation(var_528);
                                                            }
                                                            r22 = *(var_498 + r27 * 0x8);
                                                            sub_1001a77c0(r22, 0x0);
                                                            r25 = [sub_1001a7b3c(r22, 0x1) retain];
                                                            r26 = [APMEventFilter alloc];
                                                            r0 = [r22 protoBuffer];
                                                            r29 = r29;
                                                            r22 = [r0 retain];
                                                            r24 = [r26 initWithAudienceID:r2 filterID:r3 eventName:r4 data:r5];
                                                            [r22 release];
                                                            [var_568 addObject:r24];
                                                            [r24 release];
                                                            [r25 release];
                                                            r27 = r27 + 0x1;
                                                    } while (r27 < r19);
                                                    r19 = objc_msgSend(var_528, var_508);
                                            } while (r19 != 0x0);
                                    }
                                    [var_528 release];
                                    var_4D0 = q0;
                                    r0 = [r28 retain];
                                    r19 = r0;
                                    r20 = objc_msgSend(r0, var_508);
                                    r28 = var_558;
                                    if (r20 != 0x0) {
                                            r23 = *var_4D0;
                                            do {
                                                    r27 = 0x0;
                                                    do {
                                                            if (*var_4D0 != r23) {
                                                                    objc_enumerationMutation(r19);
                                                            }
                                                            r22 = *(var_4D8 + r27 * 0x8);
                                                            sub_1001a77c0(r22, 0x0);
                                                            r26 = [sub_1001a7b3c(r22, 0x1) retain];
                                                            r28 = [APMPropertyFilter alloc];
                                                            r0 = [r22 protoBuffer];
                                                            r29 = r29;
                                                            r22 = [r0 retain];
                                                            r24 = [r28 initWithAudienceID:r2 filterID:r3 propertyName:r4 data:r5];
                                                            [r22 release];
                                                            r28 = var_558;
                                                            [r28 addObject:r24];
                                                            [r24 release];
                                                            [r26 release];
                                                            r27 = r27 + 0x1;
                                                    } while (r27 < r20);
                                                    r20 = objc_msgSend(r19, var_508);
                                            } while (r20 != 0x0);
                                    }
                                    [r19 release];
                                    [r19 release];
                                    [var_528 release];
                                    r24 = var_5D0;
                                    r0 = var_5A8;
                            }
                            else {
                                    r0 = [APMMeasurement monitor];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 logWithLevel:r2 messageCode:r3 message:r4 context:r5 context:r6];
                                    [r19 release];
                                    r0 = r21;
                            }
                            [r0 release];
                            r20 = var_580 + 0x1;
                            r19 = var_598;
                    } while (r20 < var_588);
                    r0 = objc_msgSend(var_5B0, var_508);
                    var_588 = r0;
            } while (r0 != 0x0);
    }
    [var_5B0 release];
    r20 = var_5D8;
    if ([r20 maybeDeleteStaleFilterResults:r19] == 0x0) goto loc_100143734;

loc_1001436a4:
    r25 = r19;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    r20 = [*(r20 + r23) deleteAllEventFilters:&var_4E8];
    r19 = [var_4E8 retain];
    if (r19 == 0x0 || r20 != 0x0) goto loc_10014373c;

loc_1001436e0:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100143718;

loc_100143718:
    [r20 logWithLevel:r2 messageCode:r3 message:r4 context:r5];
    [r20 release];
    r20 = 0x0;
    goto loc_100143908;

loc_100143908:
    [r19 release];
    r19 = r25;
    goto loc_100143914;

loc_100143914:
    [r19 release];
    [r28 release];
    r0 = var_568;
    goto loc_100143928;

loc_10014373c:
    r20 = [*(var_5D8 + r23) deleteAllPropertyFilters:&var_4F0];
    r22 = [var_4F0 retain];
    [r19 release];
    if (r22 == 0x0 || r20 != 0x0) goto loc_1001437c8;

loc_100143778:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x177b message:@"Unable to delete existing Audience user property filters. Audiences will not be saved. Error" context:r22];
    [r0 release];
    r19 = r22;
    goto loc_100143908;

loc_1001437c8:
    r19 = var_568;
    if ([r19 count] == 0x0) goto loc_10014386c;

loc_1001437dc:
    r19 = [*(var_5D8 + r23) updateEventFilters:r19 error:&var_4F8];
    r21 = [var_4F8 retain];
    [r22 release];
    if (r21 == 0x0 || r19 != 0x0) goto loc_100143870;

loc_10014381c:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x177c message:@"Unable to save Audience event filters. Audiences will not be saved. Error" context:r21];
    [r0 release];
    r20 = 0x0;
    goto loc_100143904;

loc_100143904:
    r19 = r21;
    goto loc_100143908;

loc_100143870:
    if ([r28 count] == 0x0) goto loc_100143900;

loc_100143880:
    r22 = [*(var_5D8 + r23) updatePropertyFilters:r28 error:&var_500];
    r19 = [var_500 retain];
    [r21 release];
    r20 = 0x1;
    if (r19 == 0x0) goto loc_100143908;

loc_1001438c0:
    r20 = 0x1;
    if (r22 != 0x0) goto loc_100143908;

loc_1001438c4:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100143718;

loc_100143900:
    r20 = 0x1;
    goto loc_100143904;

loc_10014386c:
    r21 = r22;
    goto loc_100143870;

loc_100143734:
    r20 = 0x0;
    goto loc_100143914;
}

+(bool)isFilterResult:(void *)arg2 trueForFilterID:(int)arg3 {
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
    r22 = arg3;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 currentResults];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 length];
    [r0 release];
    if (r23 != 0x0) {
            r21 = [APMPBResultData alloc];
            r23 = [[r19 currentResults] retain];
            r20 = [r21 initWithBuffer:r23];
            [r23 release];
            r21 = [sub_1001a80d8(r20, 0x0, [NSNumber class]) retain];
            r0 = @class(NSNumber);
            r0 = [r0 class];
            r0 = sub_1001a80d8(r20, 0x1, r0);
            r29 = r29;
            r23 = [r0 retain];
            if ([r21 count] != 0x0 && [r23 count] != 0x0) {
                    r0 = [r21 firstObject];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = [r0 unsignedLongLongValue];
                    [r0 release];
                    r26 = 0x1 << r22;
                    if ((r27 & r26) != 0x0) {
                            r0 = [r23 firstObject];
                            r0 = [r0 retain];
                            r22 = r0;
                            r24 = [r0 unsignedLongLongValue];
                            [r22 release];
                            if ((r24 & r26) != 0x0) {
                                    if (CPU_FLAGS & NE) {
                                            r22 = 0x1;
                                    }
                            }
                    }
                    else {
                            r22 = 0x0;
                    }
            }
            else {
                    r22 = [[APMMeasurement monitor] retain];
                    r24 = [[NSNumber numberWithInt:[r19 audienceID]] retain];
                    [r22 logWithLevel:0x2 messageCode:0x1787 message:@"Audience filter result is non-nil and is missing status or results array. Audience result will not be bundled. Audience ID, result data" context:r24 context:r20];
                    [r24 release];
                    [r22 release];
                    r22 = 0x0;
            }
            [r23 release];
            [r21 release];
            [r20 release];
    }
    else {
            r22 = 0x0;
    }
    [r19 release];
    r0 = r22;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_database, 0x0);
    return;
}

+(void *)updatedFilterResultWithFilterID:(int)arg2 audienceID:(int)arg3 currentFilterResult:(void *)arg4 newEvaluationResult:(void *)arg5 dynamicFilterTimestamps:(void *)arg6 sequenceFilterTimestamps:(void *)arg7 {
    r31 = r31 - 0x90;
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
    r21 = arg6;
    var_74 = arg3;
    r26 = arg2;
    r19 = [arg4 retain];
    r20 = [arg5 retain];
    var_68 = [r21 retain];
    var_70 = [arg7 retain];
    r0 = [r19 currentResults];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r25 = [r0 length];
    [r0 release];
    var_58 = r19;
    if (r25 != 0x0) {
            var_60 = r26;
            r25 = [APMPBResultData alloc];
            r23 = [[r19 currentResults] retain];
            r26 = [r25 initWithBuffer:r23];
            [r23 release];
            r27 = [sub_1001a80d8(r26, 0x0, [NSNumber class]) retain];
            r0 = @class(NSNumber);
            r0 = [r0 class];
            r0 = sub_1001a80d8(r26, 0x1, r0);
            r29 = r29;
            r28 = [r0 retain];
            if ([r27 count] != 0x0 && [r28 count] != 0x0) {
                    r0 = [r27 firstObject];
                    r0 = [r0 retain];
                    r23 = [r0 unsignedLongLongValue];
                    [r0 release];
                    r0 = [r28 firstObject];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    r25 = [r0 unsignedLongLongValue];
                    [r21 release];
            }
            else {
                    r21 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    r25 = 0x0;
                    r23 = 0x0;
            }
            [r28 release];
            [r27 release];
            [r26 release];
            r26 = var_60;
    }
    else {
            r23 = 0x0;
    }
    r22 = 0x1 << r26;
    r8 = r23 | r22;
    r9 = r23 & !r22;
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r21 = r8;
            }
            else {
                    r21 = r9;
            }
    }
    var_60 = r20;
    r0 = [r20 boolValue];
    r8 = r25 | r22;
    r9 = r25 & !r22;
    if (r0 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r27 = r9;
            }
            else {
                    r27 = r8;
            }
    }
    r25 = [[APMPBResultData alloc] initWithMessageInfo:0x0];
    r22 = [NSArray alloc];
    r21 = [[NSNumber numberWithUnsignedLongLong:r21] retain];
    r26 = [r22 initWithObjects:r21];
    [r21 release];
    sub_1001a8480(r25, 0x0, r26);
    r21 = objc_msgSend(@class(NSArray), r24);
    r0 = @class(NSNumber);
    r0 = [r0 numberWithUnsignedLongLong:r27];
    r29 = r29;
    r22 = [r0 retain];
    r27 = [r21 initWithObjects:r22];
    [r22 release];
    sub_1001a8480(r25, 0x1, r27);
    r20 = var_68;
    if (r20 != 0x0) {
            sub_1001a8480(r25, 0x2, r20);
    }
    r19 = var_58;
    r28 = var_70;
    if (r28 != 0x0) {
            sub_1001a8480(r25, 0x3, r28);
    }
    r21 = [APMFilterResult alloc];
    r22 = [[r25 protoBuffer] retain];
    r23 = [[r19 previousResults] retain];
    r21 = [r21 initWithAudienceID:var_74 currentResults:r22 previousResults:r23];
    [r23 release];
    [r22 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r28 release];
    [r20 release];
    [var_60 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(bool)evaluateFiltersForUserProperty:(void *)arg2 cachedSequenceEvaluationTimestamps:(void *)arg3 {
    var_60 = d9;
    stack[-104] = d8;
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
    r31 = r31 + 0xffffffffffffff90 - 0x260;
    r23 = [arg2 retain];
    r24 = [arg3 retain];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_database));
    var_250 = r8;
    stack[-600] = self;
    r19 = *(self + r8);
    r20 = [[r23 name] retain];
    r0 = [r19 propertyFiltersForPropertyName:r20 error:&var_110];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r19 = [var_110 retain];
    [r20 release];
    if (r25 == 0x0) {
            asm { ccmp       x19, #0x0, #0x4, eq };
    }
    if (CPU_FLAGS & NE) goto loc_100142754;

loc_10014199c:
    r0 = @class(NSMutableDictionary);
    r0 = [r0 alloc];
    r20 = @selector(init);
    r22 = objc_msgSend(r0, r20);
    var_1D0 = objc_msgSend([NSMutableDictionary alloc], r20);
    var_1C8 = objc_msgSend([NSMutableDictionary alloc], r20);
    if (r24 == 0x0) {
            r20 = @selector(init);
            r20 = objc_msgSend([NSMutableDictionary alloc], r20);
            [r24 release];
            r24 = r20;
    }
    var_1F8 = r24;
    r0 = @class(APMMeasurement);
    r0 = [r0 remoteConfig];
    r0 = [r0 retain];
    var_164 = [r0 isAudienceDynamicFiltersEnabled];
    [r0 release];
    r0 = @class(APMMeasurement);
    r0 = [r0 remoteConfig];
    r29 = r29;
    r0 = [r0 retain];
    r21 = [r0 isAudienceSequenceFiltersEnabled];
    [r0 release];
    v0 = 0x0;
    var_140 = q0;
    var_2B8 = r25;
    r0 = [r25 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r3 = r29 - 0xe8;
    var_1E0 = r0;
    var_2B0 = r1;
    r0 = objc_msgSend(r0, r1);
    var_1F0 = r22;
    var_1B0 = r0;
    if (r0 == 0x0) goto loc_1001427e4;

loc_100141adc:
    var_1E4 = r21;
    var_27C = r21 ^ 0x1;
    var_1C0 = *var_140;
    var_218 = r23;
    var_210 = r19;
    goto loc_100141af8;

loc_100141af8:
    r27 = 0x0;
    r21 = @selector(objectForKeyedSubscript:);
    var_1A8 = r21;
    goto loc_100141c04;

loc_100141c04:
    if (*var_140 != var_1C0) {
            objc_enumerationMutation(var_1E0);
    }
    r26 = *(var_148 + r27 * 0x8);
    r28 = [[NSNumber numberWithInt:[r26 audienceID]] retain];
    r0 = objc_msgSend(r22, r21);
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) goto loc_100141d0c;

loc_100141c78:
    r0 = objc_msgSend(var_1D0, r21);
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) goto loc_100141d0c;

loc_100141c98:
    r19 = *(stack[-600] + var_250);
    r0 = [r26 audienceID];
    r0 = [r19 filterResultForAudienceID:r0 error:&var_158];
    r29 = r29;
    r25 = [r0 retain];
    r19 = [var_158 retain];
    [var_210 release];
    if (r25 == 0x0) {
            asm { ccmp       x19, #0x0, #0x4, eq };
    }
    if (CPU_FLAGS & NE) goto loc_100142918;

loc_100141cf4:
    if (r25 != 0x0) {
            [var_1D0 setObject:r25 forKeyedSubscript:r28];
    }
    var_210 = r19;
    goto loc_100141d0c;

loc_100141d0c:
    if (var_164 != 0x0) {
            r0 = objc_msgSend(var_1C8, r21);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 == 0x0) {
                    r19 = [APMPBResultData alloc];
                    r20 = [[r25 currentResults] retain];
                    r19 = [r19 initWithBuffer:r20];
                    [r20 release];
                    r0 = sub_1001410d4();
                    r29 = r29;
                    r20 = [r0 retain];
                    [var_1C8 setObject:r20 forKeyedSubscript:r28];
                    [r20 release];
                    [r19 release];
            }
            if (var_1E4 != 0x0) {
                    r0 = objc_msgSend(var_1F8, r21);
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            r19 = [APMPBResultData alloc];
                            r20 = [[r25 currentResults] retain];
                            r19 = [r19 initWithBuffer:r20];
                            [r20 release];
                            r0 = sub_1001412d4(r19, r28);
                            r29 = r29;
                            r20 = [r0 retain];
                            [var_1F8 setObject:r20 forKeyedSubscript:r28];
                            [r20 release];
                            [r19 release];
                    }
            }
    }
    r24 = [APMAudience isFilterResult:r25 trueForFilterID:[r26 filterID]];
    if (var_164 == 0x0) goto loc_100141f30;

loc_100141e9c:
    r0 = [r26 retain];
    r19 = r0;
    r0 = [r0 data];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [APMPBPropertyFilter alloc];
            r0 = [r19 data];
            r29 = r29;
            r21 = [r0 retain];
            r20 = [r20 initWithBuffer:r21];
            [r21 release];
            var_190 = sub_1001a7698(r20, 0x3);
            [r20 release];
    }
    else {
            var_190 = 0x0;
    }
    [r19 release];
    r0 = [r19 retain];
    r26 = r0;
    r0 = [r0 data];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r19 = [APMPBPropertyFilter alloc];
            r0 = [r26 data];
            r29 = r29;
            r20 = [r0 retain];
            r19 = [r19 initWithBuffer:r20];
            [r20 release];
            r20 = sub_1001a7698(r19, 0x4);
            [r19 release];
    }
    else {
            r20 = 0x0;
    }
    [r26 release];
    r21 = r24 ^ 0x1;
    if (((var_190 | r21) & 0x1) != 0x0 || r20 != 0x0) goto loc_1001420d0;

loc_100142710:
    [r25 release];
    [r28 release];
    goto loc_100142720;

loc_100142720:
    r27 = r27 + 0x1;
    r21 = var_1A8;
    if (r27 < var_1B0) goto loc_100141c04;

loc_100142730:
    r3 = r29 - 0xe8;
    r0 = objc_msgSend(var_1E0, var_2B0);
    var_1B0 = r0;
    if (r0 != 0x0) goto loc_100141af8;

loc_1001427e8:
    [var_1E0 release];
    if ([r22 count] == 0x0) goto loc_1001429b8;

loc_100142804:
    r19 = *(stack[-600] + var_250);
    r0 = [r22 allValues];
    r29 = r29;
    r20 = [r0 retain];
    r21 = [r19 updateFilterResults:r20 error:&var_160];
    r19 = [var_160 retain];
    [var_210 release];
    [r20 release];
    r20 = 0x1;
    r24 = var_1F8;
    if (r19 != 0x0) {
            r20 = 0x1;
            r25 = var_2B8;
            if (r21 == 0x0) {
                    r20 = [[APMMeasurement monitor] retain];
                    r21 = [[r23 name] retain];
                    r22 = [sub_100197fe0() retain];
                    [r20 logWithLevel:0x1 messageCode:0x1777 message:@"Unable to save updated Audience filter results. User property will not be evaluated. User property name, error" context:r22 context:r19];
                    r0 = r22;
                    r22 = var_1F0;
                    [r0 release];
                    [r21 release];
                    [r20 release];
                    r20 = 0x0;
            }
    }
    else {
            r25 = var_2B8;
    }
    goto loc_1001429c8;

loc_1001429c8:
    [var_1C8 release];
    [var_1D0 release];
    [r22 release];
    goto loc_1001429e0;

loc_1001429e0:
    var_68 = **___stack_chk_guard;
    [r25 release];
    [r19 release];
    [r24 release];
    [r23 release];
    if (**___stack_chk_guard == var_68) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001429b8:
    r20 = 0x1;
    r19 = var_210;
    goto loc_1001429c0;

loc_1001429c0:
    r24 = var_1F8;
    r25 = var_2B8;
    goto loc_1001429c8;

loc_1001420d0:
    var_1FC = r20;
    r19 = [APMPBPropertyFilter alloc];
    r0 = [r26 data];
    r29 = r29;
    r20 = [r0 retain];
    r19 = [r19 initWithBuffer:r20];
    [r20 release];
    if (r19 == 0x0) goto loc_100142308;

loc_100142120:
    r0 = sub_100173804(r19, r23);
    r29 = r29;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_100142200;

loc_10014213c:
    if ([r20 boolValue] == 0x0) goto loc_1001424dc;

loc_10014214c:
    if (var_1FC == 0x0) goto loc_100142460;

loc_100142154:
    r0 = objc_msgSend(var_1F8, var_1A8);
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) {
            r22 = [[APMSequenceTimestampsCache alloc] initWithAudienceID:r28];
            [var_1F8 setObject:r22 forKeyedSubscript:r28];
    }
    [r23 lastSetTimestamp];
    r0 = [NSNumber numberWithInt:[r26 filterID]];
    r29 = r29;
    r23 = [r0 retain];
    v0 = v0;
    [r22 addTimestamp:r23 forFilterID:r3];
    goto loc_1001424cc;

loc_1001424cc:
    [r23 release];
    [r22 release];
    goto loc_1001424dc;

loc_1001424dc:
    r0 = [NSNumber numberWithBool:r24];
    r29 = r29;
    r24 = [r0 retain];
    if ((var_190 | [r20 boolValue]) == 0x1) {
            r22 = [r20 retain];
            [r24 release];
            r24 = r22;
    }
    if (var_190 != 0x0) {
            r23 = [objc_msgSend(var_1C8, var_1A8) retain];
            r0 = sub_100141668();
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
    }
    else {
            r22 = 0x0;
    }
    if (var_1FC != 0x0) {
            r0 = objc_msgSend(var_1F8, var_1A8);
            r0 = [r0 retain];
            var_288 = r19;
            r19 = r20;
            r20 = r22;
            r22 = r24;
            r24 = r0;
            r0 = [r0 sequenceFilterResultTimestamps];
            r29 = r29;
            r23 = [r0 retain];
            r0 = r24;
            r24 = r22;
            r22 = r20;
            r20 = r19;
            r19 = var_288;
            [r0 release];
    }
    else {
            r23 = 0x0;
    }
    if (((var_27C | r21) & 0x1) != 0x0 || (var_1FC | var_190 | [r20 boolValue]) == 0x1) {
            r0 = [r26 filterID];
            r21 = r23;
            r23 = r19;
            r19 = r20;
            r20 = r22;
            r22 = r24;
            r24 = r0;
            r0 = [r26 audienceID];
            r2 = r24;
            r24 = r22;
            r22 = r20;
            r20 = r19;
            r19 = r23;
            r23 = r21;
            r0 = [APMAudience updatedFilterResultWithFilterID:r2 audienceID:r0 currentFilterResult:r25 newEvaluationResult:r24 dynamicFilterTimestamps:r22 sequenceFilterTimestamps:r23];
            r29 = r29;
            r21 = [r0 retain];
            [var_1F0 setObject:r21 forKeyedSubscript:r28];
            [r21 release];
    }
    [r23 release];
    [r22 release];
    [r24 release];
    r21 = 0x0;
    r23 = var_218;
    r22 = var_1F0;
    goto loc_1001426cc;

loc_1001426cc:
    [r20 release];
    [r19 release];
    if (r21 == 0x0) goto loc_100142700;

loc_1001426e0:
    [r25 release];
    [r28 release];
    if (r21 == 0x3 || r21 == 0x0) goto loc_100142720;

loc_100142910:
    r19 = var_210;
    goto loc_1001429a8;

loc_1001429a8:
    [var_1E0 release];
    r20 = 0x0;
    goto loc_1001429c0;

loc_100142700:
    [var_1D0 removeObjectForKey:r28];
    goto loc_100142710;

loc_100142460:
    if (var_190 == 0x0) goto loc_1001424dc;

loc_100142468:
    r22 = [objc_msgSend(var_1C8, var_1A8) retain];
    r0 = [NSNumber numberWithInt:[r26 filterID]];
    r29 = r29;
    r23 = [r0 retain];
    [var_218 lastSetTimestamp];
    sub_100141554(r22, r23);
    goto loc_1001424cc;

loc_100142200:
    r21 = 0x3;
    goto loc_1001426cc;

loc_100142308:
    r19 = [[r23 name] retain];
    r20 = [sub_100197fe0() retain];
    r21 = @class(NSNumber);
    r21 = [[r21 numberWithInt:[r26 filterID]] retain];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithInt:[r26 audienceID]] retain];
    r23 = [[NSNumber numberWithBool:var_190] retain];
    r24 = [[NSArray arrayWithObjects:&var_108 count:0x4] retain];
    r0 = r23;
    r23 = var_218;
    [r0 release];
    r0 = r22;
    r22 = var_1F0;
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [APMMeasurement monitor];
    r29 = r29;
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x1794 message:@"User property filter contains no data or corrupt data. User property will not be evaluated. User property name, filter ID, audience ID, dynamic" contexts:r24];
    [r0 release];
    r0 = r24;
    goto loc_100142458;

loc_100142458:
    [r0 release];
    goto loc_100142710;

loc_100141f30:
    if ((r24 & 0x1) != 0x0) goto loc_100142710;

loc_100141f34:
    r19 = [APMPBPropertyFilter alloc];
    r0 = [r26 data];
    r29 = r29;
    r20 = [r0 retain];
    r19 = [r19 initWithBuffer:r20];
    [r20 release];
    if (r19 == 0x0) goto loc_100142208;

loc_100141f80:
    r0 = sub_100173804(r19, r23);
    r29 = r29;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r22 = [r26 filterID];
            r0 = [r26 audienceID];
            r2 = r22;
            r22 = var_1F0;
            r0 = [APMAudience updatedFilterResultWithFilterID:r2 audienceID:r0 currentFilterResult:r25 newEvaluationResult:r20 dynamicFilterTimestamps:0x0 sequenceFilterTimestamps:0x0];
            r29 = r29;
            r21 = [r0 retain];
            [r22 setObject:r21 forKeyedSubscript:r28];
            [r21 release];
            r21 = 0x0;
    }
    else {
            r21 = 0x3;
    }
    goto loc_1001426cc;

loc_100142208:
    r19 = [[APMMeasurement monitor] retain];
    r20 = [[r23 name] retain];
    r21 = [sub_100197fe0() retain];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithInt:[r26 filterID]] retain];
    r0 = [NSNumber numberWithInt:[r26 audienceID]];
    r29 = r29;
    r23 = [r0 retain];
    [r19 logWithLevel:0x1 messageCode:0x1776 message:@"User property filter contains no data. User property will not be evaluated. User property name, filter ID, audience ID" context:r21 context:r22 context:r23];
    r0 = r23;
    r23 = var_218;
    [r0 release];
    r0 = r22;
    r22 = var_1F0;
    [r0 release];
    [r21 release];
    [r20 release];
    r0 = r19;
    goto loc_100142458;

loc_100142918:
    r20 = [[APMMeasurement monitor] retain];
    r21 = [[r23 name] retain];
    r22 = [sub_100197fe0() retain];
    [r20 logWithLevel:0x1 messageCode:0x1775 message:@"Unable to query filter result for audience. Property will not be evaluated. Property name, error" context:r22 context:r19];
    r0 = r22;
    r22 = var_1F0;
    [r0 release];
    [r21 release];
    [r20 release];
    [r28 release];
    goto loc_1001429a8;

loc_1001427e4:
    var_210 = r19;
    goto loc_1001427e8;

loc_100142754:
    r20 = [[APMMeasurement monitor] retain];
    r21 = [[r23 name] retain];
    r22 = [sub_100197fe0() retain];
    [r20 logWithLevel:0x1 messageCode:0x1774 message:@"Unable to query property filters for property. Property will not be evaluated. Property name, error" context:r22 context:r19];
    [r22 release];
    [r21 release];
    [r20 release];
    r20 = 0x0;
    goto loc_1001429e0;
}

+(bool)isValidAudienceProto:(void *)arg2 usedAudienceIDs:(void *)arg3 error:(void * *)arg4 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x300;
    r24 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ((sub_1001a7578(r19, 0x0) & 0x1) == 0x0) goto loc_100144ea4;

loc_100144e1c:
    r0 = sub_1001a77c0(r19, 0x0);
    if ((r0 & 0xffffffff80000000) != 0x0) goto loc_100144ea4;

loc_100144e2c:
    r0 = [NSNumber numberWithInt:r2];
    r29 = r29;
    r21 = [r0 retain];
    if ([r20 containsObject:r2] == 0x0) goto loc_100144eb8;

loc_100144e74:
    sub_100199354();
    r22 = 0x0;
    goto loc_100144fdc;

loc_100144fdc:
    [r21 release];
    goto loc_100144fe4;

loc_100144fe4:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100144eb8:
    var_2A0 = @selector(containsObject:);
    r23 = [sub_1001a80d8(r19, 0x2, [APMPBEventFilter class]) retain];
    r0 = [APMPBPropertyFilter class];
    r0 = sub_1001a80d8(r19, 0x1, r0);
    r29 = r29;
    r26 = [r0 retain];
    if ((r23 | r26) == 0x0) goto loc_100144fbc;

loc_100144f24:
    var_2B0 = @selector(numberWithInt:);
    if (r23 != 0x0) {
            r22 = [r23 count];
            if (r26 != 0x0) {
                    r22 = r22 + [r26 count];
            }
    }
    else {
            r22 = 0x0;
            if (r26 == 0x0) {
                    r22 = 0x0;
            }
            else {
                    r22 = r22 + [r26 count];
            }
    }
    if (r22 < 0x1) goto loc_100144fbc;

loc_100144f60:
    r0 = [APMMeasurement remoteConfig];
    r29 = r29;
    r0 = [r0 retain];
    var_2E0 = r23;
    r25 = [r0 maxFiltersPerAudience];
    r23 = var_2E0;
    [r0 release];
    if (r22 <= r25) goto loc_10014503c;

loc_100144fbc:
    sub_100199354();
    r22 = 0x0;
    goto loc_100144fcc;

loc_100144fcc:
    [r26 release];
    [r23 release];
    goto loc_100144fdc;

loc_10014503c:
    r28 = @selector(class);
    var_330 = r21;
    var_2D0 = [[NSMutableSet alloc] init];
    r0 = [r23 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_2E8 = r0;
    var_328 = r1;
    r0 = objc_msgSend(r0, r1);
    var_2B8 = r26;
    var_300 = r0;
    if (r0 == 0x0) goto loc_1001455ac;

loc_1001450a8:
    r28 = @selector(class);
    goto loc_1001450c4;

loc_1001450c4:
    r21 = 0x0;
    goto loc_100145100;

loc_100145100:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_2E8);
    }
    var_2D8 = r21;
    r22 = *(0x0 + r21 * 0x8);
    if (sub_1001a7578(r22, 0x1) == 0x0) goto loc_1001458bc;

loc_100145138:
    var_2F8 = @selector(length);
    r0 = sub_1001a7b3c(r22, 0x1);
    r29 = r29;
    r0 = [r0 retain];
    r25 = objc_msgSend(r0, var_2F8);
    [r0 release];
    if (r25 == 0x0 || (sub_1001a7578(r22, 0x0) & 0x1) == 0x0) goto loc_1001458bc;

loc_100145178:
    r23 = sub_1001a77c0(r22, 0x0);
    if ((r23 & 0xffffffff80000000) != 0x0) goto loc_100145898;

loc_10014518c:
    r0 = [APMMeasurement remoteConfig];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 maxFiltersPerAudience];
    [r0 release];
    if (r23 >= r26) goto loc_100145898;

loc_1001451c4:
    r0 = objc_msgSend(@class(NSNumber), var_2B0);
    r29 = r29;
    r21 = [r0 retain];
    r23 = var_2D0;
    if (objc_msgSend(r23, var_2A0) != 0x0) goto loc_1001458cc;

loc_1001451fc:
    [r23 addObject:r2];
    if (sub_1001a7578(r22, 0x4) == 0x0) goto loc_10014527c;

loc_10014521c:
    r0 = objc_msgSend(@class(APMPBNumberFilter), r28);
    r0 = sub_1001a7ea8(r22, 0x4, r0);
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    r0 = sub_1001a7578(r0, 0x1);
    r26 = var_2B8;
    if (r0 == 0x0 || sub_1001a7698(r23, 0x1) == 0x0) goto loc_100145268;

loc_10014597c:
    sub_100199354();
    [r23 release];
    goto loc_100145990;

loc_100145990:
    [r21 release];
    goto loc_100145998;

loc_100145998:
    [var_2E8 release];
    r22 = 0x0;
    goto loc_1001459a4;

loc_1001459a4:
    r21 = var_330;
    r23 = var_2E0;
    goto loc_100145a00;

loc_100145a00:
    [var_2D0 release];
    goto loc_100144fcc;

loc_100145268:
    if ((sub_100173d5c() & 0x1) == 0x0) goto loc_10014597c;

loc_100145274:
    [r23 release];
    goto loc_10014527c;

loc_10014527c:
    var_318 = @selector(count);
    r0 = objc_msgSend(@class(APMPBFilter), r28);
    r0 = sub_1001a80d8(r22, 0x2, r0);
    r0 = [r0 retain];
    r25 = r0;
    r22 = objc_msgSend(r0, var_318);
    r0 = [APMMeasurement remoteConfig];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 maxParametersPerFilter];
    [r0 release];
    if (r22 < sign_extend_64(r26)) goto loc_100145308;

loc_1001452ec:
    sub_100199354();
    r23 = 0x1;
    goto loc_100145550;

loc_100145550:
    [r25 release];
    [r21 release];
    r26 = var_2B8;
    if (r23 != 0x0) goto loc_100145998;

loc_100145568:
    r21 = var_2D8 + 0x1;
    if (r21 < var_300) goto loc_100145100;

loc_10014557c:
    r0 = objc_msgSend(var_2E8, var_328);
    var_300 = r0;
    if (r0 != 0x0) goto loc_1001450c4;

loc_1001455ac:
    [var_2E8 release];
    var_288 = q0;
    r0 = [r26 retain];
    var_2A8 = r0;
    r23 = objc_msgSend(r0, var_328);
    if (r23 == 0x0) goto loc_10014587c;

loc_1001455f0:
    var_2C0 = *var_288;
    goto loc_100145604;

loc_100145604:
    r21 = r28;
    r28 = 0x0;
    goto loc_100145634;

loc_100145634:
    if (*var_288 != var_2C0) {
            objc_enumerationMutation(var_2A8);
    }
    r25 = *(var_290 + r28 * 0x8);
    if (sub_1001a7578(r25, 0x1) == 0x0) goto loc_100145914;

loc_100145668:
    var_2C8 = @selector(length);
    r0 = sub_1001a7b3c(r25, 0x1);
    r29 = r29;
    r0 = [r0 retain];
    r26 = objc_msgSend(r0, var_2C8);
    [r0 release];
    if (r26 == 0x0 || (sub_1001a7578(r25, 0x0) & 0x1) == 0x0) goto loc_100145914;

loc_1001456a8:
    r22 = sub_1001a77c0(r25, 0x0);
    if ((r22 & 0xffffffff80000000) != 0x0) goto loc_100145914;

loc_1001456bc:
    r0 = [APMMeasurement remoteConfig];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 maxFiltersPerAudience];
    [r0 release];
    if (r22 >= r27) goto loc_100145914;

loc_1001456f4:
    r0 = objc_msgSend(@class(NSNumber), var_2B0);
    r29 = r29;
    r22 = [r0 retain];
    r26 = var_2D0;
    if (objc_msgSend(r26, var_2A0) != 0x0) goto loc_100145938;

loc_10014572c:
    [r26 addObject:r2];
    if ((sub_1001a7578(r25, 0x2) & 0x1) == 0x0) goto loc_100145938;

loc_10014574c:
    r0 = objc_msgSend(@class(APMPBFilter), r21);
    r0 = sub_1001a7ea8(r25, 0x2, r0);
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if (sub_1001a7578(r0, 0x1) == sub_1001a7578(r25, 0x0)) goto loc_10014595c;

loc_100145798:
    if (sub_1001a7578(r25, 0x1) == 0x0) goto loc_1001457e4;

loc_1001457a8:
    r0 = objc_msgSend(@class(APMPBNumberFilter), r21);
    r0 = sub_1001a7ea8(r25, 0x1, r0);
    r29 = r29;
    r26 = [r0 retain];
    if (sub_100173d5c() == 0x0) goto loc_1001459c4;

loc_1001457dc:
    [r26 release];
    goto loc_1001457e4;

loc_1001457e4:
    if (sub_1001a7578(r25, 0x0) == 0x0) goto loc_100145830;

loc_1001457f4:
    r0 = objc_msgSend(@class(APMPBStringFilter), r21);
    r0 = sub_1001a7ea8(r25, 0x0, r0);
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (sub_100174ddc(r0) == 0x0) goto loc_1001459c4;

loc_100145828:
    [r26 release];
    goto loc_100145830;

loc_100145830:
    [r25 release];
    [r22 release];
    r28 = r28 + 0x1;
    r26 = var_2B8;
    if (r28 < r23) goto loc_100145634;

loc_100145850:
    r23 = objc_msgSend(var_2A8, var_328);
    r28 = r21;
    if (r23 != 0x0) goto loc_100145604;

loc_10014587c:
    [var_2A8 release];
    r22 = 0x1;
    goto loc_1001459a4;

loc_1001459c4:
    sub_100199354();
    [r26 release];
    goto loc_1001459d8;

loc_1001459d8:
    [r25 release];
    [r22 release];
    goto loc_1001459e8;

loc_1001459e8:
    r21 = var_330;
    r23 = var_2E0;
    r26 = var_2B8;
    goto loc_1001459f4;

loc_1001459f4:
    [var_2A8 release];
    r22 = 0x0;
    goto loc_100145a00;

loc_10014595c:
    sub_100199354();
    goto loc_1001459d8;

loc_100145938:
    sub_100199354();
    r21 = var_330;
    r23 = var_2E0;
    r26 = var_2B8;
    [r22 release];
    goto loc_1001459f4;

loc_100145914:
    sub_100199354();
    goto loc_1001459e8;

loc_100145308:
    *(int128_t *)(&stack[-823] + 0xff) = q0;
    *(int128_t *)(&stack[-839] + 0xff) = q0;
    *(int128_t *)(&stack[-855] + 0xff) = q0;
    r0 = [r25 retain];
    var_2C8 = r0;
    r22 = objc_msgSend(r0, var_328);
    if (r22 == 0x0) goto loc_1001454cc;

loc_100145350:
    var_2A8 = *var_248;
    var_340 = r25;
    stack[-840] = r21;
    goto loc_100145360;

loc_100145360:
    r25 = 0x0;
    goto loc_10014536c;

loc_10014536c:
    r21 = r28;
    if (*var_248 != var_2A8) {
            objc_enumerationMutation(var_2C8);
    }
    r26 = *(var_250 + r25 * 0x8);
    if (sub_1001a7578(r26, 0x3) == 0x0) goto loc_1001454f8;

loc_1001453a4:
    r23 = @selector(length);
    r0 = sub_1001a7b3c(r26, 0x3);
    r29 = r29;
    r0 = [r0 retain];
    r28 = objc_msgSend(r0, r23);
    [r0 release];
    if (r28 == 0x0 || sub_1001a7578(r26, 0x1) == sub_1001a7578(r26, 0x0)) goto loc_1001454f8;

loc_1001453f8:
    r0 = sub_1001a7578(r26, 0x1);
    r28 = r21;
    if (r0 == 0x0) goto loc_100145448;

loc_10014540c:
    r0 = objc_msgSend(@class(APMPBNumberFilter), r28);
    r0 = sub_1001a7ea8(r26, 0x1, r0);
    r29 = r29;
    r27 = [r0 retain];
    if (sub_100173d5c() == 0x0) goto loc_100145508;

loc_100145440:
    [r27 release];
    goto loc_100145448;

loc_100145448:
    if (sub_1001a7578(r26, 0x0) == 0x0) goto loc_100145494;

loc_100145458:
    r0 = objc_msgSend(@class(APMPBStringFilter), r28);
    r0 = sub_1001a7ea8(r26, 0x0, r0);
    r29 = r29;
    r0 = [r0 retain];
    r26 = r0;
    if (sub_100174ddc(r0) == 0x0) goto loc_100145524;

loc_10014548c:
    [r26 release];
    goto loc_100145494;

loc_100145494:
    r25 = r25 + 0x1;
    if (r25 < r22) goto loc_10014536c;

loc_1001454a0:
    r22 = objc_msgSend(var_2C8, var_328);
    r25 = var_340;
    r21 = stack[-840];
    if (r22 != 0x0) goto loc_100145360;

loc_1001454c8:
    r23 = 0x0;
    goto loc_100145548;

loc_100145548:
    [var_2C8 release];
    goto loc_100145550;

loc_100145524:
    sub_100199354();
    r0 = r26;
    goto loc_10014553c;

loc_10014553c:
    [r0 release];
    goto loc_100145544;

loc_100145544:
    r23 = 0x1;
    r25 = var_340;
    r21 = stack[-840];
    goto loc_100145548;

loc_100145508:
    sub_100199354();
    r0 = r27;
    goto loc_10014553c;

loc_1001454f8:
    sub_100199354();
    r28 = r21;
    goto loc_100145544;

loc_1001454cc:
    r23 = 0x0;
    goto loc_100145548;

loc_1001458cc:
    sub_100199354();
    r26 = var_2B8;
    goto loc_100145990;

loc_100145898:
    sub_100199354();
    r26 = var_2B8;
    goto loc_100145998;

loc_1001458bc:
    sub_100199354();
    goto loc_100145998;

loc_100144ea4:
    sub_100199354();
    r22 = 0x0;
    goto loc_100144fe4;
}

@end