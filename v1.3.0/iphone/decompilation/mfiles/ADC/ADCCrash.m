@implementation ADCCrash

-(void *)initFromDict:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [[&var_40 super] initFromDict:r19];
    r20 = r0;
    if (r20 != 0x0) {
            [r20 setIndex:@"adcolony_fatal_reports"];
            r22 = [[r19 objectForKeyedSubscript:@"message"] retain];
            [r20 setMessage:r22];
            [r22 release];
            [r20 setLevel:0xffffffffffffffff];
            *(int8_t *)(int64_t *)&r20->_isNativeCrash = 0x0;
            r0 = [r19 objectForKeyedSubscript:@"timestamp"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_timestamp));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"stackTrace"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_stackTrace));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"sourceFile"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_sourceFile));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"methodName"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_methodName));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"activeAdId"];
            r0 = [r0 retain];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_activeAdID));
            r8 = *(r20 + r24);
            *(r20 + r24) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"isAdActive"];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r20->_isAdActive = [r0 boolValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"activeAdId"];
            r0 = [r0 retain];
            r8 = *(r20 + r24);
            *(r20 + r24) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"active_creative_ad_id"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_activeAdCreativeID));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"listOfCreativeAdIds"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_creativeAdIDsInCache));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"listOfCachedAds"];
            r0 = [r0 retain];
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_adsInCache));
            r8 = *(r20 + r21);
            *(r20 + r21) = r0;
            [r8 release];
            r20->_adCacheSize = [*(r20 + r21) count];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithException:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 description];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r0 = [[&var_60 super] initWithLogLevel:0xffffffffffffffff andMessage:r21];
    r20 = r0;
    [r21 release];
    if (r20 == 0x0) goto loc_1001b6ba4;

loc_1001b6774:
    *(int8_t *)(int64_t *)&r20->_isNativeCrash = 0x0;
    r0 = [NSDateFormatter new];
    r21 = r0;
    [r0 setDateFormat:@"yyyyMMdd'T'HHmmss.SSSZ"];
    r23 = [NSDate new];
    r0 = [r21 stringFromDate:r23];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_timestamp));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r23 release];
    r0 = [r19 description];
    r0 = [r0 retain];
    r22 = [[r0 stringByReplacingOccurrencesOfString:@"-[" withString:@""] retain];
    [r0 release];
    r23 = [[r22 componentsSeparatedByString:@" "] retain];
    r0 = [r20 message];
    r29 = r29;
    r0 = [r0 retain];
    r25 = r0;
    if ([r0 hasPrefix:r2] == 0x0) goto loc_1001b68c8;

loc_1001b68ac:
    [r25 release];
    goto loc_1001b6918;

loc_1001b6918:
    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    r0 = [r23 objectAtIndexedSubscript:0x0];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_sourceFile));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r0 = [r23 objectAtIndexedSubscript:0x1];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 componentsSeparatedByString:@"]"];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectAtIndexedSubscript:0x0];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_methodName));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r24 release];
    [r26 release];
    r0 = [r19 callStackSymbols];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 mutableCopy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_stackTrace));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    [r24 release];
    r0 = [AdColony sharedInstance];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 logManager];
    r0 = [r0 retain];
    r24 = [[r0 crashManager] retain];
    [r0 release];
    [r25 release];
    r0 = [r24 getCachedAds];
    r0 = [r0 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_adsInCache));
    r8 = *(r20 + r25);
    *(r20 + r25) = r0;
    [r8 release];
    r20->_adCacheSize = [*(r20 + r25) count];
    r0 = [r24 getActiveAdID];
    r0 = [r0 retain];
    r25 = sign_extend_64(*(int32_t *)ivar_offset(_activeAdID));
    r8 = *(r20 + r25);
    *(r20 + r25) = r0;
    [r8 release];
    r0 = [r24 getActiveAdCreativeID];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_activeAdCreativeID));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    r0 = [r24 getCreativeAdIDsInCache];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_creativeAdIDsInCache));
    r8 = *(r20 + r9);
    *(r20 + r9) = r0;
    [r8 release];
    if (*(r20 + r25) != 0x0) {
            *(int8_t *)(int64_t *)&r20->_isAdActive = 0x1;
    }
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    goto loc_1001b6ba4;

loc_1001b6ba4:
    r21 = [r20 retain];
    goto loc_1001b6bb0;

loc_1001b6bb0:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_1001b68c8:
    r0 = [r20 message];
    r29 = r29;
    r0 = [r0 retain];
    r27 = [r0 hasPrefix:r2];
    [r0 release];
    [r25 release];
    if ((r27 & 0x1) == 0x0) goto loc_1001b6be4;
    goto loc_1001b6918;

