
long sub_1000a2264(void * _block, void * arg1, void * arg2) {
    r20 = [arg1 retain];
    r19 = [arg2 retain];
    r22 = [[r20 architectureName] retain];
    [r20 release];
    r20 = [[r19 architectureName] retain];
    [r19 release];
    r19 = [r22 compare:r20];
    [r20 release];
    [r22 release];
    r0 = r19;
    return r0;
}

NSObject * sub_10010d86c(void * _block, void * arg1) {
    r0 = [arg1 objectForKey:@"threads"];
    return r0;
}

long sub_1001111e4(void * _block, void * arg1, void * arg2) {
    r20 = [arg1 retain];
    r19 = [arg2 retain];
    r23 = [[r20 objectForKey:@"base"] retain];
    [r20 release];
    r20 = [[r19 objectForKey:@"base"] retain];
    [r19 release];
    r19 = [r23 compare:r20];
    [r20 release];
    [r23 release];
    r0 = r19;
    return r0;
}

NSObject * sub_100122f20(void * _block, void * arg1) {
    r0 = [arg1 objectForKey:@"kv"];
    return r0;
}

long sub_10012911c(void * _block, struct NSURL * arg1, struct NSURL * arg2) {
    r20 = [arg1 retain];
    r21 = @class(ANSFileUtils);
    r22 = @class(NSDate);
    r19 = [arg2 retain];
    r22 = [[r22 distantPast] retain];
    r21 = [[r21 fileCreatedDateAtURL:r20 withDefault:r22] retain];
    [r20 release];
    [r22 release];
    r20 = @class(ANSFileUtils);
    r22 = [[NSDate distantPast] retain];
    r20 = [[r20 fileCreatedDateAtURL:r19 withDefault:r22] retain];
    [r19 release];
    [r22 release];
    r19 = [r20 compare:r21];
    [r20 release];
    [r21 release];
    r0 = r19;
    return r0;
}

NSDictionary * sub_100145e7c(void * _block, void * arg1) {
    r0 = sub_100145e84();
    return r0;
}

* sub_1001460f4(void * _block, struct NSDictionary * arg1) {
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
    r19 = [arg1 retain];
    if (r19 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"last_bundle_index"];
            r0 = [r0 retain];
            r20 = [r0 intValue];
            [r0 release];
            r22 = [[r19 objectForKeyedSubscript:@"last_bundle_start_timestamp"] retain];
            r0 = [NSNull null];
            r29 = r29;
            r23 = [r0 retain];
            if (r22 != r23) {
                    r0 = [r19 objectForKeyedSubscript:@"last_bundle_start_timestamp"];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 doubleValue];
                    v8 = v0;
                    [r25 release];
            }
            [r23 release];
            [r22 release];
            r0 = [r19 objectForKeyedSubscript:@"last_bundle_end_timestamp"];
            r0 = [r0 retain];
            [r0 doubleValue];
            [r21 release];
            r20 = [[APMAppMetadata alloc] initWithLastBundleIndex:r20 lastBundleStartTimestamp:r3 lastBundleEndTimestamp:r4];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x2ee7 message:@"Received empty dictionary for getting app metadata"];
            [r0 release];
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

NSDictionary * sub_100146310(void * _block, void * arg1) {
    r0 = sub_100145e84();
    return r0;
}

NSDictionary * sub_1001468d4(void * _block, void * arg1) {
    r31 = r31 - 0xc0;
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
    r19 = [arg1 retain];
    if (r19 != 0x0) {
            r20 = @class(NSNumber);
            r20 = [[r20 numberWithInt:[r19 day]] retain];
            r21 = @class(NSNumber);
            r21 = [[r21 numberWithInt:[r19 conversionsCount]] retain];
            r23 = @class(NSNumber);
            r23 = [[r23 numberWithInt:[r19 allEventsCount]] retain];
            r24 = @class(NSNumber);
            r24 = [[r24 numberWithInt:[r19 publicEventsCount]] retain];
            r25 = @class(NSNumber);
            r25 = [[r25 numberWithInt:[r19 errorEventsCount]] retain];
            r26 = @class(NSNumber);
            r26 = [[r26 numberWithInt:[r19 realtimeCount]] retain];
            r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            [r26 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [r21 release];
            [r20 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x2eea message:@"Received empty daily counts for getting dictionary representation"];
            [r0 release];
            r22 = 0x0;
    }
    var_48 = **___stack_chk_guard;
    r20 = objc_retainAutoreleaseReturnValue([r22 autorelease]);
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

NSDictionary * sub_100146cc4(void * _block, void * arg1) {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg1 protoBuffer];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r21 = [[NSNumber numberWithLongLong:[r19 apm_64LSBMD5]] retain];
            r20 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            [r21 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x2eeb message:@"Received empty measurement bundle metadata for getting dictionary representation"];
            [r0 release];
            r20 = 0x0;
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    r0 = [r20 autorelease];
    if (**___stack_chk_guard == var_28) {
            r0 = objc_retainAutoreleaseReturnValue(r0);
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

* sub_100146ed0(void * _block, struct NSDictionary * arg1) {
    r1 = arg1;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r1 != 0x0) {
            r0 = [r1 objectForKeyedSubscript:@"metadata"];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            if ([r0 length] != 0x0) {
                    r20 = [[APMPBMeasurementBundle alloc] initWithBuffer:r19];
            }
            else {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x4 messageCode:0x2eed message:@"Event metadata should not be empty for getting measurement bundle"];
                    [r0 release];
                    r20 = 0x0;
            }
            [r19 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x2eec message:@"Received empty dictionary for getting measurement bundle"];
            [r0 release];
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

* sub_100149f3c(void * _block, struct NSDictionary * arg1) {
    r0 = sub_100149f44();
    return r0;
}

* sub_10014a48c(void * _block, struct NSDictionary * arg1) {
    r0 = sub_100149f44();
    return r0;
}

NSDictionary * sub_10014a558(void * _block, void * arg1) {
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
    r29 = &saved_fp;
    r19 = [[arg1 retain] retain];
    if (r19 == 0x0) goto loc_10014a8dc;

loc_10014a59c:
    r0 = [r19 name];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 length];
    [r0 release];
    if (r22 == 0x0) goto loc_10014a918;

loc_10014a5d8:
    var_E8 = [NSMutableDictionary alloc];
    var_E0 = [[r19 name] retain];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithInt:[r19 lifetimeCount]] retain];
    r23 = @class(NSNumber);
    r2 = [r19 currentBundleCount];
    r23 = [[r23 numberWithInt:r2] retain];
    r25 = @class(NSNumber);
    [r19 lastFireTimestamp];
    r25 = [[r25 numberWithDouble:r2] retain];
    r27 = @class(NSNumber);
    [r19 lastBundledTimestamp];
    r26 = [[r27 numberWithDouble:r2] retain];
    r27 = @class(NSNumber);
    r27 = [[r27 numberWithInt:[r19 lastSamplingRate]] retain];
    r28 = @class(NSNumber);
    r28 = [[r28 numberWithBool:[r19 lastExemptFromSampling]] retain];
    r24 = [[NSNumber numberWithInt:[r19 lastBundledDay]] retain];
    r20 = [[NSDictionary dictionaryWithObjects:&var_98 forKeys:&var_D8 count:0x8] retain];
    r21 = [var_E8 initWithDictionary:r20];
    [r20 release];
    [r24 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r23 release];
    [r22 release];
    [var_E0 release];
    r0 = [r19 lastSampledComplexEventID];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 lastSampledComplexEventID] retain];
            [r21 setObject:r20 forKeyedSubscript:@"last_sampled_complex_event_id"];
            [r20 release];
    }
    goto loc_10014a964;

loc_10014a964:
    var_58 = **___stack_chk_guard;
    [r19 release];
    r20 = objc_retainAutoreleaseReturnValue([r21 autorelease]);
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10014a918:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10014a950;

loc_10014a950:
    [r20 logWithLevel:r2 messageCode:r3 message:r4];
    [r20 release];
    r21 = 0x0;
    goto loc_10014a964;

loc_10014a8dc:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10014a950;
}

* sub_10014ac84(void * _block, struct NSDictionary * arg1) {
    r0 = sub_10014ac8c();
    return r0;
}

* sub_10014b2a8(void * _block, struct NSDictionary * arg1) {
    r0 = sub_10014ac8c();
    return r0;
}

NSDictionary * sub_10014b374(void * _block, void * arg1) {
    r31 = r31 - 0xa0;
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
    r19 = [[arg1 retain] retain];
    if (r19 == 0x0) goto loc_10014b590;

loc_10014b3b4:
    r0 = [r19 origin];
    r29 = r29;
    r0 = [r0 retain];
    r22 = [r0 length];
    [r0 release];
    if (r22 == 0x0) goto loc_10014b5cc;

loc_10014b3f4:
    r23 = @selector(length);
    r0 = [r19 name];
    r29 = r29;
    r0 = [r0 retain];
    r24 = objc_msgSend(r0, r23);
    [r0 release];
    if (r24 == 0x0) goto loc_10014b614;

loc_10014b42c:
    r0 = [r19 value];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 isString] != 0x0) {
            r23 = @selector(length);
            r0 = [r20 stringValue];
            r29 = r29;
            r0 = [r0 retain];
            r23 = objc_msgSend(r0, r23);
            [r0 release];
            if (r23 != 0x0) {
                    r23 = [sub_100152908() retain];
                    r21 = [[r19 origin] retain];
                    r24 = [[r19 name] retain];
                    [r19 lastSetTimestamp];
                    r25 = [[NSNumber numberWithDouble:r2] retain];
                    r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
                    [r25 release];
                    [r24 release];
                    [r21 release];
                    [r23 release];
            }
            else {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x1 messageCode:0x2ef8 message:@"Received empty string value for user property"];
                    [r0 release];
                    r22 = 0x0;
            }
    }
    else {
            r23 = [sub_100152908() retain];
            r21 = [[r19 origin] retain];
            r24 = [[r19 name] retain];
            [r19 lastSetTimestamp];
            r25 = [[NSNumber numberWithDouble:r2] retain];
            r22 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            [r25 release];
            [r24 release];
            [r21 release];
            [r23 release];
    }
    goto loc_10014b608;

loc_10014b608:
    [r20 release];
    goto loc_10014b660;

loc_10014b660:
    var_48 = **___stack_chk_guard;
    [r19 release];
    r20 = objc_retainAutoreleaseReturnValue([r22 autorelease]);
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10014b614:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10014b64c;

loc_10014b64c:
    [r20 logWithLevel:r2 messageCode:r3 message:r4];
    [r20 release];
    r22 = 0x0;
    goto loc_10014b660;

loc_10014b5cc:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r20 = r0;
    [r0 logWithLevel:0x1 messageCode:0x2ef6 message:@"Received user property with empty origin for getting dictionary representation"];
    goto loc_10014b608;

loc_10014b590:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10014b64c;
}

* sub_10014b834(void * _block, struct NSDictionary * arg1) {
    r0 = sub_10014b83c();
    return r0;
}

* sub_10014bdcc(void * _block, struct NSDictionary * arg1) {
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
    r29 = &saved_fp;
    r19 = [arg1 retain];
    if (r19 != 0x0) {
            r21 = [APMEventFilter alloc];
            r0 = [r19 objectForKeyedSubscript:@"audience_id"];
            r0 = [r0 retain];
            r20 = r0;
            r24 = [r0 intValue];
            r0 = [r19 objectForKeyedSubscript:@"filter_id"];
            r0 = [r0 retain];
            r23 = [r0 intValue];
            r26 = [[r19 objectForKeyedSubscript:@"event_name"] retain];
            r22 = [[r19 objectForKeyedSubscript:@"data"] retain];
            r21 = [r21 initWithAudienceID:r24 filterID:r23 eventName:r26 data:r22];
            [r22 release];
            [r26 release];
            [r0 release];
            [r20 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x2ef9 message:@"Received empty dictionary for getting event filter"];
            [r0 release];
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

* sub_10014c010(void * _block, struct NSDictionary * arg1) {
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
    r29 = &saved_fp;
    r19 = [arg1 retain];
    if (r19 != 0x0) {
            r21 = [APMPropertyFilter alloc];
            r0 = [r19 objectForKeyedSubscript:@"audience_id"];
            r0 = [r0 retain];
            r20 = r0;
            r24 = [r0 intValue];
            r0 = [r19 objectForKeyedSubscript:@"filter_id"];
            r0 = [r0 retain];
            r23 = [r0 intValue];
            r26 = [[r19 objectForKeyedSubscript:@"property_name"] retain];
            r22 = [[r19 objectForKeyedSubscript:@"data"] retain];
            r21 = [r21 initWithAudienceID:r24 filterID:r23 propertyName:r26 data:r22];
            [r22 release];
            [r26 release];
            [r0 release];
            [r20 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x4 messageCode:0x2efd message:@"Received empty dictionary for getting property filter"];
            [r0 release];
            r21 = 0x0;
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

* sub_10014c25c(void * _block, struct NSDictionary * arg1) {
    r0 = sub_10014b83c();
    return r0;
}

NSDictionary * sub_10014dd20(void * _block, void * arg1) {
    r0 = objc_retainAutoreleaseReturnValue(arg1);
    return r0;
}

NSDictionary * sub_10014de30(void * _block, void * arg1) {
    r0 = objc_retainAutoreleaseReturnValue(arg1);
    return r0;
}

* sub_10014e308(void * _block, struct NSDictionary * arg1) {
    r0 = sub_10014e310();
    return r0;
}

NSDictionary * sub_10014eb54(void * _block, void * arg1) {
    r31 = r31 - 0x110;
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
    r19 = [[arg1 retain] retain];
    if (r19 == 0x0) goto loc_10014f090;

loc_10014eb98:
    r0 = [r19 name];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 length];
    [r0 release];
    if (r23 == 0x0) goto loc_10014f0cc;

loc_10014ebd8:
    r20 = @selector(length);
    r0 = [r19 origin];
    r29 = r29;
    r0 = [r0 retain];
    r24 = objc_msgSend(r0, r20);
    [r0 release];
    if (r24 == 0x0) goto loc_10014f108;

loc_10014ec10:
    r0 = [r19 value];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    [r0 release];
    if (r21 == 0x0) goto loc_10014f1b0;

loc_10014ec38:
    r24 = @selector(value);
    r20 = @selector(length);
    var_F0 = [NSMutableDictionary alloc];
    var_E0 = [[r19 name] retain];
    var_E8 = [[r19 origin] retain];
    var_F8 = [objc_msgSend(r19, r24) retain];
    r25 = [sub_100152908() retain];
    r22 = @class(NSNumber);
    [r19 creationTimestamp];
    r26 = [[r22 numberWithDouble:r2] retain];
    r22 = @class(NSNumber);
    r2 = [r19 isActive];
    r27 = [[r22 numberWithBool:r2] retain];
    r22 = @class(NSNumber);
    [r19 triggerTimeout];
    r22 = [[r22 numberWithDouble:r2] retain];
    r23 = @class(NSNumber);
    [r19 triggeredTimestamp];
    r23 = [[r23 numberWithDouble:r2] retain];
    r21 = @class(NSNumber);
    [r19 timeToLive];
    r28 = [[r21 numberWithDouble:r2] retain];
    r24 = [[NSDictionary dictionaryWithObjects:&var_98 forKeys:&var_D8 count:0x8] retain];
    r21 = [var_F0 initWithDictionary:r24];
    [r24 release];
    [r28 release];
    [r23 release];
    [r22 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [var_F8 release];
    [var_E8 release];
    [var_E0 release];
    r0 = [r19 triggerEventName];
    r29 = r29;
    r0 = [r0 retain];
    r20 = objc_msgSend(r0, r20);
    [r0 release];
    if (r20 != 0x0) {
            r0 = [r19 triggerEventName];
            r29 = r29;
            r20 = [r0 retain];
            [r21 setObject:r20 forKeyedSubscript:@"trigger_event_name"];
            [r20 release];
    }
    r0 = [r19 triggeredEvent];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 triggeredEvent] retain];
            r0 = sub_100150058();
            r29 = r29;
            r22 = [r0 retain];
            [r21 setObject:r22 forKeyedSubscript:@"triggered_event"];
            [r22 release];
            [r20 release];
    }
    r0 = [r19 timedOutEvent];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 timedOutEvent] retain];
            r0 = sub_100150058();
            r29 = r29;
            r22 = [r0 retain];
            [r21 setObject:r22 forKeyedSubscript:@"timed_out_event"];
            [r22 release];
            [r20 release];
    }
    r0 = [r19 expiredEvent];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10014f154;

loc_10014f040:
    r20 = [[r19 expiredEvent] retain];
    r22 = [sub_100150058() retain];
    [r21 setObject:r22 forKeyedSubscript:@"expired_event"];
    [r22 release];
    goto loc_10014f1ec;

loc_10014f1ec:
    [r20 release];
    goto loc_10014f154;

loc_10014f154:
    var_58 = **___stack_chk_guard;
    [r19 release];
    r20 = objc_retainAutoreleaseReturnValue([r21 autorelease]);
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10014f1b0:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r20 = r0;
    [r0 logWithLevel:0x1 messageCode:0x2f0a message:@"Received conditional user property with nil value for getting dictionary representation"];
    goto loc_10014f1ec;

loc_10014f108:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10014f140;

loc_10014f140:
    [r20 logWithLevel:r2 messageCode:r3 message:r4];
    [r20 release];
    r21 = 0x0;
    goto loc_10014f154;

loc_10014f0cc:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10014f140;

loc_10014f090:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_10014f140;
}

NSNumber * sub_10016e904(void * _block, struct NSNumber * arg1) {
    r1 = arg1;
    if (r1 != 0x0) {
            r19 = @class(NSNumber);
            [r1 longLongValue];
            asm { scvtf      d0, x0 };
            asm { fdiv       d0, d0, d1 };
            r0 = [r19 numberWithDouble:r2];
            r0 = [r0 retain];
            r0 = [r0 autorelease];
    }
    else {
            r0 = [0x0 autorelease];
    }
    return r0;
}

long sub_100195e64(void * _block, struct NSString * arg1, struct NSString * arg2) {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg1 retain];
    r20 = [arg2 retain];
    if (r19 != 0x0) {
            if (r20 != 0x0) {
                    r22 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
                    r21 = [r19 compare:r20 options:0x0 range:0x0 locale:[r19 length]];
                    [r22 release];
            }
            else {
                    r21 = 0x1;
            }
    }
    else {
            r21 = 0xffffffffffffffff;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

long sub_100198570(void * _block, struct NSString * arg1, struct NSString * arg2) {
    r21 = [arg1 retain];
    r19 = [arg1 compare:arg2 options:0x1];
    [r21 release];
    r0 = r19;
    return r0;
}

NSDictionary * sub_10020c654(void * _block) {
    r0 = [ADCAdColonyAPI getAppInfo];
    return r0;
}

NSDictionary * sub_10020c848(void * _block, struct NSString * arg1) {
    r0 = [ADCAdColonyAPI getAppInfo];
    return r0;
}

NSDictionary * sub_10020c6c8(void * _block, struct NSString * arg1, struct NSDictionary * arg2, unsigned long long arg3, unsigned long long arg4, struct NSString * arg5, bool arg6, unsigned long long arg7) {
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
    r26 = arg7;
    var_54 = arg6;
    r24 = arg4;
    r25 = arg3;
    r19 = [arg1 retain];
    r21 = [arg2 retain];
    r23 = [arg5 retain];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 zoneFromID];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:arg1];
    r29 = &saved_fp;
    r27 = [r0 retain];
    [r22 release];
    if (r27 != 0x0) {
            r0 = [ADCAdColonyAPI updateZoneInfoForZoneID:r19 rewardInfo:r21 zoneType:r25 status:r24 appSessionID:r23 rewarded:var_54 playInterval:r26];
    }
    else {
            r0 = [ADCAdColonyAPI zoneInfoForZoneID:r19 rewardInfo:r21 zoneType:r25 status:r24 appSessionID:r23 rewarded:var_54 playInterval:r26];
    }
    r22 = [r0 retain];
    [r23 release];
    [r21 release];
    [r19 release];
    [r27 release];
    [r20 release];
    r0 = [r22 autorelease];
    return r0;
}

NSArray * sub_10020d464(void * _block, int arg1) {
    r0 = [ADCCryptoAPI uuid:arg1];
    return r0;
}

