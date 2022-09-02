@implementation APMConditionalUserPropertyController

-(void *)processEventOnWorkerQueue:(void *)arg2 {
    r31 = r31 - 0x1e0;
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
    r21 = self;
    r19 = [arg2 retain];
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"processEventOnWorkerQueue:"];
    if (r19 != 0x0) {
            var_100 = &var_108;
            var_130 = &var_138;
            var_110 = [[NSMutableArray alloc] init];
            r0 = [APMMeasurement sharedInstance];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 database];
            r29 = r29;
            r23 = [r0 retain];
            var_150 = [r19 retain];
            r21 = [r23 performTransaction:&var_178];
            [r23 release];
            [r22 release];
            if ((r21 & 0x1) != 0x0) {
                    var_1A8 = q0;
                    r0 = *(var_130 + 0x28);
                    r0 = [r0 retain];
                    r21 = r0;
                    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    if (r23 != 0x0) {
                            r22 = @selector(countByEnumeratingWithState:objects:count:);
                            r28 = *var_1A8;
                            var_1C0 = r22;
                            do {
                                    r22 = 0x0;
                                    do {
                                            if (*var_1A8 != r28) {
                                                    objc_enumerationMutation(r21);
                                            }
                                            r0 = [APMMeasurement sharedInstance];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            [r0 writeEventOnWorkerQueue:r2];
                                            [r26 release];
                                            r22 = r22 + 0x1;
                                    } while (r22 < r23);
                                    r23 = objc_msgSend(r21, var_1C0);
                            } while (r23 != 0x0);
                    }
                    [r21 release];
                    r20 = [*(var_100 + 0x28) retain];
            }
            else {
                    r20 = 0x0;
            }
            [var_150 release];
            _Block_object_dispose(&var_138, 0x8);
            [var_110 release];
            _Block_object_dispose(&var_108, 0x8);
            [0x0 release];
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x2710 message:@"Unable to process event for conditional user property. Event is nil"];
            [r0 release];
            r20 = 0x0;
    }
    var_58 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)sharedInstance {
    if (*qword_1011d1fd0 != -0x1) {
            dispatch_once(0x1011d1fd0, 0x100e6e7e0);
    }
    r0 = *0x1011d1fc8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)removeTimedOutCUPWithTimedOutEvents:(void * *)arg2 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x190;
    r23 = arg2;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"removeTimedOutCUPWithTimedOutEvents:"];
    r0 = [APMMeasurement sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 database];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 timedOutConditionalUserPropertiesWithError:&saved_fp - 0xf0];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r20 = [0x0 retain];
    [r21 release];
    [r19 release];
    if (r22 == 0x0) {
            asm { ccmp       x20, #0x0, #0x4, eq };
    }
    if (CPU_FLAGS & NE) goto loc_100176884;

loc_10017646c:
    var_190 = [[NSMutableArray alloc] init];
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1D8 = r1;
    var_1D0 = r0;
    r0 = objc_msgSend(r0, r1);
    var_180 = r0;
    if (r0 == 0x0) goto loc_10017685c;

loc_1001764d0:
    var_1E8 = r23;
    var_1E0 = r22;
    goto loc_10017650c;

loc_10017650c:
    r19 = 0x0;
    r24 = @selector(name);
    goto loc_100176564;

loc_100176564:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_1D0);
    }
    r23 = *(0x0 + r19 * 0x8);
    r21 = [objc_msgSend(r23, r24) retain];
    r26 = [sub_100197fe0() retain];
    [r21 release];
    r0 = @class(APMMeasurement);
    r0 = [r0 monitor];
    r0 = [r0 retain];
    var_140 = r26;
    [r0 logWithLevel:r2 messageCode:r3 message:r4 context:r5];
    [r21 release];
    r0 = @class(APMMeasurement);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r27 = r0;
    r28 = [[r0 database] retain];
    r0 = objc_msgSend(r23, r24);
    r29 = r29;
    r26 = [r0 retain];
    r21 = [r28 deleteConditionalUserPropertyWithName:r2 error:r3];
    r25 = [r20 retain];
    [r20 release];
    [r26 release];
    [r28 release];
    [r27 release];
    var_148 = r25;
    if (r25 == 0x0 || r21 != 0x0) goto loc_100176698;