loc_1001b6be4:
    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
    [r23 release];
    [r22 release];
    [r21 release];
    r21 = 0x0;
    goto loc_1001b6bb0;
}

-(void)getDict:(void *)arg2 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r21 = [[ADCDevice sharedDevice] retain];
            var_28 = [r19 retain];
            [r21 getInfo:&var_50];
            [r21 release];
            [var_28 release];
    }
    [r19 release];
    return;
}

-(bool)isNativeCrash {
    r0 = *(int8_t *)(int64_t *)&self->_isNativeCrash;
    return r0;
}

-(void)setIsNativeCrash:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isNativeCrash = arg2;
    return;
}

-(void *)timestamp {
    r0 = self->_timestamp;
    return r0;
}

-(void)setTimestamp:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_timestamp, arg2);
    return;
}

-(void *)stackTrace {
    r0 = self->_stackTrace;
    return r0;
}

-(void)setStackTrace:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_stackTrace, arg2);
    return;
}

-(void *)sourceFile {
    r0 = self->_sourceFile;
    return r0;
}

-(void *)initWithNativeCrash:(void *)arg2 {
    r31 = r31 - 0x1f0;
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
    r29 = &saved_fp;
    r20 = [arg2 retain];
    r0 = [[&var_100 super] initWithLogLevel:0xffffffffffffffff andMessage:@"Native crash"];
    r23 = r0;
    if (r23 == 0x0) goto loc_1001b77d0;

loc_1001b6fb4:
    *(int8_t *)(int64_t *)&r23->_isNativeCrash = 0x1;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_nativeReport));
    if (*(r23 + r21) == 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:&stack[-256] forKeys:&stack[-256] count:0x0];
            r29 = r29;
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 mutableCopy];
            r8 = *(r23 + r21);
            *(r23 + r21) = r0;
            [r8 release];
            [r19 release];
    }
    r0 = [NSString stringWithContentsOfFile:r20 encoding:0x4 error:&var_108];
    r29 = r29;
    r24 = [r0 retain];
    r22 = [var_108 retain];
    if (r22 == 0x0) goto loc_1001b70dc;

loc_1001b7064:
    r21 = [[r22 localizedDescription] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCCrash initWithNativeCrash:]" line:0x85 withFormat:@"Error reading native crash report file: %@"];
    [r21 release];
    [r24 release];
    [r22 release];
    r19 = 0x0;
    goto loc_1001b77dc;

loc_1001b77dc:
    var_68 = **___stack_chk_guard;
    [r20 release];
    [r23 release];
    if (**___stack_chk_guard == var_68) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1001b70dc:
    var_1B8 = r20;
    var_1B0 = r21;
    var_1C0 = r22;
    var_158 = r23;
    r19 = [[NSCharacterSet newlineCharacterSet] retain];
    var_1C8 = r24;
    r0 = [r24 componentsSeparatedByCharactersInSet:r19];
    r29 = r29;
    r21 = [r0 retain];
    [r19 release];
    var_138 = q0;
    r0 = [r21 retain];
    r23 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_1A0 = r1;
    r25 = objc_msgSend(r0, r1);
    var_168 = r23;
    if (r25 == 0x0) goto loc_1001b74c0;

loc_1001b717c:
    r27 = 0x0;
    r22 = 0x0;
    r28 = 0x0;
    r20 = *var_138;
    goto loc_1001b7198;

loc_1001b7198:
    r19 = 0x0;
    goto loc_1001b7368;

loc_1001b7368:
    if (*var_138 != r20) {
            objc_enumerationMutation(r23);
    }
    r24 = *(var_140 + r19 * 0x8);
    if (([@"threadState:" isEqualToString:r24] & 0x1) == 0x0) goto loc_1001b73ac;

loc_1001b739c:
    r27 = 0x0;
    r22 = 0x0;
    r28 = 0x1;
    goto loc_1001b7494;

loc_1001b7494:
    r19 = r19 + 0x1;
    if (r19 < r25) goto loc_1001b7368;

loc_1001b74a0:
    r25 = objc_msgSend(r23, var_1A0);
    if (r25 != 0x0) goto loc_1001b7198;