NSString * sub_10020d480(void * _block, struct JSValue * arg1) {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg1 retain];
    if (r19 != 0x0 && ([r19 isUndefined] & 0x1) == 0x0) {
            if ([r19 isString] != 0x0) {
                    r21 = [[r19 toString] retain];
                    r20 = [[ADCCryptoAPI sha1ForInput:r21] retain];
                    [r21 release];
            }
            else {
                    r20 = @"";
                    [r20 retain];
            }
    }
    else {
            r20 = @"";
            [r20 retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

long sub_10020d544(void * _block, struct JSValue * arg1) {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg1 retain];
    if (r19 != 0x0 && ([r19 isUndefined] & 0x1) == 0x0) {
            if ([r19 isString] != 0x0) {
                    r21 = [[r19 toString] retain];
                    r20 = [ADCCryptoAPI crc32ForInput:r21];
                    [r21 release];
            }
            else {
                    r20 = 0xffffffffffffffff;
            }
    }
    else {
            r20 = 0xffffffffffffffff;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

NSDictionary * sub_10020d5f4(void * _block, struct NSString * arg1) {
    r0 = [ADCDeviceAPI getInfoWithoutAsyncData];
    return r0;
}

NSDictionary * sub_10020e994(void * _block, struct JSValue * arg1) {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg1 retain];
    if (r19 != 0x0 && ([r19 isUndefined] & 0x1) == 0x0) {
            if ([r19 isObject] != 0x0) {
                    r21 = [[r19 toDictionary] retain];
                    r20 = [[ADCModuleAPI loadWithDict:r21] retain];
                    [r21 release];
            }
            else {
                    r20 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
            }
    }
    else {
            r20 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

long sub_10025aef0(void * _block, struct NSNumber * arg1, struct NSNumber * arg2) {
    r21 = [arg1 retain];
    r19 = [arg1 compare:arg2];
    [r21 release];
    r0 = r19;
    return r0;
}

long sub_10025de70(void * _block, struct NSString * arg1, struct NSString * arg2) {
    r21 = [arg1 retain];
    r19 = [arg1 compare:arg2];
    [r21 release];
    r0 = r19;
    return r0;
}

* sub_1004731f4(void * _block, struct NSDictionary * arg1) {
    r20 = [[arg1 objectForKeyedSubscript:@"text"] retain];
    r21 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
    r22 = [[r20 stringByTrimmingCharactersInSet:r21] retain];
    r19 = [[NSURL URLWithString:r2] retain];
    [r22 release];
    [r21 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

* sub_1004732bc(void * _block, struct NSDictionary * arg1) {
    r20 = [arg1 retain];
    r19 = [objc_alloc() initWithDictionary:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

* sub_10048f008(void * _block, struct NSDictionary * arg1) {
    r0 = [arg1 retain];
    r0 = [r0 autorelease];
    return r0;
}

* sub_1004a45a4(void * _block, struct NSDictionary * arg1) {
    r0 = [arg1 retain];
    r0 = [r0 autorelease];
    return r0;
}

* sub_1004ce568(void * _block, struct NSDictionary * arg1) {
    r20 = [arg1 retain];
    r19 = [objc_alloc() initWithDictionary:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

long sub_1004ebddc(void * _block, struct NSIndexPath * arg1, struct NSIndexPath * arg2) {
    r0 = [arg1 retain];
    r19 = [r0 compare:arg2];
    [r0 release];
    r0 = r19;
    return r0;
}

* sub_1004f6b38(void * _block) {
    r0 = [MPGeolocationProvider sharedProvider];
    return r0;
}

* sub_1004ff5d8(void * _block, struct NSDictionary * arg1) {
    r20 = [arg1 retain];
    r19 = [objc_alloc() initWithDictionary:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

long sub_1004ffd70(void * _block, struct MPVASTMediaFile * arg1, struct MPVASTMediaFile * arg2) {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg1 retain];
    r19 = [arg2 retain];
    [r20 bitrate];
    [r20 release];
    [r19 bitrate];
    r0 = [r19 release];
    if (d8 < d9) {
            if (CPU_FLAGS & S) {
                    r0 = 0x1;
            }
    }
    return r0;
}

long sub_100624d10(void * _block, void * arg1, void * arg2) {
    r31 = r31 - 0x60;
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
    r20 = [arg1 retain];
    r19 = [arg2 retain];
    r23 = [r20 getResourceValue:r2 forKey:r3 error:r4];
    [r20 release];
    r20 = [0x0 retain];
    if (r23 != 0x0) {
            r22 = [r19 getResourceValue:r2 forKey:r3 error:r4];
            r21 = [0x0 retain];
            if (r22 != 0x0) {
                    [r20 timeIntervalSince1970];
                    [r21 timeIntervalSince1970];
                    if (d8 >= d0) {
                            asm { csinc      x22, x8, xzr, pl };
                    }
                    r22 = @selector(timeIntervalSince1970);
            }
            else {
                    r22 = 0x0;
            }
    }
    else {
            r22 = 0x0;
            r21 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

NSString * sub_10064563c(void * _block) {
    r0 = [VungleLogger sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:@"IDFV string operation starting." level:0xf4240 context:@"SDK Initialization"];
    [r0 release];
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 identifierForVendor];
    r0 = [r0 retain];
    r21 = [[r0 UUIDString] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

NSString * sub_100645898(void * _block) {
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
    r0 = [ASIdentifierManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isAdvertisingTrackingEnabled];
    [r0 release];
    if (r22 == 0x0) {
            r0 = [VungleLogger sharedLogger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 clearLogWithCompletionBlock:0x100e89888];
            [r0 release];
    }
    r23 = [[NSUserDefaults standardUserDefaults] retain];
    r0 = @class(ASIdentifierManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    [r23 setBool:[r0 isAdvertisingTrackingEnabled] forKey:@"vungleAdTrackingEnabled"];
    [r0 release];
    [r23 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r0 release];
    r0 = [VungleLogger sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:@"IFA string operation starting." level:0xf4240 context:@"SDK Initialization"];
    [r0 release];
    r0 = @class(ASIdentifierManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 advertisingIdentifier];
    r0 = [r0 retain];
    r21 = [[r0 UUIDString] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

NSString * sub_100646fac(void * _block) {
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
    r0 = [ASIdentifierManager sharedManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isAdvertisingTrackingEnabled];
    [r0 release];
    if (r22 == 0x0) {
            r0 = [VungleLogger sharedLogger];
            r29 = r29;
            r0 = [r0 retain];
            [r0 clearLogWithCompletionBlock:0x100e89908];
            [r0 release];
    }
    r23 = [[NSUserDefaults standardUserDefaults] retain];
    r0 = @class(ASIdentifierManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    [r23 setBool:[r0 isAdvertisingTrackingEnabled] forKey:@"vungleAdTrackingEnabled"];
    [r0 release];
    [r23 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r0 release];
    r0 = [VungleLogger sharedLogger];
    r0 = [r0 retain];
    [r0 logMessage:@"Request IFA operation request sent." level:0xf4240 context:@"SDK Initialization"];
    [r0 release];
    r0 = @class(ASIdentifierManager);
    r0 = [r0 sharedManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 advertisingIdentifier];
    r0 = [r0 retain];
    r21 = [[r0 UUIDString] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

long sub_100676094(void * _block, void * arg1, void * arg2) {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg1 retain];
    r19 = [arg2 retain];
    [r20 CGRectValue];
    [r20 release];
    [r19 CGRectValue];
    r0 = [r19 release];
    if (d8 < d9) {
            asm { csetm      x8, mi };
    }
    if (CPU_FLAGS & LE) {
            asm { csinc      x0, x8, xzr, le };
    }
    return r0;
}

UIViewController * sub_100677360(void * _block, struct UIViewController * arg1) {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg1 retain];
    [UISplitViewController class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r19 retain];
            r20 = r0;
            if ([r0 displayMode] == 0x3) {
                    r0 = [r20 viewControllers];
                    r0 = [r0 retain];
                    r21 = [[r0 firstObject] retain];
                    [r0 release];
            }
            else {
                    r21 = [[r20 presentedViewController] retain];
            }
            [r20 release];
    }
    else {
            r21 = [[r19 presentedViewController] retain];
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

long sub_1006f08b8(void * _block, struct NSDictionary * arg1, struct NSDictionary * arg2) {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg1 retain];
    r20 = [arg2 retain];
    r23 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r23 release];
    if (r23 < r0) {
            r21 = 0xffffffffffffffff;
    }
    else {
            r21 = @selector(objectForKeyedSubscript:);
            r23 = [objc_msgSend(r19, r21) retain];
            r0 = objc_msgSend(r20, r21);
            r0 = [r0 retain];
            if (r23 > r0) {
                    if (CPU_FLAGS & A) {
                            r21 = 0x1;
                    }
            }
            [r0 release];
            [r23 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

long sub_10074ef90(void * _block, void * arg1, void * arg2) {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg1 retain];
    r19 = [arg2 retain];
    [r20 CGRectValue];
    [r20 release];
    [r19 CGRectValue];
    r0 = [r19 release];
    r8 = 0xffffffffffffffff;
    if (d8 < d9) {
            if (!CPU_FLAGS & S) {
                    r8 = 0x0;
            }
            else {
                    r8 = 0xffffffffffffffff;
            }
    }
    if (CPU_FLAGS & G) {
            if (!CPU_FLAGS & G) {
                    r0 = r8;
            }
            else {
                    r0 = 0x1;
            }
    }
    return r0;
}

UIViewController * sub_1007502b0(void * _block, struct UIViewController * arg1) {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg1 retain];
    [UISplitViewController class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r19 retain];
            r20 = r0;
            if ([r0 displayMode] == 0x3) {
                    r0 = [r20 viewControllers];
                    r0 = [r0 retain];
                    r21 = [[r0 firstObject] retain];
                    [r0 release];
            }
            else {
                    r21 = [[r20 presentedViewController] retain];
            }
            [r20 release];
    }
    else {
            r21 = [[r19 presentedViewController] retain];
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

<GADSignal> * sub_1007e9874(void * _block) {
    r0 = [GADRequestStatisticsSignals sharedInstance];
    return r0;
}

<GADSignal> * sub_1007e99b4(void * _block) {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForInfoDictionaryKey:@"NSCameraUsageDescription"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    [r0 release];
    [r19 release];
    r2 = **_AVMediaTypeVideo;
    r8 = &@selector(addObserver:userInfoKeys:targetObject:);
    r0 = objc_msgSend(@class(AVCaptureDevice), *(r8 + 0x38));
    if (r0 < 0x4) {
            r8 = &@selector(addObserver:userInfoKeys:targetObject:);
            if (CPU_FLAGS & B) {
                    r8 = 0x1;
            }
    }
    r9 = r0 & 0xf;
    if (r9 == 0x3) {
            if (CPU_FLAGS & E) {
                    r9 = 0x1;
            }
    }
    r19 = r8 & r9;
    if (sub_1009f77b0(0xb, 0x0, 0x0) != 0x0) {
            r0 = NSClassFromString(@"ARWorldTrackingConfiguration");
            r21 = r0;
            r22 = @selector(isSupported);
            r2 = r22;
            if ([r0 respondsToSelector:r2] != 0x0) {
                    r22 = @selector(isSupported);
                    r21 = objc_msgSend(r21, r22);
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = 0x0;
    }
    if (r20 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r22 = 0x1;
            }
    }
    if (NSClassFromString(@"GARArWebView") != 0x0) {
            if (CPU_FLAGS & NE) {
                    r2 = 0x1;
            }
    }
    var_38 = **___stack_chk_guard;
    r20 = [[NSNumber numberWithBool:r2] retain];
    r21 = [[NSNumber numberWithBool:r21] retain];
    r22 = [[NSNumber numberWithBool:r22] retain];
    r19 = [[NSNumber numberWithBool:r19] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_58 forKeys:&var_78 count:0x4];
    r23 = [r0 retain];
    [r19 release];
    [r22 release];
    [r21 release];
    [r20 release];
    r19 = [[GADStaticSignal alloc] initWithDictionary:r23];
    [r23 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

<GADSignal> * sub_100803444(void * _block) {
    r0 = [GADDeviceOrientationSignals alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

<GADSignal> * sub_100808420(void * _block) {
    r0 = [GADDeviceAudioSignals alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

<GADSignal> * sub_10081996c(void * _block) {
    r0 = [GADDevice sharedInstance];
    return r0;
}

<GADSignal> * sub_100862f7c(void * _block) {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[GADDevice sharedInstance] retain];
    r20 = [[NSArray arrayWithObjects:&var_48 count:0x2] retain];
    r0 = [r19 canOpenURLStrings:r20];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKeyedSubscript:@"kindle://home"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 boolValue];
    [r0 release];
    if (r23 != 0x0) {
            asm { csinc      x2, x8, xzr, ne };
    }
    var_38 = **___stack_chk_guard;
    r22 = [[NSNumber numberWithUnsignedInteger:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1];
    r23 = [r0 retain];
    [r22 release];
    r22 = [[GADStaticSignal alloc] initWithDictionary:r23];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

<GADSignal> * sub_100868158(void * _block) {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[NSDictionary dictionaryWithObjects:&stack[-56] forKeys:&stack[-56] count:0x0] retain];
    r0 = [GADAnalytics sharedInstance];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r21 = [sub_1008acf40() retain];
            [r19 release];
            r19 = r21;
    }
    r21 = [[GADStaticSignal alloc] initWithDictionary:r19];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

<GADSignal> * sub_100868268(void * _block) {
    r31 = r31 - 0x150;
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
    r19 = [[NSUserDefaults standardUserDefaults] retain];
    r20 = [[NSMutableDictionary alloc] init];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 arrayForKey:*0x100e9b9e8];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r22 release];
    r0 = [r23 retain];
    r22 = r0;
    r24 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r24 != 0x0) {
            do {
                    r21 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            r25 = @selector(objectForKey:);
                            r26 = *(0x0 + r21 * 0x8);
                            r0 = objc_msgSend(r19, r25);
                            r29 = r29;
                            r27 = [r0 retain];
                            if (r27 != 0x0) {
                                    sub_100822058(r20, r26, r27);
                            }
                            [r27 release];
                            r21 = r21 + 0x1;
                    } while (r21 < r24);
                    r24 = [r22 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-240] forKeys:&var_E8 count:0x1];
    r23 = [r0 retain];
    r21 = [[GADStaticSignal alloc] initWithDictionary:r23];
    [r23 release];
    [r22 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

<GADSignal> * sub_100893ac0(void * _block) {
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
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = [r0 boolForKey:*0x100e9b440];
    [r0 release];
    if (r20 != 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r19 = [[r0 bundlePath] retain];
            [r0 release];
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            var_60 = 0x0;
            [[r0 attributesOfFileSystemForPath:r19 error:&var_60] retain];
            r21 = [var_60 retain];
            [r0 release];
            sub_100822058([[NSMutableDictionary alloc] init], *0x100e95ed8, [[r21 localizedDescription] retain]);
            [r25 release];
            sub_100822058(r22, *0x100e95ee0, [[r20 objectForKeyedSubscript:**_NSFileSystemSize] retain]);
            [r26 release];
            sub_100822058(r22, *0x100e95ee8, [[r20 objectForKeyedSubscript:**_NSFileSystemFreeSize] retain]);
            [r25 release];
            r23 = [GADStaticSignal alloc];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
            r24 = [r0 retain];
            r23 = [r23 initWithDictionary:r24];
            [r24 release];
            [r22 release];
            [r21 release];
            [r20 release];
            [r19 release];
    }
    else {
            r23 = 0x0;
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

<GADSignal> * sub_10089bd08(void * _block) {
    return 0x0;
}

<GADSignal> * sub_1008a3894(void * _block) {
    r0 = [GADContentHashingController sharedInstance];
    return r0;
}

<GADSignal> * sub_1008b3c9c(void * _block) {
    r19 = [sub_1008b3600() retain];
    r20 = [[GADStaticSignal alloc] initWithDictionary:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

long sub_1008d22a0(void * _block, struct NSString * arg1, struct NSString * arg2) {
    objc_storeStrong(&saved_fp - 0x10, arg1);
    objc_storeStrong(&saved_fp - 0x18, arg2);
    var_38 = [0x0 compare:0x0];
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    objc_storeStrong(&saved_fp - 0x10, 0x0);
    r0 = var_38;
    return r0;
}

* sub_1008d95c8(void * _block, struct NSData * arg1) {
    objc_storeStrong(&saved_fp - 0x10, arg1);
    var_38 = [[NSString alloc] initWithData:0x0 encoding:0x4];
    objc_storeStrong(&saved_fp - 0x10, 0x0);
    r0 = [var_38 autorelease];
    return r0;
}

long sub_1008e3f50(void * _block, struct NSNumber * arg1, struct NSNumber * arg2) {
    objc_storeStrong(&saved_fp - 0x10, arg1);
    objc_storeStrong(&saved_fp - 0x18, arg2);
    var_38 = [0x0 compare:0x0];
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    objc_storeStrong(&saved_fp - 0x10, 0x0);
    r0 = var_38;
    return r0;
}

NSString * sub_100915288(void * _block) {
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

NSString * sub_10091600c(void * _block) {
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

NSString * sub_1009169cc(void * _block) {
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

NSString * sub_1009171f0(void * _block) {
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

long sub_10091c59c(void * _block, void * arg1, void * arg2) {
    r20 = [arg1 retain];
    r19 = [arg2 retain];
    r0 = [r20 retain];
    r21 = [r0 compare:r19];
    [r0 release];
    [r19 release];
    [r0 release];
    r0 = r21;
    return r0;
}

long sub_10092bfc8(void * _block, void * arg1, void * arg2) {
    r20 = [arg1 retain];
    r19 = [arg2 retain];
    r20 = [r20 retain];
    r21 = [r19 compare:r20];
    [r20 release];
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

long sub_10095c430(void * _block, void * arg1, void * arg2) {
    r20 = [arg1 retain];
    r19 = [arg2 retain];
    r23 = [[r20 valueForKey:@"timestamp"] retain];
    [r20 release];
    r20 = [[r19 valueForKey:@"timestamp"] retain];
    [r19 release];
    r19 = [r23 compare:r20];
    [r20 release];
    [r23 release];
    r0 = r19;
    return r0;
}

long sub_100963740(void * _block, struct NSNumber * arg1, struct NSNumber * arg2) {
    r21 = [arg1 retain];
    r19 = [arg1 compare:arg2];
    [r21 release];
    r0 = r19;
    return r0;
}

long sub_1009689c0(void * _block, struct NSString * arg1, struct NSString * arg2) {
    r21 = [arg1 retain];
    r19 = [arg1 compare:arg2];
    [r21 release];
    r0 = r19;
    return r0;
}

* sub_100969a38(void * _block, struct NSData * arg1) {
    r21 = [arg1 retain];
    r19 = [[NSString alloc] initWithData:r21 encoding:0x4];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

__ZN13mcwebsocketpp10connectionINS_6config11core_clientEE18handle_write_frameERKNSt3__110error_codeE(void * arg0) {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r1;
    r19 = arg0;
    r0 = *(arg0 + 0x4610);
    if ((*(int8_t *)(r0 + 0x41) & 0x4) != 0x0) {
            sub_1009a2524(r0, 0x400, "connection handle_write_frame");
    }
    r0 = *(r19 + 0x4460);
    r21 = *(int8_t *)(*(r0 + 0xfffffffffffffff0) + 0x5e);
    *(r19 + 0x4448) = *(r19 + 0x4440);
    r22 = *(r19 + 0x4458);
    if (r0 != r22) {
            do {
                    r0 = sub_10027ff50(r0 - 0x10);
            } while (r22 != r0);
    }
    *(r19 + 0x4460) = r22;
    if (*(int32_t *)r20 == 0x0) goto loc_1009aafc0;

loc_1009aaf74:
    var_28 = **___stack_chk_guard;
    sub_1009ab658(r19, 0x20, "handle_write_frame", r20);
    if (**___stack_chk_guard == var_28) {
            r0 = sub_1009ab294(r19, r20);
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009aafc0:
    if (r21 == 0x0) goto loc_1009ab008;

loc_1009aafc4:
    std::__1::system_category();
    r0 = sub_1009ab294(r19, &var_58);
    goto loc_1009aafdc;

loc_1009aafdc:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009ab008:
    std::__1::mutex::lock();
    *(int8_t *)(r19 + 0x4470) = 0x0;
    r21 = *(r19 + 0x4430);
    r0 = std::__1::mutex::unlock();
    if (r21 == 0x0) goto loc_1009aafdc;

loc_1009ab02c:
    sub_1009a4c34(r19);
    r0 = operator new();
    r8 = *qword_100e60968;
    r9 = *mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::write_frame();
    *(int128_t *)r0 = r8 + 0x10;
    *(int128_t *)(r0 + 0x8) = r9;
    *(int128_t *)(r0 + 0x10) = 0x0;
    *(int128_t *)(r0 + 0x18) = var_58;
    *(r0 + 0x20) = var_50;
    sub_1009a3e1c(r19, &stack[-88]);
    r0 = r0;
    if (&stack[-88] == r0) goto loc_1009ab09c;

loc_1009ab08c:
    if (r0 == 0x0) goto loc_1009ab0a8;

loc_1009ab090:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1009ab0a4;

loc_1009ab0a4:
    r0 = (r8)();
    goto loc_1009ab0a8;

loc_1009ab0a8:
    if (0x0 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (*mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::write_frame() == 0x0) {
                    (*(*0x0 + 0x10))(0x0);
                    r0 = std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_1009aafdc;

loc_1009ab09c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1009ab0a4;
}

__ZN13mcwebsocketpp10connectionINS_6config11core_clientEE30handle_close_handshake_timeoutERKNSt3__110error_codeE(void * arg0) {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = r1;
    r19 = arg0;
    sub_1009a6c98(&var_40, 0x5);
    r9 = *(r21 + 0x8);
    r8 = *(int32_t *)r21;
    if (r9 == var_38) {
            asm { ccmp       w8, w11, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            r20 = *(r19 + 0x4610);
            if (r8 != 0x0) {
                    std::__1::error_code::message();
                    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
                    *(int128_t *)(r0 + 0x8) = 0x0;
                    *(int128_t *)(r0 + 0x10) = 0x0;
                    *r0 = 0x0;
                    r0 = sub_1009a4cc0(r20, 0x400, &var_40);
                    if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
                            r0 = operator delete(var_40);
                    }
                    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                            r0 = operator delete(var_58);
                    }
            }
            else {
                    sub_1009a2524(r20, 0x400, "asio close handshake timer expired");
                    r8 = 0x1011c4d88;
                    asm { ldarb      w8, [x8] };
                    if ((r8 & 0x1) == 0x0) {
                            if (__cxa_guard_acquire() != 0x0) {
                                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                                    __cxa_atexit();
                                    __cxa_guard_release();
                            }
                    }
                    r0 = sub_1009ab294(r19, &var_40);
            }
    }
    else {
            r0 = *(r19 + 0x4610);
            r0 = sub_1009a2524(r0, 0x400, "asio close handshake timer cancelled");
    }
    return r0;
}

__ZN13mcwebsocketpp10connectionINS_6config11core_clientEE29handle_open_handshake_timeoutERKNSt3__110error_codeE(void * arg0) {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = r1;
    r19 = arg0;
    sub_1009a6c98(&var_40, 0x5);
    r9 = *(r21 + 0x8);
    r8 = *(int32_t *)r21;
    if (r9 == var_38) {
            asm { ccmp       w8, w11, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            r20 = *(r19 + 0x4610);
            if (r8 != 0x0) {
                    std::__1::error_code::message();
                    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
                    *(int128_t *)(r0 + 0x8) = 0x0;
                    *(int128_t *)(r0 + 0x10) = 0x0;
                    *r0 = 0x0;
                    r0 = sub_1009a4cc0(r20, 0x400, &var_40);
                    if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
                            r0 = operator delete(var_40);
                    }
                    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                            r0 = operator delete(var_58);
                    }
            }
            else {
                    sub_1009a2524(r20, 0x400, "open handshake timer expired");
                    r8 = 0x1011c4d88;
                    asm { ldarb      w8, [x8] };
                    if ((r8 & 0x1) == 0x0) {
                            if (__cxa_guard_acquire() != 0x0) {
                                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                                    __cxa_atexit();
                                    __cxa_guard_release();
                            }
                    }
                    r0 = sub_1009ab294(r19, &var_40);
            }
    }
    else {
            r0 = *(r19 + 0x4610);
            r0 = sub_1009a2524(r0, 0x400, "open handshake timer cancelled");
    }
    return r0;
}

__ZN13mcwebsocketpp10connectionINS_6config11core_clientEE21handle_read_handshakeERKNSt3__110error_codeEm(void * arg0, long arg1) {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r20 = r2;
    r19 = arg0;
    sub_1009a2524(*(arg0 + 0x4610), 0x400, "connection handle_read_handshake");
    q0 = *(int128_t *)arg1;
    if (q0 != 0x0) goto loc_1009b1d4c;

loc_1009b1c78:
    r21 = r19 + 0x308;
    std::__1::mutex::lock();
    r8 = *(int32_t *)(r19 + 0x300);
    if (r8 == 0x3) goto loc_1009b1df0;

loc_1009b1c90:
    if (r8 != 0x0 || *(int32_t *)(r19 + 0x304) != 0x2) goto loc_1009b1d1c;

loc_1009b1ca0:
    std::__1::mutex::unlock();
    if (r20 > 0x4000) goto loc_1009b1ce0;

loc_1009b1cb0:
    r27 = r19 + 0x4520;
    r23 = r19 + 0x4478;
    r21 = r19 + 0x388;
    r1 = r21;
    r0 = sub_1009b2634(r23, r1, r20);
    r22 = r0;
    if (r0 < r20) goto loc_1009b1e10;

loc_1009b1ce0:
    sub_1009a6ba0(*(r19 + 0x4618), 0x20, "Fatal boundaries checking error.");
    r8 = 0x1011c4d88;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r1 = &var_1C8;
    goto loc_1009b1db0;

loc_1009b1db0:
    r0 = sub_1009ab294(r19, r1);
    goto loc_1009b1db8;

loc_1009b1db8:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009b1e10:
    if ((*(int8_t *)(*(r19 + 0x4610) + 0x41) & 0x4) != 0x0) {
            r24 = &var_1C8 + 0x80;
            r25 = &var_1C8 + 0x18;
            var_1C0 = 0x0;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)(&var_1C8 + 0x58) = q0;
            *(int128_t *)(&var_1C8 + 0x68) = q0;
            sub_100063f9c(&var_1C8 + 0x10, "bytes_transferred: ", 0x13);
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " bytes, bytes processed: ", 0x19);
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " bytes", 0x6);
            sub_100063e7c(r25);
            r0 = sub_1009a4cc0(r26, 0x400, &var_1E0);
            if ((sign_extend_64(var_1C9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1E0);
            }
            r28 = *qword_100e609a8;
            var_1C8 = r28 + 0x18;
            var_1B8 = r28 + 0x40;
            if ((sign_extend_64(var_159) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_170);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            r1 = *qword_100e607d8 + 0x8;
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    if (*(int8_t *)r27 == 0x0) goto loc_1009b1fa4;

loc_1009b1f84:
    if (sub_1009b2b44(r19) == 0x0) goto loc_1009b2020;

loc_1009b1f98:
    r0 = sub_1009b2a5c(r19);
    goto loc_1009b1db8;

loc_1009b2020:
    r0 = *(r19 + 0x43f8);
    if (r0 == 0x0 || (*(*r0 + 0x10))() != 0x0) goto loc_1009b20c4;

loc_1009b2038:
    if (r20 - r22 < 0x8) goto loc_1009b2268;

loc_1009b2044:
    sub_10099f18c(&var_1C8, "Sec-WebSocket-Key3");
    var_1C9 = 0x8;
    var_1E0 = *(0x388 + r22 + r19);
    r0 = sub_1009b57f4(r19 + 0x4490, &var_1C8, 0x100bf754d, r29 - 0x90, r29 - 0x98);
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
    if ((sign_extend_64(var_1C9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1E0);
    }
    if ((sign_extend_64(var_1B1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1C8);
    }
    r22 = r22 + 0x8;
    goto loc_1009b20c4;

loc_1009b20c4:
    r24 = *(r19 + 0x4610);
    if ((*(int8_t *)(r24 + 0x41) & 0x4) != 0x0) {
            sub_1009b30a4(r23);
            r0 = sub_1009a4cc0(r24, 0x400, &var_1C8);
            if ((sign_extend_64(var_1B1) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1C8);
            }
            sub_10099f18c(&var_1C8, "Sec-WebSocket-Key3");
            r23 = r19 + 0x4490;
            r0 = sub_1009ad2c8(r23, &var_1C8);
            r25 = r19 + 0x4498;
            r8 = r0 + 0x38;
            if (r25 == r0) {
                    if (!CPU_FLAGS & E) {
                            r8 = r8;
                    }
                    else {
                            r8 = 0x1011dc838;
                    }
            }
            r9 = sign_extend_64(*(int8_t *)(r8 + 0x17));
            if ((r9 & 0xffffffff80000000) == 0x0) {
                    r24 = r9 & 0xff;
            }
            else {
                    r24 = *(r8 + 0x8);
            }
            if ((sign_extend_64(var_1B1) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1C8);
            }
            if (r24 != 0x0) {
                    r24 = *(r19 + 0x4610);
                    sub_10099f18c(&var_1E0, "Sec-WebSocket-Key3");
                    r0 = sub_1009ad2c8(r23, &var_1E0);
                    r8 = r0 + 0x38;
                    if (r25 == r0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r8;
                            }
                            else {
                                    r0 = 0x1011dc838;
                            }
                    }
                    sub_1009a56e4(r0);
                    r0 = sub_1009a4cc0(r24, 0x400, &var_1C8);
                    if ((sign_extend_64(var_1B1) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_1C8);
                    }
                    if ((sign_extend_64(var_1C9) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_1E0);
                    }
            }
    }
    r1 = r22 + r19 + 0x388;
    r2 = r20 + r19 + 0x388 - r1;
    if (r2 != 0x0) {
            memmove(r21, r1, r2);
    }
    *(r19 + 0x4388) = r20 - r22;
    *(int32_t *)(r19 + 0x304) = 0x6;
    r0 = sub_1009b336c(r19);
    if (*(int8_t *)(r27 + 0x158) == 0x0 || *(int32_t *)(r27 + 0x15c) == 0x0) {
            r0 = sub_1009b4070(r19, &var_1C8);
    }
    goto loc_1009b1db8;

loc_1009b2268:
    sub_1009a2524(*(r19 + 0x4610), 0x400, "short key3 read");
    *(int32_t *)(r27 + 0xa0) = 0x1f4;
    r0 = sub_10099f18c(&var_1C8, "Internal Server Error");
    r20 = r19 + 0x4590;
    if ((sign_extend_64(*(int8_t *)(r19 + 0x45a7)) & 0xffffffff80000000) != 0x0) {
            operator delete(*r20);
    }
    *(r20 + 0x10) = var_1B8;
    *(int128_t *)r20 = var_1C8;
    r8 = 0x1011c4db8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4db0 = *qword_100e60830 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    goto loc_1009b1f98;

loc_1009b1fa4:
    sub_1009a4c34(r19);
    r0 = operator new();
    r8 = *qword_100e60958;
    r9 = *mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_handshake(std::__1::error_code const&, unsigned long);
    *(int128_t *)r0 = r8 + 0x10;
    *(int128_t *)(r0 + 0x8) = r9;
    *(int128_t *)(r0 + 0x10) = 0x0;
    *(int128_t *)(r0 + 0x18) = var_1C8;
    *(r0 + 0x20) = var_1C0;
    sub_1009aefec(r19, 0x1, r21, 0x4000, r29 - 0x88);
    r0 = r0;
    if (r29 - 0x88 == r0) goto loc_1009b214c;

loc_1009b2010:
    if (r0 == 0x0) goto loc_1009b2158;

loc_1009b2014:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1009b2154;

loc_1009b2154:
    r0 = (r8)();
    goto loc_1009b2158;

loc_1009b2158:
    if (0x0 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (*mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_handshake(std::__1::error_code const&, unsigned long) == 0x0) {
                    (*(*0x0 + 0x10))(0x0);
                    r0 = std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_1009b1db8;

loc_1009b214c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1009b2154;

loc_1009b1d1c:
    r8 = 0x1011c4d88;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    var_A8 = 0x1011c4d80;
    std::__1::mutex::unlock();
    goto loc_1009b1d4c;

loc_1009b1d4c:
    sub_1009a6c98(&var_1C8, 0x7);
    if (var_A8 == var_1C0) {
            asm { ccmp       w21, w10, #0x0, eq };
    }
    if (CPU_FLAGS & NE || *(int32_t *)(r19 + 0x300) != 0x3) goto loc_1009b1d94;

loc_1009b1d7c:
    r0 = *(r19 + 0x4610);
    r0 = sub_1009a2524(r0, 0x400, "got (expected) eof/state error from closed con");
    goto loc_1009b1db8;

loc_1009b1d94:
    sub_1009ab658(r19, 0x10, "handle_read_handshake", r29 - 0xb0);
    r1 = r29 - 0xb0;
    goto loc_1009b1db0;

loc_1009b1df0:
    sub_1009a2524(*(r19 + 0x4610), 0x400, "handle_read_handshake invoked after connection was closed");
    r0 = std::__1::mutex::unlock();
    goto loc_1009b1db8;
}

__ZN13mcwebsocketpp10connectionINS_6config11core_clientEE24handle_send_http_requestERKNSt3__110error_codeE(void * arg0) {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg0;
    sub_1009a2524(*(arg0 + 0x4610), 0x400, "handle_send_http_request");
    if (*(int128_t *)r1 != 0x0) goto loc_1009c0f54;

loc_1009c0e70:
    r20 = r19 + 0x308;
    std::__1::mutex::lock();
    r8 = *(int32_t *)(r19 + 0x300);
    if (r8 == 0x3) goto loc_1009c0fec;

loc_1009c0e88:
    if (r8 != 0x0 || *(int32_t *)(r19 + 0x304) != 0x3) goto loc_1009c0f24;

loc_1009c0e98:
    *(int32_t *)(r19 + 0x304) = 0x4;
    std::__1::mutex::unlock();
    sub_1009a4c34(r19);
    r0 = operator new();
    r8 = *qword_100e60958;
    r9 = *mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_http_response(std::__1::error_code const&, unsigned long);
    *(int128_t *)r0 = r8 + 0x10;
    *(int128_t *)(r0 + 0x8) = r9;
    *(int128_t *)(r0 + 0x10) = 0x0;
    *(int128_t *)(r0 + 0x18) = var_70;
    *(r0 + 0x20) = var_68;
    sub_1009aefec(r19, 0x1, r19 + 0x388, 0x4000, &stack[-88]);
    r0 = r0;
    if (&stack[-88] == r0) goto loc_1009c100c;

loc_1009c0f14:
    if (r0 == 0x0) goto loc_1009c1018;

loc_1009c0f18:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1009c1014;

loc_1009c1014:
    r0 = (r8)();
    goto loc_1009c1018;

loc_1009c1018:
    if (0x0 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (*mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_http_response(std::__1::error_code const&, unsigned long) == 0x0) {
                    (*(*0x0 + 0x10))(0x0);
                    r0 = std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_1009c0fc0;

loc_1009c0fc0:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009c100c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1009c1014;

loc_1009c0f24:
    r8 = 0x1011c4d88;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    var_58 = 0x1011c4d80;
    std::__1::mutex::unlock();
    goto loc_1009c0f54;

loc_1009c0f54:
    sub_1009a6c98(&var_70, 0x7);
    if (var_58 == var_68) {
            asm { ccmp       w20, w10, #0x0, eq };
    }
    if (!CPU_FLAGS & NE && *(int32_t *)(r19 + 0x300) == 0x3) {
            r0 = *(r19 + 0x4610);
            r0 = sub_1009a2524(r0, 0x400, "got (expected) eof/state error from closed con");
    }
    else {
            sub_1009ab658(r19, 0x10, "handle_send_http_request", &var_60);
            r0 = sub_1009ab294(r19, &var_60);
    }
    goto loc_1009c0fc0;

loc_1009c0fec:
    sub_1009a2524(*(r19 + 0x4610), 0x400, "handle_send_http_request invoked after connection was closed");
    r0 = std::__1::mutex::unlock();
    goto loc_1009c0fc0;
}

long long sub_100a045c0(void * _block, struct <NSObject> * arg1) {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg1;
    if (*qword_1011dcb80 != -0x1) {
            dispatch_once(0x1011dcb80, 0x100ea7a60);
    }
    r0 = sign_extend_64(*(int32_t *)(r19 + ivar_getOffset(class_getInstanceVariable([r19 class], "_fb_refCount")))) + 0x2 >> 0x1;
    return r0;
}

* sub_100a046f0(void * _block, struct <NSObject> * arg1) {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg1;
    if (*qword_1011dcb80 != -0x1) {
            dispatch_once(0x1011dcb80, 0x100ea7a60);
    }
    r0 = [r19 class];
    r0 = class_getInstanceVariable(r0, "_fb_refCount");
    r0 = ivar_getOffset(r0);
    do {
            asm { ldaxr      w9, [x8] };
            asm { stlxr      w11, w10, [x8] };
    } while (r11 != 0x0);
    if ((r9 & 0xffffffff80000000) == 0x0) {
            r0 = r19;
    }
    else {
            asm { brk        #0x1 };
            r0 = sub_100a04774(r0);
    }
    return r0;
}

* sub_100a3e10c(void * _block) {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dd0c8 != -0x1) {
            dispatch_once_f(0x1011dd0c8, 0x1011c6190, 0x100a3d91c);
    }
    var_8 = **___stack_chk_guard;
    r0 = sub_100aab634("FBAdStoreProductViewController", *0x1011dd0d0, 0x0, &var_28);
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

long long sub_100a3e1b4(void * _block) {
    return 0x1a;
}

* sub_100a4ff1c(void * _block, struct sqlite3_stmt * arg1) {
    r0 = [FBAdEventToken deserializeFromSqlite:arg1];
    return r0;
}

* sub_100a4ff94(void * _block, struct sqlite3_stmt * arg1) {
    r0 = [FBAdEvent deserializeFromSqlite:arg1];
    return r0;
}

long sub_100a77cd0(void * _block, struct NSString * arg1, struct NSString * arg2) {
    r0 = [arg1 retain];
    r19 = [r0 localizedCompare:arg2];
    [r0 release];
    r0 = r19;
    return r0;
}

<FBAdMovingAverage> * sub_100aa050c(void * _block) {
    r0 = [FBAdExponentialGeometricMovingAverage alloc];
    r0 = [r0 initWithDecayConstant:r2];
    r0 = [r0 autorelease];
    return r0;
}

<FBAdBackgroundStateManaging> * sub_100aa1ec4(void * _block) {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = objc_retainBlock(0x100eabb10);
    if (*qword_1011ddbe0 != -0x1) {
            dispatch_once(0x1011ddbe0, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddbe8);
    [r19 release];
    r0 = r20;
    return r0;
}

long sub_100abd30c(void * _block, struct UIViewController * arg1) {
    if (arg1 != 0x0) {
            r0 = 0x3;
    }
    else {
            [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdViewControllerProxy.m" lineNumber:0x6c format:@"Current view controller is nil."];
            r0 = 0x1;
    }
    return r0;
}

long sub_100abd248(void * _block, struct UIViewController * arg1) {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg1 retain];
    r19 = r0;
    r0 = [r0 presentedViewController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r20 = [[r19 presentedViewController] retain];
            [FBAdLogger logAtLevel:0x6 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdViewControllerProxy.m" lineNumber:0x75 format:@"Current view controller %@ detected to have present view controller %@"];
            [r20 release];
            r20 = 0x2;
    }
    else {
            r20 = 0x3;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

AVMakeRectWithAspectRatioInsideRect(int aspectRatio, int boundingRect) {
    r0 = _AVMakeRectWithAspectRatioInsideRect_ptr(aspectRatio, boundingRect);
    return r0;
}

AudioFileGetProperty(int inAudioFile, int inPropertyID, void * ioDataSize, void * outPropertyData) {
    r0 = _AudioFileGetProperty_ptr(inAudioFile, inPropertyID, ioDataSize, outPropertyData);
    return r0;
}

AudioFileClose(int inAudioFile) {
    r0 = _AudioFileClose_ptr(inAudioFile);
    return r0;
}

AudioFileOpenURL(int inFileRef, int inPermissions, int inFileTypeHint, void * outAudioFile) {
    r0 = _AudioFileOpenURL_ptr(inFileRef, inPermissions, inFileTypeHint, outAudioFile);
    return r0;
}

AudioFileReadBytes(int inAudioFile, int inUseCache, int inStartingByte, void * ioNumBytes, void * outBuffer) {
    r0 = _AudioFileReadBytes_ptr(inAudioFile, inUseCache, inStartingByte, ioNumBytes, outBuffer);
    return r0;
}

AudioQueuePrime(int inAQ, int inNumberOfFramesToPrepare, void * outNumberOfFramesPrepared) {
    r0 = _AudioQueuePrime_ptr(inAQ, inNumberOfFramesToPrepare, outNumberOfFramesPrepared);
    return r0;
}

AudioServicesCreateSystemSoundID(int inFileURL, void * outSystemSoundID) {
    r0 = _AudioServicesCreateSystemSoundID_ptr(inFileURL, outSystemSoundID);
    return r0;
}

AudioServicesAddSystemSoundCompletion(int inSystemSoundID, int inRunLoop, int inRunLoopMode, int inCompletionRoutine, void * inClientData) {
    r0 = _AudioServicesAddSystemSoundCompletion_ptr(inSystemSoundID, inRunLoop, inRunLoopMode, inCompletionRoutine, inClientData);
    return r0;
}

AudioServicesPlaySystemSoundWithCompletion(int inSystemSoundID, void * inCompletionBlock) {
    _AudioServicesPlaySystemSoundWithCompletion_ptr(inSystemSoundID, inCompletionBlock);
    return;
}

AudioServicesDisposeSystemSoundID(int inSystemSoundID) {
    r0 = _AudioServicesDisposeSystemSoundID_ptr(inSystemSoundID);
    return r0;
}

AudioServicesPlaySystemSound(int inSystemSoundID) {
    _AudioServicesPlaySystemSound_ptr(inSystemSoundID);
    return;
}

AudioServicesSetProperty(int inPropertyID, int inSpecifierSize, void * inSpecifier, int inPropertyDataSize, void * inPropertyData) {
    r0 = _AudioServicesSetProperty_ptr(inPropertyID, inSpecifierSize, inSpecifier, inPropertyDataSize, inPropertyData);
    return r0;
}

AudioServicesRemoveSystemSoundCompletion(int inSystemSoundID) {
    _AudioServicesRemoveSystemSoundCompletion_ptr(inSystemSoundID);
    return;
}

AudioSessionGetProperty() {
    _AudioSessionGetProperty_ptr();
    return;
}

CACurrentMediaTime() {
    r0 = _CACurrentMediaTime_ptr();
    return r0;
}

CATransform3DConcat(int a, int b) {
    r0 = _CATransform3DConcat_ptr(a, b);
    return r0;
}

CATransform3DMakeAffineTransform(int m) {
    r0 = _CATransform3DMakeAffineTransform_ptr(m);
    return r0;
}

CATransform3DMakeRotation(int angle, int x, int y, int z) {
    r0 = _CATransform3DMakeRotation_ptr(angle, x, y, z);
    return r0;
}

CATransform3DMakeScale(int sx, int sy, int sz) {
    r0 = _CATransform3DMakeScale_ptr(sx, sy, sz);
    return r0;
}

CCCrypt(int op, int alg, int options, void * key, int keyLength, void * iv, void * dataIn, int dataInLength, void * dataOut, int dataOutAvailable, void * dataOutMoved) {
    r0 = _CCCrypt_ptr(op, alg, options, key, keyLength, iv, dataIn, dataInLength, dataOut, dataOutAvailable, dataOutMoved);
    return r0;
}

CCCryptorCreate(int op, int alg, int options, void * key, int keyLength, void * iv, void * cryptorRef) {
    r0 = _CCCryptorCreate_ptr(op, alg, options, key, keyLength, iv, cryptorRef);
    return r0;
}

CCCryptorFinal(int cryptorRef, void * dataOut, int dataOutAvailable, void * dataOutMoved) {
    r0 = _CCCryptorFinal_ptr(cryptorRef, dataOut, dataOutAvailable, dataOutMoved);
    return r0;
}

CCCryptorGetOutputLength(int cryptorRef, int inputLength, int final) {
    r0 = _CCCryptorGetOutputLength_ptr(cryptorRef, inputLength, final);
    return r0;
}

CCCryptorRelease(int cryptorRef) {
    r0 = _CCCryptorRelease_ptr(cryptorRef);
    return r0;
}

CCCryptorUpdate(int cryptorRef, void * dataIn, int dataInLength, void * dataOut, int dataOutAvailable, void * dataOutMoved) {
    r0 = _CCCryptorUpdate_ptr(cryptorRef, dataIn, dataInLength, dataOut, dataOutAvailable, dataOutMoved);
    return r0;
}

CCHmac(int algorithm, void * key, int keyLength, void * data, int dataLength, void * macOut) {
    _CCHmac_ptr(algorithm, key, keyLength, data, dataLength, macOut);
    return;
}

CCHmacInit(void * ctx, int algorithm, void * key, int keyLength) {
    _CCHmacInit_ptr(ctx, algorithm, key, keyLength);
    return;
}

CCHmacFinal(void * ctx, void * macOut) {
    _CCHmacFinal_ptr(ctx, macOut);
    return;
}

CCHmacUpdate(void * ctx, void * data, int dataLength) {
    _CCHmacUpdate_ptr(ctx, data, dataLength);
    return;
}

* CC_MD5(void * data, int len, void * md) {
    r0 = _CC_MD5_ptr(data, len, md);
    return r0;
}

CCKeyDerivationPBKDF(int algorithm, void * password, int passwordLen, void * salt, int saltLen, int prf, int rounds, void * derivedKey, int derivedKeyLen) {
    r0 = _CCKeyDerivationPBKDF_ptr(algorithm, password, passwordLen, salt, saltLen, prf, rounds, derivedKey, derivedKeyLen);
    return r0;
}

CC_MD5_Final(void * md, void * c) {
    r0 = _CC_MD5_Final_ptr(md, c);
    return r0;
}

CC_MD5_Init(void * c) {
    r0 = _CC_MD5_Init_ptr(c);
    return r0;
}

* CC_SHA1(void * data, int len, void * md) {
    r0 = _CC_SHA1_ptr(data, len, md);
    return r0;
}

CC_MD5_Update(void * c, void * data, int len) {
    r0 = _CC_MD5_Update_ptr(c, data, len);
    return r0;
}

CC_SHA1_Update(void * c, void * data, int len) {
    r0 = _CC_SHA1_Update_ptr(c, data, len);
    return r0;
}

CC_SHA1_Final(void * md, void * c) {
    r0 = _CC_SHA1_Final_ptr(md, c);
    return r0;
}

CC_SHA1_Init(void * c) {
    r0 = _CC_SHA1_Init_ptr(c);
    return r0;
}

* CC_SHA256(void * data, int len, void * md) {
    r0 = _CC_SHA256_ptr(data, len, md);
    return r0;
}

* CC_SHA512(void * data, int len, void * md) {
    r0 = _CC_SHA512_ptr(data, len, md);
    return r0;
}

CFAbsoluteTimeGetCurrent() {
    r0 = (*0x100e61000)();
    return r0;
}

CFAllocatorGetDefault() {
    r0 = _CFAllocatorGetDefault_ptr();
    return r0;
}

CFArrayAppendValue(int theArray, void * value) {
    _CFArrayAppendValue_ptr(theArray, value);
    return;
}

CFArrayCreate(int allocator, void * values, int numValues, void * callBacks) {
    r0 = _CFArrayCreate_ptr(allocator, values, numValues, callBacks);
    return r0;
}

CFArrayGetCount(int theArray) {
    r0 = _CFArrayGetCount_ptr(theArray);
    return r0;
}

CFArrayCreateMutable(int allocator, int capacity, void * callBacks) {
    r0 = _CFArrayCreateMutable_ptr(allocator, capacity, callBacks);
    return r0;
}

CFAttributedStringRemoveAttribute(int aStr, int range, int attrName) {
    _CFAttributedStringRemoveAttribute_ptr(aStr, range, attrName);
    return;
}

* CFArrayGetValueAtIndex(int theArray, int idx) {
    r0 = _CFArrayGetValueAtIndex_ptr(theArray, idx);
    return r0;
}

CFAttributedStringCreateMutable(int alloc, int maxLength) {
    r0 = _CFAttributedStringCreateMutable_ptr(alloc, maxLength);
    return r0;
}

CFAttributedStringReplaceString(int aStr, int range, int replacement) {
    _CFAttributedStringReplaceString_ptr(aStr, range, replacement);
    return;
}

CFAttributedStringSetAttribute(int aStr, int range, int attrName, int value) {
    _CFAttributedStringSetAttribute_ptr(aStr, range, attrName, value);
    return;
}

CFBinaryHeapAddValue(int heap, void * value) {
    _CFBinaryHeapAddValue_ptr(heap, value);
    return;
}

CFBinaryHeapContainsValue(int heap, void * value) {
    r0 = _CFBinaryHeapContainsValue_ptr(heap, value);
    return r0;
}

CFBinaryHeapCreate(int allocator, int capacity, void * callBacks, void * compareContext) {
    r0 = _CFBinaryHeapCreate_ptr(allocator, capacity, callBacks, compareContext);
    return r0;
}

CFBinaryHeapGetCount(int heap) {
    r0 = _CFBinaryHeapGetCount_ptr(heap);
    return r0;
}

CFBinaryHeapGetValues(int heap, void * values) {
    _CFBinaryHeapGetValues_ptr(heap, values);
    return;
}

* CFBinaryHeapGetMinimum(int heap) {
    r0 = _CFBinaryHeapGetMinimum_ptr(heap);
    return r0;
}

CFBinaryHeapRemoveMinimumValue(int heap) {
    _CFBinaryHeapRemoveMinimumValue_ptr(heap);
    return;
}

CFBundleGetInfoDictionary(int bundle) {
    r0 = _CFBundleGetInfoDictionary_ptr(bundle);
    return r0;
}

CFBundleGetMainBundle() {
    r0 = _CFBundleGetMainBundle_ptr();
    return r0;
}

CFCopyHomeDirectoryURL() {
    r0 = _CFCopyHomeDirectoryURL_ptr();
    return r0;
}

CFDataCreate(int allocator, void * bytes, int length) {
    r0 = _CFDataCreate_ptr(allocator, bytes, length);
    return r0;
}

* CFDataGetBytePtr(int theData) {
    r0 = _CFDataGetBytePtr_ptr(theData);
    return r0;
}

* CFDictionaryGetValue(int theDict, void * key) {
    r0 = _CFDictionaryGetValue_ptr(theDict, key);
    return r0;
}

CFDataGetLength(int theData) {
    r0 = _CFDataGetLength_ptr(theData);
    return r0;
}

CFDictionaryCreate(int allocator, void * keys, void * values, int numValues, void * keyCallBacks, void * valueCallBacks) {
    r0 = _CFDictionaryCreate_ptr(allocator, keys, values, numValues, keyCallBacks, valueCallBacks);
    return r0;
}

CFEqual(int cf1, int cf2) {
    r0 = _CFEqual_ptr(cf1, cf2);
    return r0;
}

CFDictionaryGetValueIfPresent(int theDict, void * key, void * value) {
    r0 = _CFDictionaryGetValueIfPresent_ptr(theDict, key, value);
    return r0;
}

CFDictionarySetValue(int theDict, void * key, void * value) {
    _CFDictionarySetValue_ptr(theDict, key, value);
    return;
}

CFHTTPMessageCopyAllHeaderFields(int message) {
    r0 = _CFHTTPMessageCopyAllHeaderFields_ptr(message);
    return r0;
}

CFHTTPMessageAppendBytes(int message, void * newBytes, int numBytes) {
    r0 = _CFHTTPMessageAppendBytes_ptr(message, newBytes, numBytes);
    return r0;
}

CFErrorCopyDescription(int err) {
    r0 = _CFErrorCopyDescription_ptr(err);
    return r0;
}

CFHTTPMessageCopyRequestMethod(int request) {
    r0 = _CFHTTPMessageCopyRequestMethod_ptr(request);
    return r0;
}

CFHTTPMessageCopySerializedMessage(int message) {
    r0 = _CFHTTPMessageCopySerializedMessage_ptr(message);
    return r0;
}

CFHTTPMessageCopyRequestURL(int request) {
    r0 = _CFHTTPMessageCopyRequestURL_ptr(request);
    return r0;
}

CFHTTPMessageCreateEmpty(int alloc, int isRequest) {
    r0 = _CFHTTPMessageCreateEmpty_ptr(alloc, isRequest);
    return r0;
}

CFHTTPMessageCreateResponse(int alloc, int statusCode, int statusDescription, int httpVersion) {
    r0 = _CFHTTPMessageCreateResponse_ptr(alloc, statusCode, statusDescription, httpVersion);
    return r0;
}

CFHTTPMessageIsHeaderComplete(int message) {
    r0 = _CFHTTPMessageIsHeaderComplete_ptr(message);
    return r0;
}

CFHostCancelInfoResolution(int theHost, int info) {
    _CFHostCancelInfoResolution_ptr(theHost, info);
    return;
}

CFHTTPMessageSetHeaderFieldValue(int message, int headerField, int value) {
    _CFHTTPMessageSetHeaderFieldValue_ptr(message, headerField, value);
    return;
}

CFHostCreateWithName(int allocator, int hostname) {
    r0 = _CFHostCreateWithName_ptr(allocator, hostname);
    return r0;
}

CFHostGetAddressing(int theHost, void * hasBeenResolved) {
    r0 = _CFHostGetAddressing_ptr(theHost, hasBeenResolved);
    return r0;
}

CFHostSetClient(int theHost, int clientCB, void * clientContext) {
    r0 = _CFHostSetClient_ptr(theHost, clientCB, clientContext);
    return r0;
}

CFHostScheduleWithRunLoop(int theHost, int runLoop, int runLoopMode) {
    _CFHostScheduleWithRunLoop_ptr(theHost, runLoop, runLoopMode);
    return;
}

CFHostStartInfoResolution(int theHost, int info, void * error) {
    r0 = _CFHostStartInfoResolution_ptr(theHost, info, error);
    return r0;
}

CFHostUnscheduleFromRunLoop(int theHost, int runLoop, int runLoopMode) {
    _CFHostUnscheduleFromRunLoop_ptr(theHost, runLoop, runLoopMode);
    return;
}

CFNetServiceCancel(int theService) {
    _CFNetServiceCancel_ptr(theService);
    return;
}

CFNetServiceCreate(int alloc, int domain, int serviceType, int name, int port) {
    r0 = _CFNetServiceCreate_ptr(alloc, domain, serviceType, name, port);
    return r0;
}

CFNetServiceGetName(int theService) {
    r0 = _CFNetServiceGetName_ptr(theService);
    return r0;
}

CFNetServiceCreateCopy(int alloc, int service) {
    r0 = _CFNetServiceCreateCopy_ptr(alloc, service);
    return r0;
}

CFNetServiceGetTargetHost(int theService) {
    r0 = _CFNetServiceGetTargetHost_ptr(theService);
    return r0;
}

CFNetServiceGetType(int theService) {
    r0 = _CFNetServiceGetType_ptr(theService);
    return r0;
}

CFNetServiceRegisterWithOptions(int theService, int options, void * error) {
    r0 = _CFNetServiceRegisterWithOptions_ptr(theService, options, error);
    return r0;
}

CFNetServiceResolveWithTimeout(int theService, int timeout, void * error) {
    r0 = _CFNetServiceResolveWithTimeout_ptr(theService, timeout, error);
    return r0;
}

CFNetServiceScheduleWithRunLoop(int theService, int runLoop, int runLoopMode) {
    _CFNetServiceScheduleWithRunLoop_ptr(theService, runLoop, runLoopMode);
    return;
}

CFNetServiceSetClient(int theService, int clientCB, void * clientContext) {
    r0 = _CFNetServiceSetClient_ptr(theService, clientCB, clientContext);
    return r0;
}

CFNetServiceUnscheduleFromRunLoop(int theService, int runLoop, int runLoopMode) {
    _CFNetServiceUnscheduleFromRunLoop_ptr(theService, runLoop, runLoopMode);
    return;
}

CFNetworkCopySystemProxySettings() {
    r0 = _CFNetworkCopySystemProxySettings_ptr();
    return r0;
}

CFNotificationCenterAddObserver(int center, void * observer, int callBack, int name, void * object, int suspensionBehavior) {
    _CFNotificationCenterAddObserver_ptr(center, observer, callBack, name, object, suspensionBehavior);
    return;
}

CFNotificationCenterGetLocalCenter() {
    r0 = _CFNotificationCenterGetLocalCenter_ptr();
    return r0;
}

CFNumberCreate(int allocator, int theType, void * valuePtr) {
    r0 = _CFNumberCreate_ptr(allocator, theType, valuePtr);
    return r0;
}

CFNumberIsFloatType(int number) {
    r0 = _CFNumberIsFloatType_ptr(number);
    return r0;
}

CFPreferencesAppSynchronize(int applicationID) {
    r0 = _CFPreferencesAppSynchronize_ptr(applicationID);
    return r0;
}

CFPreferencesCopyAppValue(int key, int applicationID) {
    r0 = _CFPreferencesCopyAppValue_ptr(key, applicationID);
    return r0;
}

CFPreferencesCopyKeyList(int applicationID, int userName, int hostName) {
    r0 = _CFPreferencesCopyKeyList_ptr(applicationID, userName, hostName);
    return r0;
}

CFPreferencesSetAppValue(int key, int value, int applicationID) {
    _CFPreferencesSetAppValue_ptr(key, value, applicationID);
    return;
}

CFPreferencesSetMultiple(int keysToSet, int keysToRemove, int applicationID, int userName, int hostName) {
    _CFPreferencesSetMultiple_ptr(keysToSet, keysToRemove, applicationID, userName, hostName);
    return;
}

CFReadStreamClose(int stream) {
    _CFReadStreamClose_ptr(stream);
    return;
}

CFReadStreamCopyError(int stream) {
    r0 = _CFReadStreamCopyError_ptr(stream);
    return r0;
}

CFReadStreamCreateWithFile(int alloc, int fileURL) {
    r0 = _CFReadStreamCreateWithFile_ptr(alloc, fileURL);
    return r0;
}

CFReadStreamGetStatus(int stream) {
    r0 = _CFReadStreamGetStatus_ptr(stream);
    return r0;
}

CFReadStreamHasBytesAvailable(int stream) {
    r0 = _CFReadStreamHasBytesAvailable_ptr(stream);
    return r0;
}

CFReadStreamOpen(int stream) {
    r0 = _CFReadStreamOpen_ptr(stream);
    return r0;
}

CFReadStreamRead(int stream, void * buffer, int bufferLength) {
    r0 = _CFReadStreamRead_ptr(stream, buffer, bufferLength);
    return r0;
}

CFReadStreamScheduleWithRunLoop(int stream, int runLoop, int runLoopMode) {
    _CFReadStreamScheduleWithRunLoop_ptr(stream, runLoop, runLoopMode);
    return;
}

CFReadStreamSetClient(int stream, int streamEvents, int clientCB, void * clientContext) {
    r0 = _CFReadStreamSetClient_ptr(stream, streamEvents, clientCB, clientContext);
    return r0;
}

CFReadStreamSetProperty(int stream, int propertyName, int propertyValue) {
    r0 = _CFReadStreamSetProperty_ptr(stream, propertyName, propertyValue);
    return r0;
}

CFReadStreamUnscheduleFromRunLoop(int stream, int runLoop, int runLoopMode) {
    _CFReadStreamUnscheduleFromRunLoop_ptr(stream, runLoop, runLoopMode);
    return;
}

CFRelease(int cf) {
    _CFRelease_ptr(cf);
    return;
}

CFRetain(int cf) {
    r0 = _CFRetain_ptr(cf);
    return r0;
}

CFRunLoopAddSource(int rl, int source, int mode) {
    _CFRunLoopAddSource_ptr(rl, source, mode);
    return;
}

CFRunLoopAddTimer(int rl, int timer, int mode) {
    _CFRunLoopAddTimer_ptr(rl, timer, mode);
    return;
}

CFRunLoopGetMain() {
    r0 = _CFRunLoopGetMain_ptr();
    return r0;
}

CFRunLoopGetCurrent() {
    r0 = _CFRunLoopGetCurrent_ptr();
    return r0;
}

CFRunLoopPerformBlock(int rl, int mode, void * block) {
    _CFRunLoopPerformBlock_ptr(rl, mode, block);
    return;
}

CFRunLoopRun() {
    _CFRunLoopRun_ptr();
    return;
}

CFRunLoopSourceInvalidate(int source) {
    _CFRunLoopSourceInvalidate_ptr(source);
    return;
}

CFRunLoopStop(int rl) {
    _CFRunLoopStop_ptr(rl);
    return;
}

CFRunLoopTimerCreate(int allocator, int fireDate, int interval, int flags, int order, int callout, void * context) {
    r0 = _CFRunLoopTimerCreate_ptr(allocator, fireDate, interval, flags, order, callout, context);
    return r0;
}

CFRunLoopTimerCreateWithHandler(int allocator, int fireDate, int interval, int flags, int order, void * block) {
    r0 = _CFRunLoopTimerCreateWithHandler_ptr(allocator, fireDate, interval, flags, order, block);
    return r0;
}

CFSocketCreateRunLoopSource(int allocator, int s, int order) {
    r0 = _CFSocketCreateRunLoopSource_ptr(allocator, s, order);
    return r0;
}

CFRunLoopTimerInvalidate(int timer) {
    _CFRunLoopTimerInvalidate_ptr(timer);
    return;
}

CFRunLoopWakeUp(int rl) {
    _CFRunLoopWakeUp_ptr(rl);
    return;
}

CFSocketCreateWithNative(int allocator, int sock, int callBackTypes, int callout, void * context) {
    r0 = _CFSocketCreateWithNative_ptr(allocator, sock, callBackTypes, callout, context);
    return r0;
}

CFSocketGetNative(int s) {
    r0 = _CFSocketGetNative_ptr(s);
    return r0;
}

CFSocketGetSocketFlags(int s) {
    r0 = _CFSocketGetSocketFlags_ptr(s);
    return r0;
}

CFSocketSetSocketFlags(int s, int flags) {
    _CFSocketSetSocketFlags_ptr(s, flags);
    return;
}

CFSocketInvalidate(int s) {
    _CFSocketInvalidate_ptr(s);
    return;
}

CFStreamCreatePairWithSocketToHost(int alloc, int host, int port, void * readStream, void * writeStream) {
    _CFStreamCreatePairWithSocketToHost_ptr(alloc, host, port, readStream, writeStream);
    return;
}

CFStringAppend(int theString, int appendedString) {
    _CFStringAppend_ptr(theString, appendedString);
    return;
}

CFStringAppendCharacters(int theString, void * chars, int numChars) {
    _CFStringAppendCharacters_ptr(theString, chars, numChars);
    return;
}

CFStringAppendFormat(int theString, int formatOptions, int format) {
    _CFStringAppendFormat_ptr(theString, formatOptions, format);
    return;
}

CFStringCompare(int theString1, int theString2, int compareOptions) {
    r0 = _CFStringCompare_ptr(theString1, theString2, compareOptions);
    return r0;
}

CFStringConvertIANACharSetNameToEncoding(int theString) {
    r0 = _CFStringConvertIANACharSetNameToEncoding_ptr(theString);
    return r0;
}

long CFStringConvertEncodingToNSStringEncoding(int encoding) {
    r0 = _CFStringConvertEncodingToNSStringEncoding_ptr(encoding);
    return r0;
}

CFStringConvertNSStringEncodingToEncoding(unsigned long encoding) {
    r0 = _CFStringConvertNSStringEncodingToEncoding_ptr(encoding);
    return r0;
}

CFStringCreateMutable(int alloc, int maxLength) {
    r0 = _CFStringCreateMutable_ptr(alloc, maxLength);
    return r0;
}

CFStringCreateCopy(int alloc, int theString) {
    r0 = _CFStringCreateCopy_ptr(alloc, theString);
    return r0;
}

CFStringCreateWithBytes(int alloc, void * bytes, int numBytes, int encoding, int isExternalRepresentation) {
    r0 = _CFStringCreateWithBytes_ptr(alloc, bytes, numBytes, encoding, isExternalRepresentation);
    return r0;
}

CFStringCreateWithCharactersNoCopy(int alloc, void * chars, int numChars, int contentsDeallocator) {
    r0 = _CFStringCreateWithCharactersNoCopy_ptr(alloc, chars, numChars, contentsDeallocator);
    return r0;
}

CFStringCreateWithCString(int alloc, void * cStr, int encoding) {
    r0 = _CFStringCreateWithCString_ptr(alloc, cStr, encoding);
    return r0;
}

CFStringCreateWithCStringNoCopy(int alloc, void * cStr, int encoding, int contentsDeallocator) {
    r0 = _CFStringCreateWithCStringNoCopy_ptr(alloc, cStr, encoding, contentsDeallocator);
    return r0;
}

CFStringCreateWithSubstring(int alloc, int str, int range) {
    r0 = _CFStringCreateWithSubstring_ptr(alloc, str, range);
    return r0;
}

CFStringCreateWithFormat(int alloc, int formatOptions, int format) {
    r0 = _CFStringCreateWithFormat_ptr(alloc, formatOptions, format);
    return r0;
}

CFStringFind(int theString, int stringToFind, int compareOptions) {
    r0 = _CFStringFind_ptr(theString, stringToFind, compareOptions);
    return r0;
}

CFStringGetCString(int theString, void * buffer, int bufferSize, int encoding) {
    r0 = _CFStringGetCString_ptr(theString, buffer, bufferSize, encoding);
    return r0;
}

* CFStringGetCStringPtr(int theString, int encoding) {
    r0 = _CFStringGetCStringPtr_ptr(theString, encoding);
    return r0;
}

CFStringGetCharacterAtIndex(int theString, int idx) {
    r0 = _CFStringGetCharacterAtIndex_ptr(theString, idx);
    return r0;
}

CFStringGetFastestEncoding(int theString) {
    r0 = _CFStringGetFastestEncoding_ptr(theString);
    return r0;
}

CFStringGetMaximumSizeForEncoding(int length, int encoding) {
    r0 = _CFStringGetMaximumSizeForEncoding_ptr(length, encoding);
    return r0;
}

CFStringGetLength(int theString) {
    r0 = _CFStringGetLength_ptr(theString);
    return r0;
}

CFStringHasPrefix(int theString, int prefix) {
    r0 = _CFStringHasPrefix_ptr(theString, prefix);
    return r0;
}

CFStringTransform(int string, void * range, int transform, int reverse) {
    r0 = _CFStringTransform_ptr(string, range, transform, reverse);
    return r0;
}

CFURLCopyFileSystemPath(int anURL, int pathStyle) {
    r0 = _CFURLCopyFileSystemPath_ptr(anURL, pathStyle);
    return r0;
}

CFURLCopyPathExtension(int url) {
    r0 = _CFURLCopyPathExtension_ptr(url);
    return r0;
}

CFURLCopyPath(int anURL) {
    r0 = _CFURLCopyPath_ptr(anURL);
    return r0;
}

CFURLCopyQueryString(int anURL, int charactersToLeaveEscaped) {
    r0 = _CFURLCopyQueryString_ptr(anURL, charactersToLeaveEscaped);
    return r0;
}

CFURLCreateStringByAddingPercentEscapes(int allocator, int originalString, int charactersToLeaveUnescaped, int legalURLCharactersToBeEscaped, int encoding) {
    r0 = _CFURLCreateStringByAddingPercentEscapes_ptr(allocator, originalString, charactersToLeaveUnescaped, legalURLCharactersToBeEscaped, encoding);
    return r0;
}

CFURLCreateCopyAppendingPathComponent(int allocator, int url, int pathComponent, int isDirectory) {
    r0 = _CFURLCreateCopyAppendingPathComponent_ptr(allocator, url, pathComponent, isDirectory);
    return r0;
}

CFURLCreateStringByReplacingPercentEscapes(int allocator, int originalString, int charactersToLeaveEscaped) {
    r0 = _CFURLCreateStringByReplacingPercentEscapes_ptr(allocator, originalString, charactersToLeaveEscaped);
    return r0;
}

CFURLCreateWithFileSystemPath(int allocator, int filePath, int pathStyle, int isDirectory) {
    r0 = _CFURLCreateWithFileSystemPath_ptr(allocator, filePath, pathStyle, isDirectory);
    return r0;
}

CFURLCreateStringByReplacingPercentEscapesUsingEncoding(int allocator, int origString, int charsToLeaveEscaped, int encoding) {
    r0 = _CFURLCreateStringByReplacingPercentEscapesUsingEncoding_ptr(allocator, origString, charsToLeaveEscaped, encoding);
    return r0;
}

CFUUIDCreate(int alloc) {
    r0 = _CFUUIDCreate_ptr(alloc);
    return r0;
}

CFUUIDCreateString(int alloc, int uuid) {
    r0 = _CFUUIDCreateString_ptr(alloc, uuid);
    return r0;
}

CFWriteStreamCanAcceptBytes(int stream) {
    r0 = _CFWriteStreamCanAcceptBytes_ptr(stream);
    return r0;
}

CFUUIDCreateFromUUIDBytes(int alloc, int bytes) {
    r0 = _CFUUIDCreateFromUUIDBytes_ptr(alloc, bytes);
    return r0;
}

CFWriteStreamClose(int stream) {
    _CFWriteStreamClose_ptr(stream);
    return;
}

CFWriteStreamGetStatus(int stream) {
    r0 = _CFWriteStreamGetStatus_ptr(stream);
    return r0;
}

CFWriteStreamCopyError(int stream) {
    r0 = _CFWriteStreamCopyError_ptr(stream);
    return r0;
}

CFWriteStreamOpen(int stream) {
    r0 = _CFWriteStreamOpen_ptr(stream);
    return r0;
}

CFWriteStreamScheduleWithRunLoop(int stream, int runLoop, int runLoopMode) {
    _CFWriteStreamScheduleWithRunLoop_ptr(stream, runLoop, runLoopMode);
    return;
}

CFWriteStreamSetClient(int stream, int streamEvents, int clientCB, void * clientContext) {
    r0 = _CFWriteStreamSetClient_ptr(stream, streamEvents, clientCB, clientContext);
    return r0;
}

CFWriteStreamSetProperty(int stream, int propertyName, int propertyValue) {
    r0 = _CFWriteStreamSetProperty_ptr(stream, propertyName, propertyValue);
    return r0;
}

CFWriteStreamWrite(int stream, void * buffer, int bufferLength) {
    r0 = _CFWriteStreamWrite_ptr(stream, buffer, bufferLength);
    return r0;
}

CFWriteStreamUnscheduleFromRunLoop(int stream, int runLoop, int runLoopMode) {
    _CFWriteStreamUnscheduleFromRunLoop_ptr(stream, runLoop, runLoopMode);
    return;
}

CGAffineTransformConcat(int t1, int t2) {
    r0 = _CGAffineTransformConcat_ptr(t1, t2);
    return r0;
}

CGAffineTransformMakeRotation(int angle) {
    r0 = _CGAffineTransformMakeRotation_ptr(angle);
    return r0;
}

CGAffineTransformInvert(int t) {
    r0 = _CGAffineTransformInvert_ptr(t);
    return r0;
}

CGAffineTransformMakeScale(int sx, int sy) {
    r0 = _CGAffineTransformMakeScale_ptr(sx, sy);
    return r0;
}

CGAffineTransformRotate(int t, int angle) {
    r0 = _CGAffineTransformRotate_ptr(t, angle);
    return r0;
}

CGAffineTransformMakeTranslation(int tx, int ty) {
    r0 = _CGAffineTransformMakeTranslation_ptr(tx, ty);
    return r0;
}

CGAffineTransformScale(int t, int sx, int sy) {
    r0 = _CGAffineTransformScale_ptr(t, sx, sy);
    return r0;
}

CGAffineTransformTranslate(int t, int tx, int ty) {
    r0 = _CGAffineTransformTranslate_ptr(t, tx, ty);
    return r0;
}

CGBitmapContextCreate(void * data, int width, int height, int bitsPerComponent, int bytesPerRow, int space, int bitmapInfo) {
    r0 = _CGBitmapContextCreate_ptr(data, width, height, bitsPerComponent, bytesPerRow, space, bitmapInfo);
    return r0;
}

CGBitmapContextCreateImage(int context) {
    r0 = _CGBitmapContextCreateImage_ptr(context);
    return r0;
}

CGColorCreate(int space, int components) {
    r0 = _CGColorCreate_ptr(space, components);
    return r0;
}

CGBitmapContextGetHeight(int context) {
    r0 = _CGBitmapContextGetHeight_ptr(context);
    return r0;
}

CGColorGetAlpha(int color) {
    r0 = _CGColorGetAlpha_ptr(color);
    return r0;
}

CGColorGetColorSpace(int color) {
    r0 = _CGColorGetColorSpace_ptr(color);
    return r0;
}

* CGColorGetComponents(int color) {
    r0 = _CGColorGetComponents_ptr(color);
    return r0;
}

CGColorGetNumberOfComponents(int color) {
    r0 = _CGColorGetNumberOfComponents_ptr(color);
    return r0;
}

CGColorRelease(int color) {
    _CGColorRelease_ptr(color);
    return;
}

CGColorRetain(int color) {
    r0 = _CGColorRetain_ptr(color);
    return r0;
}

CGColorSpaceCreateDeviceGray() {
    r0 = _CGColorSpaceCreateDeviceGray_ptr();
    return r0;
}

CGColorSpaceCreateDeviceRGB() {
    r0 = _CGColorSpaceCreateDeviceRGB_ptr();
    return r0;
}

CGColorSpaceGetModel(int space) {
    r0 = _CGColorSpaceGetModel_ptr(space);
    return r0;
}

CGColorSpaceGetNumberOfComponents(int space) {
    r0 = _CGColorSpaceGetNumberOfComponents_ptr(space);
    return r0;
}

CGContextAddArc(int c, int x, int y, int radius, int startAngle, int endAngle, int clockwise) {
    _CGContextAddArc_ptr(c, x, y, radius, startAngle, endAngle, clockwise);
    return;
}

CGColorSpaceRelease(int space) {
    _CGColorSpaceRelease_ptr(space);
    return;
}

CGContextAddPath(int context, int path) {
    _CGContextAddPath_ptr(context, path);
    return;
}

CGContextAddRect(int c, int rect) {
    _CGContextAddRect_ptr(c, rect);
    return;
}

CGContextBeginPath(int c) {
    _CGContextBeginPath_ptr(c);
    return;
}

CGContextBeginTransparencyLayer(int context, int auxiliaryInfo) {
    _CGContextBeginTransparencyLayer_ptr(context, auxiliaryInfo);
    return;
}

CGContextClearRect(int c, int rect) {
    _CGContextClearRect_ptr(c, rect);
    return;
}

CGContextDrawImage(int c, int rect, int image) {
    _CGContextDrawImage_ptr(c, rect, image);
    return;
}

CGContextDrawLinearGradient(int context, int gradient, int startPoint, int endPoint, int options) {
    _CGContextDrawLinearGradient_ptr(context, gradient, startPoint, endPoint, options);
    return;
}

CGContextConcatCTM(int c, int transform) {
    _CGContextConcatCTM_ptr(c, transform);
    return;
}

CGContextEOClip(int c) {
    _CGContextEOClip_ptr(c);
    return;
}

CGContextDrawRadialGradient(int context, int gradient, int startCenter, int startRadius, int endCenter, int endRadius, int options) {
    _CGContextDrawRadialGradient_ptr(context, gradient, startCenter, startRadius, endCenter, endRadius, options);
    return;
}

CGContextEndTransparencyLayer(int context) {
    _CGContextEndTransparencyLayer_ptr(context);
    return;
}

CGContextFillRect(int c, int rect) {
    _CGContextFillRect_ptr(c, rect);
    return;
}

CGContextFillPath(int c) {
    _CGContextFillPath_ptr(c);
    return;
}

CGContextRelease(int c) {
    _CGContextRelease_ptr(c);
    return;
}

CGContextRestoreGState(int c) {
    _CGContextRestoreGState_ptr(c);
    return;
}

CGContextRotateCTM(int c, int angle) {
    _CGContextRotateCTM_ptr(c, angle);
    return;
}

CGContextSaveGState(int c) {
    _CGContextSaveGState_ptr(c);
    return;
}

CGContextScaleCTM(int c, int sx, int sy) {
    _CGContextScaleCTM_ptr(c, sx, sy);
    return;
}

CGContextSetAlpha(int c, int alpha) {
    _CGContextSetAlpha_ptr(c, alpha);
    return;
}

CGContextSetFillColorWithColor(int c, int color) {
    _CGContextSetFillColorWithColor_ptr(c, color);
    return;
}

CGContextSetGrayFillColor(int context, int gray, int alpha) {
    _CGContextSetGrayFillColor_ptr(context, gray, alpha);
    return;
}

CGContextSetFontSize(int c, int size) {
    _CGContextSetFontSize_ptr(c, size);
    return;
}

CGContextSetGrayStrokeColor(int context, int gray, int alpha) {
    _CGContextSetGrayStrokeColor_ptr(context, gray, alpha);
    return;
}

CGContextSetLineJoin(int c, int join) {
    _CGContextSetLineJoin_ptr(c, join);
    return;
}

CGContextSetLineCap(int c, int cap) {
    _CGContextSetLineCap_ptr(c, cap);
    return;
}

CGContextSetShadowWithColor(int context, int offset, int blur, int color) {
    _CGContextSetShadowWithColor_ptr(context, offset, blur, color);
    return;
}

CGContextSetLineWidth(int c, int width) {
    _CGContextSetLineWidth_ptr(c, width);
    return;
}

CGContextSetShouldSmoothFonts(int context, int shouldSmoothFonts) {
    _CGContextSetShouldSmoothFonts_ptr(context, shouldSmoothFonts);
    return;
}

CGContextSetStrokeColor(int context, int components) {
    _CGContextSetStrokeColor_ptr(context, components);
    return;
}

CGContextSetTextDrawingMode(int c, int mode) {
    _CGContextSetTextDrawingMode_ptr(c, mode);
    return;
}

CGContextSetStrokeColorWithColor(int c, int color) {
    _CGContextSetStrokeColorWithColor_ptr(c, color);
    return;
}

CGContextStrokePath(int c) {
    _CGContextStrokePath_ptr(c);
    return;
}

CGContextSetTextMatrix(int c, int t) {
    _CGContextSetTextMatrix_ptr(c, t);
    return;
}

CGContextSetTextPosition(int c, int x, int y) {
    _CGContextSetTextPosition_ptr(c, x, y);
    return;
}

CGDataProviderCreateWithData(void * info, void * data, int size, int releaseData) {
    r0 = _CGDataProviderCreateWithData_ptr(info, data, size, releaseData);
    return r0;
}

CGDataProviderCreateWithCFData(int data) {
    r0 = _CGDataProviderCreateWithCFData_ptr(data);
    return r0;
}

CGContextTranslateCTM(int c, int tx, int ty) {
    _CGContextTranslateCTM_ptr(c, tx, ty);
    return;
}

CGFontCopyPostScriptName(int font) {
    r0 = _CGFontCopyPostScriptName_ptr(font);
    return r0;
}

CGDataProviderRelease(int provider) {
    _CGDataProviderRelease_ptr(provider);
    return;
}

CGFontCopyTableForTag(int font, int tag) {
    r0 = _CGFontCopyTableForTag_ptr(font, tag);
    return r0;
}

CGFontRelease(int font) {
    _CGFontRelease_ptr(font);
    return;
}

CGFontCreateWithDataProvider(int provider) {
    r0 = _CGFontCreateWithDataProvider_ptr(provider);
    return r0;
}

CGFontCreateWithFontName(int name) {
    r0 = _CGFontCreateWithFontName_ptr(name);
    return r0;
}

CGFontRetain(int font) {
    r0 = _CGFontRetain_ptr(font);
    return r0;
}

CGGradientCreateWithColors(int space, int colors, int locations) {
    r0 = _CGGradientCreateWithColors_ptr(space, colors, locations);
    return r0;
}

CGGradientRelease(int gradient) {
    _CGGradientRelease_ptr(gradient);
    return;
}

CGImageCreateCopy(int image) {
    r0 = _CGImageCreateCopy_ptr(image);
    return r0;
}

CGImageCreate(int width, int height, int bitsPerComponent, int bitsPerPixel, int bytesPerRow, int space, int bitmapInfo, int provider, int decode, int shouldInterpolate, int intent) {
    r0 = _CGImageCreate_ptr(width, height, bitsPerComponent, bitsPerPixel, bytesPerRow, space, bitmapInfo, provider, decode, shouldInterpolate, intent);
    return r0;
}

CGImageCreateWithImageInRect(int image, int rect) {
    r0 = _CGImageCreateWithImageInRect_ptr(image, rect);
    return r0;
}

CGImageCreateWithJPEGDataProvider(int source, int decode, int shouldInterpolate, int intent) {
    r0 = _CGImageCreateWithJPEGDataProvider_ptr(source, decode, shouldInterpolate, intent);
    return r0;
}

CGImageCreateWithPNGDataProvider(int source, int decode, int shouldInterpolate, int intent) {
    r0 = _CGImageCreateWithPNGDataProvider_ptr(source, decode, shouldInterpolate, intent);
    return r0;
}

CGImageGetAlphaInfo(int image) {
    r0 = _CGImageGetAlphaInfo_ptr(image);
    return r0;
}

CGImageGetBitmapInfo(int image) {
    r0 = _CGImageGetBitmapInfo_ptr(image);
    return r0;
}

CGImageGetBitsPerComponent(int image) {
    r0 = _CGImageGetBitsPerComponent_ptr(image);
    return r0;
}

CGImageGetBytesPerRow(int image) {
    r0 = _CGImageGetBytesPerRow_ptr(image);
    return r0;
}

CGImageGetColorSpace(int image) {
    r0 = _CGImageGetColorSpace_ptr(image);
    return r0;
}

CGImageGetHeight(int image) {
    r0 = _CGImageGetHeight_ptr(image);
    return r0;
}

CGImageGetWidth(int image) {
    r0 = _CGImageGetWidth_ptr(image);
    return r0;
}

CGImageRelease(int image) {
    _CGImageRelease_ptr(image);
    return;
}

CGImageSourceCopyProperties(int isrc, int options) {
    r0 = _CGImageSourceCopyProperties_ptr(isrc, options);
    return r0;
}

CGImageSourceCopyPropertiesAtIndex(int isrc, int index, int options) {
    r0 = _CGImageSourceCopyPropertiesAtIndex_ptr(isrc, index, options);
    return r0;
}

CGImageSourceCreateImageAtIndex(int isrc, int index, int options) {
    r0 = _CGImageSourceCreateImageAtIndex_ptr(isrc, index, options);
    return r0;
}

CGImageSourceCreateWithData(int data, int options) {
    r0 = _CGImageSourceCreateWithData_ptr(data, options);
    return r0;
}

CGImageSourceGetCount(int isrc) {
    r0 = _CGImageSourceGetCount_ptr(isrc);
    return r0;
}

CGImageSourceGetType(int isrc) {
    r0 = _CGImageSourceGetType_ptr(isrc);
    return r0;
}

CGPathAddCurveToPoint(int path, void * m, int cp1x, int cp1y, int cp2x, int cp2y, int x, int y) {
    _CGPathAddCurveToPoint_ptr(path, m, cp1x, cp1y, cp2x, cp2y, x, y);
    return;
}

CGPathAddEllipseInRect(int path, void * m, int rect) {
    _CGPathAddEllipseInRect_ptr(path, m, rect);
    return;
}

CGPathAddLineToPoint(int path, void * m, int x, int y) {
    _CGPathAddLineToPoint_ptr(path, m, x, y);
    return;
}

CGPathAddPath(int path1, void * m, int path2) {
    _CGPathAddPath_ptr(path1, m, path2);
    return;
}

CGPathAddRect(int path, void * m, int rect) {
    _CGPathAddRect_ptr(path, m, rect);
    return;
}

CGPathCloseSubpath(int path) {
    _CGPathCloseSubpath_ptr(path);
    return;
}

CGPathCreateMutable() {
    r0 = _CGPathCreateMutable_ptr();
    return r0;
}

CGPathCreateWithRect(int rect, void * transform) {
    r0 = _CGPathCreateWithRect_ptr(rect, transform);
    return r0;
}

CGPathGetBoundingBox(int path) {
    r0 = _CGPathGetBoundingBox_ptr(path);
    return r0;
}

CGPathMoveToPoint(int path, void * m, int x, int y) {
    _CGPathMoveToPoint_ptr(path, m, x, y);
    return;
}

CGPathRelease(int path) {
    _CGPathRelease_ptr(path);
    return;
}

CGPointFromString() {
    _CGPointFromString_ptr();
    return;
}

CGRectApplyAffineTransform(int rect, int t) {
    r0 = _CGRectApplyAffineTransform_ptr(rect, t);
    return r0;
}

CGRectContainsPoint(int rect, int point) {
    r0 = _CGRectContainsPoint_ptr(rect, point);
    return r0;
}

CGRectContainsRect(int rect1, int rect2) {
    r0 = _CGRectContainsRect_ptr(rect1, rect2);
    return r0;
}

CGRectDivide(int rect, void * slice, void * remainder, int amount, int edge) {
    _CGRectDivide_ptr(rect, slice, remainder, amount, edge);
    return;
}

CGRectEqualToRect(int rect1, int rect2) {
    r0 = _CGRectEqualToRect_ptr(rect1, rect2);
    return r0;
}

CGRectFromString() {
    _CGRectFromString_ptr();
    return;
}

CGRectGetHeight(int rect) {
    r0 = _CGRectGetHeight_ptr(rect);
    return r0;
}

CGRectGetMaxX(int rect) {
    r0 = _CGRectGetMaxX_ptr(rect);
    return r0;
}

CGRectGetMaxY(int rect) {
    r0 = _CGRectGetMaxY_ptr(rect);
    return r0;
}

CGRectGetMidX(int rect) {
    r0 = _CGRectGetMidX_ptr(rect);
    return r0;
}

CGRectGetMidY(int rect) {
    r0 = _CGRectGetMidY_ptr(rect);
    return r0;
}

CGRectGetMinX(int rect) {
    r0 = _CGRectGetMinX_ptr(rect);
    return r0;
}

CGRectGetMinY(int rect) {
    r0 = _CGRectGetMinY_ptr(rect);
    return r0;
}

CGRectGetWidth(int rect) {
    r0 = _CGRectGetWidth_ptr(rect);
    return r0;
}

CGRectInset(int rect, int dx, int dy) {
    r0 = _CGRectInset_ptr(rect, dx, dy);
    return r0;
}

CGRectIntegral(int rect) {
    r0 = _CGRectIntegral_ptr(rect);
    return r0;
}

CGRectIntersection(int r1, int r2) {
    r0 = _CGRectIntersection_ptr(r1, r2);
    return r0;
}

CGRectIntersectsRect(int rect1, int rect2) {
    r0 = _CGRectIntersectsRect_ptr(rect1, rect2);
    return r0;
}

CGRectIsEmpty(int rect) {
    r0 = _CGRectIsEmpty_ptr(rect);
    return r0;
}

CGRectIsNull(int rect) {
    r0 = _CGRectIsNull_ptr(rect);
    return r0;
}

CGRectOffset(int rect, int dx, int dy) {
    r0 = _CGRectOffset_ptr(rect, dx, dy);
    return r0;
}

CGRectStandardize(int rect) {
    r0 = _CGRectStandardize_ptr(rect);
    return r0;
}

CGRectUnion(int r1, int r2) {
    r0 = _CGRectUnion_ptr(r1, r2);
    return r0;
}

CGSizeFromString() {
    _CGSizeFromString_ptr();
    return;
}

CLLocationCoordinate2DIsValid(int coord) {
    r0 = _CLLocationCoordinate2DIsValid_ptr(coord);
    return r0;
}

CMFormatDescriptionEqual(int desc1, int desc2) {
    r0 = _CMFormatDescriptionEqual_ptr(desc1, desc2);
    return r0;
}

CMTimeAdd(int addend1, int addend2) {
    r0 = _CMTimeAdd_ptr(addend1, addend2);
    return r0;
}

CMFormatDescriptionGetMediaType(int desc) {
    r0 = _CMFormatDescriptionGetMediaType_ptr(desc);
    return r0;
}

CMSampleBufferGetFormatDescription(int sbuf) {
    r0 = _CMSampleBufferGetFormatDescription_ptr(sbuf);
    return r0;
}

CMTimeGetSeconds(int time) {
    r0 = _CMTimeGetSeconds_ptr(time);
    return r0;
}

CMTimeCompare(int time1, int time2) {
    r0 = _CMTimeCompare_ptr(time1, time2);
    return r0;
}

CMTimeMake(int value, int timescale) {
    r0 = _CMTimeMake_ptr(value, timescale);
    return r0;
}

CMTimeMakeWithSeconds(int seconds, int preferredTimescale) {
    r0 = _CMTimeMakeWithSeconds_ptr(seconds, preferredTimescale);
    return r0;
}

CMTimeMaximum(int time1, int time2) {
    r0 = _CMTimeMaximum_ptr(time1, time2);
    return r0;
}

CMTimeMultiplyByFloat64(int time, int multiplier) {
    r0 = _CMTimeMultiplyByFloat64_ptr(time, multiplier);
    return r0;
}

CMTimeRangeGetEnd(int range) {
    r0 = _CMTimeRangeGetEnd_ptr(range);
    return r0;
}

CMTimeSubtract(int minuend, int subtrahend) {
    r0 = _CMTimeSubtract_ptr(minuend, subtrahend);
    return r0;
}

CNCopyCurrentNetworkInfo() {
    _CNCopyCurrentNetworkInfo_ptr();
    return;
}

CNCopySupportedInterfaces() {
    _CNCopySupportedInterfaces_ptr();
    return;
}

CTFontCopyAttribute(int font, int attribute) {
    r0 = _CTFontCopyAttribute_ptr(font, attribute);
    return r0;
}

CTFontCopyName(int font, int nameKey) {
    r0 = _CTFontCopyName_ptr(font, nameKey);
    return r0;
}

CTFontCopyGraphicsFont(int font, void * attributes) {
    r0 = _CTFontCopyGraphicsFont_ptr(font, attributes);
    return r0;
}

CTFontCopyPostScriptName(int font) {
    r0 = _CTFontCopyPostScriptName_ptr(font);
    return r0;
}

CTFontCreateCopyWithAttributes(int font, int size, void * matrix, int attributes) {
    r0 = _CTFontCreateCopyWithAttributes_ptr(font, size, matrix, attributes);
    return r0;
}

CTFontCreateForString(int currentFont, int string, int range) {
    r0 = _CTFontCreateForString_ptr(currentFont, string, range);
    return r0;
}

CTFontCreateWithGraphicsFont(int graphicsFont, int size, void * matrix, int attributes) {
    r0 = _CTFontCreateWithGraphicsFont_ptr(graphicsFont, size, matrix, attributes);
    return r0;
}

CTFontDescriptorCreateWithAttributes(int attributes) {
    r0 = _CTFontDescriptorCreateWithAttributes_ptr(attributes);
    return r0;
}

CTFontCreateWithName(int name, int size, void * matrix) {
    r0 = _CTFontCreateWithName_ptr(name, size, matrix);
    return r0;
}

CTFontDescriptorCreateWithNameAndSize(int name, int size) {
    r0 = _CTFontDescriptorCreateWithNameAndSize_ptr(name, size);
    return r0;
}

CTFontDrawGlyphs(int font, int glyphs, int positions, int count, int context) {
    _CTFontDrawGlyphs_ptr(font, glyphs, positions, count, context);
    return;
}

CTFontGetAdvancesForGlyphs(int font, int orientation, int glyphs, int advances, int count) {
    r0 = _CTFontGetAdvancesForGlyphs_ptr(font, orientation, glyphs, advances, count);
    return r0;
}

CTFontGetAscent(int font) {
    r0 = _CTFontGetAscent_ptr(font);
    return r0;
}

CTFontGetDescent(int font) {
    r0 = _CTFontGetDescent_ptr(font);
    return r0;
}

CTFontGetLeading(int font) {
    r0 = _CTFontGetLeading_ptr(font);
    return r0;
}

CTFontGetOpticalBoundsForGlyphs(int font, int glyphs, int boundingRects, int count, int options) {
    r0 = _CTFontGetOpticalBoundsForGlyphs_ptr(font, glyphs, boundingRects, count, options);
    return r0;
}

CTFontGetSize(int font) {
    r0 = _CTFontGetSize_ptr(font);
    return r0;
}

CTFontManagerRegisterGraphicsFont(int font, void * error) {
    r0 = _CTFontManagerRegisterGraphicsFont_ptr(font, error);
    return r0;
}

CTFrameDraw(int frame, int context) {
    _CTFrameDraw_ptr(frame, context);
    return;
}

CTFramesetterCreateFrame(int framesetter, int stringRange, int path, int frameAttributes) {
    r0 = _CTFramesetterCreateFrame_ptr(framesetter, stringRange, path, frameAttributes);
    return r0;
}

CTFramesetterCreateWithAttributedString(int string) {
    r0 = _CTFramesetterCreateWithAttributedString_ptr(string);
    return r0;
}

CTFramesetterSuggestFrameSizeWithConstraints(int framesetter, int stringRange, int frameAttributes, int constraints, void * fitRange) {
    r0 = _CTFramesetterSuggestFrameSizeWithConstraints_ptr(framesetter, stringRange, frameAttributes, constraints, fitRange);
    return r0;
}

CTGetCoreTextVersion() {
    r0 = _CTGetCoreTextVersion_ptr();
    return r0;
}

CTLineGetGlyphRuns(int line) {
    r0 = _CTLineGetGlyphRuns_ptr(line);
    return r0;
}

CTLineGetTrailingWhitespaceWidth(int line) {
    r0 = _CTLineGetTrailingWhitespaceWidth_ptr(line);
    return r0;
}

CTRunGetAttributes(int run) {
    r0 = _CTRunGetAttributes_ptr(run);
    return r0;
}

CTRunGetGlyphCount(int run) {
    r0 = _CTRunGetGlyphCount_ptr(run);
    return r0;
}

CTRunGetGlyphs(int run, int range, int buffer) {
    _CTRunGetGlyphs_ptr(run, range, buffer);
    return;
}

* CTRunGetGlyphsPtr(int run) {
    r0 = _CTRunGetGlyphsPtr_ptr(run);
    return r0;
}

CTRunGetPositions(int run, int range, int buffer) {
    _CTRunGetPositions_ptr(run, range, buffer);
    return;
}

* CTRunGetPositionsPtr(int run) {
    r0 = _CTRunGetPositionsPtr_ptr(run);
    return r0;
}

CTRunGetStatus(int run) {
    r0 = _CTRunGetStatus_ptr(run);
    return r0;
}

CTRunGetStringIndices(int run, int range, int buffer) {
    _CTRunGetStringIndices_ptr(run, range, buffer);
    return;
}

* CTRunGetStringIndicesPtr(int run) {
    r0 = _CTRunGetStringIndicesPtr_ptr(run);
    return r0;
}

CTRunGetStringRange(int run) {
    r0 = _CTRunGetStringRange_ptr(run);
    return r0;
}

CTRunGetTypographicBounds(int run, int range, void * ascent, void * descent, void * leading) {
    r0 = _CTRunGetTypographicBounds_ptr(run, range, ascent, descent, leading);
    return r0;
}

CTTypesetterCreateLine(int typesetter, int stringRange) {
    r0 = _CTTypesetterCreateLine_ptr(typesetter, stringRange);
    return r0;
}

CTTypesetterCreateWithAttributedStringAndOptions(int string, int options) {
    r0 = _CTTypesetterCreateWithAttributedStringAndOptions_ptr(string, options);
    return r0;
}

CVBufferGetAttachment(int buffer, int key, void * attachmentMode) {
    r0 = _CVBufferGetAttachment_ptr(buffer, key, attachmentMode);
    return r0;
}

CVBufferRelease(int buffer) {
    _CVBufferRelease_ptr(buffer);
    return;
}

CVBufferRetain(int buffer) {
    r0 = _CVBufferRetain_ptr(buffer);
    return r0;
}

CVMetalTextureCacheCreate(int allocator, int cacheAttributes, int metalDevice, int textureAttributes, void * cacheOut) {
    r0 = _CVMetalTextureCacheCreate_ptr(allocator, cacheAttributes, metalDevice, textureAttributes, cacheOut);
    return r0;
}

CVMetalTextureCacheCreateTextureFromImage(int allocator, int textureCache, int sourceImage, int textureAttributes, int pixelFormat, int width, int height, int planeIndex, void * textureOut) {
    r0 = _CVMetalTextureCacheCreateTextureFromImage_ptr(allocator, textureCache, sourceImage, textureAttributes, pixelFormat, width, height, planeIndex, textureOut);
    return r0;
}

CVMetalTextureCacheFlush(int textureCache, int options) {
    _CVMetalTextureCacheFlush_ptr(textureCache, options);
    return;
}

CVMetalTextureGetTexture(int image) {
    r0 = _CVMetalTextureGetTexture_ptr(image);
    return r0;
}

CVOpenGLESTextureCacheCreateTextureFromImage() {
    _CVOpenGLESTextureCacheCreateTextureFromImage_ptr();
    return;
}

CVOpenGLESTextureGetName() {
    _CVOpenGLESTextureGetName_ptr();
    return;
}

* CVPixelBufferGetBaseAddress(int pixelBuffer) {
    r0 = _CVPixelBufferGetBaseAddress_ptr(pixelBuffer);
    return r0;
}

CVPixelBufferGetBytesPerRow(int pixelBuffer) {
    r0 = _CVPixelBufferGetBytesPerRow_ptr(pixelBuffer);
    return r0;
}

CVPixelBufferGetHeight(int pixelBuffer) {
    r0 = _CVPixelBufferGetHeight_ptr(pixelBuffer);
    return r0;
}

CVPixelBufferGetIOSurface(int pixelBuffer) {
    r0 = _CVPixelBufferGetIOSurface_ptr(pixelBuffer);
    return r0;
}

CVPixelBufferGetWidth(int pixelBuffer) {
    r0 = _CVPixelBufferGetWidth_ptr(pixelBuffer);
    return r0;
}

CVPixelBufferLockBaseAddress(int pixelBuffer, int lockFlags) {
    r0 = _CVPixelBufferLockBaseAddress_ptr(pixelBuffer, lockFlags);
    return r0;
}

CVPixelBufferPoolCreate(int allocator, int poolAttributes, int pixelBufferAttributes, void * poolOut) {
    r0 = _CVPixelBufferPoolCreate_ptr(allocator, poolAttributes, pixelBufferAttributes, poolOut);
    return r0;
}

CVPixelBufferPoolCreatePixelBuffer(int allocator, int pixelBufferPool, void * pixelBufferOut) {
    r0 = _CVPixelBufferPoolCreatePixelBuffer_ptr(allocator, pixelBufferPool, pixelBufferOut);
    return r0;
}

CVPixelBufferPoolFlush(int pool, int options) {
    _CVPixelBufferPoolFlush_ptr(pool, options);
    return;
}

CVPixelBufferPoolRelease(int pixelBufferPool) {
    _CVPixelBufferPoolRelease_ptr(pixelBufferPool);
    return;
}

CVPixelBufferRelease(int texture) {
    _CVPixelBufferRelease_ptr(texture);
    return;
}

CVPixelBufferUnlockBaseAddress(int pixelBuffer, int unlockFlags) {
    r0 = _CVPixelBufferUnlockBaseAddress_ptr(pixelBuffer, unlockFlags);
    return r0;
}

DNSServiceNATPortMappingCreate(void * sdRef, int flags, int interfaceIndex, int protocol, int internalPort, int externalPort, int ttl, int callBack, void * context) {
    r0 = _DNSServiceNATPortMappingCreate_ptr(sdRef, flags, interfaceIndex, protocol, internalPort, externalPort, ttl, callBack, context);
    return r0;
}

DNSServiceProcessResult(int sdRef) {
    r0 = _DNSServiceProcessResult_ptr(sdRef);
    return r0;
}

DNSServiceRefDeallocate(int sdRef) {
    _DNSServiceRefDeallocate_ptr(sdRef);
    return;
}

DNSServiceRefSockFD(int sdRef) {
    r0 = _DNSServiceRefSockFD_ptr(sdRef);
    return r0;
}

ExtAudioFileDispose(int inExtAudioFile) {
    r0 = _ExtAudioFileDispose_ptr(inExtAudioFile);
    return r0;
}

ExtAudioFileGetProperty(int inExtAudioFile, int inPropertyID, void * ioPropertyDataSize, void * outPropertyData) {
    r0 = _ExtAudioFileGetProperty_ptr(inExtAudioFile, inPropertyID, ioPropertyDataSize, outPropertyData);
    return r0;
}

ExtAudioFileOpenURL(int inURL, void * outExtAudioFile) {
    r0 = _ExtAudioFileOpenURL_ptr(inURL, outExtAudioFile);
    return r0;
}

ExtAudioFileRead(int inExtAudioFile, void * ioNumberFrames, void * ioData) {
    r0 = _ExtAudioFileRead_ptr(inExtAudioFile, ioNumberFrames, ioData);
    return r0;
}

ExtAudioFileSetProperty(int inExtAudioFile, int inPropertyID, int inPropertyDataSize, void * inPropertyData) {
    r0 = _ExtAudioFileSetProperty_ptr(inExtAudioFile, inPropertyID, inPropertyDataSize, inPropertyData);
    return r0;
}

MTLCreateSystemDefaultDevice() {
    r0 = _MTLCreateSystemDefaultDevice_ptr();
    return r0;
}

NSAllocateObject(int aClass, int extraBytes, void * zone) {
    r0 = _NSAllocateObject_ptr(aClass, extraBytes, zone);
    return r0;
}

NSClassFromString(int aClassName) {
    r0 = _NSClassFromString_ptr(aClassName);
    return r0;
}

* NSGetSizeAndAlignment(void * typePtr, void * sizep, void * alignp) {
    r0 = _NSGetSizeAndAlignment_ptr(typePtr, sizep, alignp);
    return r0;
}

* NSGetUncaughtExceptionHandler() {
    r0 = _NSGetUncaughtExceptionHandler_ptr();
    return r0;
}

NSHomeDirectory() {
    r0 = _NSHomeDirectory_ptr();
    return r0;
}

NSLog(int format) {
    _NSLog_ptr(format);
    return;
}

NSLogv(int format, int args) {
    _NSLogv_ptr(format, args);
    return;
}

NSSearchPathForDirectoriesInDomains(int directory, int domainMask, int expandTilde) {
    r0 = _NSSearchPathForDirectoriesInDomains_ptr(directory, domainMask, expandTilde);
    return r0;
}

NSSelectorFromString(int aSelectorName) {
    r0 = _NSSelectorFromString_ptr(aSelectorName);
    return r0;
}

NSSetUncaughtExceptionHandler(void * ) {
    _NSSetUncaughtExceptionHandler_ptr(arg_0);
    return;
}

NSStringFromCGRect() {
    _NSStringFromCGRect_ptr();
    return;
}

NSStringFromCGSize() {
    _NSStringFromCGSize_ptr();
    return;
}

NSStringFromClass(int aClass) {
    r0 = _NSStringFromClass_ptr(aClass);
    return r0;
}

NSStringFromProtocol(int proto) {
    r0 = _NSStringFromProtocol_ptr(proto);
    return r0;
}

NSStringFromSelector(int aSelector) {
    r0 = _NSStringFromSelector_ptr(aSelector);
    return r0;
}

NSTemporaryDirectory() {
    r0 = _NSTemporaryDirectory_ptr();
    return r0;
}

* NXGetArchInfoFromCpuType(int cputype, int cpusubtype) {
    r0 = _NXGetArchInfoFromCpuType_ptr(cputype, cpusubtype);
    return r0;
}

* NXGetLocalArchInfo() {
    r0 = _NXGetLocalArchInfo_ptr();
    return r0;
}

OSAtomicAdd32Barrier(int theAmount, void * theValue) {
    r0 = _OSAtomicAdd32Barrier_ptr(theAmount, theValue);
    return r0;
}

OSAtomicAdd64(int theAmount, void * theValue) {
    r0 = _OSAtomicAdd64_ptr(theAmount, theValue);
    return r0;
}

OSAtomicCompareAndSwap64Barrier(int oldValue, int newValue, void * theValue) {
    r0 = _OSAtomicCompareAndSwap64Barrier_ptr(oldValue, newValue, theValue);
    return r0;
}

OSAtomicCompareAndSwapPtrBarrier(void * oldValue, void * newValue, void * theValue) {
    r0 = _OSAtomicCompareAndSwapPtrBarrier_ptr(oldValue, newValue, theValue);
    return r0;
}

OSAtomicDecrement32(void * theValue) {
    r0 = _OSAtomicDecrement32_ptr(theValue);
    return r0;
}

OSAtomicIncrement32(void * theValue) {
    r0 = _OSAtomicIncrement32_ptr(theValue);
    return r0;
}

OSMemoryBarrier() {
    _OSMemoryBarrier_ptr();
    return;
}

OSSpinLockLock(void * lock) {
    _OSSpinLockLock_ptr(lock);
    return;
}

OSSpinLockUnlock(void * lock) {
    _OSSpinLockUnlock_ptr(lock);
    return;
}

SCNetworkReachabilityCreateWithAddress(int allocator, void * address) {
    r0 = _SCNetworkReachabilityCreateWithAddress_ptr(allocator, address);
    return r0;
}

SCNetworkReachabilityCreateWithName(int allocator, void * nodename) {
    r0 = _SCNetworkReachabilityCreateWithName_ptr(allocator, nodename);
    return r0;
}

SCNetworkReachabilityGetFlags(int target, void * flags) {
    r0 = _SCNetworkReachabilityGetFlags_ptr(target, flags);
    return r0;
}

SCNetworkReachabilityScheduleWithRunLoop(int target, int runLoop, int runLoopMode) {
    r0 = _SCNetworkReachabilityScheduleWithRunLoop_ptr(target, runLoop, runLoopMode);
    return r0;
}

SCNetworkReachabilitySetCallback(int target, int callout, void * context) {
    r0 = _SCNetworkReachabilitySetCallback_ptr(target, callout, context);
    return r0;
}

SCNetworkReachabilitySetDispatchQueue(int target, int queue) {
    r0 = _SCNetworkReachabilitySetDispatchQueue_ptr(target, queue);
    return r0;
}

SCNetworkReachabilityUnscheduleFromRunLoop(int target, int runLoop, int runLoopMode) {
    r0 = _SCNetworkReachabilityUnscheduleFromRunLoop_ptr(target, runLoop, runLoopMode);
    return r0;
}

SecCertificateCopyData(int certificate) {
    r0 = _SecCertificateCopyData_ptr(certificate);
    return r0;
}

SecCertificateCreateWithData(int allocator, int data) {
    r0 = _SecCertificateCreateWithData_ptr(allocator, data);
    return r0;
}

SecItemAdd(int attributes, void * result) {
    r0 = _SecItemAdd_ptr(attributes, result);
    return r0;
}

SecItemCopyMatching(int query, void * result) {
    r0 = _SecItemCopyMatching_ptr(query, result);
    return r0;
}

SecItemDelete(int query) {
    r0 = _SecItemDelete_ptr(query);
    return r0;
}

SecItemUpdate(int query, int attributesToUpdate) {
    r0 = _SecItemUpdate_ptr(query, attributesToUpdate);
    return r0;
}

SecPolicyCreateBasicX509() {
    r0 = _SecPolicyCreateBasicX509_ptr();
    return r0;
}

SecPolicyCreateSSL(int server, int hostname) {
    r0 = _SecPolicyCreateSSL_ptr(server, hostname);
    return r0;
}

SecRandomCopyBytes(int rnd, int count, void * bytes) {
    r0 = _SecRandomCopyBytes_ptr(rnd, count, bytes);
    return r0;
}

SecTrustCopyPublicKey(int trust) {
    r0 = _SecTrustCopyPublicKey_ptr(trust);
    return r0;
}

SecTrustCreateWithCertificates(int certificates, int policies, void * trust) {
    r0 = _SecTrustCreateWithCertificates_ptr(certificates, policies, trust);
    return r0;
}

SecTrustEvaluate(int trust, void * result) {
    r0 = _SecTrustEvaluate_ptr(trust, result);
    return r0;
}

SecTrustGetCertificateAtIndex(int trust, int ix) {
    r0 = _SecTrustGetCertificateAtIndex_ptr(trust, ix);
    return r0;
}

SecTrustGetCertificateCount(int trust) {
    r0 = _SecTrustGetCertificateCount_ptr(trust);
    return r0;
}

SecTrustSetAnchorCertificates(int trust, int anchorCertificates) {
    r0 = _SecTrustSetAnchorCertificates_ptr(trust, anchorCertificates);
    return r0;
}

SecTrustSetAnchorCertificatesOnly(int trust, int anchorCertificatesOnly) {
    r0 = _SecTrustSetAnchorCertificatesOnly_ptr(trust, anchorCertificatesOnly);
    return r0;
}

SecTrustSetPolicies(int trust, int policies) {
    r0 = _SecTrustSetPolicies_ptr(trust, policies);
    return r0;
}

UIAccessibilityIsGuidedAccessEnabled() {
    _UIAccessibilityIsGuidedAccessEnabled_ptr();
    return;
}

UIApplicationMain() {
    _UIApplicationMain_ptr();
    return;
}

UIGraphicsBeginImageContext() {
    _UIGraphicsBeginImageContext_ptr();
    return;
}

UIGraphicsBeginImageContextWithOptions() {
    _UIGraphicsBeginImageContextWithOptions_ptr();
    return;
}

UIGraphicsEndImageContext() {
    _UIGraphicsEndImageContext_ptr();
    return;
}

UIGraphicsGetCurrentContext() {
    _UIGraphicsGetCurrentContext_ptr();
    return;
}

UIGraphicsGetImageFromCurrentImageContext() {
    _UIGraphicsGetImageFromCurrentImageContext_ptr();
    return;
}

UIImageJPEGRepresentation() {
    _UIImageJPEGRepresentation_ptr();
    return;
}

UIImagePNGRepresentation() {
    _UIImagePNGRepresentation_ptr();
    return;
}

UIImageWriteToSavedPhotosAlbum() {
    _UIImageWriteToSavedPhotosAlbum_ptr();
    return;
}

UTTypeConformsTo(int inUTI, int inConformsToUTI) {
    r0 = _UTTypeConformsTo_ptr(inUTI, inConformsToUTI);
    return r0;
}

UTTypeCopyPreferredTagWithClass(int inUTI, int inTagClass) {
    r0 = _UTTypeCopyPreferredTagWithClass_ptr(inUTI, inTagClass);
    return r0;
}

UTTypeCreatePreferredIdentifierForTag(int inTagClass, int inTag, int inConformingToUTI) {
    r0 = _UTTypeCreatePreferredIdentifierForTag_ptr(inTagClass, inTag, inConformingToUTI);
    return r0;
}

* _Block_copy(void * block) {
    r0 = __Block_copy_ptr(block);
    return r0;
}

_Block_object_assign(void * , void * , int ) {
    __Block_object_assign_ptr(arg_0, arg_1, arg_2);
    return;
}

_Block_object_dispose(void * , int ) {
    __Block_object_dispose_ptr(arg_0, arg_1);
    return;
}

_Block_release(void * block) {
    __Block_release_ptr(block);
    return;
}

_NSDictionaryOfVariableBindings(int commaSeparatedKeysString, int firstValue) {
    r0 = __NSDictionaryOfVariableBindings_ptr(commaSeparatedKeysString, firstValue);
    return r0;
}

_Unwind_Resume(void * exception_object) {
    __Unwind_Resume_ptr(exception_object);
    return;
}

_ZN13mcwebsocketpp10connectionINS_6config11core_clientEE17handle_read_frameERKNSt3__110error_codeEm(int arg0, int arg1) {
    pointer to mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_frame(arg0, arg1);
    return;
}

_ZNKSt3__110error_code7messageEv() {
    pointer to std::__1::error_code::message();
    return;
}

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::rfind();
    return;
}

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::find();
    return;
}

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare();
    return;
}

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare();
    return;
}

_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv() {
    pointer to std::__1::__vector_base_common<true>::__throw_length_error();
    return;
}

_ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv() {
    pointer to std::__1::__vector_base_common<true>::__throw_out_of_range();
    return;
}

_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv() {
    pointer to std::__1::__basic_string_common<true>::__throw_length_error();
    return;
}

_ZNKSt3__16locale9has_facetERNS0_2idE() {
    pointer to std::__1::locale::has_facet();
    return;
}

_ZNKSt3__16locale9use_facetERNS0_2idE() {
    pointer to std::__1::locale::use_facet();
    return;
}

_ZNKSt3__18ios_base6getlocEv() {
    pointer to std::__1::ios_base::getloc();
    return;
}

_ZNKSt3__18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE3getES4_S4_RNS_8ios_baseERjP2tmPKcSC_() {
    pointer to std::__1::time_get<char, std::__1::istreambuf_iterator<char, std::__1::char_traits<char> > >::get();
    return;
}

_ZNKSt3__18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE3putES4_RNS_8ios_baseEcPK2tmPKcSC_() {
    pointer to std::__1::time_put<char, std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> > >::put();
    return;
}

_ZNSt11logic_errorC2EPKc() {
    pointer to std::logic_error::logic_error();
    return;
}

_ZNSt13runtime_errorC2EPKc() {
    pointer to std::runtime_error::runtime_error();
    return;
}

_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE() {
    pointer to std::runtime_error::runtime_error();
    return;
}

_ZNSt3__111__call_onceERVmPvPFvS2_E() {
    pointer to std::__1::__call_once();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::erase();
    return;
}

_ZNSt3__112__next_primeEm() {
    pointer to std::__1::__next_prime();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_mm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::resize();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::replace();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEmmmmmm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__grow_by();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::reserve();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::push_back();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_mmRKS4_() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
    return;
}

_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE3getEPclc() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::get();
    return;
}

_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::seekg();
    return;
}

_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::tellg();
    return;
}

_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::sentry::sentry();
    return;
}

_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::~basic_istream();
    return;
}

_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::operator>>();
    return;
}

_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERm() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::operator>>();
    return;
}

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry::sentry();
    return;
}

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry::~sentry();
    return;
}

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::~basic_ostream();
    return;
}

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
    return;
}

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
    return;
}

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
    return;
}

_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
    return;
}

_ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE5writeEPKwl() {
    pointer to std::__1::basic_ostream<wchar_t, std::__1::char_traits<wchar_t> >::write();
    return;
}

_ZNSt3__113random_deviceC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE() {
    pointer to std::__1::random_device::random_device();
    return;
}

_ZNSt3__113random_deviceD1Ev() {
    pointer to std::__1::random_device::~random_device();
    return;
}

_ZNSt3__113random_deviceclEv() {
    pointer to std::__1::random_device::operator();
    return;
}

_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev() {
    pointer to std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
    return;
}

_ZNSt3__114error_categoryD2Ev() {
    pointer to std::__1::error_category::~error_category();
    return;
}

_ZNSt3__115__thread_structC1Ev() {
    pointer to std::__1::__thread_struct::__thread_struct();
    return;
}

_ZNSt3__115__thread_structD1Ev() {
    pointer to std::__1::__thread_struct::~__thread_struct();
    return;
}

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev() {
    pointer to std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
    return;
}

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev() {
    pointer to std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
    return;
}

_ZNSt3__115recursive_mutex4lockEv() {
    pointer to std::__1::recursive_mutex::lock();
    return;
}

_ZNSt3__115recursive_mutex6unlockEv() {
    pointer to std::__1::recursive_mutex::unlock();
    return;
}

_ZNSt3__115recursive_mutexC1Ev() {
    pointer to std::__1::recursive_mutex::recursive_mutex();
    return;
}

_ZNSt3__115recursive_mutexD1Ev() {
    pointer to std::__1::recursive_mutex::~recursive_mutex();
    return;
}

_ZNSt3__115system_categoryEv() {
    pointer to std::__1::system_category();
    return;
}

_ZNSt3__118condition_variable10notify_allEv() {
    pointer to std::__1::condition_variable::notify_all();
    return;
}

_ZNSt3__118condition_variable10notify_oneEv() {
    pointer to std::__1::condition_variable::notify_one();
    return;
}

_ZNSt3__118condition_variable15__do_timed_waitERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12system_clockENS5_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE() {
    pointer to std::__1::condition_variable::__do_timed_wait();
    return;
}

_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE() {
    pointer to std::__1::condition_variable::wait();
    return;
}

_ZNSt3__119__shared_weak_count14__release_weakEv() {
    pointer to std::__1::__shared_weak_count::__release_weak();
    return;
}

_ZNSt3__118condition_variableD1Ev() {
    pointer to std::__1::condition_variable::~condition_variable();
    return;
}

_ZNSt3__119__shared_weak_count4lockEv() {
    pointer to std::__1::__shared_weak_count::lock();
    return;
}

_ZNSt3__120__throw_system_errorEiPKc() {
    pointer to std::__1::__throw_system_error();
    return;
}

_ZNSt3__119__thread_local_dataEv() {
    pointer to std::__1::__thread_local_data();
    return;
}

_ZNSt3__119__shared_weak_countD2Ev() {
    pointer to std::__1::__shared_weak_count::~__shared_weak_count();
    return;
}

_ZNSt3__15mutex6unlockEv() {
    pointer to std::__1::mutex::unlock();
    return;
}

_ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi() {
    pointer to std::__1::stoi();
    return;
}

_ZNSt3__15mutex4lockEv() {
    mutex4lockEv_pt::_ZNSt3();
    return;
}

_ZNSt3__15mutexD1Ev() {
    pointer to std::__1::mutex::~mutex();
    return;
}

_ZNSt3__15stollERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi() {
    pointer to std::__1::stoll();
    return;
}

_ZNSt3__16chrono12steady_clock3nowEv() {
    pointer to std::__1::chrono::steady_clock::now();
    return;
}

_ZNSt3__16chrono12system_clock3nowEv() {
    pointer to std::__1::chrono::system_clock::now();
    return;
}

_ZNSt3__16localeC1ERKS0_() {
    pointer to std::__1::locale::locale();
    return;
}

_ZNSt3__16localeC1Ev() {
    pointer to std::__1::locale::locale();
    return;
}

_ZNSt3__16localeD1Ev() {
    pointer to std::__1::locale::~locale();
    return;
}

_ZNSt3__16thread4joinEv() {
    thread4joinEv_pt::_ZNSt3();
    return;
}

_ZNSt3__16thread6detachEv() {
    pointer to std::__1::thread::detach();
    return;
}

_ZNSt3__16threadD1Ev() {
    (*0x100e62000)();
    return;
}

_ZNSt3__17codecvtIDsc11__mbstate_tED2Ev() {
    pointer to std::__1::codecvt<char16_t, char, __mbstate_t>::~codecvt();
    return;
}

_ZNSt3__18ios_base4initEPv() {
    pointer to std::__1::ios_base::init();
    return;
}

_ZNSt3__18ios_base5clearEj() {
    pointer to std::__1::ios_base::clear();
    return;
}

_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev() {
    pointer to std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    return;
}

_ZNSt3__19to_stringEj() {
    pointer to std::__1::to_string();
    return;
}

_ZNSt3__19to_stringEx() {
    pointer to std::__1::to_string();
    return;
}

_ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > std::__1::operator+<char, std::__1::char_traits<char>, std::__1::allocator<char> >();
    return;
}

_ZNSt8bad_castC1Ev() {
    pointer to std::bad_cast::bad_cast();
    return;
}

_ZNSt9exceptionD2Ev() {
    pointer to std::exception::~exception();
    return;
}

_ZSt13get_terminatev() {
    pointer to std::get_terminate();
    return;
}

_ZSt13set_terminatePFvvE() {
    pointer to std::set_terminate();
    return;
}

_ZSt18uncaught_exceptionv() {
    pointer to std::uncaught_exception();
    return;
}

_ZSt9terminatev() {
    pointer to std::terminate();
    return;
}

_ZdaPv(void * this) {
    pointer to operator delete[](this);
    return;
}

_ZdlPv(void * this) {
    pointer to operator delete(this);
    return;
}

_Znam() {
    pointer to operator new[]();
    return;
}

_Znwm() {
    pointer to operator new();
    return;
}

_ZnwmRKSt9nothrow_t() {
    pointer to operator new();
    return;
}

__assert_rtn(void * , void * , int , void * ) {
    ___assert_rtn_ptr(arg_0, arg_1, arg_2, arg_3);
    return;
}

__cxa_allocate_exception() {
    ___cxa_allocate_exception_ptr();
    return;
}

__cxa_atexit() {
    ___cxa_atexit_ptr();
    return;
}

__cxa_bad_cast() {
    ___cxa_bad_cast_ptr();
    return;
}

__cxa_current_exception_type() {
    ___cxa_current_exception_type_ptr();
    return;
}

__cxa_begin_catch() {
    ___cxa_begin_catch_ptr();
    return;
}

__cxa_demangle() {
    ___cxa_demangle_ptr();
    return;
}

__cxa_guard_acquire() {
    ___cxa_guard_acquire_ptr();
    return;
}

__cxa_guard_release() {
    ___cxa_guard_release_ptr();
    return;
}

__cxa_rethrow() {
    ___cxa_rethrow_ptr();
    return;
}

__cxa_throw() {
    ___cxa_throw_ptr();
    return;
}

__dynamic_cast() {
    ___dynamic_cast_ptr();
    return;
}

* __error() {
    r0 = ___error_ptr();
    return r0;
}

__invert_f4(int ) {
    r0 = ___invert_f4_ptr(arg_0);
    return r0;
}

__maskrune(int , unsigned long ) {
    r0 = ___maskrune_ptr(arg_0, arg_1);
    return r0;
}

__memcpy_chk() {
    ___memcpy_chk_ptr();
    return;
}

__memset_chk() {
    ___memset_chk_ptr();
    return;
}

__sincos_stret(double ) {
    ___sincos_stret_ptr(arg_0);
    return;
}

__sincosf_stret(float ) {
    ___sincosf_stret_ptr(arg_0);
    return;
}

__snprintf_chk(void * , int , int , int , void * ) {
    r0 = ___snprintf_chk_ptr(arg_0, arg_1, arg_2, arg_3, arg_4);
    return r0;
}

__sprintf_chk(void * , int , int , void * ) {
    r0 = ___sprintf_chk_ptr(arg_0, arg_1, arg_2, arg_3);
    return r0;
}

__stack_chk_fail() {
    ___stack_chk_fail_ptr();
    return;
}

__strcpy_chk() {
    ___strcpy_chk_ptr();
    return;
}

__strncpy_chk() {
    ___strncpy_chk_ptr();
    return;
}

* __xmlLastError() {
    r0 = ___xmlLastError_ptr();
    return r0;
}

__tolower(int ) {
    r0 = ___tolower_ptr(arg_0);
    return r0;
}

* _dyld_get_image_header(int image_index) {
    r0 = __dyld_get_image_header_ptr(image_index);
    return r0;
}

* _dyld_get_image_name(int image_index) {
    r0 = __dyld_get_image_name_ptr(image_index);
    return r0;
}

_dyld_get_image_vmaddr_slide(int image_index) {
    r0 = __dyld_get_image_vmaddr_slide_ptr(image_index);
    return r0;
}

_dyld_image_count() {
    r0 = __dyld_image_count_ptr();
    return r0;
}

_dyld_register_func_for_add_image(void * func) {
    __dyld_register_func_for_add_image_ptr(func);
    return;
}

_dyld_register_func_for_remove_image(void * func) {
    __dyld_register_func_for_remove_image_ptr(func);
    return;
}

abort() {
    _abort_ptr();
    return;
}

accept(int socket, void * address, void * address_len) {
    r0 = _accept_ptr(socket, address, address_len);
    return r0;
}

acosf(float x) {
    r0 = _acosf_ptr(x);
    return r0;
}

alBufferData(int bid, int format, void * data, int size, int freq) {
    _alBufferData_ptr(bid, format, data, size, freq);
    return;
}

alDeleteBuffers(int n, void * buffers) {
    _alDeleteBuffers_ptr(n, buffers);
    return;
}

alDeleteSources(int n, void * sources) {
    _alDeleteSources_ptr(n, sources);
    return;
}

alGenBuffers(int n, void * buffers) {
    _alGenBuffers_ptr(n, buffers);
    return;
}

alGenSources(int n, void * sources) {
    _alGenSources_ptr(n, sources);
    return;
}

alGetError() {
    r0 = _alGetError_ptr();
    return r0;
}

alGetListenerf(int param, void * value) {
    _alGetListenerf_ptr(param, value);
    return;
}

alGetSourcef(int sid, int param, void * value) {
    _alGetSourcef_ptr(sid, param, value);
    return;
}

alGetSourcefv(int sid, int param, void * values) {
    _alGetSourcefv_ptr(sid, param, values);
    return;
}

alListenerf(int param, int value) {
    _alListenerf_ptr(param, value);
    return;
}

alGetSourcei(int sid, int param, void * value) {
    _alGetSourcei_ptr(sid, param, value);
    return;
}

alSourcePause(int sid) {
    _alSourcePause_ptr(sid);
    return;
}

alSourcePlay(int sid) {
    _alSourcePlay_ptr(sid);
    return;
}

alSourceRewind(int sid) {
    _alSourceRewind_ptr(sid);
    return;
}

alSourceStop(int sid) {
    _alSourceStop_ptr(sid);
    return;
}

alSourcef(int sid, int param, int value) {
    _alSourcef_ptr(sid, param, value);
    return;
}

alSourcefv(int sid, int param, void * values) {
    _alSourcefv_ptr(sid, param, values);
    return;
}

alSourcei(int sid, int param, int value) {
    _alSourcei_ptr(sid, param, value);
    return;
}

alcCloseDevice(void * device) {
    r0 = _alcCloseDevice_ptr(device);
    return r0;
}

* alcCreateContext(void * device, void * attrlist) {
    r0 = _alcCreateContext_ptr(device, attrlist);
    return r0;
}

alcDestroyContext(void * context) {
    _alcDestroyContext_ptr(context);
    return;
}

* alcGetContextsDevice(void * context) {
    r0 = _alcGetContextsDevice_ptr(context);
    return r0;
}

* alcGetCurrentContext() {
    r0 = _alcGetCurrentContext_ptr();
    return r0;
}

* alcGetProcAddress(void * device, void * funcname) {
    r0 = _alcGetProcAddress_ptr(device, funcname);
    return r0;
}

alcMakeContextCurrent(void * context) {
    r0 = _alcMakeContextCurrent_ptr(context);
    return r0;
}

* alcOpenDevice(void * devicename) {
    r0 = _alcOpenDevice_ptr(devicename);
    return r0;
}

arc4random() {
    r0 = _arc4random_ptr();
    return r0;
}

arc4random_buf(void * buf, int nbytes) {
    _arc4random_buf_ptr(buf, nbytes);
    return;
}

asinf(float ) {
    r0 = _asinf_ptr(arg_0);
    return r0;
}

arc4random_uniform(int upper_bound) {
    r0 = _arc4random_uniform_ptr(upper_bound);
    return r0;
}

asl_add_log_file(int asl, int descriptor) {
    r0 = _asl_add_log_file_ptr(asl, descriptor);
    return r0;
}

asl_log(int asl, int msg, int level, void * format) {
    r0 = _asl_log_ptr(asl, msg, level, format);
    return r0;
}

asl_free(int msg) {
    _asl_free_ptr(msg);
    return;
}

* asl_get(int msg, void * key) {
    r0 = _asl_get_ptr(msg, key);
    return r0;
}

asl_new(int type) {
    r0 = _asl_new_ptr(type);
    return r0;
}

asl_open(void * ident, void * facility, int opts) {
    r0 = _asl_open_ptr(ident, facility, opts);
    return r0;
}

asl_send(int asl, int msg) {
    r0 = _asl_send_ptr(asl, msg);
    return r0;
}

asl_search(int asl, int msg) {
    r0 = _asl_search_ptr(asl, msg);
    return r0;
}

asl_set(int msg, void * key, void * value) {
    r0 = _asl_set_ptr(msg, key, value);
    return r0;
}

asl_set_filter(int asl, int filter) {
    r0 = _asl_set_filter_ptr(asl, filter);
    return r0;
}

asl_set_query(int msg, void * key, void * value, int op) {
    r0 = _asl_set_query_ptr(msg, key, value, op);
    return r0;
}

aslresponse_free(int r) {
    _aslresponse_free_ptr(r);
    return;
}

aslresponse_next(int r) {
    r0 = _aslresponse_next_ptr(r);
    return r0;
}

asprintf(void * ret, void * format) {
    r0 = _asprintf_ptr(ret, format);
    return r0;
}

atan(double ) {
    r0 = _atan_ptr(arg_0);
    return r0;
}

atan2(double , double ) {
    r0 = _atan2_ptr(arg_0, arg_1);
    return r0;
}

atan2f(float , float ) {
    r0 = _atan2f_ptr(arg_0, arg_1);
    return r0;
}

atoi(void * str) {
    r0 = _atoi_ptr(str);
    return r0;
}

long atoll(void * str) {
    r0 = _atoll_ptr(str);
    return r0;
}

backtrace(void * array, int size) {
    r0 = _backtrace_ptr(array, size);
    return r0;
}

bind(int socket, void * address, int address_len) {
    r0 = _bind_ptr(socket, address, address_len);
    return r0;
}

* bsearch(void * key, void * base, int nel, int width, void * )) {
    r0 = _bsearch_ptr(key, base, nel, width, ));
    return r0;
}

* calloc(int count, int size) {
    r0 = _calloc_ptr(count, size);
    return r0;
}

bzero(void * s, int n) {
    _bzero_ptr(s, n);
    return;
}

class_addIvar(int cls, void * name, int size, int alignment, void * types) {
    r0 = _class_addIvar_ptr(cls, name, size, alignment, types);
    return r0;
}

class_addMethod(int cls, int name, int imp, void * types) {
    r0 = _class_addMethod_ptr(cls, name, imp, types);
    return r0;
}

class_addProperty(int cls, void * name, void * attributes, unsigned int attributeCount) {
    r0 = _class_addProperty_ptr(cls, name, attributes, attributeCount);
    return r0;
}

* class_copyIvarList(int cls, void * outCount) {
    r0 = _class_copyIvarList_ptr(cls, outCount);
    return r0;
}

* class_copyMethodList(int cls, void * outCount) {
    r0 = _class_copyMethodList_ptr(cls, outCount);
    return r0;
}

class_getClassMethod(int cls, int name) {
    r0 = _class_getClassMethod_ptr(cls, name);
    return r0;
}

* class_copyPropertyList(int cls, void * outCount) {
    r0 = _class_copyPropertyList_ptr(cls, outCount);
    return r0;
}

class_getInstanceMethod(int cls, int name) {
    r0 = _class_getInstanceMethod_ptr(cls, name);
    return r0;
}

class_getInstanceSize(int cls) {
    r0 = _class_getInstanceSize_ptr(cls);
    return r0;
}

class_getInstanceVariable(int cls, void * name) {
    r0 = _class_getInstanceVariable_ptr(cls, name);
    return r0;
}

* class_getName(void * cls) {
    r0 = _class_getName_ptr(cls);
    return r0;
}

class_getMethodImplementation(int cls, int name) {
    r0 = _class_getMethodImplementation_ptr(cls, name);
    return r0;
}

class_getProperty(int cls, void * name) {
    r0 = _class_getProperty_ptr(cls, name);
    return r0;
}

class_getSuperclass(int cls) {
    r0 = _class_getSuperclass_ptr(cls);
    return r0;
}

* class_replaceMethod(void * cls, void * name, void * imp, void * types) {
    r0 = _class_replaceMethod_ptr(cls, name, imp, types);
    return r0;
}

class_isMetaClass(int cls) {
    r0 = _class_isMetaClass_ptr(cls);
    return r0;
}

close(int fildes) {
    r0 = _close_ptr(fildes);
    return r0;
}

closedir(void * dirp) {
    r0 = _closedir_ptr(dirp);
    return r0;
}

compressBound(int sourceLen) {
    r0 = _compressBound_ptr(sourceLen);
    return r0;
}

connect(int socket, void * address, int address_len) {
    r0 = _connect_ptr(socket, address, address_len);
    return r0;
}

cos(double ) {
    r0 = _cos_ptr(arg_0);
    return r0;
}

cosf(float ) {
    r0 = _cosf_ptr(arg_0);
    return r0;
}

crc32(int crc, void * buf, int len) {
    r0 = _crc32_ptr(crc, buf, len);
    return r0;
}

deflateEnd(int strm) {
    r0 = _deflateEnd_ptr(strm);
    return r0;
}

deflate(int strm, int flush) {
    r0 = _deflate_ptr(strm, flush);
    return r0;
}

deflateInit2_(int strm, int level, int method, int windowBits, int memLevel, int strategy, void * version, int stream_size) {
    r0 = _deflateInit2__ptr(strm, level, method, windowBits, memLevel, strategy, version, stream_size);
    return r0;
}

digittoint(int c) {
    r0 = _digittoint_ptr(c);
    return r0;
}

dispatch_async(int queue, int block) {
    _dispatch_async_ptr(queue, block);
    return;
}

dispatch_after(int when, int queue, int block) {
    _dispatch_after_ptr(when, queue, block);
    return;
}

dispatch_barrier_async(int queue, int block) {
    _dispatch_barrier_async_ptr(queue, block);
    return;
}

dispatch_barrier_async_f(int queue, void * context, int work) {
    _dispatch_barrier_async_f_ptr(queue, context, work);
    return;
}

dispatch_barrier_sync(int queue, int block) {
    _dispatch_barrier_sync_ptr(queue, block);
    return;
}

dispatch_data_apply(int data, int applier) {
    r0 = _dispatch_data_apply_ptr(data, applier);
    return r0;
}

dispatch_data_create(void * buffer, int size, int queue, int destructor) {
    r0 = _dispatch_data_create_ptr(buffer, size, queue, destructor);
    return r0;
}

dispatch_data_get_size(int data) {
    r0 = _dispatch_data_get_size_ptr(data);
    return r0;
}

dispatch_get_current_queue() {
    r0 = _dispatch_get_current_queue_ptr();
    return r0;
}

dispatch_get_global_queue(int priority, unsigned long flags) {
    r0 = _dispatch_get_global_queue_ptr(priority, flags);
    return r0;
}

* dispatch_get_specific(void * key) {
    r0 = _dispatch_get_specific_ptr(key);
    return r0;
}

dispatch_group_async(int group, int queue, int block) {
    _dispatch_group_async_ptr(group, queue, block);
    return;
}

dispatch_group_create() {
    r0 = _dispatch_group_create_ptr();
    return r0;
}

dispatch_group_enter(int group) {
    _dispatch_group_enter_ptr(group);
    return;
}

dispatch_group_leave(int group) {
    _dispatch_group_leave_ptr(group);
    return;
}

dispatch_group_notify(int group, int queue, int block) {
    _dispatch_group_notify_ptr(group, queue, block);
    return;
}

dispatch_group_wait(int group, int timeout) {
    r0 = _dispatch_group_wait_ptr(group, timeout);
    return r0;
}

dispatch_once(void * predicate, int block) {
    _dispatch_once_ptr(predicate, block);
    return;
}

dispatch_once_f(void * predicate, void * context, int function) {
    _dispatch_once_f_ptr(predicate, context, function);
    return;
}

dispatch_queue_attr_make_with_qos_class(int attr, int qos_class, int relative_priority) {
    r0 = _dispatch_queue_attr_make_with_qos_class_ptr(attr, qos_class, relative_priority);
    return r0;
}

dispatch_queue_create(void * label, int attr) {
    r0 = _dispatch_queue_create_ptr(label, attr);
    return r0;
}

* dispatch_queue_get_label(int queue) {
    r0 = _dispatch_queue_get_label_ptr(queue);
    return r0;
}

dispatch_queue_set_specific(int queue, void * key, void * context, int destructor) {
    _dispatch_queue_set_specific_ptr(queue, key, context, destructor);
    return;
}

dispatch_read(int fd, int length, int queue, void * handler) {
    _dispatch_read_ptr(fd, length, queue, handler);
    return;
}

dispatch_release(int object) {
    _dispatch_release_ptr(object);
    return;
}

dispatch_resume(int object) {
    _dispatch_resume_ptr(object);
    return;
}

dispatch_semaphore_create(long count) {
    r0 = _dispatch_semaphore_create_ptr(count);
    return r0;
}

dispatch_semaphore_signal(int semaphore) {
    r0 = _dispatch_semaphore_signal_ptr(semaphore);
    return r0;
}

dispatch_semaphore_wait(int semaphore, int timeout) {
    r0 = _dispatch_semaphore_wait_ptr(semaphore, timeout);
    return r0;
}

dispatch_set_target_queue(int object, int target) {
    _dispatch_set_target_queue_ptr(object, target);
    return;
}

dispatch_source_cancel(int source) {
    _dispatch_source_cancel_ptr(source);
    return;
}

dispatch_source_create(int type, int handle, unsigned long mask, int queue) {
    r0 = _dispatch_source_create_ptr(type, handle, mask, queue);
    return r0;
}

long dispatch_source_get_data(int source) {
    r0 = _dispatch_source_get_data_ptr(source);
    return r0;
}

dispatch_source_set_cancel_handler(int source, int block) {
    _dispatch_source_set_cancel_handler_ptr(source, block);
    return;
}

dispatch_source_set_event_handler(int source, int block) {
    _dispatch_source_set_event_handler_ptr(source, block);
    return;
}

dispatch_source_set_timer(int source, int start, int interval, int leeway) {
    _dispatch_source_set_timer_ptr(source, start, interval, leeway);
    return;
}

dispatch_source_testcancel(int source) {
    r0 = _dispatch_source_testcancel_ptr(source);
    return r0;
}

dispatch_suspend(int object) {
    _dispatch_suspend_ptr(object);
    return;
}

dispatch_sync(int queue, int block) {
    _dispatch_sync_ptr(queue, block);
    return;
}

dispatch_time(int base, int offset) {
    r0 = _dispatch_time_ptr(base, offset);
    return r0;
}

dispatch_walltime(void * base, int offset) {
    r0 = _dispatch_walltime_ptr(base, offset);
    return r0;
}

dispatch_write(int fd, int data, int queue, void * handler) {
    _dispatch_write_ptr(fd, data, queue, handler);
    return;
}

dladdr(void * addr, void * info) {
    r0 = _dladdr_ptr(addr, info);
    return r0;
}

dlclose(void * handle) {
    r0 = _dlclose_ptr(handle);
    return r0;
}

* dlopen(void * path, int mode) {
    r0 = _dlopen_ptr(path, mode);
    return r0;
}

* dlsym(void * handle, void * symbol) {
    r0 = _dlsym_ptr(handle, symbol);
    return r0;
}

drand48() {
    r0 = _drand48_ptr();
    return r0;
}

exit(int status) {
    _exit_ptr(status);
    return;
}

exp(double ) {
    r0 = _exp_ptr(arg_0);
    return r0;
}

exp2(double ) {
    r0 = _exp2_ptr(arg_0);
    return r0;
}

exp2f(float ) {
    r0 = _exp2f_ptr(arg_0);
    return r0;
}

expf(float ) {
    r0 = _expf_ptr(arg_0);
    return r0;
}

fclose(void * stream) {
    r0 = _fclose_ptr(stream);
    return r0;
}

fcntl(int fildes, int cmd) {
    r0 = _fcntl_ptr(fildes, cmd);
    return r0;
}

feof(void * stream) {
    r0 = _feof_ptr(stream);
    return r0;
}

ferror(void * stream) {
    r0 = _ferror_ptr(stream);
    return r0;
}

fflush(void * stream) {
    r0 = _fflush_ptr(stream);
    return r0;
}

fgetc(void * stream) {
    r0 = _fgetc_ptr(stream);
    return r0;
}

fmod(double , double ) {
    r0 = _fmod_ptr(arg_0, arg_1);
    return r0;
}

fmodf(float , float ) {
    r0 = _fmodf_ptr(arg_0, arg_1);
    return r0;
}

* fopen(void * filename, void * mode) {
    r0 = _fopen_ptr(filename, mode);
    return r0;
}

fprintf(void * stream, void * format) {
    r0 = _fprintf_ptr(stream, format);
    return r0;
}

fputc(int c, void * stream) {
    r0 = _fputc_ptr(c, stream);
    return r0;
}

fread(void * ptr, int size, int nitems, void * stream) {
    r0 = _fread_ptr(ptr, size, nitems, stream);
    return r0;
}

free(void * ptr) {
    _free_ptr(ptr);
    return;
}

freeaddrinfo(void * ai) {
    _freeaddrinfo_ptr(ai);
    return;
}

freeifaddrs(void * ifp) {
    _freeifaddrs_ptr(ifp);
    return;
}

fseek(void * stream, long offset, int whence) {
    r0 = _fseek_ptr(stream, offset, whence);
    return r0;
}

fseeko(void * stream, int offset, int whence) {
    r0 = _fseeko_ptr(stream, offset, whence);
    return r0;
}

fstat(int fildes, void * buf) {
    r0 = _fstat_ptr(fildes, buf);
    return r0;
}

ftell(void * stream) {
    r0 = _ftell_ptr(stream);
    return r0;
}

ftello(void * stream) {
    r0 = _ftello_ptr(stream);
    return r0;
}

fwrite(void * ptr, int size, int nitems, void * stream) {
    r0 = _fwrite_ptr(ptr, size, nitems, stream);
    return r0;
}

getaddrinfo(void * hostname, void * servname, void * hints, void * res) {
    r0 = _getaddrinfo_ptr(hostname, servname, hints, res);
    return r0;
}

* getenv(void * name) {
    r0 = _getenv_ptr(name);
    return r0;
}

geteuid() {
    r0 = _geteuid_ptr();
    return r0;
}

* gethostbyname(void * name) {
    r0 = _gethostbyname_ptr(name);
    return r0;
}

getifaddrs(void * ifap) {
    r0 = _getifaddrs_ptr(ifap);
    return r0;
}

getnameinfo(void * sa, int salen, void * host, int hostlen, void * serv, int servlen, int flags) {
    r0 = _getnameinfo_ptr(sa, salen, host, hostlen, serv, servlen, flags);
    return r0;
}

getpid() {
    r0 = _getpid_ptr();
    return r0;
}

* getsectbynamefromheader(void * mhp, void * segname, void * sectname) {
    r0 = _getsectbynamefromheader_ptr(mhp, segname, sectname);
    return r0;
}

* getsectbynamefromheader_64(void * mhp, void * segname, void * sectname) {
    r0 = _getsectbynamefromheader_64_ptr(mhp, segname, sectname);
    return r0;
}

getsockname(int socket, void * address, void * address_len) {
    r0 = _getsockname_ptr(socket, address, address_len);
    return r0;
}

getuid() {
    r0 = _getuid_ptr();
    return r0;
}

gettimeofday(void * tp, void * tzp) {
    r0 = _gettimeofday_ptr(tp, tzp);
    return r0;
}

getxattr(void * path, void * name, void * value, int size, int position, int options) {
    r0 = _getxattr_ptr(path, name, value, size, position, options);
    return r0;
}

glActiveTexture(int texture) {
    _glActiveTexture_ptr(texture);
    return;
}

glBindAttribLocation(int program, int index, void * name) {
    _glBindAttribLocation_ptr(program, index, name);
    return;
}

glAttachShader(int program, int shader) {
    _glAttachShader_ptr(program, shader);
    return;
}

glBindBuffer(int target, int buffer) {
    _glBindBuffer_ptr(target, buffer);
    return;
}

glBindFramebuffer(int target, int framebuffer) {
    _glBindFramebuffer_ptr(target, framebuffer);
    return;
}

glBindRenderbuffer(int target, int renderbuffer) {
    _glBindRenderbuffer_ptr(target, renderbuffer);
    return;
}

glBindTexture(int target, int texture) {
    _glBindTexture_ptr(target, texture);
    return;
}

glBindVertexArrayOES() {
    _glBindVertexArrayOES_ptr();
    return;
}

glBlendEquation(int mode) {
    _glBlendEquation_ptr(mode);
    return;
}

glBlendFunc(int sfactor, int dfactor) {
    _glBlendFunc_ptr(sfactor, dfactor);
    return;
}

glBufferSubData(int target, int offset, int size, void * data) {
    _glBufferSubData_ptr(target, offset, size, data);
    return;
}

glBufferData(int target, int size, void * data, int usage) {
    _glBufferData_ptr(target, size, data, usage);
    return;
}

glCheckFramebufferStatus(int target) {
    r0 = _glCheckFramebufferStatus_ptr(target);
    return r0;
}

glClearDepthf(int d) {
    _glClearDepthf_ptr(d);
    return;
}

glClear(int mask) {
    _glClear_ptr(mask);
    return;
}

glClearColor(int red, int green, int blue, int alpha) {
    _glClearColor_ptr(red, green, blue, alpha);
    return;
}

glClearStencil(int s) {
    _glClearStencil_ptr(s);
    return;
}

glCompileShader(int shader) {
    _glCompileShader_ptr(shader);
    return;
}

glColorMask(int red, int green, int blue, int alpha) {
    _glColorMask_ptr(red, green, blue, alpha);
    return;
}

glCreateProgram() {
    r0 = _glCreateProgram_ptr();
    return r0;
}

glCreateShader(int type) {
    r0 = _glCreateShader_ptr(type);
    return r0;
}

glDeleteBuffers(int n, void * buffers) {
    _glDeleteBuffers_ptr(n, buffers);
    return;
}

glDeleteFramebuffers(int n, void * framebuffers) {
    _glDeleteFramebuffers_ptr(n, framebuffers);
    return;
}

glCullFace(int mode) {
    _glCullFace_ptr(mode);
    return;
}

glDeleteRenderbuffers(int n, void * renderbuffers) {
    _glDeleteRenderbuffers_ptr(n, renderbuffers);
    return;
}

glDeleteProgram(int program) {
    _glDeleteProgram_ptr(program);
    return;
}

glDeleteTextures(int n, void * textures) {
    _glDeleteTextures_ptr(n, textures);
    return;
}

glDepthFunc(int func) {
    _glDepthFunc_ptr(func);
    return;
}

glDeleteShader(int shader) {
    _glDeleteShader_ptr(shader);
    return;
}

glDeleteVertexArraysOES() {
    _glDeleteVertexArraysOES_ptr();
    return;
}

glDisableVertexAttribArray(int index) {
    _glDisableVertexAttribArray_ptr(index);
    return;
}

glDisable(int cap) {
    _glDisable_ptr(cap);
    return;
}

glDepthMask(int flag) {
    _glDepthMask_ptr(flag);
    return;
}

glDiscardFramebufferEXT() {
    _glDiscardFramebufferEXT_ptr();
    return;
}

glDrawElements(int mode, int count, int type, void * indices) {
    _glDrawElements_ptr(mode, count, type, indices);
    return;
}

glEnable(int cap) {
    _glEnable_ptr(cap);
    return;
}

glDrawArrays(int mode, int first, int count) {
    _glDrawArrays_ptr(mode, first, count);
    return;
}

glEnableVertexAttribArray(int index) {
    _glEnableVertexAttribArray_ptr(index);
    return;
}

glFinish() {
    _glFinish_ptr();
    return;
}

glFlush() {
    _glFlush_ptr();
    return;
}

glFramebufferRenderbuffer(int target, int attachment, int renderbuffertarget, int renderbuffer) {
    _glFramebufferRenderbuffer_ptr(target, attachment, renderbuffertarget, renderbuffer);
    return;
}

glFramebufferTexture2D(int target, int attachment, int textarget, int texture, int level) {
    _glFramebufferTexture2D_ptr(target, attachment, textarget, texture, level);
    return;
}

glFrontFace(int mode) {
    _glFrontFace_ptr(mode);
    return;
}

glGenBuffers(int n, void * buffers) {
    _glGenBuffers_ptr(n, buffers);
    return;
}

glGenFramebuffers(int n, void * framebuffers) {
    _glGenFramebuffers_ptr(n, framebuffers);
    return;
}

glGenRenderbuffers(int n, void * renderbuffers) {
    _glGenRenderbuffers_ptr(n, renderbuffers);
    return;
}

glGenTextures(int n, void * textures) {
    _glGenTextures_ptr(n, textures);
    return;
}

glGenVertexArraysOES() {
    _glGenVertexArraysOES_ptr();
    return;
}

glGenerateMipmap(int target) {
    _glGenerateMipmap_ptr(target);
    return;
}

glGetActiveAttrib(int program, int index, int bufSize, void * length, void * size, void * type, void * name) {
    _glGetActiveAttrib_ptr(program, index, bufSize, length, size, type, name);
    return;
}

glGetAttribLocation(int program, void * name) {
    r0 = _glGetAttribLocation_ptr(program, name);
    return r0;
}

glGetBooleanv(int pname, void * params) {
    _glGetBooleanv_ptr(pname, params);
    return;
}

glGetActiveUniform(int program, int index, int bufSize, void * length, void * size, void * type, void * name) {
    _glGetActiveUniform_ptr(program, index, bufSize, length, size, type, name);
    return;
}

glGetBufferParameteriv(int target, int pname, void * params) {
    _glGetBufferParameteriv_ptr(target, pname, params);
    return;
}

glGetIntegerv(int pname, void * params) {
    _glGetIntegerv_ptr(pname, params);
    return;
}

glGetError() {
    r0 = _glGetError_ptr();
    return r0;
}

glGetFloatv(int pname, void * params) {
    _glGetFloatv_ptr(pname, params);
    return;
}

glGetProgramInfoLog(int program, int bufSize, void * length, void * infoLog) {
    _glGetProgramInfoLog_ptr(program, bufSize, length, infoLog);
    return;
}

glGetProgramiv(int program, int pname, void * params) {
    _glGetProgramiv_ptr(program, pname, params);
    return;
}

glGetRenderbufferParameteriv(int target, int pname, void * params) {
    _glGetRenderbufferParameteriv_ptr(target, pname, params);
    return;
}

glGetShaderInfoLog(int shader, int bufSize, void * length, void * infoLog) {
    _glGetShaderInfoLog_ptr(shader, bufSize, length, infoLog);
    return;
}

glGetShaderSource(int shader, int bufSize, void * length, void * source) {
    _glGetShaderSource_ptr(shader, bufSize, length, source);
    return;
}

* glGetString(int name) {
    r0 = _glGetString_ptr(name);
    return r0;
}

glGetUniformLocation(int program, void * name) {
    r0 = _glGetUniformLocation_ptr(program, name);
    return r0;
}

glGetShaderiv(int shader, int pname, void * params) {
    _glGetShaderiv_ptr(shader, pname, params);
    return;
}

glIsEnabled(int cap) {
    r0 = _glIsEnabled_ptr(cap);
    return r0;
}

glMapBufferOES() {
    _glMapBufferOES_ptr();
    return;
}

glLineWidth(int width) {
    _glLineWidth_ptr(width);
    return;
}

glLinkProgram(int program) {
    _glLinkProgram_ptr(program);
    return;
}

glPixelStorei(int pname, int param) {
    _glPixelStorei_ptr(pname, param);
    return;
}

glReadPixels(int x, int y, int width, int height, int format, int type, void * pixels) {
    _glReadPixels_ptr(x, y, width, height, format, type, pixels);
    return;
}

glRenderbufferStorageMultisampleAPPLE() {
    _glRenderbufferStorageMultisampleAPPLE_ptr();
    return;
}

glRenderbufferStorage(int target, int internalformat, int width, int height) {
    _glRenderbufferStorage_ptr(target, internalformat, width, height);
    return;
}

glScissor(int x, int y, int width, int height) {
    _glScissor_ptr(x, y, width, height);
    return;
}

glResolveMultisampleFramebufferAPPLE() {
    _glResolveMultisampleFramebufferAPPLE_ptr();
    return;
}

glShaderSource(int shader, int count, void * string, void * length) {
    _glShaderSource_ptr(shader, count, string, length);
    return;
}

glStencilFunc(int func, int ref, int mask) {
    _glStencilFunc_ptr(func, ref, mask);
    return;
}

glStencilMask(int mask) {
    _glStencilMask_ptr(mask);
    return;
}

glStencilOp(int fail, int zfail, int zpass) {
    _glStencilOp_ptr(fail, zfail, zpass);
    return;
}

glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, void * pixels) {
    _glTexImage2D_ptr(target, level, internalformat, width, height, border, format, type, pixels);
    return;
}

glTexParameteri(int target, int pname, int param) {
    _glTexParameteri_ptr(target, pname, param);
    return;
}

glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, void * pixels) {
    _glTexSubImage2D_ptr(target, level, xoffset, yoffset, width, height, format, type, pixels);
    return;
}

glUniform1f(int location, int v0) {
    _glUniform1f_ptr(location, v0);
    return;
}

glUniform1i(int location, int v0) {
    _glUniform1i_ptr(location, v0);
    return;
}

glUniform2f(int location, int v0, int v1) {
    _glUniform2f_ptr(location, v0, v1);
    return;
}

glUniform2fv(int location, int count, void * value) {
    _glUniform2fv_ptr(location, count, value);
    return;
}

glUniform3f(int location, int v0, int v1, int v2) {
    _glUniform3f_ptr(location, v0, v1, v2);
    return;
}

glUniform3fv(int location, int count, void * value) {
    _glUniform3fv_ptr(location, count, value);
    return;
}

glUniform4f(int location, int v0, int v1, int v2, int v3) {
    _glUniform4f_ptr(location, v0, v1, v2, v3);
    return;
}

glUniformMatrix4fv(int location, int count, int transpose, void * value) {
    _glUniformMatrix4fv_ptr(location, count, transpose, value);
    return;
}

glUniform4fv(int location, int count, void * value) {
    _glUniform4fv_ptr(location, count, value);
    return;
}

glUnmapBufferOES() {
    _glUnmapBufferOES_ptr();
    return;
}

glUseProgram(int program) {
    _glUseProgram_ptr(program);
    return;
}

glViewport(int x, int y, int width, int height) {
    _glViewport_ptr(x, y, width, height);
    return;
}

glVertexAttribPointer(int index, int size, int type, int normalized, int stride, void * pointer) {
    _glVertexAttribPointer_ptr(index, size, type, normalized, stride, pointer);
    return;
}

* gmtime_r(void * clock, void * result) {
    r0 = _gmtime_r_ptr(clock, result);
    return r0;
}

gzclose(int file) {
    r0 = _gzclose_ptr(file);
    return r0;
}

* gzerror(int file, void * errnum) {
    r0 = _gzerror_ptr(file, errnum);
    return r0;
}

gzopen(void * , void * ) {
    r0 = _gzopen_ptr(arg_0, arg_1);
    return r0;
}

gzwrite(int file, int buf, unsigned int len) {
    r0 = _gzwrite_ptr(file, buf, len);
    return r0;
}

* hash_create(int size) {
    r0 = _hash_create_ptr(size);
    return r0;
}

* hash_search(void * table, void * key, void * datum, void * replace_func) {
    r0 = _hash_search_ptr(table, key, datum, replace_func);
    return r0;
}

host_page_size(int , void * ) {
    r0 = _host_page_size_ptr(arg_0, arg_1);
    return r0;
}

host_statistics(int host_priv, int flavor, int host_info_out, void * host_info_outCnt) {
    r0 = _host_statistics_ptr(host_priv, flavor, host_info_out, host_info_outCnt);
    return r0;
}

int if_nametoindex(void * ifname) {
    r0 = _if_nametoindex_ptr(ifname);
    return r0;
}

ilogb(double ) {
    r0 = _ilogb_ptr(arg_0);
    return r0;
}

imp_implementationWithBlock(int block) {
    r0 = _imp_implementationWithBlock_ptr(block);
    return r0;
}

* inet_ntoa(void in) {
    r0 = _inet_ntoa_ptr(in);
    return r0;
}

* inet_ntop(int af, void * src, void * dst, int size) {
    r0 = _inet_ntop_ptr(af, src, dst, size);
    return r0;
}

inflate(int strm, int flush) {
    r0 = _inflate_ptr(strm, flush);
    return r0;
}

inflateEnd(int strm) {
    r0 = _inflateEnd_ptr(strm);
    return r0;
}

inflateInit2_(int strm, int windowBits, void * version, int stream_size) {
    r0 = _inflateInit2__ptr(strm, windowBits, version, stream_size);
    return r0;
}

inflateInit_(int strm, void * version, int stream_size) {
    r0 = _inflateInit__ptr(strm, version, stream_size);
    return r0;
}

isxdigit(int c) {
    r0 = _isxdigit_ptr(c);
    return r0;
}

ivar_getOffset(int v) {
    r0 = _ivar_getOffset_ptr(v);
    return r0;
}

* ivar_getTypeEncoding(int v) {
    r0 = _ivar_getTypeEncoding_ptr(v);
    return r0;
}

ldexp(double , int ) {
    r0 = _ldexp_ptr(arg_0, arg_1);
    return r0;
}

listen(int socket, int backlog) {
    r0 = _listen_ptr(socket, backlog);
    return r0;
}

long llrint(double ) {
    r0 = _llrint_ptr(arg_0);
    return r0;
}

long llround(double ) {
    r0 = _llround_ptr(arg_0);
    return r0;
}

* localtime_r(void * clock, void * result) {
    r0 = _localtime_r_ptr(clock, result);
    return r0;
}

log(double ) {
    r0 = _log_ptr(arg_0);
    return r0;
}

log10(double ) {
    r0 = _log10_ptr(arg_0);
    return r0;
}

logf(float ) {
    r0 = _logf_ptr(arg_0);
    return r0;
}

lrint(double ) {
    r0 = _lrint_ptr(arg_0);
    return r0;
}

lround(double ) {
    r0 = _lround_ptr(arg_0);
    return r0;
}

lroundf(float ) {
    r0 = _lroundf_ptr(arg_0);
    return r0;
}

lseek(int fildes, int offset, int whence) {
    r0 = _lseek_ptr(fildes, offset, whence);
    return r0;
}

lstat(void * path, void * buf) {
    r0 = _lstat_ptr(path, buf);
    return r0;
}

* mach_error_string(int error_value) {
    r0 = _mach_error_string_ptr(error_value);
    return r0;
}

mach_absolute_time() {
    r0 = _mach_absolute_time_ptr();
    return r0;
}

mach_host_self() {
    r0 = _mach_host_self_ptr();
    return r0;
}

mach_msg(void * msg, int option, int send_size, int rcv_size, int rcv_name, int timeout, int notify) {
    r0 = _mach_msg_ptr(msg, option, send_size, rcv_size, rcv_name, timeout, notify);
    return r0;
}

mach_port_allocate(int task, int right, void * name) {
    r0 = _mach_port_allocate_ptr(task, right, name);
    return r0;
}

mach_port_deallocate(int task, int name) {
    r0 = _mach_port_deallocate_ptr(task, name);
    return r0;
}

mach_port_insert_right(int task, int name, int poly, int polyPoly) {
    r0 = _mach_port_insert_right_ptr(task, name, poly, polyPoly);
    return r0;
}

mach_thread_self() {
    r0 = _mach_thread_self_ptr();
    return r0;
}

mach_timebase_info(int info) {
    r0 = _mach_timebase_info_ptr(info);
    return r0;
}

* malloc(int size) {
    r0 = _malloc_ptr(size);
    return r0;
}

* memchr(void * s, int c, int n) {
    r0 = _memchr_ptr(s, c, n);
    return r0;
}

memcmp(void * s1, void * s2, int n) {
    r0 = _memcmp_ptr(s1, s2, n);
    return r0;
}

* memcpy(void * dst, void * src, int n) {
    r0 = _memcpy_ptr(dst, src, n);
    return r0;
}

* memmove(void * dst, void * src, int len) {
    r0 = _memmove_ptr(dst, src, len);
    return r0;
}

* memset(void * b, int c, int len) {
    r0 = _memset_ptr(b, c, len);
    return r0;
}

method_exchangeImplementations(int m1, int m2) {
    _method_exchangeImplementations_ptr(m1, m2);
    return;
}

method_getImplementation(int m) {
    r0 = _method_getImplementation_ptr(m);
    return r0;
}

method_getName(int m) {
    r0 = _method_getName_ptr(m);
    return r0;
}

* method_getTypeEncoding(int m) {
    r0 = _method_getTypeEncoding_ptr(m);
    return r0;
}

method_setImplementation(int m, int imp) {
    r0 = _method_setImplementation_ptr(m, imp);
    return r0;
}

mkdir(void * path, int mode) {
    r0 = _mkdir_ptr(path, mode);
    return r0;
}

mktime(void * timeptr) {
    r0 = _mktime_ptr(timeptr);
    return r0;
}

* mmap(void * addr, int len, int prot, int flags, int fildes, int off) {
    r0 = _mmap_ptr(addr, len, prot, flags, fildes, off);
    return r0;
}

modf(double , void * ) {
    r0 = _modf_ptr(arg_0, arg_1);
    return r0;
}

modff(float , void * ) {
    r0 = _modff_ptr(arg_0, arg_1);
    return r0;
}

nextafter(double x, double y) {
    r0 = _nextafter_ptr(x, y);
    return r0;
}

mprotect(void * addr, int len, int prot) {
    r0 = _mprotect_ptr(addr, len, prot);
    return r0;
}

munmap(void * addr, int len) {
    r0 = _munmap_ptr(addr, len);
    return r0;
}

notify_cancel(int token) {
    r0 = _notify_cancel_ptr(token);
    return r0;
}

notify_register_dispatch(void * name, void * out_token, int queue, int handler) {
    r0 = _notify_register_dispatch_ptr(name, out_token, queue, handler);
    return r0;
}

objc_allocateClassPair(int superclass, void * name, int extraBytes) {
    r0 = _objc_allocateClassPair_ptr(superclass, name, extraBytes);
    return r0;
}

objc_alloc() {
    _objc_alloc_ptr();
    return;
}

* objc_autorelease(void * instance) {
    r0 = _objc_autorelease_ptr(instance);
    return r0;
}

* objc_autoreleasePoolPush() {
    r0 = _objc_autoreleasePoolPush_ptr();
    return r0;
}

objc_autoreleasePoolPop(void * pool) {
    _objc_autoreleasePoolPop_ptr(pool);
    return;
}

* objc_autoreleaseReturnValue(void * instance) {
    r0 = _objc_autoreleaseReturnValue_ptr(instance);
    return r0;
}

objc_constructInstance(int cls, void * bytes) {
    r0 = _objc_constructInstance_ptr(cls, bytes);
    return r0;
}

* objc_copyClassNamesForImage(void * image, void * outCount) {
    r0 = _objc_copyClassNamesForImage_ptr(image, outCount);
    return r0;
}

objc_copyStruct(void * dest, void * src, unsigned int size, int atomic, int hasStrong) {
    _objc_copyStruct_ptr(dest, src, size, atomic, hasStrong);
    return;
}

* objc_copyImageNames(void * outCount) {
    r0 = _objc_copyImageNames_ptr(outCount);
    return r0;
}

objc_copyWeak(void * dest, void * src) {
    _objc_copyWeak_ptr(dest, src);
    return;
}

objc_destroyWeak(void * instance) {
    _objc_destroyWeak_ptr(instance);
    return;
}

objc_disposeClassPair(int cls) {
    _objc_disposeClassPair_ptr(cls);
    return;
}

objc_end_catch() {
    _objc_end_catch_ptr();
    return;
}

objc_enumerationMutation(int obj) {
    _objc_enumerationMutation_ptr(obj);
    return;
}

objc_exception_rethrow() {
    _objc_exception_rethrow_ptr();
    return;
}

objc_exception_throw(int exception) {
    _objc_exception_throw_ptr(exception);
    return;
}

objc_getAssociatedObject(int object, void * key) {
    r0 = _objc_getAssociatedObject_ptr(object, key);
    return r0;
}

* objc_getClass(void * name) {
    r0 = _objc_getClass_ptr(name);
    return r0;
}

objc_getClassList(void * buffer, int bufferCount) {
    r0 = _objc_getClassList_ptr(buffer, bufferCount);
    return r0;
}

* objc_getMetaClass(void * name) {
    r0 = _objc_getMetaClass_ptr(name);
    return r0;
}

* objc_getProperty(void * instance, void * selector, unsigned int offset, int atomic) {
    r0 = _objc_getProperty_ptr(instance, selector, offset, atomic);
    return r0;
}

* objc_getProtocol(void * name) {
    r0 = _objc_getProtocol_ptr(name);
    return r0;
}

* objc_initWeak(void * addr, void * value) {
    r0 = _objc_initWeak_ptr(addr, value);
    return r0;
}

objc_getRequiredClass(void * name) {
    r0 = _objc_getRequiredClass_ptr(name);
    return r0;
}

objc_initializeClassPair() {
    _objc_initializeClassPair_ptr();
    return;
}

* objc_lookUpClass(void * name) {
    r0 = _objc_lookUpClass_ptr(name);
    return r0;
}

* objc_loadWeakRetained(void * instance) {
    r0 = _objc_loadWeakRetained_ptr(instance);
    return r0;
}

objc_moveWeak(void * dest, void * src) {
    _objc_moveWeak_ptr(dest, src);
    return;
}

* objc_msgSend(void * instance, void * selector) {
    r0 = _objc_msgSend_ptr(instance, selector);
    return r0;
}

* objc_msgSendSuper2(void * super, void * selector) {
    r0 = _objc_msgSendSuper2_ptr(super, selector);
    return r0;
}

objc_registerClassPair(int cls) {
    _objc_registerClassPair_ptr(cls);
    return;
}

objc_release(void * instance) {
    _objc_release_ptr(instance);
    return;
}

* objc_retain(void * instance) {
    r0 = _objc_retain_ptr(instance);
    return r0;
}

* objc_retainAutorelease(void * instance) {
    r0 = _objc_retainAutorelease_ptr(instance);
    return r0;
}

* objc_retainAutoreleaseReturnValue(void * instance) {
    r0 = _objc_retainAutoreleaseReturnValue_ptr(instance);
    return r0;
}

* objc_retainAutoreleasedReturnValue(void * instance) {
    r0 = _objc_retainAutoreleasedReturnValue_ptr(instance);
    return r0;
}

* objc_retainBlock(void * instance) {
    r0 = _objc_retainBlock_ptr(instance);
    return r0;
}

objc_setAssociatedObject(int object, void * key, int value, int policy) {
    _objc_setAssociatedObject_ptr(object, key, value, policy);
    return;
}

objc_setProperty_atomic() {
    _objc_setProperty_atomic_ptr();
    return;
}

objc_setProperty_atomic_copy() {
    _objc_setProperty_atomic_copy_ptr();
    return;
}

objc_setProperty_nonatomic() {
    _objc_setProperty_nonatomic_ptr();
    return;
}

objc_setProperty_nonatomic_copy() {
    _objc_setProperty_nonatomic_copy_ptr();
    return;
}

* objc_storeStrong(void * addr, void * value) {
    r0 = _objc_storeStrong_ptr(addr, value);
    return r0;
}

* objc_storeWeak(void * addr, void * value) {
    r0 = _objc_storeWeak_ptr(addr, value);
    return r0;
}

objc_sync_exit(int obj) {
    r0 = _objc_sync_exit_ptr(obj);
    return r0;
}

objc_sync_enter(int obj) {
    r0 = _objc_sync_enter_ptr(obj);
    return r0;
}

objc_unsafeClaimAutoreleasedReturnValue() {
    _objc_unsafeClaimAutoreleasedReturnValue_ptr();
    return;
}

* object_getClass(void * object) {
    r0 = _object_getClass_ptr(object);
    return r0;
}

object_getIvar(int obj, int ivar) {
    r0 = _object_getIvar_ptr(obj, ivar);
    return r0;
}

object_setClass(int obj, int cls) {
    r0 = _object_setClass_ptr(obj, cls);
    return r0;
}

open_dprotected_np(void * , int , int , int ) {
    r0 = _open_dprotected_np_ptr(arg_0, arg_1, arg_2, arg_3);
    return r0;
}

open(void * path, int oflag) {
    r0 = _open_ptr(path, oflag);
    return r0;
}

* opendir(void * dirname) {
    r0 = _opendir_ptr(dirname);
    return r0;
}

pow(double , double ) {
    r0 = _pow_ptr(arg_0, arg_1);
    return r0;
}

powf(float , float ) {
    r0 = _powf_ptr(arg_0, arg_1);
    return r0;
}

printf(void * format) {
    r0 = _printf_ptr(format);
    return r0;
}

* property_copyAttributeList(int property, void * outCount) {
    r0 = _property_copyAttributeList_ptr(property, outCount);
    return r0;
}

* property_copyAttributeValue(int property, void * attributeName) {
    r0 = _property_copyAttributeValue_ptr(property, attributeName);
    return r0;
}

* property_getName(int property) {
    r0 = _property_getName_ptr(property);
    return r0;
}

pthread_attr_destroy(void * attr) {
    r0 = _pthread_attr_destroy_ptr(attr);
    return r0;
}

protocol_getMethodDescription(int p, int aSel, int isRequiredMethod, int isInstanceMethod) {
    _protocol_getMethodDescription_ptr(p, aSel, isRequiredMethod, isInstanceMethod);
    return;
}

pthread_attr_setdetachstate(void * attr, int detachstate) {
    r0 = _pthread_attr_setdetachstate_ptr(attr, detachstate);
    return r0;
}

pthread_attr_init(void * attr) {
    r0 = _pthread_attr_init_ptr(attr);
    return r0;
}

pthread_attr_setstack(void * , void * , int ) {
    r0 = _pthread_attr_setstack_ptr(arg_0, arg_1, arg_2);
    return r0;
}

pthread_create(void * thread, void * attr, void * start_routine, void * arg) {
    r0 = _pthread_create_ptr(thread, attr, start_routine, arg);
    return r0;
}

pthread_equal(int t1, int t2) {
    r0 = _pthread_equal_ptr(t1, t2);
    return r0;
}

pthread_getname_np(int , void * , int ) {
    r0 = _pthread_getname_np_ptr(arg_0, arg_1, arg_2);
    return r0;
}

pthread_mach_thread_np(int ) {
    r0 = _pthread_mach_thread_np_ptr(arg_0);
    return r0;
}

pthread_from_mach_thread_np(int ) {
    r0 = _pthread_from_mach_thread_np_ptr(arg_0);
    return r0;
}

pthread_mutex_unlock(void * mutex) {
    r0 = _pthread_mutex_unlock_ptr(mutex);
    return r0;
}

pthread_mutex_destroy(void * mutex) {
    r0 = _pthread_mutex_destroy_ptr(mutex);
    return r0;
}

pthread_mutex_lock(void * mutex) {
    r0 = _pthread_mutex_lock_ptr(mutex);
    return r0;
}

pthread_mutex_init(void * mutex, void * attr) {
    r0 = _pthread_mutex_init_ptr(mutex, attr);
    return r0;
}

pthread_self() {
    r0 = _pthread_self_ptr();
    return r0;
}

pthread_setname_np(void * ) {
    r0 = _pthread_setname_np_ptr(arg_0);
    return r0;
}

pthread_once(void * once_control, void * init_routine) {
    r0 = _pthread_once_ptr(once_control, init_routine);
    return r0;
}

pthread_setspecific(int key, void * value) {
    r0 = _pthread_setspecific_ptr(key, value);
    return r0;
}

puts(void * s) {
    r0 = _puts_ptr(s);
    return r0;
}

pthread_threadid_np(int , void * ) {
    r0 = _pthread_threadid_np_ptr(arg_0, arg_1);
    return r0;
}

putchar(int c) {
    r0 = _putchar_ptr(c);
    return r0;
}

qsort(void * base, int nel, int width, void * compar) {
    _qsort_ptr(base, nel, width, compar);
    return;
}

raise(int sig) {
    r0 = _raise_ptr(sig);
    return r0;
}

rand() {
    r0 = _rand_ptr();
    return r0;
}

random() {
    r0 = _random_ptr();
    return r0;
}

read(int fildes, void * buf, int nbyte) {
    r0 = _read_ptr(fildes, buf, nbyte);
    return r0;
}

* readdir(void * dirp) {
    r0 = _readdir_ptr(dirp);
    return r0;
}

* realloc(void * ptr, int size) {
    r0 = _realloc_ptr(ptr, size);
    return r0;
}

recvfrom(int socket, void * buffer, int length, int flags, void * address, void * address_len) {
    r0 = _recvfrom_ptr(socket, buffer, length, flags, address, address_len);
    return r0;
}

regcomp(void * preg, void * pattern, int cflags) {
    r0 = _regcomp_ptr(preg, pattern, cflags);
    return r0;
}

regexec(void * preg, void * string, int nmatch, int pmatch, int eflags) {
    r0 = _regexec_ptr(preg, string, nmatch, pmatch, eflags);
    return r0;
}

remove(void * path) {
    r0 = _remove_ptr(path);
    return r0;
}

removexattr(void * path, void * name, int options) {
    r0 = _removexattr_ptr(path, name, options);
    return r0;
}

rename(void * old, void * new) {
    r0 = _rename_ptr(old, new);
    return r0;
}

rewind(void * stream) {
    _rewind_ptr(stream);
    return;
}

rmdir(void * path) {
    r0 = _rmdir_ptr(path);
    return r0;
}

* sel_getName(int sel) {
    r0 = _sel_getName_ptr(sel);
    return r0;
}

sel_getUid(void * str) {
    r0 = _sel_getUid_ptr(str);
    return r0;
}

* sel_registerName(void * str) {
    r0 = _sel_registerName_ptr(str);
    return r0;
}

sendto(int socket, void * buffer, int length, int flags, void * dest_addr, int dest_len) {
    r0 = _sendto_ptr(socket, buffer, length, flags, dest_addr, dest_len);
    return r0;
}

* setlocale(int category, void * locale) {
    r0 = _setlocale_ptr(category, locale);
    return r0;
}

setsockopt(int socket, int level, int option_name, void * option_value, int option_len) {
    r0 = _setsockopt_ptr(socket, level, option_name, option_value, option_len);
    return r0;
}

setxattr(void * path, void * name, void * value, int size, int position, int options) {
    r0 = _setxattr_ptr(path, name, value, size, position, options);
    return r0;
}

sigaction(int sig, void * act, void * oact) {
    r0 = _sigaction_ptr(sig, act, oact);
    return r0;
}

sigaltstack(void * ss, void * oss) {
    r0 = _sigaltstack_ptr(ss, oss);
    return r0;
}

* signal(int sig, void * func) {
    r0 = _signal_ptr(sig, func);
    return r0;
}

sigprocmask(int how, void * set, void * oset) {
    r0 = _sigprocmask_ptr(how, set, oset);
    return r0;
}

sin(double ) {
    r0 = _sin_ptr(arg_0);
    return r0;
}

sinf(float ) {
    r0 = _sinf_ptr(arg_0);
    return r0;
}

snprintf(void * str, int size, void * format) {
    r0 = _snprintf_ptr(str, size, format);
    return r0;
}

socket(int domain, int type, int protocol) {
    r0 = _socket_ptr(domain, type, protocol);
    return r0;
}

sprintf(void * str, void * format) {
    r0 = _sprintf_ptr(str, format);
    return r0;
}

sqlite3_bind_blob(void * , int , void * , int n, void * ) {
    r0 = _sqlite3_bind_blob_ptr(arg_0, arg_1, arg_2, n, arg_4);
    return r0;
}

sqlite3_bind_double(void * , int , double ) {
    r0 = _sqlite3_bind_double_ptr(arg_0, arg_1, arg_2);
    return r0;
}

sqlite3_bind_int64(void * , int , int ) {
    r0 = _sqlite3_bind_int64_ptr(arg_0, arg_1, arg_2);
    return r0;
}

sqlite3_bind_null(void * , int ) {
    r0 = _sqlite3_bind_null_ptr(arg_0, arg_1);
    return r0;
}

sqlite3_bind_text(void * , int , void * , int n, void * ) {
    r0 = _sqlite3_bind_text_ptr(arg_0, arg_1, arg_2, n, arg_4);
    return r0;
}

sqlite3_changes(void * ) {
    r0 = _sqlite3_changes_ptr(arg_0);
    return r0;
}

sqlite3_clear_bindings(void * ) {
    r0 = _sqlite3_clear_bindings_ptr(arg_0);
    return r0;
}

sqlite3_close(void * ) {
    r0 = _sqlite3_close_ptr(arg_0);
    return r0;
}

sqlite3_column_bytes(void * , int iCol) {
    r0 = (*0x100e63000)(arg_0, iCol);
    return r0;
}

* sqlite3_column_blob(void * , int iCol) {
    r0 = _sqlite3_column_blob_ptr(arg_0, iCol);
    return r0;
}

sqlite3_column_count(void * pStmt) {
    r0 = _sqlite3_column_count_ptr(pStmt);
    return r0;
}

sqlite3_column_double(void * , int iCol) {
    r0 = _sqlite3_column_double_ptr(arg_0, iCol);
    return r0;
}

sqlite3_column_int(void * , int iCol) {
    r0 = _sqlite3_column_int_ptr(arg_0, iCol);
    return r0;
}

sqlite3_column_int64(void * , int iCol) {
    r0 = _sqlite3_column_int64_ptr(arg_0, iCol);
    return r0;
}

* sqlite3_column_name(void * , int N) {
    r0 = _sqlite3_column_name_ptr(arg_0, N);
    return r0;
}

* sqlite3_column_text(void * , int iCol) {
    r0 = _sqlite3_column_text_ptr(arg_0, iCol);
    return r0;
}

sqlite3_column_type(void * , int iCol) {
    r0 = _sqlite3_column_type_ptr(arg_0, iCol);
    return r0;
}

sqlite3_errcode(void * db) {
    r0 = _sqlite3_errcode_ptr(db);
    return r0;
}

* sqlite3_errmsg(void * ) {
    r0 = _sqlite3_errmsg_ptr(arg_0);
    return r0;
}

sqlite3_exec(void * , void * sql, void * callback, void * , void * errmsg) {
    r0 = _sqlite3_exec_ptr(arg_0, sql, callback, arg_3, errmsg);
    return r0;
}

sqlite3_open(void * filename, void * ppDb) {
    r0 = _sqlite3_open_ptr(filename, ppDb);
    return r0;
}

sqlite3_finalize(void * pStmt) {
    r0 = _sqlite3_finalize_ptr(pStmt);
    return r0;
}

sqlite3_open_v2(void * filename, void * ppDb, int flags, void * zVfs) {
    r0 = _sqlite3_open_v2_ptr(filename, ppDb, flags, zVfs);
    return r0;
}

sqlite3_prepare_v2(void * db, void * zSql, int nByte, void * ppStmt, void * pzTail) {
    r0 = _sqlite3_prepare_v2_ptr(db, zSql, nByte, ppStmt, pzTail);
    return r0;
}

sqlite3_step(void * ) {
    r0 = _sqlite3_step_ptr(arg_0);
    return r0;
}

sqlite3_reset(void * pStmt) {
    r0 = _sqlite3_reset_ptr(pStmt);
    return r0;
}

srand(unsigned int seed) {
    _srand_ptr(seed);
    return;
}

srand48(long seedval) {
    _srand48_ptr(seedval);
    return;
}

sscanf(void * s, void * format) {
    r0 = _sscanf_ptr(s, format);
    return r0;
}

stat(void * path, void * buf) {
    r0 = _stat_ptr(path, buf);
    return r0;
}

statfs(void * path, void * buf) {
    r0 = _statfs_ptr(path, buf);
    return r0;
}

strcasecmp(void * s1, void * s2) {
    r0 = _strcasecmp_ptr(s1, s2);
    return r0;
}

* strcasestr(void * s1, void * s2) {
    r0 = _strcasestr_ptr(s1, s2);
    return r0;
}

* strchr(void * s, int c) {
    r0 = _strchr_ptr(s, c);
    return r0;
}

strcmp(void * s1, void * s2) {
    r0 = _strcmp_ptr(s1, s2);
    return r0;
}

* strcpy(void * dst, void * src) {
    r0 = _strcpy_ptr(dst, src);
    return r0;
}

* strdup(void * s1) {
    r0 = _strdup_ptr(s1);
    return r0;
}

strftime(void * s, int maxsize, void * format, void * timeptr) {
    r0 = _strftime_ptr(s, maxsize, format, timeptr);
    return r0;
}

* strerror(int errnum) {
    r0 = _strerror_ptr(errnum);
    return r0;
}

* strncat(void * s1, void * s2, int n) {
    r0 = _strncat_ptr(s1, s2, n);
    return r0;
}

strncmp(void * s1, void * s2, int n) {
    r0 = _strncmp_ptr(s1, s2, n);
    return r0;
}

* strncpy(void * dst, void * src, int n) {
    r0 = _strncpy_ptr(dst, src, n);
    return r0;
}

strtod(void * nptr, void * endptr) {
    r0 = _strtod_ptr(nptr, endptr);
    return r0;
}

* strrchr(void * s, int c) {
    r0 = _strrchr_ptr(s, c);
    return r0;
}

* strstr(void * s1, void * s2) {
    r0 = _strstr_ptr(s1, s2);
    return r0;
}

strtol(void * str, void * endptr, int base) {
    r0 = _strtol_ptr(str, endptr, base);
    return r0;
}

* strtok_r(void * str, void * sep, void * lasts) {
    r0 = _strtok_r_ptr(str, sep, lasts);
    return r0;
}

strtof(void * nptr, void * endptr) {
    r0 = _strtof_ptr(nptr, endptr);
    return r0;
}

long strtoll(void * str, void * endptr, int base) {
    r0 = _strtoll_ptr(str, endptr, base);
    return r0;
}

long strtoul(void * str, void * endptr, int base) {
    r0 = _strtoul_ptr(str, endptr, base);
    return r0;
}

long long strtoull(void * str, void * endptr, int base) {
    r0 = _strtoull_ptr(str, endptr, base);
    return r0;
}

sysconf(int name) {
    r0 = _sysconf_ptr(name);
    return r0;
}

sysctl(void * name, int namelen, void * oldp, void * oldlenp, void * newp, int newlen) {
    r0 = _sysctl_ptr(name, namelen, oldp, oldlenp, newp, newlen);
    return r0;
}

sysctlbyname(void * name, void * oldp, void * oldlenp, void * newp, int newlen) {
    r0 = _sysctlbyname_ptr(name, oldp, oldlenp, newp, newlen);
    return r0;
}

syslog(int priority, void * message) {
    _syslog_ptr(priority, message);
    return;
}

system(void * command) {
    r0 = _system_ptr(command);
    return r0;
}

tanf(float ) {
    r0 = _tanf_ptr(arg_0);
    return r0;
}

task_get_exception_ports(int task, int exception_mask, int masks, void * masksCnt, int old_handlers, int old_behaviors, int old_flavors) {
    r0 = _task_get_exception_ports_ptr(task, exception_mask, masks, masksCnt, old_handlers, old_behaviors, old_flavors);
    return r0;
}

task_info(int target_task, int flavor, int task_info_out, void * task_info_outCnt) {
    r0 = _task_info_ptr(target_task, flavor, task_info_out, task_info_outCnt);
    return r0;
}

task_set_exception_ports(int task, int exception_mask, int new_port, int behavior, int new_flavor) {
    r0 = _task_set_exception_ports_ptr(task, exception_mask, new_port, behavior, new_flavor);
    return r0;
}

task_swap_exception_ports(int task, int exception_mask, int new_port, int behavior, int new_flavor, int masks, void * masksCnt, int old_handlerss, int old_behaviors, int old_flavors) {
    r0 = _task_swap_exception_ports_ptr(task, exception_mask, new_port, behavior, new_flavor, masks, masksCnt, old_handlerss, old_behaviors, old_flavors);
    return r0;
}

thread_get_state(int target_act, int flavor, int old_state, void * old_stateCnt) {
    r0 = _thread_get_state_ptr(target_act, flavor, old_state, old_stateCnt);
    return r0;
}

task_threads(int target_task, void * act_list, void * act_listCnt) {
    r0 = _task_threads_ptr(target_task, act_list, act_listCnt);
    return r0;
}

thread_info(int target_act, int flavor, int thread_info_out, void * thread_info_outCnt) {
    r0 = _thread_info_ptr(target_act, flavor, thread_info_out, thread_info_outCnt);
    return r0;
}

thread_resume(int target_act) {
    r0 = _thread_resume_ptr(target_act);
    return r0;
}

thread_suspend(int target_act) {
    r0 = _thread_suspend_ptr(target_act);
    return r0;
}

time(void * tloc) {
    r0 = _time_ptr(tloc);
    return r0;
}

uname(void * name) {
    r0 = _uname_ptr(name);
    return r0;
}

uncompress(void * dest, void * destLen, void * source, int sourceLen) {
    r0 = _uncompress_ptr(dest, destLen, source, sourceLen);
    return r0;
}

unw_init_local(void * , void * ) {
    r0 = _unw_init_local_ptr(arg_0, arg_1);
    return r0;
}

ungetc(int c, void * stream) {
    r0 = _ungetc_ptr(c, stream);
    return r0;
}

unlink(void * path) {
    r0 = _unlink_ptr(path);
    return r0;
}

unw_get_reg(void * , int , void * ) {
    r0 = _unw_get_reg_ptr(arg_0, arg_1, arg_2);
    return r0;
}

unw_step(void * ) {
    r0 = _unw_step_ptr(arg_0);
    return r0;
}

vm_deallocate(int target_task, int address, int size) {
    r0 = _vm_deallocate_ptr(target_task, address, size);
    return r0;
}

vm_read_overwrite(int target_task, int address, int size, int data, void * outsize) {
    r0 = _vm_read_overwrite_ptr(target_task, address, size, data, outsize);
    return r0;
}

vprintf(void * format, int ap) {
    r0 = _vprintf_ptr(format, ap);
    return r0;
}

vsnprintf(void * str, int size, void * format, int ap) {
    r0 = _vsnprintf_ptr(str, size, format, ap);
    return r0;
}

vsprintf(void * str, void * format, int ap) {
    r0 = _vsprintf_ptr(str, format, ap);
    return r0;
}

write(int fildes, void * buf, int nbyte) {
    r0 = _write_ptr(fildes, buf, nbyte);
    return r0;
}

writev(int fildes, void * iov, int iovcnt) {
    r0 = _writev_ptr(fildes, iov, iovcnt);
    return r0;
}

* xmlBufferContent(int buf) {
    r0 = _xmlBufferContent_ptr(buf);
    return r0;
}

xmlBufferCreate() {
    r0 = _xmlBufferCreate_ptr();
    return r0;
}

xmlBufferFree(int buf) {
    _xmlBufferFree_ptr(buf);
    return;
}

xmlBufferLength(int buf) {
    r0 = _xmlBufferLength_ptr(buf);
    return r0;
}

xmlCopyNode(int node, int recursive) {
    r0 = _xmlCopyNode_ptr(node, recursive);
    return r0;
}

xmlDocGetRootElement(int doc) {
    r0 = _xmlDocGetRootElement_ptr(doc);
    return r0;
}

xmlFreeDoc(int cur) {
    _xmlFreeDoc_ptr(cur);
    return;
}

xmlNodeDump(int buf, int doc, int cur, int level, int format) {
    r0 = _xmlNodeDump_ptr(buf, doc, cur, level, format);
    return r0;
}

xmlReadMemory(void * buffer, int size, void * URL, void * encoding, int options) {
    r0 = _xmlReadMemory_ptr(buffer, size, URL, encoding, options);
    return r0;
}

xmlXPathCastToBoolean(int val) {
    r0 = _xmlXPathCastToBoolean_ptr(val);
    return r0;
}

* xmlXPathCastToString(int val) {
    r0 = _xmlXPathCastToString_ptr(val);
    return r0;
}

xmlXPathCompile(void * str) {
    r0 = _xmlXPathCompile_ptr(str);
    return r0;
}

xmlXPathCastToNumber(int val) {
    r0 = _xmlXPathCastToNumber_ptr(val);
    return r0;
}

xmlXPathCompiledEval(int comp, int ctx) {
    r0 = _xmlXPathCompiledEval_ptr(comp, ctx);
    return r0;
}

xmlXPathNewContext(int doc) {
    r0 = _xmlXPathNewContext_ptr(doc);
    return r0;
}

xmlXPathRegisterNs(int ctxt, void * prefix, void * ns_uri) {
    r0 = _xmlXPathRegisterNs_ptr(ctxt, prefix, ns_uri);
    return r0;
}

objc_terminate() {
    _objc_terminate_ptr();
    return;
}

objc_begin_catch(void * exc_buf) {
    r0 = _objc_begin_catch_ptr(exc_buf);
    return r0;
}

__cxa_guard_abort() {
    ___cxa_guard_abort_ptr();
    return;
}

__cxa_free_exception() {
    ___cxa_free_exception_ptr();
    return;
}

__cxa_end_catch() {
    ___cxa_end_catch_ptr();
    return;
}

_ZdlPvRKSt9nothrow_t() {
    pointer to operator delete();
    return;
}

_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv() {
    pointer to std::__1::ios_base::__set_badbit_and_consider_rethrow();
    return;
}

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::~basic_string();
    return;
}

__ZN13mcwebsocketpp10connectionINS_6config11core_clientEE19handle_pong_timeoutENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEERKNS4_10error_codeE(int arg0, void * arg1) {
    r0 = arg0;
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = r0;
    if (*(int32_t *)r2 != 0x0) {
            r20 = r2;
            r0 = sub_1009a6c98(r29 - 0x30, 0x5);
            if (*(r20 + 0x8) == var_28) {
                    asm { ccmp       w10, w11, #0x0, eq };
            }
            if (!CPU_FLAGS & E) {
                    std::__1::error_code::message();
                    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
                    var_30 = *(int128_t *)r0;
                    *(int128_t *)(r0 + 0x8) = 0x0;
                    *(int128_t *)(r0 + 0x10) = 0x0;
                    *r0 = 0x0;
                    r0 = sub_1009a6d4c(r19, 0x1, r29 - 0x30);
                    if ((sign_extend_64(var_19) & 0xffffffff80000000) != 0x0) {
                            r0 = operator delete(var_30);
                    }
                    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                            r0 = operator delete(var_48);
                    }
            }
    }
    else {
            if (*(r19 + 0x258) != 0x0) {
                    r8 = *(r19 + 0x198);
                    var_50 = r8;
                    if (r8 != 0x0) {
                            do {
                                    asm { ldxr       x9, [x8] };
                                    r9 = r9 + 0x1;
                                    asm { stxr       w10, x9, [x8] };
                            } while (r10 != 0x0);
                    }
                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
                    r0 = *(r19 + 0x258);
                    if (r0 != 0x0) {
                            (*(*r0 + 0x30))();
                            if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_70);
                            }
                            r0 = var_50;
                            if (r0 != 0x0) {
                                    r0 = std::__1::__shared_weak_count::__release_weak();
                            }
                    }
                    else {
                            r0 = sub_1009a2b64();
                    }
            }
    }
    return r0;
}

__ZN13mcwebsocketpp10connectionINS_6config11core_clientEE16handle_terminateENS3_16terminate_statusERKNSt3__110error_codeE(int arg0, void * arg1) {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = r2;
    r20 = arg1;
    r19 = arg0;
    r0 = *(arg0 + 0x4610);
    if ((*(int8_t *)(r0 + 0x41) & 0x4) != 0x0) {
            sub_1009a2524(r0, 0x400, "connection handle_terminate");
    }
    if (*(int32_t *)r21 != 0x0) {
            sub_1009ab658(r19, 0x1, "handle_terminate", r21);
    }
    if (r20 == 0x2) goto loc_1009acbec;

loc_1009acb5c:
    if (r20 != 0x1) goto loc_1009acc4c;

loc_1009acb64:
    r0 = sub_1009ab5a4(&var_70, 0x15);
    r9 = *(r19 + 0x4670);
    r10 = var_68;
    r11 = var_70;
    if (r9 == r10) {
            asm { ccmp       w8, w11, #0x0, eq };
    }
    if (CPU_FLAGS & E) goto loc_1009acc60;

loc_1009acb94:
    r0 = *(r19 + 0x1f8);
    if (r0 == 0x0) goto loc_1009acc60;

loc_1009acb9c:
    r8 = *(r19 + 0x198);
    var_28 = r8;
    if (r8 == 0x0) goto loc_1009acbcc;

loc_1009acbb4:
    do {
            asm { ldxr       x9, [x8] };
            r9 = r9 + 0x1;
            asm { stxr       w10, x9, [x8] };
    } while (r10 != 0x0);
    r0 = *(r19 + 0x1f8);
    if (r0 == 0x0) goto loc_1009acce8;

loc_1009acbcc:
    (*(*r0 + 0x30))();
    r0 = var_28;
    if (r0 != 0x0) {
            r0 = std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_1009acc60;

loc_1009acc60:
    if (*(r19 + 0x43a8) != 0x0) {
            sub_1009a4c34(r19);
            r0 = *(r19 + 0x43a8);
            if (r0 != 0x0) {
                    r0 = (*(*r0 + 0x30))();
                    r19 = var_48;
                    if (r19 != 0x0) {
                            do {
                                    asm { ldaxr      x9, [x8] };
                                    asm { stlxr      w11, x10, [x8] };
                            } while (r11 != 0x0);
                            if (r9 == 0x0) {
                                    (*(*r19 + 0x10))(r19);
                                    r0 = std::__1::__shared_weak_count::__release_weak();
                            }
                    }
            }
            else {
                    r0 = sub_1009a2b64();
            }
    }
    return r0;

loc_1009acce8:
    r0 = sub_1009a2b64();
    return r0;

loc_1009acc4c:
    r0 = *(r19 + 0x4618);
    r0 = sub_1009a6ba0(r0, 0x10, "Unknown terminate_status");
    goto loc_1009acc60;

loc_1009acbec:
    r0 = *(r19 + 0x1d8);
    if (r0 == 0x0) goto loc_1009acc40;

loc_1009acbf4:
    r8 = *(r19 + 0x198);
    var_38 = r8;
    if (r8 == 0x0) goto loc_1009acc24;

loc_1009acc0c:
    do {
            asm { ldxr       x9, [x8] };
            r9 = r9 + 0x1;
            asm { stxr       w10, x9, [x8] };
    } while (r10 != 0x0);
    r0 = *(r19 + 0x1d8);
    if (r0 == 0x0) goto loc_1009acce0;

loc_1009acc24:
    (*(*r0 + 0x30))();
    if (var_38 != 0x0) {
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_1009acc40;

loc_1009acc40:
    r0 = sub_1009ad450(r19);
    goto loc_1009acc60;

loc_1009acce0:
    r0 = sub_1009a2b64();
    return r0;
}

__ZN13mcwebsocketpp10connectionINS_6config11core_clientEE26handle_write_http_responseERKNSt3__110error_codeE(void * arg0) {
    r31 = r31 - 0x1b0;
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
    r19 = arg0;
    r24 = &var_170;
    sub_1009a2524(*(arg0 + 0x4610), 0x400, "handle_write_http_response");
    q0 = *(int128_t *)r1;
    *(int128_t *)(r24 + 0x120) = q0;
    if (var_50 != 0x0) goto loc_1009b733c;

loc_1009b71f0:
    r20 = r19 + 0x308;
    std::__1::mutex::lock();
    r8 = *(int32_t *)(r19 + 0x300);
    if (r8 == 0x3) goto loc_1009b73c4;

loc_1009b7208:
    if (r8 != 0x0 || *(int32_t *)(r19 + 0x304) != 0x6) goto loc_1009b730c;

loc_1009b7218:
    r22 = r19 + 0x45c0;
    std::__1::mutex::unlock();
    if (*(r19 + 0x43c0) != 0x0) {
            r20 = *(r19 + 0x43c8);
            *(int128_t *)(r19 + 0x43c0) = q0;
            if (r20 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            r10 = r9 - 0x1;
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    if (*(int32_t *)r22 != 0x65) goto loc_1009b73e4;

loc_1009b7284:
    sub_1009b7f30(r19);
    *(r19 + 0x300) = *0x100bf7478;
    r0 = *(r19 + 0x1b8);
    if (r0 == 0x0) goto loc_1009b72ec;

loc_1009b72a0:
    r8 = *(r19 + 0x198);
    var_190 = r8;
    if (r8 == 0x0) goto loc_1009b72d0;

loc_1009b72b8:
    do {
            asm { ldxr       x9, [x8] };
            r9 = r9 + 0x1;
            asm { stxr       w10, x9, [x8] };
    } while (r10 != 0x0);
    r0 = *(r19 + 0x1b8);
    if (r0 == 0x0) goto loc_1009b7660;

loc_1009b72d0:
    (*(*r0 + 0x30))();
    if (var_190 != 0x0) {
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_1009b72ec;

loc_1009b72ec:
    std::__1::system_category();
    r0 = mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_frame(r19, &var_170);
    return r0;

loc_1009b7660:
    r0 = sub_1009a2b64();
    return r0;

loc_1009b73e4:
    if (*(int8_t *)(r22 + 0xb8) != 0x0) {
            sub_1009b7828(r19);
            r22 = r22 + 0xa8;
            if (*(int32_t *)r22 != 0x0) {
                    std::__1::error_code::message();
                    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
                    *(int128_t *)(r0 + 0x8) = 0x0;
                    *(int128_t *)(r0 + 0x10) = 0x0;
                    *r0 = 0x0;
                    r0 = sub_1009a4cc0(r20, 0x400, &var_170);
                    if ((sign_extend_64(var_159) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_170);
                    }
                    if ((sign_extend_64(var_171) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_188);
                    }
            }
            r8 = 0x1011c4d88;
            asm { ldarb      w8, [x8] };
            if ((r8 & 0x1) == 0x0) {
                    if (__cxa_guard_acquire() != 0x0) {
                            *0x1011c4d80 = *qword_100e60820 + 0x10;
                            __cxa_atexit();
                            __cxa_guard_release();
                    }
            }
            *(r19 + 0x4668) = 0x15;
            *(r19 + 0x4670) = 0x1011c4d80;
    }
    else {
            r20 = &var_170 + 0x80;
            r21 = &var_170 + 0x18;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)(r24 + 0x58) = q0;
            *(int128_t *)(r24 + 0x68) = q0;
            sub_100063f9c(&var_170 + 0x10, "Handshake ended with HTTP error: ", 0x21);
            std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
            sub_100063e7c(r21);
            r0 = sub_1009a6d4c(r22, 0x10, &var_188);
            if ((sign_extend_64(var_171) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_188);
            }
            if ((sign_extend_64(var_101) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_118);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    r1 = r19 + 0x4668;
    goto loc_1009b73a0;

loc_1009b73a0:
    r0 = sub_1009ab294(r19, r1);
    return r0;

loc_1009b730c:
    r8 = 0x1011c4d88;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    var_48 = 0x1011c4d80;
    std::__1::mutex::unlock();
    goto loc_1009b733c;

loc_1009b733c:
    sub_1009a6c98(&var_170, 0x7);
    if (var_48 == var_168) {
            asm { ccmp       w20, w10, #0x0, eq };
    }
    if (CPU_FLAGS & NE || *(int32_t *)(r19 + 0x300) != 0x3) goto loc_1009b7384;

loc_1009b736c:
    r0 = *(r19 + 0x4610);
    r0 = sub_1009a2524(r0, 0x400, "got (expected) eof/state error from closed con");
    return r0;

loc_1009b7384:
    sub_1009ab658(r19, 0x10, "handle_write_http_response", r29 - 0x50);
    r1 = r29 - 0x50;
    goto loc_1009b73a0;

loc_1009b73c4:
    sub_1009a2524(*(r19 + 0x4610), 0x400, "handle_write_http_response invoked after connection was closed");
    r0 = std::__1::mutex::unlock();
    return r0;
}

__ZN13mcwebsocketpp10connectionINS_6config11core_clientEE17handle_read_frameERKNSt3__110error_codeEm(void * arg0, long arg1) {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x1b0;
    r19 = arg0;
    q0 = *(int128_t *)arg1;
    var_70 = q0;
    if (var_70 != 0x0) goto loc_1009aaa20;

loc_1009aa19c:
    if (*(int32_t *)(r19 + 0x304) != 0x7) goto loc_1009aaa00;

loc_1009aa1a8:
    r22 = r2;
    if ((*(int8_t *)(*(r19 + 0x4610) + 0x41) & 0x4) != 0x0) {
            r20 = &var_188 + 0x80;
            r21 = &var_188 + 0x18;
            var_180 = 0x0;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)(&var_188 + 0x58) = q0;
            *(int128_t *)(&var_188 + 0x68) = q0;
            sub_100063f9c(&var_188 + 0x10, "p = ", 0x4);
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " bytes transferred = ", 0x15);
            std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
            sub_100063e7c(r21);
            r0 = sub_1009a4cc0(r23, 0x400, &var_1A0);
            if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1A0);
            }
            r10 = *qword_100e60998 + 0x10;
            var_188 = *qword_100e609a8 + 0x18;
            if ((sign_extend_64(var_119) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_130);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    if (r22 == 0x0) goto loc_1009aa9f4;

loc_1009aa304:
    r28 = *qword_100e60998;
    r26 = 0x0;
    r20 = &var_188 + 0x80;
    r21 = &var_188 + 0x18;
    r27 = &var_188 + 0x58;
    r23 = &var_188 + 0x10;
    var_1E8 = *qword_100e609a8 + 0x40;
    var_1F0 = r28 + 0x10;
    var_1F8 = *qword_100e607d8 + 0x8;
    goto loc_1009aa33c;

loc_1009aa33c:
    if ((*(int8_t *)(*(r19 + 0x4610) + 0x41) & 0x4) != 0x0) {
            var_180 = 0x0;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)r27 = q0;
            *(int128_t *)(r27 + 0x10) = q0;
            sub_100063f9c(r23, "calling consume with ", 0x15);
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " bytes", 0x6);
            sub_100063e7c(r21);
            r0 = sub_1009a4cc0(r25, 0x400, &var_1A0);
            if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1A0);
            }
            r10 = *qword_100e60998 + 0x10;
            var_188 = *qword_100e609a8 + 0x18;
            if ((sign_extend_64(var_119) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_130);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    var_1A8 = std::__1::system_category();
    if ((*(int8_t *)(*(r19 + 0x4610) + 0x41) & 0x4) == 0x0) {
            r28 = r22 - r26;
    }
    else {
            var_180 = 0x0;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)r27 = q0;
            *(int128_t *)(r27 + 0x10) = q0;
            r25 = sub_100063f9c(r23, "Processing Bytes: ", 0x12);
            r28 = r22 - r26;
            r1 = r28;
            sub_1009ab920(0x388 + r19 + r26, r1);
            r8 = var_189;
            r10 = var_1A0;
            r11 = var_198;
            r9 = &var_1A0;
            if (sign_extend_64(r8) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r1 = r9;
                    }
                    else {
                            r1 = r10;
                    }
            }
            r2 = 0x12;
            if (CPU_FLAGS & L) {
                    if (!CPU_FLAGS & L) {
                            r2 = r8;
                    }
                    else {
                            r2 = r11;
                    }
            }
            sub_100063f9c(r25, r1, r2);
            if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1A0);
            }
            sub_100063e7c(r21);
            r0 = sub_1009a4cc0(r25, 0x400, &var_1A0);
            if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1A0);
            }
            r24 = *qword_100e609a8;
            r10 = *qword_100e60998;
            r10 = r10 + 0x10;
            var_188 = r24 + 0x18;
            if ((sign_extend_64(var_119) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_130);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    r0 = *(r19 + 0x43f8);
    r0 = (*(*r0 + 0x70))(r0, 0x388 + r19 + r26, r28, &var_1B0);
    r26 = r0 + r26;
    if ((*(int8_t *)(*(r19 + 0x4610) + 0x41) & 0x4) != 0x0) {
            var_180 = 0x0;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)r27 = q0;
            *(int128_t *)(r27 + 0x10) = q0;
            sub_100063f9c(r23, "bytes left after consume: ", 0x1a);
            std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
            sub_100063e7c(r21);
            r0 = sub_1009a4cc0(r25, 0x400, &var_1A0);
            if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1A0);
            }
            r10 = *qword_100e60998 + 0x10;
            var_188 = *qword_100e609a8 + 0x18;
            if ((sign_extend_64(var_119) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_130);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    if (0x0 != 0x0) goto loc_1009aab88;

loc_1009aa720:
    r0 = *(r19 + 0x43f8);
    if ((*(*r0 + 0x78))(r0) == 0x0) goto loc_1009aa9ec;

loc_1009aa734:
    if ((*(int8_t *)(*(r19 + 0x4610) + 0x41) & 0x4) != 0x0) {
            var_180 = 0x0;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)r27 = q0;
            *(int128_t *)(r27 + 0x10) = q0;
            sub_100063f9c(r23, "Complete message received. Dispatching", 0x26);
            sub_100063e7c(r21);
            r0 = sub_1009a4cc0(r25, 0x400, &var_1A0);
            if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1A0);
            }
            r10 = *qword_100e60998 + 0x10;
            var_188 = *qword_100e609a8 + 0x18;
            if ((sign_extend_64(var_119) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_130);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    r0 = *(r19 + 0x43f8);
    r9 = *(*r0 + 0x80);
    (r9)(r0);
    r8 = var_188;
    if (r8 == 0x0) goto loc_1009aa8c8;

loc_1009aa858:
    if (*(int32_t *)(r8 + 0x58) <= 0x7) goto loc_1009aa8e0;

loc_1009aa864:
    r9 = var_180;
    var_1D8 = r9;
    if (r9 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    sub_1009abbb8(r19, &var_1E0);
    r25 = var_1D8;
    if (r25 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    r10 = r9 - 0x1;
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r25 + 0x10))(r25);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_1009aa9b4;

loc_1009aa9b4:
    r25 = var_180;
    if (r25 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    r10 = r9 - 0x1;
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r25 + 0x10))(r25);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_1009aa9ec;

loc_1009aa9ec:
    if (r26 < r22) goto loc_1009aa33c;

loc_1009aa9f4:
    r0 = sub_1009ac384(r19);
    return r0;

.l22:
    return r0;

loc_1009aa8e0:
    r9 = *(int32_t *)(r19 + 0x300);
    if (r9 != 0x1) goto loc_1009aa9a0;

loc_1009aa8ec:
    r9 = *(r19 + 0x2d8);
    if (r9 == 0x0) goto loc_1009aa9b4;

loc_1009aa8f4:
    r9 = *(r19 + 0x198);
    var_1B8 = r9;
    if (r9 != 0x0) {
            do {
                    asm { ldxr       x10, [x9] };
                    r10 = r10 + 0x1;
                    asm { stxr       w11, x10, [x9] };
            } while (r11 != 0x0);
    }
    r9 = var_180;
    var_1C8 = r9;
    if (r9 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    r0 = *(r19 + 0x2d8);
    if (r0 == 0x0) goto loc_1009aad18;

loc_1009aa944:
    (*(*r0 + 0x30))();
    r25 = var_1C8;
    if (r25 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    r10 = r9 - 0x1;
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r25 + 0x10))(r25);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    if (var_1B8 != 0x0) {
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_1009aa9b4;

loc_1009aad18:
    r0 = sub_1009a2b64();
    return r0;

loc_1009aa9a0:
    sub_1009a6ba0(*(r19 + 0x4618), 0x8, "got non-close frame while closing");
    goto loc_1009aa9b4;

loc_1009aa8c8:
    sub_1009a2524(*(r19 + 0x4610), 0x400, "null message from m_processor");
    goto loc_1009aa9b4;

loc_1009aab88:
    sub_1009ab658(r19, 0x10, "consume", &var_1B0);
    std::__1::system_category();
    r21 = var_1B0;
    r22 = var_1A8;
    r8 = 0x1011c4db8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4db0 = *qword_100e60830 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    if (r22 != 0x1011c4db0) {
            r20 = 0x0;
    }
    else {
            if (r21 <= 0x19) {
                    r8 = 0x1 << r21;
                    if ((r8 & 0x3003f88) != 0x0) {
                            r20 = 0x3ea;
                    }
                    else {
                            if ((r8 & 0x10020) != 0x0) {
                                    r20 = 0x3ef;
                            }
                            else {
                                    if (r21 == 0x4) {
                                            r20 = 0x3f1;
                                    }
                                    else {
                                            r20 = 0x3f3;
                                    }
                            }
                    }
            }
            else {
                    r20 = 0x3f3;
            }
    }
    std::__1::error_code::message();
    r0 = sub_1009aba2c(r19, r20, &var_188, &var_1A0);
    if ((sign_extend_64(var_171) & 0xffffffff80000000) != 0x0) {
            r0 = operator delete(var_188);
    }
    if (0x0 == 0x0) goto .l22;

loc_1009aac38:
    sub_1009ab658(r19, 0x20, "Protocol error close frame ", &var_1A0);
    r1 = &var_1A0;
    goto loc_1009aab4c;

loc_1009aab4c:
    r0 = sub_1009ab294(r19, r1);
    return r0;

loc_1009aaa00:
    r8 = 0x1011c4d88;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    var_70 = 0x9;
    var_68 = 0x1011c4d80;
    goto loc_1009aaa20;

loc_1009aaa20:
    sub_1009a6c98(&var_188, 0x7);
    if (var_68 == var_180) {
            asm { ccmp       w21, w10, #0x0, eq };
    }
    if (CPU_FLAGS & E) goto loc_1009aaaa8;

loc_1009aaa44:
    sub_1009ab5a4(&var_188, 0x9);
    if (var_68 == var_180) {
            asm { ccmp       w10, w11, #0x0, eq };
    }
    if (CPU_FLAGS & E) goto loc_1009aaacc;

loc_1009aaa6c:
    r0 = sub_1009a6c98(&var_188, 0x8);
    if (var_68 != var_180 || var_70 != var_188) goto loc_1009aab04;

loc_1009aaa98:
    if (*(int32_t *)(r19 + 0x300) != 0x3) goto loc_1009aaafc;

loc_1009aab74:
    std::__1::system_category();
    r1 = &var_188;
    goto loc_1009aab4c;

loc_1009aaafc:
    r1 = 0x10;
    goto loc_1009aab34;

loc_1009aab34:
    sub_1009ab658(r19, r1, "handle_read_frame", r29 - 0x70);
    r1 = r29 - 0x70;
    goto loc_1009aab4c;

loc_1009aab04:
    sub_1009a6c98(&var_188, 0xa);
    if (var_70 == var_188) {
            asm { ccmp       x8, x9, #0x0, eq };
    }
    r1 = 0xa;
    if (CPU_FLAGS & E) {
            if (!CPU_FLAGS & E) {
                    r1 = 0x10;
            }
            else {
                    r1 = 0x4;
            }
    }
    goto loc_1009aab34;

loc_1009aaacc:
    if (*(int32_t *)(r19 + 0x300) != 0x3) goto loc_1009aaafc;

loc_1009aaad8:
    r0 = *(r19 + 0x4610);
    r2 = "handle_read_frame: got invalid istate in closed state";
    goto loc_1009aaae4;

loc_1009aaae4:
    r0 = sub_1009a2524(r0, 0x400, r2);
    return r0;

loc_1009aaaa8:
    r8 = *(int32_t *)(r19 + 0x300);
    if (r8 == 0x2) goto loc_1009aaaf0;

loc_1009aaab4:
    if (r8 != 0x3) goto loc_1009aaafc;

loc_1009aaabc:
    r0 = *(r19 + 0x4610);
    r2 = "got eof from closed con";
    goto loc_1009aaae4;

loc_1009aaaf0:
    if (*(int8_t *)(r19 + 0x4608) == 0x0) goto loc_1009aab74;
}

__ZN13mcwebsocketpp10connectionINS_6config11core_clientEE25handle_read_http_responseERKNSt3__110error_codeEm(void * arg0, long arg1) {
    r31 = r31 - 0x120;
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
    r20 = r2;
    r19 = arg0;
    sub_1009a2524(*(arg0 + 0x4610), 0x400, "handle_read_http_response");
    if (*(int128_t *)arg1 != 0x0) goto loc_1009c1380;

loc_1009c11bc:
    r21 = r19 + 0x308;
    std::__1::mutex::lock();
    r8 = *(int32_t *)(r19 + 0x300);
    if (r8 == 0x3) goto loc_1009c1420;

loc_1009c11d4:
    if (r8 != 0x0 || *(int32_t *)(r19 + 0x304) != 0x4) goto loc_1009c1350;

loc_1009c11e4:
    std::__1::mutex::unlock();
    r23 = r19 + 0x4528;
    r21 = r19 + 0x388;
    r22 = sub_1009c1a24(r23, r21, r20);
    r24 = *(r19 + 0x4610);
    r0 = sub_10099f18c(&var_100, "Raw response: ");
    r25 = &var_98;
    sub_1009b6d00(r23);
    r8 = var_81;
    r9 = sign_extend_64(r8);
    r10 = var_98;
    r11 = stack[-160];
    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
    q0 = *(int128_t *)r0;
    *(int128_t *)(r0 + 0x8) = 0x0;
    *(int128_t *)(r0 + 0x10) = 0x0;
    *r0 = 0x0;
    r0 = sub_1009a4cc0(r24, 0x400, &var_D0);
    if ((sign_extend_64(var_B9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D0);
    }
    if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
            operator delete(var_98);
    }
    if ((sign_extend_64(var_E9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_100);
    }
    if ((*(int32_t *)(r19 + 0x45c4) | 0x1) != 0x3) goto loc_1009c1440;

loc_1009c12bc:
    if (*(r19 + 0x43c0) != 0x0) {
            r24 = *(r19 + 0x43c8);
            *(int128_t *)(r19 + 0x43c0) = q0;
            if (r24 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            r10 = r9 - 0x1;
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r24 + 0x10))(r24);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    r0 = *(r19 + 0x43f8);
    if ((*(*r0 + 0x48))(r0, r19 + 0x4478, r23) == 0x0) goto loc_1009c14bc;

loc_1009c1330:
    sub_1009ab658(r19, 0x10, "Server handshake response", &var_A8);
    r1 = &var_A8;
    goto loc_1009c13e4;

loc_1009c13e4:
    r0 = sub_1009ab294(r19, r1);
    goto loc_1009c13ec;

loc_1009c13ec:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009c14bc:
    std::__1::system_category();
    r24 = &var_D0 + 0x10;
    r0 = *(r19 + 0x43f8);
    r9 = *(*r0 + 0x28);
    (r9)(r0, r23);
    var_D0 = var_100;
    r23 = &var_100 + 0x10;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    q0 = *(int128_t *)r23;
    *(r24 + 0x10) = *(r23 + 0x10);
    *(int128_t *)r24 = q0;
    if (var_D0 != 0x0) {
            std::__1::error_code::message();
            r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
            *(int128_t *)(r0 + 0x8) = 0x0;
            *(int128_t *)(r0 + 0x10) = 0x0;
            *r0 = 0x0;
            r0 = sub_1009a4cc0(r23, 0x400, &var_100);
            if ((sign_extend_64(var_E9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_100);
            }
            if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_98);
            }
            r8 = 0x1011c4d88;
            asm { ldarb      w8, [x8] };
            if ((r8 & 0x1) == 0x0) {
                    if (__cxa_guard_acquire() != 0x0) {
                            *0x1011c4d80 = *qword_100e60820 + 0x10;
                            __cxa_atexit();
                            __cxa_guard_release();
                    }
            }
            r9 = 0x1011c4d80;
            sub_1009ab294(r19, &var_100);
    }
    *(r19 + 0x300) = *0x100bf7478;
    sub_1009b7f30(r19);
    r0 = *(r19 + 0x1b8);
    if (r0 == 0x0) goto loc_1009c1624;

loc_1009c15d8:
    r8 = *(r19 + 0x198);
    var_108 = r8;
    if (r8 == 0x0) goto loc_1009c1608;

loc_1009c15f0:
    do {
            asm { ldxr       x9, [x8] };
            r9 = r9 + 0x1;
            asm { stxr       w10, x9, [x8] };
    } while (r10 != 0x0);
    r0 = *(r19 + 0x1b8);
    if (r0 == 0x0) goto loc_1009c175c;

loc_1009c1608:
    (*(*r0 + 0x30))();
    if (var_108 != 0x0) {
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_1009c1624;

loc_1009c1624:
    r1 = r22 + r19 + 0x388;
    r2 = r20 + r19 + 0x388 - r1;
    if (r2 != 0x0) {
            memmove(r21, r1, r2);
    }
    *(r19 + 0x4388) = r20 - r22;
    std::__1::system_category();
    r0 = mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_frame(r19, &var_100);
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            r0 = operator delete(0x0);
    }
    goto loc_1009c13ec;

loc_1009c175c:
    r0 = sub_1009a2b64();
    return r0;

loc_1009c1440:
    sub_1009a4c34(r19);
    r0 = operator new();
    r8 = *qword_100e60958;
    r9 = *mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_http_response(std::__1::error_code const&, unsigned long);
    *(int128_t *)r0 = r8 + 0x10;
    *(int128_t *)(r0 + 0x8) = r9;
    *(int128_t *)(r0 + 0x10) = 0x0;
    *(int128_t *)(r0 + 0x18) = var_D0;
    *(r0 + 0x20) = var_C8;
    sub_1009aefec(r19, 0x1, r21, 0x4000, r29 - 0x68);
    r0 = r0;
    if (r29 - 0x68 == r0) goto loc_1009c1678;

loc_1009c14ac:
    if (r0 == 0x0) goto loc_1009c1684;

loc_1009c14b0:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1009c1680;

loc_1009c1680:
    r0 = (r8)();
    goto loc_1009c1684;

loc_1009c1684:
    if (0x0 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (*mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_http_response(std::__1::error_code const&, unsigned long) == 0x0) {
                    (*(*0x0 + 0x10))(0x0);
                    r0 = std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_1009c13ec;

loc_1009c1678:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1009c1680;

loc_1009c1350:
    r8 = 0x1011c4d88;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    var_78 = 0x1011c4d80;
    std::__1::mutex::unlock();
    goto loc_1009c1380;

loc_1009c1380:
    sub_1009a6c98(&var_D0, 0x7);
    if (var_78 == var_C8) {
            asm { ccmp       w21, w10, #0x0, eq };
    }
    if (CPU_FLAGS & NE || *(int32_t *)(r19 + 0x300) != 0x3) goto loc_1009c13c8;

loc_1009c13b0:
    r0 = *(r19 + 0x4610);
    r0 = sub_1009a2524(r0, 0x400, "got (expected) eof/state error from closed con");
    goto loc_1009c13ec;

loc_1009c13c8:
    sub_1009ab658(r19, 0x10, "handle_read_http_response", r29 - 0x80);
    r1 = r29 - 0x80;
    goto loc_1009c13e4;

loc_1009c1420:
    sub_1009a2524(*(r19 + 0x4610), 0x400, "handle_read_http_response invoked after connection was closed");
    r0 = std::__1::mutex::unlock();
    goto loc_1009c13ec;
}

__ZN13mcwebsocketpp10connectionINS_6config11core_clientEE21handle_transport_initERKNSt3__110error_codeE(void * arg0) {
    r31 = r31 - 0x190;
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
    r19 = arg0;
    sub_1009a2524(*(arg0 + 0x4610), 0x400, "connection handle_transport_init");
    q0 = *(int128_t *)r1;
    var_50 = q0;
    if (*(int32_t *)(r19 + 0x304) == 0x1) {
            if (var_50 == 0x0) {
                    if (*(int8_t *)(r19 + 0x4608) != 0x0) {
                            *(int32_t *)(r19 + 0x304) = 0x2;
                            r0 = sub_1009b0d5c(r19, 0x1);
                    }
                    else {
                            *(int32_t *)(r19 + 0x304) = 0x3;
                            sub_1009b1050(r19);
                            r9 = var_160;
                            *(r19 + 0x43f8) = var_168;
                            r20 = *(r19 + 0x4400);
                            *(r19 + 0x4400) = r9;
                            if (r20 != 0x0) {
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r20 + 0x10))(r20);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                            if (0x0 != 0x0) {
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*0x0 + 0x10))(0x0);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                            r0 = sub_1009b14d4(r19);
                    }
            }
            else {
                    r20 = &var_168 + 0x80;
                    r21 = &var_168 + 0x18;
                    std::__1::ios_base::init();
                    std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
                    var_110 = q0;
                    r1 = "handle_transport_init received error: ";
                    r22 = sub_100063f9c(&var_168 + 0x10, r1, 0x26);
                    r25 = &var_180;
                    std::__1::error_code::message();
                    r8 = var_169;
                    r10 = var_180;
                    r11 = stack[-392];
                    if (sign_extend_64(r8) < 0x0) {
                            if (!CPU_FLAGS & L) {
                                    r1 = r25;
                            }
                            else {
                                    r1 = r10;
                            }
                    }
                    r2 = 0x26;
                    if (CPU_FLAGS & L) {
                            if (!CPU_FLAGS & L) {
                                    r2 = r8;
                            }
                            else {
                                    r2 = r11;
                            }
                    }
                    sub_100063f9c(r22, r1, r2);
                    if ((sign_extend_64(var_169) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_180);
                    }
                    sub_100063e7c(r21);
                    r0 = sub_1009a6d4c(r22, 0x10, &var_180);
                    if ((sign_extend_64(var_169) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_180);
                    }
                    sub_1009ab294(r19, r29 - 0x50);
                    if ((sign_extend_64(var_F9) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_110);
                    }
                    std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
                    std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
                    r0 = std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
            }
    }
    else {
            sub_1009a2524(*(r19 + 0x4610), 0x400, "handle_transport_init must be called from transport init state");
            r8 = 0x1011c4d88;
            asm { ldarb      w8, [x8] };
            if ((r8 & 0x1) == 0x0) {
                    if (__cxa_guard_acquire() != 0x0) {
                            *0x1011c4d80 = *qword_100e60820 + 0x10;
                            __cxa_atexit();
                            __cxa_guard_release();
                    }
            }
            r20 = &var_168 + 0x80;
            r21 = &var_168 + 0x18;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            var_110 = q0;
            r1 = "handle_transport_init received error: ";
            r22 = sub_100063f9c(&var_168 + 0x10, r1, 0x26);
            r25 = &var_180;
            std::__1::error_code::message();
            r8 = var_169;
            r10 = var_180;
            r11 = stack[-392];
            if (sign_extend_64(r8) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r1 = r25;
                    }
                    else {
                            r1 = r10;
                    }
            }
            r2 = 0x26;
            if (CPU_FLAGS & L) {
                    if (!CPU_FLAGS & L) {
                            r2 = r8;
                    }
                    else {
                            r2 = r11;
                    }
            }
            sub_100063f9c(r22, r1, r2);
            if ((sign_extend_64(var_169) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_180);
            }
            sub_100063e7c(r21);
            r0 = sub_1009a6d4c(r22, 0x10, &var_180);
            if ((sign_extend_64(var_169) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_180);
            }
            sub_1009ab294(r19, r29 - 0x50);
            if ((sign_extend_64(var_F9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_110);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            r0 = std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    return r0;
}

__ZN13mcwebsocketpp10connectionINS_6config11core_clientEE11write_frameEv() {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x3e0;
    r19 = r0;
    r20 = r0 + 0x348;
    std::__1::mutex::lock();
    r23 = r19 + 0x4470;
    if (*(int8_t *)r23 == 0x0) goto loc_1009a3edc;

loc_1009a3ea0:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = std::__1::mutex::unlock();
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009a3edc:
    sub_1009a5408(r19);
    r22 = var_2C0;
    var_3F8 = r19 + 0x4458;
    if (r22 == 0x0) goto loc_1009a40c4;

loc_1009a3efc:
    r24 = r19 + 0x4468;
    goto loc_1009a3f0c;

loc_1009a3f0c:
    r8 = *(r19 + 0x4460);
    r9 = *(r19 + 0x4468);
    if (r8 == r9) goto loc_1009a3f4c;

loc_1009a3f1c:
    *r8 = r22;
    r9 = var_2B8;
    *(r8 + 0x8) = r9;
    if (r9 != 0x0) {
            r9 = r9 + 0x8;
            do {
                    asm { ldxr       x10, [x9] };
                    r10 = r10 + 0x1;
                    asm { stxr       w11, x10, [x9] };
            } while (r11 != 0x0);
    }
    *(r19 + 0x4460) = r8 + 0x10;
    goto loc_1009a3ffc;

loc_1009a3ffc:
    if (*(int8_t *)(var_2C0 + 0x5e) == 0x0) goto loc_1009a402c;

loc_1009a4008:
    r22 = var_2B8;
    var_2C0 = 0x0;
    var_2B8 = 0x0;
    if (r22 == 0x0) goto loc_1009a40c0;

loc_1009a4018:
    do {
            asm { ldaxr      x9, [x8] };
            r10 = r9 - 0x1;
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_1009a40a0;

loc_1009a40a0:
    if (r9 == 0x0) {
            (*(*r22 + 0x10))(r22);
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_1009a40bc;

loc_1009a40bc:
    r22 = var_2C0;
    goto loc_1009a40c0;

loc_1009a40c0:
    if (r22 != 0x0) goto loc_1009a3f0c;

loc_1009a40c4:
    r8 = *(r19 + 0x4458);
    r9 = *(r19 + 0x4460);
    r24 = 0x1;
    if (r8 != r9) {
            *(int8_t *)r23 = 0x1;
            r24 = 0x0;
    }
    r22 = var_2B8;
    if (r22 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r22 + 0x10))(r22);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    r0 = std::__1::mutex::unlock();
    if (r24 != 0x0) goto loc_1009a4980;

loc_1009a4124:
    r25 = *(r19 + 0x4458);
    if (r25 == *(r19 + 0x4460)) goto loc_1009a42fc;

loc_1009a4134:
    var_400 = r19 + 0x4440;
    goto loc_1009a4140;

loc_1009a4140:
    r28 = *r25;
    r8 = sign_extend_64(*(int8_t *)(r28 + 0x27));
    if ((r8 & 0xffffffff80000000) == 0x0) {
            r26 = r28 + 0x10;
            r27 = r8 & 0xff;
    }
    else {
            r26 = *(int128_t *)(r28 + 0x10);
            r27 = *(int128_t *)(r28 + 0x18);
    }
    r9 = *(r19 + 0x4448);
    r8 = *(r19 + 0x4450);
    if (r9 >= r8) goto loc_1009a417c;

loc_1009a416c:
    *(int128_t *)r9 = r26;
    *(int128_t *)(r9 + 0x8) = r27;
    *(r19 + 0x4448) = r9 + 0x10;
    goto loc_1009a4218;

loc_1009a4218:
    r26 = r28 + 0x40;
    r8 = sign_extend_64(*(int8_t *)(r26 + 0x17));
    if ((r8 & 0xffffffff80000000) == 0x0) {
            r27 = r8 & 0xff;
    }
    else {
            r26 = *(int128_t *)(r28 + 0x40);
            r27 = *(int128_t *)(r28 + 0x48);
    }
    r9 = *(r19 + 0x4448);
    r8 = *(r19 + 0x4450);
    if (r9 >= r8) goto loc_1009a4250;

loc_1009a4240:
    *(int128_t *)r9 = r26;
    *(int128_t *)(r9 + 0x8) = r27;
    *(r19 + 0x4448) = r9 + 0x10;
    goto loc_1009a42ec;

loc_1009a42ec:
    r25 = r25 + 0x10;
    if (r25 != *(r19 + 0x4460)) goto loc_1009a4140;

loc_1009a42fc:
    r8 = *(r19 + 0x4610);
    if ((*(int8_t *)(r8 + 0x40) & 0x8) != 0x0 && (*(int8_t *)(r8 + 0x44) & 0x8) != 0x0) {
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)(&var_1A0 + 0x58) = q0;
            *(int128_t *)(&var_1A0 + 0x68) = q0;
            var_410 = &var_1A0 + 0x80;
            var_408 = &var_1A0 + 0x18;
            var_418 = &var_2C0 + 0x80;
            std::__1::ios_base::init();
            var_400 = &var_2C0 + 0x18;
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)(&var_2C0 + 0x58) = q0;
            *(int128_t *)(&var_2C0 + 0x68) = q0;
            var_420 = &var_3D8 + 0x80;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            var_380 = q0;
            var_428 = &var_3D8 + 0x18;
            sub_100063f9c(&var_1A0 + 0x10, "Dispatching write containing ", 0x1d);
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " message(s) containing ", 0x17);
            r20 = &var_2C0 + 0x10;
            sub_100063f9c(r20, "Header Bytes: \n", 0xf);
            r21 = &var_3D8 + 0x10;
            sub_100063f9c(&var_3D8 + 0x10, "Payload Bytes: \n", 0x10);
            var_430 = &var_1A0 + 0x10;
            r9 = *(r19 + 0x4460);
            r8 = *(r19 + 0x4458);
            if (r9 == r8) {
                    r25 = 0x0;
                    r28 = 0x0;
            }
            else {
                    r24 = 0x0;
                    r22 = 0x0;
                    r28 = 0x0;
                    r25 = 0x0;
                    do {
                            r8 = *(r8 + r24);
                            r9 = sign_extend_64(*(int8_t *)(r8 + 0x27));
                            if ((r9 & 0xffffffff80000000) == 0x0) {
                                    r26 = r9 & 0xff;
                            }
                            else {
                                    r26 = *(r8 + 0x18);
                            }
                            r9 = sign_extend_64(*(int8_t *)(r8 + 0x57));
                            if ((r9 & 0xffffffff80000000) == 0x0) {
                                    r23 = r9 & 0xff;
                            }
                            else {
                                    r23 = *(r8 + 0x48);
                            }
                            sub_100063f9c(r20, "[", 0x1);
                            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), "] (", 0x3);
                            r8 = *var_3F8;
                            r8 = *(r8 + r24);
                            r9 = sign_extend_64(*(int8_t *)(r8 + 0x27));
                            r0 = std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
                            r1 = ") ";
                            r27 = sub_100063f9c(r0, r1, 0x2);
                            sub_1009a56e4(*(*var_3F8 + r24) + 0x10);
                            r8 = var_3D9;
                            r10 = var_3F0;
                            r11 = stack[-1016];
                            r9 = &var_3F0;
                            if (sign_extend_64(r8) < 0x0) {
                                    if (!CPU_FLAGS & L) {
                                            r1 = r9;
                                    }
                                    else {
                                            r1 = r10;
                                    }
                            }
                            r2 = 0x2;
                            if (CPU_FLAGS & L) {
                                    if (!CPU_FLAGS & L) {
                                            r2 = r8;
                                    }
                                    else {
                                            r2 = r11;
                                    }
                            }
                            sub_100063f9c(sub_100063f9c(r27, r1, r2), "\n", 0x1);
                            if ((sign_extend_64(var_3D9) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_3F0);
                            }
                            r8 = *(r19 + 0x4610);
                            if ((*(int8_t *)(r8 + 0x40) & 0x10) != 0x0 && (*(int8_t *)(r8 + 0x44) & 0x10) != 0x0) {
                                    sub_100063f9c(r21, "[", 0x1);
                                    sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), "] (", 0x3);
                                    r8 = *var_3F8;
                                    r8 = *(r8 + r24);
                                    r9 = sign_extend_64(*(int8_t *)(r8 + 0x57));
                                    sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), ") [", 0x3);
                                    r27 = sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), "] ", 0x2);
                                    r8 = *var_3F8;
                                    r8 = *(r8 + r24);
                                    r1 = r8 + 0x40;
                                    if (*(int32_t *)(r8 + 0x58) == 0x1) {
                                            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
                                    }
                                    else {
                                            sub_1009a56e4(r1);
                                    }
                                    r8 = var_3D9;
                                    r10 = var_3F0;
                                    r11 = stack[-1016];
                                    r9 = &var_3F0;
                                    if (sign_extend_64(r8) < 0x0) {
                                            if (!CPU_FLAGS & L) {
                                                    r1 = r9;
                                            }
                                            else {
                                                    r1 = r10;
                                            }
                                    }
                                    r2 = 0x2;
                                    if (CPU_FLAGS & L) {
                                            if (!CPU_FLAGS & L) {
                                                    r2 = r8;
                                            }
                                            else {
                                                    r2 = r11;
                                            }
                                    }
                                    sub_100063f9c(sub_100063f9c(r27, r1, r2), "\n", 0x1);
                                    if ((sign_extend_64(var_3D9) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_3F0);
                                    }
                            }
                            r25 = r26 + r25;
                            r28 = r23 + r28;
                            r22 = r22 + 0x1;
                            r9 = *(r19 + 0x4460);
                            r8 = *(r19 + 0x4458);
                            r24 = r24 + 0x10;
                    } while (r22 < (r9 - r8) / 0x10);
            }
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " header bytes and ", 0x12);
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " payload bytes", 0xe);
            r26 = var_408;
            r21 = var_400;
            sub_100063e7c(r26);
            r0 = sub_1009a4cc0(r20, 0x8, &var_3F0);
            if ((sign_extend_64(var_3D9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_3F0);
            }
            sub_100063e7c(r21);
            r21 = var_428;
            r0 = sub_1009a4cc0(r20, 0x8, &var_3F0);
            if ((sign_extend_64(var_3D9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_3F0);
            }
            sub_100063e7c(r21);
            r0 = sub_1009a4cc0(r20, 0x10, &var_3F0);
            if ((sign_extend_64(var_3D9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_3F0);
            }
            r8 = *qword_100e609a8;
            r22 = r8 + 0x18;
            r23 = r8 + 0x68;
            r25 = *qword_100e60998 + 0x10;
            r24 = r8 + 0x40;
            if ((sign_extend_64(var_369) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_380);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            r20 = *qword_100e607d8 + 0x8;
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
            if ((sign_extend_64(var_251) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_268);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
            r20 = var_410;
            if ((sign_extend_64(var_131) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_148);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    sub_10027c6f8(r29 - 0x88, r19 + 0x158);
    sub_1009a5840(r19, r19 + 0x4440, r29 - 0x88);
    r0 = var_70;
    if (r29 - 0x88 == r0) goto loc_1009a4974;

loc_1009a4964:
    if (r0 == 0x0) goto loc_1009a4980;

loc_1009a4968:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1009a497c;

loc_1009a497c:
    r0 = (r8)();
    goto loc_1009a4980;

loc_1009a4980:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009a4974:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1009a497c;

loc_1009a4250:
    r22 = *var_400;
    r23 = r9 - r22;
    r21 = SAR(r23, 0x4);
    r9 = r21 + 0x1;
    if (r9 >> 0x3c != 0x0) goto loc_1009a49bc;

loc_1009a426c:
    r8 = r8 - r22;
    r10 = SAR(r8, 0x3);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x7ffffffffffffff > r8 / 0x10) {
            if (!CPU_FLAGS & A) {
                    r20 = 0xfffffffffffffff;
            }
            else {
                    r20 = r9;
            }
    }
    if (r20 == 0x0) goto loc_1009a42a8;

loc_1009a4290:
    if (r20 >> 0x3c != 0x0) goto loc_1009a49d8;

loc_1009a4298:
    r24 = operator new();
    goto loc_1009a42ac;

loc_1009a42ac:
    r20 = r24 + r20 * 0x10;
    *(int128_t *)(r24 + r21 * 0x10) = r26;
    *(int128_t *)(0x8 + r24 + r21 * 0x10) = r27;
    r21 = 0x10 + r24 + r21 * 0x10;
    if (r23 >= 0x1) {
            memcpy(r24, r22, r23);
    }
    *(r19 + 0x4440) = r24;
    *(r19 + 0x4448) = r21;
    *(r19 + 0x4450) = r20;
    if (r22 != 0x0) {
            operator delete(r22);
    }
    goto loc_1009a42ec;

loc_1009a49d8:
    r0 = sub_1009a2054();
    return r0;

loc_1009a42a8:
    r24 = 0x0;
    goto loc_1009a42ac;

loc_1009a49bc:
    r0 = std::__1::__vector_base_common<true>::__throw_length_error();
    return r0;

loc_1009a417c:
    r22 = *var_400;
    r23 = r9 - r22;
    r21 = SAR(r23, 0x4);
    r9 = r21 + 0x1;
    if (r9 >> 0x3c != 0x0) goto loc_1009a49bc;

loc_1009a4198:
    r8 = r8 - r22;
    r10 = SAR(r8, 0x3);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x7ffffffffffffff > r8 / 0x10) {
            if (!CPU_FLAGS & A) {
                    r20 = 0xfffffffffffffff;
            }
            else {
                    r20 = r9;
            }
    }
    if (r20 == 0x0) goto loc_1009a41d4;

loc_1009a41bc:
    if (r20 >> 0x3c != 0x0) goto loc_1009a49d8;

loc_1009a41c4:
    r24 = operator new();
    goto loc_1009a41d8;

loc_1009a41d8:
    r20 = r24 + r20 * 0x10;
    *(int128_t *)(r24 + r21 * 0x10) = r26;
    *(int128_t *)(0x8 + r24 + r21 * 0x10) = r27;
    r21 = 0x10 + r24 + r21 * 0x10;
    if (r23 >= 0x1) {
            memcpy(r24, r22, r23);
    }
    *(r19 + 0x4440) = r24;
    *(r19 + 0x4448) = r21;
    *(r19 + 0x4450) = r20;
    if (r22 != 0x0) {
            operator delete(r22);
    }
    goto loc_1009a4218;

loc_1009a41d4:
    r24 = 0x0;
    goto loc_1009a41d8;

loc_1009a402c:
    sub_1009a5408(r19);
    r8 = var_1A0;
    r9 = var_198;
    var_1A0 = 0x0;
    r22 = var_2B8;
    var_2C0 = r8;
    var_2B8 = r9;
    if (r22 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    r10 = r9 - 0x1;
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r22 + 0x10))(r22);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    var_198 = 0x0;
    r22 = var_198;
    if (r22 == 0x0) goto loc_1009a40bc;

loc_1009a4090:
    do {
            asm { ldaxr      x9, [x8] };
            r10 = r9 - 0x1;
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_1009a40a0;

loc_1009a3f4c:
    r10 = *var_3F8;
    r27 = SAR(r8 - r10, 0x4);
    r8 = r27 + 0x1;
    r11 = r8 >> 0x3c;
    if (r11 != 0x0) goto loc_1009a49c4;

loc_1009a3f68:
    r9 = r9 - r10;
    r10 = SAR(r9, 0x3);
    if (r10 < r8) {
            if (!CPU_FLAGS & B) {
                    r8 = r10;
            }
            else {
                    r8 = r8;
            }
    }
    if (0x7ffffffffffffff > r9 / 0x10) {
            if (!CPU_FLAGS & A) {
                    r21 = 0xfffffffffffffff;
            }
            else {
                    r21 = r8;
            }
    }
    if (r21 == 0x0) goto loc_1009a3fa0;

loc_1009a3f8c:
    if (r21 >> 0x3c != 0x0) goto loc_1009a49d0;

loc_1009a3f94:
    r0 = operator new();
    goto loc_1009a3fa4;

loc_1009a3fa4:
    r8 = r0 + r27 * 0x10;
    var_198 = r8;
    var_190 = r8;
    r9 = var_2B8;
    *(int128_t *)r8 = r22;
    *(int128_t *)(r8 + 0x8) = r9;
    if (r9 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
            r8 = var_190;
    }
    sub_10052fe78(var_3F8, &var_1A0);
    r0 = sub_1009a5b60(&var_1A0);
    goto loc_1009a3ffc;

loc_1009a49d0:
    r0 = sub_1009a2054();
    return r0;

loc_1009a3fa0:
    r0 = 0x0;
    goto loc_1009a3fa4;

loc_1009a49c4:
    r0 = std::__1::__vector_base_common<true>::__throw_length_error();
    return r0;
}

_ZNSt3__19to_stringEy {
    r0 = pointer to std::__1::to_string();
    return r0;
}

glStencilOpSeparate {
    r0 = _glStencilOpSeparate_ptr(r0, r1, r2, r3);
    return r0;
}

object_setIvar {
    r0 = _object_setIvar_ptr(r0, r1, r2);
    return r0;
}