loc_1001768d4:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x7 messageCode:0x2713 message:@"Unable to delete timed out condition user property. Name, error" context:var_140 context:var_148];
    [r0 release];
    [var_140 release];
    [var_1D0 release];
    r19 = 0x0;
    r20 = var_148;
    r22 = var_1E0;
    goto loc_10017693c;

loc_10017693c:
    [var_190 release];
    goto loc_100176944;

loc_100176944:
    var_68 = **___stack_chk_guard;
    [r22 release];
    [r20 release];
    if (**___stack_chk_guard == var_68) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100176698:
    r21 = @selector(timedOutEvent);
    r0 = objc_msgSend(r23, r21);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_1A0 = @selector(date);
            var_1A8 = @selector(timeIntervalSince1970);
            var_1C0 = @selector(addObject:);
            [APMEvent alloc];
            [[r23 origin] retain];
            r0 = objc_msgSend(r23, r21);
            r0 = [r0 retain];
            [objc_msgSend(r0, r24) retain];
            r0 = objc_msgSend(@class(NSDate), var_1A0);
            r0 = [r0 retain];
            objc_msgSend(r0, var_1A8);
            r0 = [r23 timedOutEvent];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 parameters];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r24;
            r24 = r0;
            v0 = v0;
            r0 = r22;
            r22 = r28;
            [r0 initWithOrigin:r2 isPublic:r3 name:r4 timestamp:r5 previousTimestamp:r6 parameters:r7];
            r0 = r24;
            r24 = r20;
            [r0 release];
            [r23 release];
            [r26 release];
            [r21 release];
            [r27 release];
            [r22 release];
            objc_msgSend(var_190, var_1C0);
            [r28 release];
    }
    [var_140 release];
    r19 = r19 + 0x1;
    r23 = var_148;
    r20 = r23;
    if (r19 < var_180) goto loc_100176564;

loc_100176808:
    r0 = objc_msgSend(var_1D0, var_1D8);
    r20 = r23;
    var_180 = r0;
    if (r0 != 0x0) goto loc_10017650c;

loc_100176854:
    r20 = r23;
    r23 = var_1E8;
    r22 = var_1E0;
    goto loc_10017685c;

loc_10017685c:
    [var_1D0 release];
    *r23 = [[var_190 copy] autorelease];
    r19 = 0x1;
    goto loc_10017693c;

loc_100176884:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x2711 message:@"Unable to fetch timed out conditional user properties. Error" context:r20];
    [r0 release];
    r19 = 0x0;
    goto loc_100176944;
}

-(void)setConditionalUserProperty:(void *)arg2 forName:(void *)arg3 {
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
    if (r19 != 0x0) {
            r0 = [r19 copy];
            r21 = r0;
            [r0 setName:r20];
            if (sub_10017790c() != 0x0) {
                    r0 = [NSDate date];
                    r0 = [r0 retain];
                    [r0 timeIntervalSince1970];
                    [r21 setCreationTimestamp:r2];
                    [r0 release];
                    objc_initWeak(&stack[-72], r22);
                    r0 = [APMMeasurement sharedInstance];
                    r0 = [r0 retain];
                    [[r0 scheduler] retain];
                    var_48 = [r21 retain];
                    objc_copyWeak(&var_68 + 0x28, &stack[-72]);
                    [r24 scheduleOnWorkerQueueBlockID:@"APMConditionalUserPropertyController:93" block:&var_68];
                    [r24 release];
                    [r22 release];
                    objc_destroyWeak(&var_68 + 0x28);
                    [var_48 release];
                    objc_destroyWeak(&stack[-72]);
            }
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            r21 = r0;
            [r0 logWithLevel:0x1 messageCode:0x2afa message:@"Unable to set conditional user property. Conditional user property is nil"];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(bool)removeExpiredCUPWithExpiredEvents:(void * *)arg2 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x1a0;
    r22 = arg2;
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"removeExpiredCUPWithExpiredEvents:"];
    r0 = [APMMeasurement sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 database];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 expiredConditionalUserPropertiesWithError:&saved_fp - 0xf0];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r28 = [0x0 retain];
    [r20 release];
    [r19 release];
    if (r21 == 0x0) {
            asm { ccmp       x28, #0x0, #0x4, eq };
    }
    if (CPU_FLAGS & NE) goto loc_100176f54;

loc_100176a74:
    r20 = [[NSMutableArray alloc] init];
    r0 = [r21 retain];
    var_198 = r0;
    r0 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_180 = r0;
    if (r0 == 0x0) goto loc_100176f38;

loc_100176adc:
    var_1F0 = r22;
    var_1E8 = @selector(countByEnumeratingWithState:objects:count:);
    var_1A0 = r20;
    var_1E0 = r21;
    r26 = r28;
    goto loc_100176b2c;

loc_100176b2c:
    r22 = 0x0;
    r23 = @selector(expiredEvent);
    goto loc_100176b88;

loc_100176b88:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_198);
    }
    r25 = *(0x0 + r22 * 0x8);
    r19 = [[r25 name] retain];
    r24 = [sub_100197fe0() retain];
    [r19 release];
    r19 = [[APMMeasurement monitor] retain];
    r20 = r23;
    [objc_msgSend(r25, r23) retain];
    var_160 = r24;
    [r19 logWithLevel:r2 messageCode:r3 message:r4 context:r5 context:r6];
    [r23 release];
    [r19 release];
    r0 = @class(APMMeasurement);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r27 = [[r0 database] retain];
    r0 = [r25 name];
    r29 = r29;
    r24 = [r0 retain];
    r19 = [r27 deleteUserAttributeWithName:r2 error:r3];
    r28 = [r26 retain];
    [r26 release];
    [r24 release];
    [r27 release];
    [r23 release];
    if (r28 == 0x0 || r19 != 0x0) goto loc_100176ce4;

