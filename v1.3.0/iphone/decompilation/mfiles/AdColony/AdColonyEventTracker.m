@implementation AdColonyEventTracker

+(void *)privateInstance {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d2388 != -0x1) {
            dispatch_once(0x1011d2388, &var_28);
    }
    r0 = *0x1011d2390;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r19->_eventQueueIndex = 0x0;
            r0 = [NSMutableArray arrayWithCapacity:0xc8];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_eventQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

+(void)logEvent:(void *)arg2 withDictionary:(void *)arg3 {
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
    r19 = [arg2 retain];
    r0 = [NSMutableDictionary dictionaryWithDictionary:r2];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r19 != 0x0) {
            r21 = [[AdColony sharedInstance] retain];
            r0 = [NSTimeZone localTimeZone];
            r0 = [r0 retain];
            [[r0 abbreviation] retain];
            [r20 setObject:r2 forKeyedSubscript:r3];
            [r26 release];
            [r24 release];
            r24 = @class(NSNumber);
            r0 = [NSDate date];
            r0 = [r0 retain];
            [r0 timeIntervalSince1970];
            asm { fcvtzs     x2, d0 };
            [[r24 numberWithInteger:r2] retain];
            objc_msgSend(r20, r25);
            [r24 release];
            [r26 release];
            [[r21 pieKey] retain];
            objc_msgSend(r20, r25);
            [r24 release];
            r0 = *(r27 + 0xf98);
            r0 = [r0 new];
            r24 = r0;
            objc_msgSend(r0, r25);
            objc_msgSend(r24, r25);
            r0 = [AdColonyEventTracker privateInstance];
            r29 = r29;
            r25 = [r0 retain];
            if ([r21 configured] != 0x0) {
                    r0 = [r21 pieKey];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 != 0x0) {
                            r26 = [[ADCController sharedController] retain];
                            r23 = [[NSDictionary dictionaryWithDictionary:r2] retain];
                            r27 = [[ADCUtil JSONStringFromJSONObject:r23] retain];
                            [r23 release];
                            r22 = [[AdColony sharedInstance] retain];
                            r23 = [r26 retain];
                            var_58 = r27;
                            r27 = [r27 retain];
                            [r22 performBlockOnWorkerThread:&var_80 mode:0x1];
                            [r22 release];
                            [var_58 release];
                            [r26 release];
                            [r27 release];
                            [r23 release];
                    }
                    else {
                            r8 = [r25->_eventQueue count];
                            r0 = r25->_eventQueue;
                            if (r8 <= 0xc7) {
                                    [r0 addObject:r2];
                            }
                            else {
                                    [r0 replaceObjectAtIndex:r25->_eventQueueIndex withObject:r24];
                                    r8 = sign_extend_64(*(int32_t *)ivar_offset(_eventQueueIndex));
                                    r9 = *(r25 + r8);
                                    if (r9 > 0xc6) {
                                            asm { csinc      x9, xzr, x9, hi };
                                    }
                                    *(r25 + r8) = r9;
                            }
                    }
            }
            else {
                    r8 = [r25->_eventQueue count];
                    r0 = r25->_eventQueue;
                    if (r8 <= 0xc7) {
                            [r0 addObject:r2];
                    }
                    else {
                            [r0 replaceObjectAtIndex:r25->_eventQueueIndex withObject:r24];
                            r8 = sign_extend_64(*(int32_t *)ivar_offset(_eventQueueIndex));
                            r9 = *(r25 + r8);
                            if (r9 > 0xc6) {
                                    asm { csinc      x9, xzr, x9, hi };
                            }
                            *(r25 + r8) = r9;
                    }
            }
            [r25 release];
            [r24 release];
            [r21 release];
    }
    else {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Tried to log an event with an invalid name string. Event will not be sent."];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)logQueuedEvents {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[AdColonyEventTracker privateInstance] retain];
    r20 = [[ADCController sharedController] retain];
    r0 = [AdColony sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 configured] != 0x0) {
            r0 = [r21 pieKey];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r22 = [[AdColony sharedInstance] retain];
                    var_40 = [r19 retain];
                    var_38 = [r20 retain];
                    [r22 performBlockOnWorkerThread:&var_60 mode:0x2];
                    [r22 release];
                    [var_38 release];
                    [var_40 release];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logPaymentInfoAdded {
    r20 = [NSMutableDictionary new];
    [self logEvent:@"payment_info_added" withDictionary:r20];
    [r20 release];
    return;
}

+(void)logAchievementUnlocked:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [NSMutableDictionary new];
    r20 = r0;
    [r0 setObject:r19 forKeyedSubscript:@"description"];
    if (r19 != 0x0 && [r19 length] >= 0x201) {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Event description for logAchievementUnlocked cannot exceed 512 characters. Event will not be sent."];
    }
    else {
            [r21 logEvent:@"achievement_unlocked" withDictionary:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)logLevelAchieved:(long long)arg2 {
    r21 = [NSMutableDictionary new];
    r19 = [[NSNumber numberWithInteger:arg2] retain];
    [r21 setObject:r19 forKeyedSubscript:@"level"];
    [r19 release];
    [self logEvent:@"level_achieved" withDictionary:r21];
    [r21 release];
    return;
}

+(void)logTransactionWithID:(void *)arg2 quantity:(long long)arg3 price:(void *)arg4 currencyCode:(void *)arg5 receipt:(void *)arg6 store:(void *)arg7 description:(void *)arg8 {
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
    var_70 = self;
    r22 = [arg2 retain];
    var_68 = [arg4 retain];
    r19 = [arg5 retain];
    var_60 = [arg6 retain];
    var_58 = [arg7 retain];
    r20 = [arg8 retain];
    r0 = [NSMutableDictionary new];
    r21 = r0;
    [r0 setObject:arg2 forKeyedSubscript:@"item_id"];
    [r22 release];
    r22 = [[NSNumber numberWithInteger:arg3] retain];
    [r21 setObject:r22 forKeyedSubscript:@"quantity"];
    [r22 release];
    [r21 setObject:arg4 forKeyedSubscript:@"price"];
    [var_68 release];
    [r21 setObject:r19 forKeyedSubscript:@"currency_code"];
    [r21 setObject:arg6 forKeyedSubscript:@"receipt"];
    [var_60 release];
    [r21 setObject:arg7 forKeyedSubscript:@"store"];
    [var_58 release];
    [r21 setObject:r20 forKeyedSubscript:@"description"];
    if (r20 != 0x0 && [r20 length] >= 0x201) {
            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
    }
    else {
            if (r19 != 0x0 && [r19 length] != 0x3) {
                    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
            }
            else {
                    [var_70 logEvent:@"transaction" withDictionary:r21];
            }
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)logCreditsSpentWithName:(void *)arg2 quantity:(long long)arg3 value:(void *)arg4 currencyCode:(void *)arg5 {
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
    r21 = self;
    r26 = [arg2 retain];
    r23 = [arg4 retain];
    r19 = [arg5 retain];
    r0 = [NSMutableDictionary new];
    r20 = r0;
    [r0 setObject:arg2 forKeyedSubscript:@"name"];
    [r26 release];
    r24 = [[NSNumber numberWithInteger:arg3] retain];
    [r20 setObject:r24 forKeyedSubscript:@"quantity"];
    [r24 release];
    [r20 setObject:arg4 forKeyedSubscript:@"value"];
    [r23 release];
    [r20 setObject:r19 forKeyedSubscript:@"currency_code"];
    if (r19 != 0x0 && [r19 length] != 0x3) {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Event logCreditsSpentWithName currency code is specified, but a three-letter ISO 4217 code, (e.g.: 'USD'). Event will not be sent."];
    }
    else {
            [r21 logEvent:@"credits_spent" withDictionary:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)logAppRated {
    r20 = [NSMutableDictionary new];
    [self logEvent:@"app_rated" withDictionary:r20];
    [r20 release];
    return;
}

+(void)logTutorialCompleted {
    r20 = [NSMutableDictionary new];
    [self logEvent:@"tutorial_completed" withDictionary:r20];
    [r20 release];
    return;
}

+(void)logActivated {
    r20 = [NSMutableDictionary new];
    [self logEvent:@"activated" withDictionary:r20];
    [r20 release];
    return;
}

+(void)logSocialSharingEventWithNetwork:(void *)arg2 description:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSMutableDictionary new];
    r20 = r0;
    [r0 setObject:arg2 forKeyedSubscript:@"network"];
    [r23 release];
    [r20 setObject:r19 forKeyedSubscript:@"description"];
    if (r19 != 0x0 && [r19 length] >= 0x201) {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Event description for logSocialSharingEventWithNetwork cannot exceed 512 characters. Event will not be sent."];
    }
    else {
            [r21 logEvent:@"social_sharing_event" withDictionary:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)logRegistrationCompletedWithMethod:(void *)arg2 description:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSMutableDictionary new];
    r20 = r0;
    [r0 setObject:arg2 forKeyedSubscript:@"method"];
    [r23 release];
    [r20 setObject:r19 forKeyedSubscript:@"description"];
    if (r19 != 0x0 && [r19 length] >= 0x201) {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Event description for logRegistrationCompletedWithMethod cannot exceed 512 characters. Event will not be sent."];
    }
    else {
            [r21 logEvent:@"registration_completed" withDictionary:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)logAddToCartWithID:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [NSMutableDictionary new];
    [r0 setObject:arg2 forKeyedSubscript:@"item_id"];
    [r23 release];
    [self logEvent:@"add_to_cart" withDictionary:r0];
    [r0 release];
    return;
}

+(void)logCustomEvent:(void *)arg2 description:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [NSMutableDictionary new];
    r20 = r0;
    [r0 setObject:arg2 forKeyedSubscript:@"event"];
    [r23 release];
    [r20 setObject:r19 forKeyedSubscript:@"description"];
    if (r19 != 0x0 && [r19 length] >= 0x201) {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"Event description for logCustomEvent cannot exceed 512 characters. Event will not be sent."];
    }
    else {
            [r21 logEvent:@"custom_event" withDictionary:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)logAddToWishlistWithID:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [NSMutableDictionary new];
    [r0 setObject:arg2 forKeyedSubscript:@"item_id"];
    [r23 release];
    [self logEvent:@"add_to_wishlist" withDictionary:r0];
    [r0 release];
    return;
}

+(void)logCheckoutInitiated {
    r20 = [NSMutableDictionary new];
    [self logEvent:@"checkout_initiated" withDictionary:r20];
    [r20 release];
    return;
}

+(void)logInvite {
    r20 = [NSMutableDictionary new];
    [self logEvent:@"invite" withDictionary:r20];
    [r20 release];
    return;
}

+(void)logContentViewWithID:(void *)arg2 contentType:(void *)arg3 {
    r22 = [arg2 retain];
    r25 = [arg3 retain];
    r0 = [NSMutableDictionary new];
    [r0 setObject:arg2 forKeyedSubscript:@"content_id"];
    [r22 release];
    [r0 setObject:arg3 forKeyedSubscript:@"content_type"];
    [r25 release];
    [self logEvent:@"content_view" withDictionary:r0];
    [r0 release];
    return;
}

+(void)logLoginWithMethod:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [NSMutableDictionary new];
    [r0 setObject:arg2 forKeyedSubscript:@"method"];
    [r23 release];
    [self logEvent:@"login" withDictionary:r0];
    [r0 release];
    return;
}

+(void)logReservation {
    r20 = [NSMutableDictionary new];
    [self logEvent:@"reservation" withDictionary:r20];
    [r20 release];
    return;
}

+(void)logSearchWithQuery:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [NSMutableDictionary new];
    r20 = r0;
    [r0 setObject:r19 forKeyedSubscript:@"search_string"];
    if (r19 != 0x0 && [r19 length] >= 0x201) {
            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x1 level:0x1 withFormat:@"logSearchWithQuery queryString cannot exceed 512 characters. Event will not be sent."];
    }
    else {
            [r21 logEvent:@"search" withDictionary:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_eventQueue, 0x0);
    return;
}

@end