loc_1001b74c0:
    [r23 release];
    r23 = var_158;
    [*(r23 + var_1B0) setObject:r23->_threadState forKeyedSubscript:@"threadState"];
    [*(r23 + var_1B0) setObject:r23->_stackTrace forKeyedSubscript:@"stackTrace"];
    [*(r23 + var_1B0) setObject:r23->_binaryImages forKeyedSubscript:@"binaryImages"];
    r0 = [NSDateFormatter new];
    r19 = r0;
    [r0 setDateFormat:@"yyyyMMdd'T'HHmmss.SSSZ"];
    r0 = *(r23 + var_1B0);
    r0 = [r0 objectForKeyedSubscript:@"date"];
    r0 = [r0 retain];
    [r0 doubleValue];
    [r0 release];
    r21 = [[NSDate dateWithTimeIntervalSince1970:@"date"] retain];
    r0 = [r19 stringFromDate:r21];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_timestamp));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    [*(r23 + var_1B0) removeObjectForKey:@"date"];
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKey:@"ADCCachedAds"];
    r0 = [r0 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_adsInCache));
    r8 = *(r23 + r20);
    *(r23 + r20) = r0;
    [r8 release];
    r23->_adCacheSize = [*(r23 + r20) count];
    r0 = [r24 objectForKey:@"ADCActiveAdID"];
    r29 = r29;
    r0 = [r0 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_activeAdID));
    r8 = *(r23 + r20);
    *(r23 + r20) = r0;
    [r8 release];
    r8 = *(r23 + r20);
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    *(int8_t *)(int64_t *)&r23->_isAdActive = r8;
    r0 = [r24 objectForKey:@"ADCActiveAdCreativeID"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_activeAdCreativeID));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    r0 = [r24 objectForKey:@"ADCCreativeIDList"];
    r0 = [r0 retain];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_creativeAdIDsInCache));
    r8 = *(r23 + r9);
    *(r23 + r9) = r0;
    [r8 release];
    [r24 removeObjectForKey:@"ADCCachedAds"];
    [r24 removeObjectForKey:@"ADCActiveAdID"];
    [r24 removeObjectForKey:@"ADCActiveAdCreativeID"];
    [r24 removeObjectForKey:@"ADCCreativeIDList"];
    [r24 synchronize];
    [r24 release];
    [r21 release];
    [r19 release];
    [var_168 release];
    [var_1C8 release];
    [var_1C0 release];
    r20 = var_1B8;
    goto loc_1001b77d0;

loc_1001b77d0:
    r19 = [r23 retain];
    goto loc_1001b77dc;

loc_1001b73ac:
    if (([@"exceptionState:" isEqualToString:r24] & 0x1) == 0x0) goto loc_1001b73d4;

loc_1001b73c4:
    r27 = 0x0;
    r22 = 0x0;
    r28 = 0x0;
    goto loc_1001b7494;

loc_1001b73d4:
    if (([@"backtrace:" isEqualToString:r24] & 0x1) == 0x0) goto loc_1001b73f8;

loc_1001b73ec:
    r27 = 0x0;
    r28 = 0x0;
    goto loc_1001b7490;

loc_1001b7490:
    r22 = 0x1;
    goto loc_1001b7494;

loc_1001b73f8:
    if (([@"binaryImages:" isEqualToString:r24] & 0x1) == 0x0) goto loc_1001b7420;

loc_1001b7410:
    r22 = 0x0;
    r28 = 0x0;
    r27 = 0x1;
    goto loc_1001b7494;

loc_1001b7420:
    if ((r22 & 0x1) == 0x0) goto loc_1001b7208;

loc_1001b7424:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_stackTrace));
    r22 = var_158;
    r0 = *(r22 + r23);
    if (r0 == 0x0) {
            r0 = [NSArray arrayWithObjects:&stack[-256] count:0x0];
            r29 = r29;
            r0 = [r0 retain];
            var_1A8 = r0;
            r0 = [r0 mutableCopy];
            r8 = *(r22 + r23);
            *(r22 + r23) = r0;
            [r8 release];
            [var_1A8 release];
            r0 = *(r22 + r23);
    }
    r23 = var_168;
    [r0 addObject:r24];
    goto loc_1001b7490;

loc_1001b7208:
    if ((r27 & 0x1) == 0x0) goto loc_1001b7274;

loc_1001b720c:
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_binaryImages));
    r24 = var_158;
    if (*(r24 + r23) == 0x0) {
            r0 = [NSArray arrayWithObjects:&stack[-256] count:0x0];
            r29 = r29;
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 mutableCopy];
            r8 = *(r24 + r23);
            *(r24 + r23) = r0;
            [r8 release];
            [r22 release];
    }
    r22 = 0x0;
    r27 = 0x1;
    r23 = var_168;
    goto loc_1001b7494;

loc_1001b7274:
    if ((r28 & 0x1) == 0x0) goto loc_1001b72dc;