loc_100176fa0:
    r19 = [[APMMeasurement monitor] retain];
    r20 = [[r25 origin] retain];
    r22 = var_160;
    [r19 logWithLevel:0x1 messageCode:0x2716 message:@"Unable to remove conditional user property. Failed to delete the user property. Name, origin, error" context:r22 context:r20 context:r28];
    [r20 release];
    [r19 release];
    goto loc_100177058;

loc_100177058:
    r21 = var_1E0;
    [r22 release];
    [var_198 release];
    r19 = 0x0;
    r20 = var_1A0;
    goto loc_100177074;

loc_100177074:
    [r20 release];
    goto loc_10017707c;

loc_10017707c:
    var_68 = **___stack_chk_guard;
    [r21 release];
    [r28 release];
    if (**___stack_chk_guard == var_68) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100176ce4:
    r0 = @class(APMMeasurement);
    r0 = [r0 sharedInstance];
    r0 = [r0 retain];
    r23 = r0;
    r24 = [[r0 database] retain];
    r0 = [r25 name];
    r29 = r29;
    r27 = [r0 retain];
    r19 = [r24 deleteConditionalUserPropertyWithName:r2 error:r3];
    r26 = [r28 retain];
    [r28 release];
    [r27 release];
    [r24 release];
    [r23 release];
    if (r26 == 0x0 || r19 != 0x0) goto loc_100176d74;

loc_100177010:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r22 = var_160;
    [r0 logWithLevel:r2 messageCode:r3 message:r4 context:r5 context:r6];
    [r19 release];
    r28 = r26;
    goto loc_100177058;

loc_100176d74:
    r23 = r20;
    r0 = objc_msgSend(r25, r23);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_1D8 = @selector(addObject:);
            var_1B8 = @selector(date);
            var_1C0 = @selector(timeIntervalSince1970);
            [APMEvent alloc];
            [[r25 origin] retain];
            r0 = objc_msgSend(r25, r23);
            r0 = [r0 retain];
            [[r0 name] retain];
            r0 = objc_msgSend(@class(NSDate), var_1B8);
            r0 = [r0 retain];
            objc_msgSend(r0, var_1C0);
            r0 = objc_msgSend(r25, r20);
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 parameters];
            r29 = r29;
            r21 = [r0 retain];
            v0 = v0;
            [r27 initWithOrigin:r2 isPublic:r3 name:r4 timestamp:r5 previousTimestamp:r6 parameters:r7];
            [r21 release];
            [r25 release];
            [r24 release];
            r0 = r23;
            r23 = r20;
            [r0 release];
            [r19 release];
            [r28 release];
            objc_msgSend(var_1A0, var_1D8);
            [r27 release];
    }
    [var_160 release];
    r22 = r22 + 0x1;
    if (r22 < var_180) goto loc_100176b88;

loc_100176ed4:
    r0 = objc_msgSend(var_198, var_1E8);
    var_180 = r0;
    if (r0 != 0x0) goto loc_100176b2c;

