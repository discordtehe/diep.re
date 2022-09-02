@implementation ANSFirebaseAnalyticsBridge

-(void *)initWithFirebaseAnalyticsClass:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0 && [r19 respondsToSelector:@selector(logInternalEventWithOrigin:name:parameters:), r3, r4] != 0x0) {
            [r20 setFirebaseAnalytics:r19];
    }
    r0 = r20;
    return r0;
}

-(void *)init {
    r0 = [self initWithFirebaseAnalyticsClass:NSClassFromString(@"FIRAnalytics")];
    return r0;
}

-(void)logEvent:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 firebaseAnalytics];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10012d7cc;

loc_10012d754:
    [ANSCustomEvent class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_10012d794;

loc_10012d788:
    r1 = @selector(logCustomEvent:);
    goto loc_10012d7c0;

loc_10012d7c0:
    objc_msgSend(r20, r1);
    goto loc_10012d7cc;

loc_10012d7cc:
    [r19 release];
    return;

loc_10012d794:
    r22 = @selector(isKindOfClass:);
    [ANSPredefinedEvent class];
    if (objc_msgSend(r19, r22) == 0x0) goto loc_10012d7cc;

loc_10012d7b8:
    r1 = @selector(logPredefinedEvent:);
    goto loc_10012d7c0;
}

-(void)logCustomEvent:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [self class];
    r24 = [[arg2 customEventName] retain];
    r20 = [[r20 sanitizeEventName:r24] retain];
    [r24 release];
    r22 = [self class];
    r24 = [[arg2 customAttributes] retain];
    [r23 release];
    r21 = [[r22 customParametersFromCustomAttributes:r24] retain];
    [r24 release];
    r0 = [ANSLogger sharedLogger];
    r0 = [r0 retain];
    [r0 log:@"Logging custom event to Firebase. <%@\n%@>"];
    [r0 release];
    r0 = [self firebaseAnalytics];
    r0 = [r0 retain];
    [r0 logInternalEventWithOrigin:@"fab" name:r20 parameters:r21];
    [r0 release];
    [r21 release];
    [r20 release];
    return;
}

-(void)logPredefinedEvent:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = [self class];
    r25 = [[arg2 predefinedEventName] retain];
    r0 = [arg2 predefinedAttributes];
    r0 = [r0 retain];
    r28 = [[r0 dictionaryRepresentation] retain];
    r20 = [[r20 firebaseEventNameForAnswersEventName:r25 predefinedAttributes:r28] retain];
    [r28 release];
    [r0 release];
    [r25 release];
    r25 = [self class];
    r0 = [arg2 predefinedAttributes];
    r0 = [r0 retain];
    r26 = [[r0 dictionaryRepresentation] retain];
    r22 = [[arg2 customAttributes] retain];
    [r21 release];
    r21 = [[r22 dictionaryRepresentation] retain];
    r23 = [[r25 firebaseEventParametersForPredefinedAttributes:r26 customAttributes:r21 firebaseEventName:r20] retain];
    [r21 release];
    [r22 release];
    [r26 release];
    [r0 release];
    r0 = [ANSLogger sharedLogger];
    r0 = [r0 retain];
    [r0 log:@"Logging predefined event to Firebase. <%@\n%@>"];
    [r0 release];
    [self logPredefinedEventToFirebaseWithEventName:r20 parameters:r23];
    [r23 release];
    [r20 release];
    return;
}

+(bool)shouldUseFailedEventName:(void *)arg2 predefinedAttributes:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self class] isFailableEvent:r21];
    [r21 release];
    if (r20 != 0x0) {
            r20 = [[r19 objectForKey:r2] retain];
            if (r20 != 0x0) {
                    r21 = [r20 boolValue] ^ 0x1;
            }
            else {
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)failedEventName:(void *)arg2 {
    r0 = [NSString stringWithFormat:@"%@%@"];
    return r0;
}

-(void)logPredefinedEventToFirebaseWithEventName:(void *)arg2 parameters:(void *)arg3 {
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
    r20 = self;
    r24 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [r20 firebaseAnalytics];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 logInternalEventWithOrigin:@"fab" name:r24 parameters:r19];
    [r0 release];
    r23 = [arg2 isEqualToString:r2];
    [r24 release];
    if (r23 != 0x0) {
            r0 = [r20 firebaseAnalytics];
            r0 = [r0 retain];
            [r0 logInternalEventWithOrigin:@"fab" name:@"post_score" parameters:r19];
            [r0 release];
    }
    [r19 release];
    return;
}