loc_1001b7278:
    r22 = (int64_t *)&var_158->_threadState;
    r0 = *r22;
    if (r0 == 0x0) {
            r0 = [@"" mutableCopy];
            r8 = *r22;
            *r22 = r0;
            [r8 release];
            r0 = *r22;
    }
    [r0 appendString:r24];
    [*r22 appendString:@"\n"];
    goto loc_1001b739c;

loc_1001b72dc:
    r22 = [r24 rangeOfString:@":"];
    if (r22 != 0x7fffffffffffffff) {
            [[r24 substringToIndex:r22] retain];
            r0 = [r24 substringFromIndex:r22 + 0x2];
            r29 = r29;
            [r0 retain];
            [*(var_158 + var_1B0) setObject:r2 forKeyedSubscript:r3];
            [r22 release];
            [r27 release];
    }
    goto loc_1001b73c4;
}

-(void)setSourceFile:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_sourceFile, arg2);
    return;
}

-(void *)methodName {
    r0 = self->_methodName;
    return r0;
}

-(void)setMethodName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_methodName, arg2);
    return;
}

-(bool)isAdActive {
    r0 = *(int8_t *)(int64_t *)&self->_isAdActive;
    return r0;
}

-(void)setIsAdActive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isAdActive = arg2;
    return;
}

-(void *)activeAdID {
    r0 = self->_activeAdID;
    return r0;
}

-(void)setActiveAdCreativeID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_activeAdCreativeID, arg2);
    return;
}

-(void)setActiveAdID:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_activeAdID, arg2);
    return;
}

-(void *)activeAdCreativeID {
    r0 = self->_activeAdCreativeID;
    return r0;
}

-(void *)getDictWithDeviceInfo:(void *)arg2 {
    r31 = r31 - 0x1a0;
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
    r20 = self;
    var_138 = [arg2 retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-320] forKeys:&stack[-320] count:0x0];
    r29 = &saved_fp;
    var_140 = [r0 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_timestamp));
    r19 = *(r20 + r21);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r21);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_sourceFile));
    r19 = *(r20 + r21);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r21);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_methodName));
    r19 = *(r20 + r21);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r21);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r0 = [r20 message];
    r29 = r29;
    r0 = [r0 retain];
    var_148 = r0;
    if (r0 != 0x0) {
            r0 = [r20 message];
            r29 = r29;
            r21 = [r0 retain];
            [NSString class];
            var_168 = r21;
            if ([r21 isKindOfClass:r2] != 0x0) {
                    r0 = [r20 message];
                    r29 = r29;
                    r8 = [r0 retain];
                    var_150 = 0x1;
            }
            else {
                    var_150 = 0x0;
                    r8 = @"";
            }
            var_14C = 0x1;
    }
    else {
            var_150 = 0x0;
            r8 = @"";
    }
    var_160 = r8;
    r0 = [NSNumber numberWithInteger:r20->_adCacheSize];
    r29 = r29;
    r26 = [r0 retain];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_adsInCache));
    r19 = *(r20 + r21);
    if (r19 != 0x0) {
            [NSArray class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    var_154 = 0x0;
                    r28 = *(r20 + r21);
            }
            else {
                    r0 = [NSArray arrayWithObjects:&stack[-320] count:0x0];
                    r29 = r29;
                    r28 = [r0 retain];
                    var_154 = 0x1;
            }
    }
    else {
            r0 = [NSArray arrayWithObjects:&stack[-320] count:0x0];
            r29 = r29;
            r28 = [r0 retain];
            var_154 = 0x1;
    }
    r0 = [NSNumber numberWithBool:r2];
    r29 = r29;
    r21 = [r0 retain];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_activeAdID));
    r19 = *(r20 + r23);
    if (r19 != 0x0) {
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r8 = *(r20 + r23);
            }
            else {
                    r8 = @"";
            }
    }
    else {
            r8 = @"";
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_activeAdCreativeID));
    r19 = *(r20 + r23);
    if (r19 != 0x0) {
            [NSNumber class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    r25 = 0x0;
                    r19 = *(r20 + r23);
            }
            else {
                    r0 = [NSNumber numberWithInt:r2];
                    r29 = r29;
                    r19 = [r0 retain];
                    r25 = 0x1;
            }
    }
    else {
            r0 = [NSNumber numberWithInt:r2];
            r29 = r29;
            r19 = [r0 retain];
            r25 = 0x1;
    }
    r27 = sign_extend_64(*(int32_t *)ivar_offset(_creativeAdIDsInCache));
    r24 = *(r20 + r27);
    if (r24 != 0x0) {
            [NSArray class];
            if ([r24 isKindOfClass:r2] != 0x0) {
                    r23 = 0x0;
                    r24 = *(r20 + r27);
            }
            else {
                    r0 = [NSArray arrayWithObjects:&stack[-320] count:0x0];
                    r29 = r29;
                    r24 = [r0 retain];
                    r23 = 0x1;
            }
    }
    else {
            r0 = [NSArray arrayWithObjects:&stack[-320] count:0x0];
            r29 = r29;
            r24 = [r0 retain];
            r23 = 0x1;
    }
    r0 = [NSDictionary dictionaryWithObjects:r29 - 0xb8 forKeys:&var_118 count:0xc];
    r29 = r29;
    r27 = [r0 retain];
    if (r23 != 0x0) {
            [r24 release];
    }
    if (r25 != 0x0) {
            [r19 release];
    }
    [r21 release];
    if (var_154 != 0x0) {
            [r28 release];
    }
    [r26 release];
    if (var_150 != 0x0) {
            [var_160 release];
    }
    if (var_14C != 0x0) {
            [var_168 release];
    }
    [var_148 release];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:r2 forKeys:r3 count:r4];
    r29 = r29;
    r21 = [r0 retain];
    if (*(int8_t *)(int64_t *)&r20->_isNativeCrash != 0x0) {
            r19 = [r20->_nativeReport retain];
            [var_140 release];
    }
    else {
            r22 = sign_extend_64(*(int32_t *)ivar_offset(_stackTrace));
            r19 = *(r20 + r22);
            if (r19 != 0x0) {
                    [NSArray class];
                    if ([r19 isKindOfClass:r2] != 0x0) {
                            r23 = 0x0;
                            r19 = *(r20 + r22);
                    }
                    else {
                            r0 = [NSArray arrayWithObjects:&stack[-320] count:0x0];
                            r29 = r29;
                            r19 = [r0 retain];
                            r23 = 0x1;
                    }
            }
            else {
                    r0 = [NSArray arrayWithObjects:&stack[-320] count:0x0];
                    r29 = r29;
                    r19 = [r0 retain];
                    r23 = 0x1;
            }
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r22 = [r0 retain];
            [r21 release];
            if (r23 != 0x0) {
                    [r19 release];
            }
            r21 = r22;
            r19 = var_140;
    }
    var_58 = **___stack_chk_guard;
    r22 = [var_138 mutableCopy];
    r0 = [r20 remappedKeysFromDeviceInfo];
    r0 = [r0 retain];
    r23 = [[r0 allKeys] retain];
    [r22 removeObjectsForKeys:r23];
    [r23 release];
    [r0 release];
    r20 = [[ADCDataTransform mergeDictionaries:r19] retain];
    [r22 release];
    [r21 release];
    [r27 release];
    [r19 release];
    [var_138 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)setCreativeAdIDsInCache:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_creativeAdIDsInCache, arg2);
    return;
}