loc_100176f28:
    r28 = r26;
    r21 = var_1E0;
    r20 = var_1A0;
    r22 = var_1F0;
    goto loc_100176f38;

loc_100176f38:
    [var_198 release];
    *r22 = objc_retainAutorelease(r20);
    r19 = 0x1;
    goto loc_100177074;

loc_100176f54:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x2714 message:@"Unable to fetch expired conditional user properties. Error" context:r28];
    [r0 release];
    r19 = 0x0;
    goto loc_10017707c;
}

-(void)clearConditionalUserPropertyWithClearEvent:(void *)arg2 forName:(void *)arg3 {
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
    if ([APMDataTypeValidator isValidConditionalUserPropertyName:r20 failureCode:0x0] != 0x0) {
            r0 = [APMConditionalUserProperty alloc];
            r0 = [r0 init];
            [r0 setName:r20];
            [r0 setExpiredEvent:r19];
            objc_initWeak(&stack[-72], r22);
            r0 = [APMMeasurement sharedInstance];
            r0 = [r0 retain];
            [[r0 scheduler] retain];
            objc_copyWeak(&var_68 + 0x28, &stack[-72]);
            r21 = [r21 retain];
            [r24 scheduleOnWorkerQueueBlockID:@"APMConditionalUserPropertyController:118" block:&var_68];
            [r24 release];
            [r22 release];
            [r21 release];
            objc_destroyWeak(&var_68 + 0x28);
            objc_destroyWeak(&stack[-72]);
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)updateConditionalUserPropertiesWithEventNameOnWorkerQueue:(void *)arg2 {
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
    r31 = r31 + 0xffffffffffffff90 - 0x1d0;
    r21 = [arg2 retain];
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"updateConditionalUserPropertiesBasedOnEventNameOnWorkerQueue:"];
    r0 = [APMMeasurement sharedInstance];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 database];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 triggeredConditionalUserPropertiesWithEventName:r21 error:&saved_fp - 0xf0];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r23 = [0x0 retain];
    [r20 release];
    [r19 release];
    if (r22 == 0x0) {
            asm { ccmp       x23, #0x0, #0x4, eq };
    }
    if (CPU_FLAGS & NE) goto loc_100177794;

loc_1001771b8:
    var_220 = r23;
    var_210 = r21;
    var_1E8 = [[NSMutableArray alloc] init];
    var_218 = r22;
    r0 = [r22 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_208 = r0;
    var_228 = r1;
    r0 = objc_msgSend(r0, r1);
    var_1D0 = r0;
    if (r0 == 0x0) goto loc_100177778;

loc_10017722c:
    r27 = @selector(sharedInstance);
    var_1D8 = r27;
    goto loc_100177278;

loc_100177278:
    r25 = 0x0;
    goto loc_1001772f8;

loc_1001772f8:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_208);
    }
    var_190 = @selector(timeIntervalSince1970);
    var_198 = @selector(value);
    var_188 = @selector(date);
    r28 = *(0x0 + r25 * 0x8);
    r20 = [[r28 name] retain];
    var_148 = [sub_100197fe0() retain];
    [r20 release];
    r0 = objc_msgSend(@class(NSDate), var_188);
    r0 = [r0 retain];
    objc_msgSend(r0, var_190);
    v8 = v0;
    [r20 release];
    r20 = [APMUserAttribute alloc];
    r22 = [[r28 origin] retain];
    r23 = [[r28 name] retain];
    r21 = var_198;
    r26 = [objc_msgSend(r28, r21) retain];
    r24 = [r20 initWithOrigin:r2 name:r3 value:r4 lastSetTimestamp:r5];
    [r26 release];
    [r23 release];
    [r22 release];
    r0 = @class(APMMeasurement);
    r0 = objc_msgSend(r0, r27);
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 database];
    r0 = [r0 retain];
    var_158 = r24;
    r24 = [r0 updateUserAttribute:r2 error:r3];
    r26 = [0x0 retain];
    [r0 release];
    [r22 release];
    r22 = [[APMMeasurement monitor] retain];
    r0 = [r28 origin];
    r29 = r29;
    r23 = [r0 retain];
    if ((r24 & 0x1) != 0x0) {
            r0 = objc_msgSend(r28, r21);
            r29 = r29;
            [r0 retain];
            [r22 logWithLevel:r2 messageCode:r3 message:r4 context:r5 context:r6 context:r7];
            [r24 release];
    }
    else {
            [r22 logWithLevel:r2 messageCode:r3 message:r4 context:r5 context:r6 context:r7];
    }
    [r23 release];
    [r22 release];
    r20 = @selector(triggeredEvent);
    r0 = objc_msgSend(r28, r20);
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            var_200 = @selector(addObject:);
            r23 = [APMEvent alloc];
            r22 = [[r28 origin] retain];
            r0 = objc_msgSend(r28, r20);
            r0 = [r0 retain];
            r24 = r0;
            r19 = [[r0 name] retain];
            r0 = objc_msgSend(r28, r20);
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 parameters];
            r29 = r29;
            r27 = [r0 retain];
            [r23 initWithOrigin:r2 isPublic:r3 name:r4 timestamp:r5 previousTimestamp:r6 parameters:r7];
            [r27 release];
            [r21 release];
            [r19 release];
            [r24 release];
            [r22 release];
            objc_msgSend(var_1E8, var_200);
            [r23 release];
    }
    [r28 setActive:r2];
    v0 = v8;
    [r28 setTriggeredTimestamp:r2];
    r27 = var_1D8;
    r0 = objc_msgSend(@class(APMMeasurement), r27);
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 database];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 updateConditionalUserProperty:r2 error:r3];
    r22 = [r26 retain];
    [r26 release];
    [r0 release];
    [r19 release];
    if (r22 == 0x0 || r23 != 0x0) goto loc_1001776f0;