+(void *)firebaseEventNameForAnswersEventName:(void *)arg2 predefinedAttributes:(void *)arg3 {
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
    r19 = self;
    r20 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_A8 forKeys:&var_108 count:0xc];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:arg2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r20 release];
    r23 = [[r19 class] shouldUseFailedEventName:r21 predefinedAttributes:r25];
    [r25 release];
    if (r23 != 0x0) {
            r19 = [[[r19 class] failedEventName:r21] retain];
            [r21 release];
            r21 = r19;
    }
    var_48 = **___stack_chk_guard;
    [r22 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)firebaseEventParametersForPredefinedAttributes:(void *)arg2 customAttributes:(void *)arg3 firebaseEventName:(void *)arg4 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r24 = [[[self class] predefinedParametersFromPredefinedAttributes:r22 forFirebaseEventName:r20] retain];
    [r20 release];
    [r22 release];
    r20 = [[[self class] customParametersFromCustomAttributes:r21] retain];
    [r21 release];
    r19 = [[[self class] combinedParametersFromPredefinedParameters:r24 customParameters:r20] retain];
    [r20 release];
    [r24 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)combinedParametersFromPredefinedParameters:(void *)arg2 customParameters:(void *)arg3 {
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    r21 = [[NSMutableDictionary alloc] initWithDictionary:r20];
    [r20 release];
    r20 = [r21 retain];
    [arg3 enumerateKeysAndObjectsUsingBlock:&var_58];
    [r23 release];
    [r20 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)customParametersFromCustomAttributes:(void *)arg2 {
    r23 = [arg2 retain];
    r20 = [[[NSMutableDictionary dictionary] retain] retain];
    [arg2 enumerateKeysAndObjectsUsingBlock:&var_60];
    [r23 release];
    [r20 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)extractBaseParameterDictionaryFromPredefinedAttributes:(void *)arg2 withKeyMapping:(void *)arg3 {
    r20 = [arg2 retain];
    r23 = [arg3 retain];
    r21 = [[NSMutableDictionary dictionary] retain];
    var_40 = r20;
    r20 = [r20 retain];
    r21 = [r21 retain];
    [arg3 enumerateKeysAndObjectsUsingBlock:&var_60];
    [r23 release];
    r19 = r21;
    r21 = objc_retainAutoreleaseReturnValue(r21);
    [r19 release];
    [var_40 release];
    [r21 release];
    [r20 release];
    r0 = r21;
    return r0;
}

+(void *)transformedBaseParameters:(void *)arg2 forFirebaseEventName:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([@"add_to_cart" isEqualToString:r2] != 0x0) {
            r22 = [@(0x1) retain];
            [r19 setObject:r22 forKey:@"quantity"];
            [r22 release];
            r22 = [[r19 objectForKey:r2] retain];
            if (r22 != 0x0) {
                    [r19 setObject:r22 forKey:@"value"];
            }
            [r22 release];
    }
    else {
            if ([[r21 class] isFailableEvent:r20] != 0x0) {
                    [r19 removeObjectForKey:r2];
            }
    }
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)firebaseReservedKeys {
    if (*qword_1011d1e50 != -0x1) {
            dispatch_once(0x1011d1e50, 0x100e6c070);
    }
    r0 = *0x1011d1e48;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(bool)isFailableEvent:(void *)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    if (r19 != 0x0) {
            r22 = [r19 retain];
            r0 = [NSArray arrayWithObjects:&var_40 count:0x3];
            r0 = [r0 retain];
            r19 = [r0 containsObject:r2];
            [r22 release];
            [r0 release];
    }
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)sanitizeEventName:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && [r19 length] != 0x0) {
            r21 = @selector(length);
            r0 = [r20 sanitizeKeyName:r19];
            r29 = r29;
            r20 = [r0 retain];
            [r19 release];
            if (objc_msgSend(r20, r21) >= 0x29) {
                    r19 = [[r20 substringToIndex:0x28] retain];
                    [r20 release];
                    r20 = r19;
            }
            r20 = [r20 retain];
            r19 = r20;
    }
    else {
            r20 = [[NSString stringWithFormat:@"%@unnamed_event"] retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)sanitizeAttributeName:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] != 0x0) {
            r21 = @selector(length);
            r0 = [r20 sanitizeKeyName:r19];
            r29 = r29;
            r20 = [r0 retain];
            [r19 release];
            if (objc_msgSend(r20, r21) >= 0x29) {
                    r19 = [[r20 substringToIndex:0x28] retain];
                    [r20 release];
                    r20 = r19;
            }
            r20 = [r20 retain];
            r19 = r20;
    }
    else {
            r20 = [[NSString stringWithFormat:@"%@unnamed_parameter"] retain];
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)sanitizeKeyName:(void *)arg2 {
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
    r21 = self;
    r0 = [arg2 retain];
    r20 = r0;
    if ([r0 length] != 0x0) {
            [r20 length];
            r19 = [[r20 stringByReplacingOccurrencesOfString:@"[^\p{Alnum}_]+" withString:@"_" options:0x400 range:0x0] retain];
            [r20 release];
            r0 = @class(NSCharacterSet);
            r0 = [r0 letterCharacterSet];
            r0 = [r0 retain];
            r20 = [r0 mutableCopy];
            [r0 release];
            r0 = @class(NSCharacterSet);
            r0 = [r0 nonBaseCharacterSet];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 invertedSet];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            [r20 formIntersectionWithCharacterSet:r22];
            r0 = [r20 characterIsMember:[r19 characterAtIndex:0x0]];
            r23 = r19;
            if ((r0 & 0x1) == 0x0) {
                    r0 = [NSString stringWithFormat:@"%@%@"];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r19 release];
                    r19 = r23;
            }
            if (([r19 hasPrefix:r2] & 0x1) != 0x0 || ([r19 hasPrefix:r2] & 0x1) != 0x0 || [r19 hasPrefix:r2] != 0x0) {
                    r0 = [NSString stringWithFormat:@"%@%@"];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r19 release];
                    r19 = r23;
            }
            r0 = [r21 class];
            r0 = [r0 firebaseReservedKeys];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 containsObject:r2];
            [r0 release];
            if (r24 != 0x0) {
                    r23 = [[NSString stringWithFormat:@"%@%@"] retain];
                    [r19 release];
                    r19 = r23;
            }
            r19 = [r19 retain];
            [r22 release];
            [r20 release];
    }
    else {
            r19 = [r20 retain];
            r23 = r19;
    }
    [r19 release];
    [r19 autorelease];
    r0 = r23;
    return r0;
}