-(void *)adsInCache {
    r0 = self->_adsInCache;
    return r0;
}

-(void *)creativeAdIDsInCache {
    r0 = self->_creativeAdIDsInCache;
    return r0;
}

-(void)setAdsInCache:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_adsInCache, arg2);
    return;
}

-(void)setAdCacheSize:(long long)arg2 {
    self->_adCacheSize = arg2;
    return;
}

-(long long)adCacheSize {
    r0 = self->_adCacheSize;
    return r0;
}

-(void *)nativeReport {
    r0 = self->_nativeReport;
    return r0;
}

-(void)setNativeReport:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_nativeReport, arg2);
    return;
}

-(void *)threadState {
    r0 = self->_threadState;
    return r0;
}

-(void)setThreadState:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_threadState, arg2);
    return;
}

-(void *)binaryImages {
    r0 = self->_binaryImages;
    return r0;
}

-(void)setBinaryImages:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_binaryImages, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_binaryImages, 0x0);
    objc_storeStrong((int64_t *)&self->_threadState, 0x0);
    objc_storeStrong((int64_t *)&self->_nativeReport, 0x0);
    objc_storeStrong((int64_t *)&self->_adsInCache, 0x0);
    objc_storeStrong((int64_t *)&self->_creativeAdIDsInCache, 0x0);
    objc_storeStrong((int64_t *)&self->_activeAdCreativeID, 0x0);
    objc_storeStrong((int64_t *)&self->_activeAdID, 0x0);
    objc_storeStrong((int64_t *)&self->_methodName, 0x0);
    objc_storeStrong((int64_t *)&self->_sourceFile, 0x0);
    objc_storeStrong((int64_t *)&self->_stackTrace, 0x0);
    objc_storeStrong((int64_t *)&self->_timestamp, 0x0);
    return;
}

@end