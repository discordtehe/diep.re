@implementation TR_DDDispatchQueueLogFormatter

-(void *)init {
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
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r19->_mode = 0x0;
            r0 = [r19 class];
            r21 = r0;
            r23 = class_getSuperclass(r0);
            r24 = class_getInstanceMethod(r21, @selector(configureDateFormatter:));
            while (class_getInstanceMethod(r23, @selector(configureDateFormatter:)) == r24) {
                    r21 = r23;
                    r23 = class_getSuperclass(r21);
            }
            class_getName(r21);
            r0 = [NSString stringWithFormat:@"%s_NSDateFormatter"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_dateFormatterKey));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            *(int32_t *)(int64_t *)&r19->_atomicLoggerCount = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_threadUnsafeDateFormatter));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r19->_minQueueLength = 0x0;
            r19->_maxQueueLength = 0x0;
            *(int32_t *)(int64_t *)&r19->_lock = 0x0;
            r0 = [NSMutableDictionary alloc];
            r0 = objc_msgSend(r0, r20);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_replacements));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            [*(r19 + r20) setObject:@"main" forKeyedSubscript:@"com.apple.main-thread"];
    }
    r0 = r19;
    return r0;
}

-(void *)initWithMode:(unsigned long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [self init];
    if (r0 != 0x0) {
            r0->_mode = r19;
    }
    return r0;
}

-(void *)replacementStringForQueueLabel:(void *)arg2 {
    [arg2 retain];
    OSSpinLockLock((int64_t *)&self->_lock);
    [[self->_replacements objectForKeyedSubscript:arg2] retain];
    [r22 release];
    OSSpinLockUnlock((int64_t *)&self->_lock);
    r0 = [r19 autorelease];
    return r0;
}

-(void)setReplacementString:(void *)arg2 forQueueLabel:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = [arg2 retain];
    r20 = (int64_t *)&self->_lock;
    r22 = [r21 retain];
    OSSpinLockLock(r20);
    r0 = self->_replacements;
    if (r19 != 0x0) {
            [r0 setObject:r19 forKeyedSubscript:r21];
    }
    else {
            [r0 removeObjectForKey:r2];
    }
    [r22 release];
    OSSpinLockUnlock(r20);
    [r19 release];
    return;
}

-(void *)createDateFormatter {
    r20 = [[NSDateFormatter alloc] init];
    [self configureDateFormatter:r20];
    r0 = [r20 autorelease];
    return r0;
}

-(void)configureDateFormatter:(void *)arg2 {
    r20 = [arg2 retain];
    [arg2 setFormatterBehavior:0x410];
    [arg2 setDateFormat:@"yyyy-MM-dd HH:mm:ss:SSS"];
    r21 = [[NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"] retain];
    [arg2 setLocale:r21];
    [r21 release];
    r21 = **_NSCalendarIdentifierGregorian;
    r21 = [[NSCalendar alloc] initWithCalendarIdentifier:r21];
    [arg2 setCalendar:r21];
    [r20 release];
    [r21 release];
    return;
}

-(void *)stringFromDate:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    if (r20->_mode == 0x1) {
            r21 = (int64_t *)&r20->_threadUnsafeDateFormatter;
            r22 = [*r21 retain];
            if (r22 == 0x0) {
                    r0 = [r20 createDateFormatter];
                    r29 = r29;
                    [r0 retain];
                    [r22 release];
                    objc_storeStrong(r21, r0);
                    r22 = r23;
            }
    }
    else {
            r21 = [r20->_dateFormatterKey retain];
            r0 = [NSThread currentThread];
            r0 = [r0 retain];
            r23 = [[r0 threadDictionary] retain];
            [r0 release];
            r0 = [r23 objectForKeyedSubscript:r21];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 == 0x0) {
                    r0 = [r20 createDateFormatter];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r23 setObject:r22 forKeyedSubscript:r21];
            }
            [r23 release];
            [r21 release];
    }
    r20 = [[r22 stringFromDate:r19] retain];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)formatLogMessage:(void *)arg2 {
    r21 = arg2->_timestamp;
    r23 = [arg2 retain];
    r21 = [[self stringFromDate:r21] retain];
    r20 = [[self queueThreadLabelForLogMessage:r23] retain];
    [r23 release];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)didAddToLogger:(void *)arg2 {
    OSAtomicIncrement32((int64_t *)&self->_atomicLoggerCount);
    return;
}