-(void *)firebaseAnalytics {
    r0 = self->_firebaseAnalytics;
    return r0;
}

+(void *)predefinedParametersFromPredefinedAttributes:(void *)arg2 forFirebaseEventName:(void *)arg3 {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x380;
    var_58 = **___stack_chk_guard;
    var_358 = [arg2 retain];
    var_350 = [arg3 retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_130 forKeys:&var_148 count:0x3];
    var_370 = [r0 retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&var_168 forKeys:&var_188 count:0x4];
    var_378 = [r0 retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&var_198 forKeys:&var_1A8 count:0x2];
    var_380 = [r0 retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&var_1B8 forKeys:&var_1C8 count:0x2];
    var_388 = [r0 retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&var_1D0 forKeys:&var_1D8 count:0x1];
    var_390 = [r0 retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&var_208 forKeys:&var_238 count:0x6];
    var_3B8 = [r0 retain];
    r20 = [[NSDictionary dictionaryWithObjects:&var_260 forKeys:&var_288 count:0x5] retain];
    r21 = [[NSDictionary dictionaryWithObjects:&var_2A0 forKeys:&var_2B8 count:0x3] retain];
    r22 = [[NSDictionary dictionaryWithObjects:&var_2D8 forKeys:&var_2F8 count:0x4] retain];
    r23 = [[NSDictionary dictionaryWithObjects:&stack[-784] forKeys:&var_308 count:0x1] retain];
    r25 = [[NSDictionary dictionaryWithObjects:&var_320 forKeys:&var_338 count:0x3] retain];
    r26 = [[NSDictionary dictionaryWithObjects:&var_340 forKeys:&var_348 count:0x1] retain];
    r24 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0xb8 forKeys:&var_118 count:0xc] retain];
    [r26 release];
    [r25 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [var_3B8 release];
    [var_390 release];
    [var_388 release];
    [var_380 release];
    [var_378 release];
    [var_370 release];
    r20 = [[r24 objectForKeyedSubscript:arg3] retain];
    r21 = [[[self class] extractBaseParameterDictionaryFromPredefinedAttributes:var_358 withKeyMapping:r20] retain];
    [var_358 release];
    r19 = [[[self class] transformedBaseParameters:r21 forFirebaseEventName:var_350] retain];
    [var_350 release];
    [r21 release];
    [r20 release];
    [r24 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setFirebaseAnalytics:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_firebaseAnalytics, arg2);
    return;
}

-(void *)firebaseReservedKeys {
    r0 = self->_firebaseReservedKeys;
    return r0;
}

-(void)setFirebaseReservedKeys:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_firebaseReservedKeys, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_firebaseReservedKeys, 0x0);
    objc_storeStrong((int64_t *)&self->_firebaseAnalytics, 0x0);
    return;
}

@end