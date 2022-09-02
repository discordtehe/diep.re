@implementation MCPromoTriggerUtils

+(double)getNextTimestampForDateComponents:(void *)arg2 startTimestamp:(double)arg3 {
    r0 = [NSDate dateWithTimeIntervalSinceReferenceDate:r2];
    r0 = sub_1009ee264(arg2, r0);
    r0 = [r0 timeIntervalSinceReferenceDate];
    return r0;
}

+(double)getPreviousTimestampForDateComponents:(void *)arg2 startTimestamp:(double)arg3 {
    r0 = [NSDate dateWithTimeIntervalSinceReferenceDate:r2];
    r0 = sub_1009eea48(arg2, r0);
    r0 = [r0 timeIntervalSinceReferenceDate];
    return r0;
}

+(void *)getNextDateForDateComponents:(void *)arg2 startDate:(void *)arg3 {
    r0 = sub_1009ee264(arg2, arg3);
    return r0;
}

+(void *)getPreviousDateForDateComponents:(void *)arg2 startDate:(void *)arg3 {
    r0 = sub_1009eea48(arg2, arg3);
    return r0;
}

+(void *)getCurrentLocalTime {
    r0 = sub_1009eee54();
    return r0;
}

+(void *)convertDateFromGMTToLocalTimezone:(void *)arg2 {
    r0 = sub_1009eef08(arg2);
    return r0;
}

+(void *)converStringToDate:(void *)arg2 withFormat:(void *)arg3 {
    r0 = sub_1009ef0d8(arg2, arg3);
    return r0;
}

+(void *)convertDateToString:(void *)arg2 withFormat:(void *)arg3 {
    r0 = sub_1009eefa4(arg2, arg3);
    return r0;
}

+(void *)convertDateToDateComponents:(void *)arg2 {
    r0 = objc_alloc();
    r0 = [r0 initWithCalendarIdentifier:**_NSGregorianCalendar];
    r0 = [r0 autorelease];
    r0 = [r0 components:0x2fc fromDate:arg2];
    return r0;
}

+(bool)date:(void *)arg2 isEqualToDate:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    if ([r20 second] == [r19 second] && [r20 minute] == [r19 minute] && [r20 hour] == [r19 hour] && [arg2 year] == [r19 year] && [r20 month] == [r19 month]) {
            if ([r20 day] == [r19 day]) {
                    if ([r20 day] == 0x7fffffffffffffff) {
                            if ([r20 weekday] == [r19 weekday]) {
                                    r0 = 0x1;
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
                    else {
                            r0 = 0x1;
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

+(bool)dateList:(void *)arg2 containsAtLeastOneEqualDateTo:(void *)arg3 {
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
    r19 = arg3;
    r20 = arg2;
    r21 = self;
    var_190 = q0;
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_1E8 = r0;
    if (r0 == 0x0) goto loc_1009ef85c;

loc_1009ef740:
    r24 = *var_190;
    r26 = &@selector(getTemplateForKey:);
    var_1F8 = r24;
    var_1F0 = r20;
    goto loc_1009ef750;

loc_1009ef750:
    r28 = 0x0;
    goto loc_1009ef754;

loc_1009ef754:
    if (*var_190 != r24) {
            objc_enumerationMutation(r20);
    }
    r22 = @selector(countByEnumeratingWithState:objects:count:);
    r24 = *(var_198 + r28 * 0x8);
    var_1D0 = q0;
    r0 = objc_msgSend(r19, r22);
    if (r0 == 0x0) goto loc_1009ef818;

loc_1009ef79c:
    r25 = r0;
    r27 = *var_1D0;
    goto loc_1009ef7a8;

loc_1009ef7a8:
    r20 = 0x0;
    r23 = r26;
    r26 = *(r26 + 0x4a8);
    goto loc_1009ef7b4;

loc_1009ef7b4:
    if (*var_1D0 != r27) {
            objc_enumerationMutation(r19);
    }
    if ((objc_msgSend(r21, r26) & 0x1) != 0x0) goto loc_1009ef858;

loc_1009ef7e8:
    r20 = r20 + 0x1;
    if (r20 < r25) goto loc_1009ef7b4;

loc_1009ef7f4:
    r0 = [r19 countByEnumeratingWithState:r2 objects:r3 count:r4];
    r25 = r0;
    r26 = r23;
    if (r0 != 0x0) goto loc_1009ef7a8;

loc_1009ef818:
    r28 = r28 + 0x1;
    r20 = var_1F0;
    r24 = var_1F8;
    if (r28 < var_1E8) goto loc_1009ef754;

loc_1009ef82c:
    r8 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    var_1E8 = r8;
    if (r8 != 0x0) goto loc_1009ef750;

loc_1009ef854:
    r0 = 0x0;
    goto loc_1009ef85c;

loc_1009ef85c:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009ef858:
    r0 = 0x1;
    goto loc_1009ef85c;
}

@end