-(void)willRemoveFromLogger:(void *)arg2 {
    OSAtomicDecrement32((int64_t *)&self->_atomicLoggerCount);
    return;
}

-(void)setMinQueueLength:(unsigned long long)arg2 {
    self->_minQueueLength = arg2;
    return;
}

-(unsigned long long)minQueueLength {
    r0 = self->_minQueueLength;
    return r0;
}

-(unsigned long long)maxQueueLength {
    r0 = self->_maxQueueLength;
    return r0;
}

-(void *)queueThreadLabelForLogMessage:(void *)arg2 {
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x110;
    r22 = self;
    r19 = [arg2 retain];
    r26 = [r22 minQueueLength];
    r21 = [r22 maxQueueLength];
    if (r19->_queueLabel == 0x0) goto loc_10040173c;

loc_100401590:
    r0 = [NSArray arrayWithObjects:r29 - 0x90 count:0x6];
    r29 = r29;
    r0 = [r0 retain];
    *((r29 - 0x18) + 0xffffffffffffff00) = 0x0;
    *((r29 - 0x20) + 0xffffffffffffff00) = 0x0;
    *((r29 - 0x28) + 0xffffffffffffff00) = 0x0;
    *((r29 - 0x30) + 0xffffffffffffff00) = 0x0;
    *((r29 - 0x38) + 0xffffffffffffff00) = 0x0;
    *((r29 - 0x40) + 0xffffffffffffff00) = 0x0;
    *((r29 - 0x48) + 0xffffffffffffff00) = 0x0;
    *((r29 - 0x50) + 0xffffffffffffff00) = 0x0;
    r0 = [r0 retain];
    r23 = r0;
    r24 = @selector(countByEnumeratingWithState:objects:count:);
    r25 = objc_msgSend(r0, r24);
    if (r25 == 0x0) goto loc_100401788;

loc_10040165c:
    *((r29 - 0x60) + 0xffffffffffffff00) = r21;
    *((r29 - 0x58) + 0xffffffffffffff00) = r26;
    r28 = **((r29 - 0x40) + 0xffffffffffffff00);
    r8 = 0x101137000;
    goto loc_10040167c;

loc_10040167c:
    r20 = 0x0;
    r21 = r8;
    r26 = *(r8 + 0x258);
    goto loc_100401688;

loc_100401688:
    if (**((r29 - 0x40) + 0xffffffffffffff00) != r28) {
            objc_enumerationMutation(r23);
    }
    if (objc_msgSend(r19->_queueLabel, r26) != 0x0) goto loc_100401700;

loc_1004016c4:
    r20 = r20 + 0x1;
    if (r20 < r25) goto loc_100401688;

loc_1004016d0:
    r24 = @selector(countByEnumeratingWithState:objects:count:);
    r25 = objc_msgSend(r23, r24);
    r8 = r21;
    if (r25 != 0x0) goto loc_10040167c;

loc_1004016f4:
    r24 = 0x0;
    r20 = 0x1;
    goto loc_100401728;

loc_100401728:
    r26 = *((r29 - 0x58) + 0xffffffffffffff00);
    r21 = *((r29 - 0x60) + 0xffffffffffffff00);
    goto loc_100401790;

loc_100401790:
    [r23 release];
    [r23 release];
    if ((r24 & 0x1) != 0x0) {
            r8 = 0x10116cd60;
            if (r20 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = 0x10116cd60;
                    }
                    else {
                            r8 = 0x10116cd68;
                    }
            }
            r23 = [*(r19 + sign_extend_64(*(int32_t *)r8)) retain];
            OSSpinLockLock((int64_t *)&r22->_lock);
            r0 = r22->_replacements;
            r0 = [r0 objectForKeyedSubscript:r23];
            r29 = r29;
            r24 = [r0 retain];
            OSSpinLockUnlock((int64_t *)&r22->_lock);
            if (r24 != 0x0) {
                    r0 = r24;
            }
            else {
                    r0 = r23;
            }
            r22 = [r0 retain];
            [r24 release];
            [r23 release];
    }
    else {
            if (r20 == 0x0) {
                    r22 = [r19->_threadID retain];
            }
            else {
                    r8 = 0x10116cd60;
                    if (r20 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r8 = 0x10116cd60;
                            }
                            else {
                                    r8 = 0x10116cd68;
                            }
                    }
                    r23 = [*(r19 + sign_extend_64(*(int32_t *)r8)) retain];
                    OSSpinLockLock((int64_t *)&r22->_lock);
                    r0 = r22->_replacements;
                    r0 = [r0 objectForKeyedSubscript:r23];
                    r29 = r29;
                    r24 = [r0 retain];
                    OSSpinLockUnlock((int64_t *)&r22->_lock);
                    if (r24 != 0x0) {
                            r0 = r24;
                    }
                    else {
                            r0 = r23;
                    }
                    r22 = [r0 retain];
                    [r24 release];
                    [r23 release];
            }
    }
    goto loc_100401830;