loc_100177808:
    r19 = [[APMMeasurement monitor] retain];
    [[r28 origin] retain];
    [r19 logWithLevel:r2 messageCode:r3 message:r4 context:r5 context:r6 context:r7];
    [r21 release];
    [r19 release];
    [r22 release];
    [var_158 release];
    [var_148 release];
    [var_208 release];
    r19 = 0x0;
    r20 = var_1E8;
    goto loc_1001778a0;

loc_1001778a0:
    [r20 release];
    r22 = var_218;
    r21 = var_210;
    r23 = var_220;
    goto loc_1001778b0;

loc_1001778b0:
    var_68 = **___stack_chk_guard;
    [r22 release];
    [r23 release];
    [r21 release];
    if (**___stack_chk_guard == var_68) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001776f0:
    [r22 release];
    [var_158 release];
    [var_148 release];
    r25 = r25 + 0x1;
    if (r25 < var_1D0) goto loc_1001772f8;

loc_100177718:
    r0 = objc_msgSend(var_208, var_228);
    var_1D0 = r0;
    if (r0 != 0x0) goto loc_100177278;

loc_100177778:
    [var_208 release];
    r20 = var_1E8;
    r19 = [r20 retain];
    goto loc_1001778a0;

loc_100177794:
    r19 = [[APMMeasurement monitor] retain];
    r20 = [sub_100197c2c() retain];
    [r19 logWithLevel:0x1 messageCode:0x2718 message:@"Unable to fetch triggering conditional user properties. Event name, error" context:r20 context:r23];
    [r20 release];
    [r19 release];
    r19 = 0x0;
    goto loc_1001778b0;
}

-(void *)conditionalUserPropertiesWithNamePrefix:(void *)arg2 filterByOrigin:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0) goto loc_10017821c;

loc_1001781ec:
    [NSString class];
    if (([r19 isKindOfClass:r2] & 0x1) == 0x0) goto loc_1001783a8;

loc_10017821c:
    if (r20 == 0x0) goto loc_100178250;

loc_100178220:
    [NSString class];
    if (([r20 isKindOfClass:r2] & 0x1) == 0x0) goto loc_100178400;