loc_100401830:
    r23 = r22;
    r0 = [r22 length];
    if (r21 == 0x0 || r0 < r21) goto loc_100401874;

loc_100401850:
    r0 = [r22 substringToIndex:r21];
    r29 = r29;
    r20 = [r0 retain];
    goto loc_1004018dc;

loc_1004018dc:
    r23 = r20;
    goto loc_1004018f0;

loc_1004018f0:
    var_60 = **___stack_chk_guard;
    [r22 release];
    [r19 release];
    [r20 autorelease];
    if (**___stack_chk_guard == var_60) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100401874:
    r20 = r26 - r0;
    if (r20 < 0x0) goto loc_1004018e4;

loc_10040187c:
    memset(&var_160 - (r20 + 0x10 & 0xfffffffffffffff0), 0x20, r20);
    *(int8_t *)((&var_160 - (r20 + 0x10 & 0xfffffffffffffff0)) + r20) = 0x0;
    r0 = [NSString stringWithFormat:r2];
    r29 = r29;
    r20 = [r0 retain];
    goto loc_1004018dc;

loc_1004018e4:
    r20 = [r22 retain];
    goto loc_1004018f0;

loc_100401700:
    if ([r19->_threadName length] != 0x0) {
            if (CPU_FLAGS & NE) {
                    r24 = 0x1;
            }
    }
    r20 = 0x0;
    goto loc_100401728;

loc_100401788:
    r24 = 0x0;
    r20 = 0x1;
    goto loc_100401790;

loc_10040173c:
    if ([r19->_threadName length] != 0x0) {
            if (CPU_FLAGS & NE) {
                    r24 = 0x1;
            }
    }
    r20 = 0x0;
    if ((r24 & 0x1) == 0x0) {
            if (r20 == 0x0) {
                    r22 = [r19->_threadID retain];
            }
            else {
                    r8 = 0x10116cd60;
                    if (r20 != 0x0) {
                            if (!CPU_FLAGS & NE) {
                                    r8 = 0x10116cd60;
                            }
                            else {
                                    r8 = 0x10116cd68;
                            }
                    }
                    r23 = [*(r19 + sign_extend_64(*(int32_t *)r8)) retain];
                    OSSpinLockLock((int64_t *)&r22->_lock);
                    r0 = r22->_replacements;
                    r0 = [r0 objectForKeyedSubscript:r23];
                    r29 = r29;
                    r24 = [r0 retain];
                    OSSpinLockUnlock((int64_t *)&r22->_lock);
                    if (r24 != 0x0) {
                            r0 = r24;
                    }
                    else {
                            r0 = r23;
                    }
                    r22 = [r0 retain];
                    [r24 release];
                    [r23 release];
            }
    }
    else {
            r8 = 0x10116cd60;
            if (r20 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = 0x10116cd60;
                    }
                    else {
                            r8 = 0x10116cd68;
                    }
            }
            r23 = [*(r19 + sign_extend_64(*(int32_t *)r8)) retain];
            OSSpinLockLock((int64_t *)&r22->_lock);
            r0 = r22->_replacements;
            r0 = [r0 objectForKeyedSubscript:r23];
            r29 = r29;
            r24 = [r0 retain];
            OSSpinLockUnlock((int64_t *)&r22->_lock);
            if (r24 != 0x0) {
                    r0 = r24;
            }
            else {
                    r0 = r23;
            }
            r22 = [r0 retain];
            [r24 release];
            [r23 release];
    }
    goto loc_100401830;
}

-(void)setMaxQueueLength:(unsigned long long)arg2 {
    self->_maxQueueLength = arg2;
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_replacements, 0x0);
    objc_storeStrong((int64_t *)&self->_threadUnsafeDateFormatter, 0x0);
    objc_storeStrong((int64_t *)&self->_dateFormatterKey, 0x0);
    return;
}

@end