loc_100178250:
    var_A8 = &var_B0;
    r24 = [dispatch_semaphore_create(0x0) retain];
    var_D8 = r24;
    r22 = [r19 retain];
    var_D0 = r22;
    r23 = [r20 retain];
    var_C8 = r23;
    r0 = objc_retainBlock(&var_F8);
    r21 = r0;
    r0 = [APMMeasurement sharedInstance];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 scheduler];
    r29 = r29;
    r0 = [r0 retain];
    [r0 scheduleOnWorkerQueueBlockID:@"APMConditionalUserPropertyController:168" block:r21];
    [r0 release];
    [r25 release];
    dispatch_semaphore_wait(r24, dispatch_time(0x0, 0x6fc23ac00));
    [r24 release];
    r0 = *(&var_80 + 0x28);
    if (r0 != 0x0) {
            r22 = [r0 retain];
    }
    else {
            if (*(var_A8 + 0x28) != 0x0) {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x1 messageCode:0x2afe message:@"Unable to query for conditional user properties. Name prefix, origin, error" context:r22 context:r23 context:*(var_A8 + 0x28)];
                    [r0 release];
                    r22 = 0x0;
            }
            else {
                    r22 = [r0 retain];
            }
    }
    [r21 release];
    [var_C8 release];
    [var_D0 release];
    [var_D8 release];
    _Block_object_dispose(&var_B0, 0x8);
    [0x0 release];
    _Block_object_dispose(&var_80, 0x8);
    [0x0 release];
    goto loc_100178520;

loc_100178520:
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_100178400:
    r22 = [[APMMeasurement monitor] retain];
    r21 = [NSStringFromClass([r20 class]) retain];
    goto loc_100178454;

loc_100178454:
    [r22 logWithLevel:r2 messageCode:r3 message:r4 context:r5];
    [r21 release];
    [r22 release];
    r22 = 0x0;
    goto loc_100178520;

loc_1001783a8:
    r22 = [[APMMeasurement monitor] retain];
    r21 = [NSStringFromClass([r19 class]) retain];
    goto loc_100178454;
}

-(void)setConditionalUserPropertyOnWorkerQueue:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"setConditionalUserPropertyOnWorkerQueue"];
    r0 = [APMMeasurement sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isEnabled];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_100178940;

loc_100178818:
    if (r19 == 0x0) goto loc_100178978;

loc_10017881c:
    var_58 = &var_60;
    r0 = [APMMeasurement sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 database];
    r29 = r29;
    r22 = [r0 retain];
    var_70 = [r19 retain];
    r23 = [r22 performTransaction:&var_90];
    [r22 release];
    [r21 release];
    if (r23 != 0x0 && *(var_58 + 0x28) != 0x0) {
            r0 = [APMMeasurement sharedInstance];
            r0 = [r0 retain];
            [r0 writeEventOnWorkerQueue:*(var_58 + 0x28)];
            [r0 release];
    }
    [var_70 release];
    _Block_object_dispose(&var_60, 0x8);
    r0 = 0x0;
    goto loc_1001789b8;

loc_1001789b8:
    [r0 release];
    [r19 release];
    return;

loc_100178978:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_1001789ac;

loc_1001789ac:
    [r20 logWithLevel:r2 messageCode:r3 message:r4];
    r0 = r20;
    goto loc_1001789b8;

loc_100178940:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_1001789ac;
}

-(void)removeConditionalUserPropertyOnWorkerQueue:(void *)arg2 {
    r31 = r31 - 0xa0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    [APMScheduler checkOnBackgroundThreadWithMethodName:@"removeConditionalUserPropertyOnWorkerQueue:"];
    r0 = [APMMeasurement sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 isEnabled];
    [r0 release];
    if ((r22 & 0x1) == 0x0) goto loc_100179518;

loc_1001793f0:
    if (r19 == 0x0) goto loc_100179550;

loc_1001793f4:
    var_58 = &var_60;
    r0 = [APMMeasurement sharedInstance];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 database];
    r29 = r29;
    r22 = [r0 retain];
    var_70 = [r19 retain];
    r23 = [r22 performTransaction:&var_90];
    [r22 release];
    [r21 release];
    if (r23 != 0x0 && *(var_58 + 0x28) != 0x0) {
            r0 = [APMMeasurement sharedInstance];
            r0 = [r0 retain];
            [r0 writeEventOnWorkerQueue:*(var_58 + 0x28)];
            [r0 release];
    }
    [var_70 release];
    _Block_object_dispose(&var_60, 0x8);
    r0 = 0x0;
    goto loc_100179590;

loc_100179590:
    [r0 release];
    [r19 release];
    return;

loc_100179550:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100179584;

loc_100179584:
    [r20 logWithLevel:r2 messageCode:r3 message:r4];
    r0 = r20;
    goto loc_100179590;

loc_100179518:
    r20 = [[APMMeasurement monitor] retain];
    goto loc_100179584;
}

@end