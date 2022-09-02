@implementation APMLifetimeValueRecorder

+(bool)isPurchaseEvent:(void *)arg2 {
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
    r0 = [r0 name];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 isEqual:r2] & 0x1) != 0x0) {
            r21 = 0x1;
    }
    else {
            r22 = @selector(isEqual:);
            r0 = [r19 name];
            r0 = [r0 retain];
            r21 = objc_msgSend(r0, r22);
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)recordLifetimeValueToDatabase:(void *)arg2 event:(void *)arg3 {
    r31 = r31 - 0x1b0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if ([APMLifetimeValueRecorder isPurchaseEvent:r20] == 0x0) goto loc_10018daa4;

loc_10018d8d4:
    r0 = [r20 parameters];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 objectForKeyedSubscript:@"currency"];
    r29 = r29;
    r21 = [r0 retain];
    [r24 release];
    [APMValue class];
    if ([r21 isKindOfClass:r2] == 0x0 || [r21 isString] == 0x0) goto loc_10018daac;

loc_10018d968:
    r0 = [r21 stringValue];
    r29 = r29;
    r0 = [r0 retain];
    r27 = r0;
    r28 = [r0 length];
    [r27 release];
    if (r28 != 0x3) goto loc_10018daac;

loc_10018d9a8:
    r26 = @selector(isKindOfClass:);
    r0 = [r20 parameters];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectForKeyedSubscript:@"value"];
    r29 = r29;
    r28 = [r0 retain];
    [r22 release];
    [APMValue class];
    if (objc_msgSend(r28, r26) == 0x0 || ([r28 isDouble] & 0x1) == 0x0 && ([r28 isInt64] & 0x1) == 0x0) goto loc_10018db50;

loc_10018da30:
    r0 = [r20 name];
    r29 = r29;
    r0 = [r0 retain];
    r24 = @selector(isEqual:);
    r26 = objc_msgSend(r0, r24);
    [r0 release];
    var_150 = r24;
    if (r26 == 0x0) goto loc_10018db9c;

loc_10018da7c:
    if ([r28 isDouble] != 0x0) {
            [r28 doubleValue];
    }
    else {
            [r28 int64Value];
            asm { scvtf      d0, x0 };
    }
    r2 = @"ecommerce_purchase";
    asm { scvtf      d1, d1 };
    asm { frinta     d8, d0 };
    r25 = [[NSDecimalNumber alloc] initWithDouble:r2];
    r26 = [[NSDecimalNumber alloc] initWithLongLong:0x8000000000000000];
    r24 = [[NSDecimalNumber alloc] initWithLongLong:0x7fffffffffffffff];
    if ([r25 compare:r2] != -0x1) {
            if ([r25 compare:r2] == 0x1) {
                    r0 = [APMMeasurement monitor];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x1 messageCode:0x55f2 message:@"Cannot record transaction with value that is out of bounds"];
                    [r0 release];
                    r27 = 0x0;
                    r22 = 0x0;
            }
            else {
                    r27 = @selector(initWithLongLong:);
                    [r25 doubleValue];
                    asm { fcvtzs     x27, d0 };
                    r22 = 0x1;
            }
    }
    else {
            r0 = [APMMeasurement monitor];
            r29 = r29;
            r0 = [r0 retain];
            [r0 logWithLevel:0x1 messageCode:0x55f2 message:@"Cannot record transaction with value that is out of bounds"];
            [r0 release];
            r27 = 0x0;
            r22 = 0x0;
    }
    r23 = @selector(name);
    [r24 release];
    [r26 release];
    [r25 release];
    if ((r22 & 0x1) != 0x0) goto loc_10018dd7c;

loc_10018dd60:
    r23 = 0x0;
    goto loc_10018e3f0;

loc_10018e3f0:
    r0 = r28;
    goto loc_10018daf4;

loc_10018daf4:
    [r0 release];
    [r21 release];
    goto loc_10018db00;

loc_10018db00:
    var_68 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_68) {
            r0 = r23;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10018dd7c:
    r0 = [r21 stringValue];
    r0 = [r0 retain];
    r25 = [[r0 uppercaseString] retain];
    [r0 release];
    var_148 = [[*0x100e6cfd8 stringByAppendingString:r25] retain];
    r0 = [r19 allLifetimeValueUserAttributes:&var_F0];
    r29 = r29;
    r26 = [r0 retain];
    r24 = [var_F0 retain];
    if (r26 != 0x0 || r24 == 0x0) goto loc_10018de64;

loc_10018de14:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x55f3 message:@"Failed to query all Lifetime Value User properties. Error" context:r24];
    [r0 release];
    r23 = 0x0;
    goto loc_10018e3d0;

loc_10018e3d0:
    [r26 release];
    [r24 release];
    [var_148 release];
    r0 = r25;
    goto loc_10018e3ec;

loc_10018e3ec:
    [r0 release];
    goto loc_10018e3f0;

loc_10018de64:
    var_170 = r27;
    var_168 = r25;
    var_188 = r24;
    var_180 = r26;
    var_178 = r28;
    var_120 = q0;
    r0 = [r26 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_158 = r0;
    var_190 = r1;
    r27 = objc_msgSend(r0, r1);
    if (r27 == 0x0) goto loc_10018df3c;

loc_10018deac:
    r25 = *var_120;
    goto loc_10018deb4;

loc_10018deb4:
    r28 = 0x0;
    goto loc_10018deb8;

loc_10018deb8:
    if (*var_120 != r25) {
            objc_enumerationMutation(var_158);
    }
    r26 = *(var_128 + r28 * 0x8);
    r24 = r23;
    r0 = objc_msgSend(r26, r23);
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, var_150);
    [r0 release];
    if ((r23 & 0x1) != 0x0) goto loc_10018df84;

loc_10018df0c:
    r28 = r28 + 0x1;
    r23 = r24;
    if (r28 < r27) goto loc_10018deb8;

loc_10018df1c:
    r27 = objc_msgSend(var_158, var_190);
    if (r27 != 0x0) goto loc_10018deb4;

loc_10018df3c:
    r24 = r23;
    r28 = var_158;
    [r28 release];
    r22 = @selector(initWithInt64:);
    r25 = var_168;
    goto loc_10018e088;

loc_10018e088:
    objc_msgSend([APMValue alloc], r22);
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r22 release];
    r0 = [APMUserAttribute alloc];
    r27 = r23;
    var_150 = [r0 initWithOrigin:r2 name:r3 value:r4 lastSetTimestamp:r5];
    r22 = [r28 count];
    r0 = [APMMeasurement remoteConfig];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 maxTrackedCurrencies];
    [r0 release];
    r23 = r24;
    r0 = r28;
    if (r22 < sign_extend_64(r26)) goto loc_10018e298;

loc_10018e168:
    r28 = r27;
    r0 = [r0 lastObject];
    r0 = [r0 retain];
    r24 = r0;
    r0 = objc_msgSend(r0, r23);
    r29 = r29;
    r22 = [r0 retain];
    r27 = [r19 deleteUserAttributeWithName:r22 error:&var_138];
    r26 = [var_138 retain];
    [r22 release];
    if (r26 == 0x0 || r27 != 0x0) goto loc_10018e284;

loc_10018e1d4:
    r22 = [objc_msgSend(r24, r23) retain];
    r23 = [sub_100197fe0() retain];
    [r22 release];
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    [r0 logWithLevel:0x1 messageCode:0x55f4 message:@"Unable to delete Lifetime Value User property. Name, error" context:r23 context:r26];
    [r0 release];
    [r23 release];
    [r26 release];
    [r24 release];
    [r28 release];
    r23 = 0x0;
    r24 = var_188;
    r26 = var_180;
    r28 = var_178;
    r27 = var_150;
    goto loc_10018e3c8;

loc_10018e3c8:
    [r27 release];
    goto loc_10018e3d0;

loc_10018e284:
    [r26 release];
    [r24 release];
    r27 = r28;
    goto loc_10018e298;

loc_10018e298:
    [r27 release];
    r25 = var_150;
    goto loc_10018e2a4;

loc_10018e2a4:
    r26 = [r19 updateUserAttribute:r25 error:&var_140];
    r24 = [var_140 retain];
    [var_188 release];
    r27 = r25;
    if (r24 != 0x0) {
            if (r26 == 0x0) {
                    r22 = [objc_msgSend(r27, r23) retain];
                    r23 = [sub_100197fe0() retain];
                    [r22 release];
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x1 messageCode:0x55f5 message:@"Unable to upsert Lifetime Value User Attribute in database. Name, error" context:r23 context:r24];
                    [r0 release];
                    [r23 release];
                    r23 = 0x0;
            }
            else {
                    r0 = [APMMeasurement monitor];
                    r0 = [r0 retain];
                    [r0 logWithLevel:0x7 messageCode:0x55f6 message:@"Lifetime value has been updated in database" context:r27];
                    [r0 release];
                    r23 = 0x1;
            }
    }
    else {
            r0 = [APMMeasurement monitor];
            r0 = [r0 retain];
            [r0 logWithLevel:0x7 messageCode:0x55f6 message:@"Lifetime value has been updated in database" context:r27];
            [r0 release];
            r23 = 0x1;
    }
    r26 = var_180;
    r28 = var_178;
    r25 = var_168;
    goto loc_10018e3c8;

loc_10018df84:
    r0 = [r26 value];
    r0 = [r0 retain];
    r23 = [r0 int64Value] + var_170;
    [r0 release];
    r22 = [[APMValue alloc] initWithInt64:r23];
    r0 = [NSDate date];
    r29 = r29;
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    r25 = [[APMUserAttribute alloc] initWithOrigin:r2 name:r3 value:r4 lastSetTimestamp:r5];
    [r22 release];
    r28 = var_158;
    [r28 release];
    r23 = r24;
    if (r25 != 0x0) goto loc_10018e2a4;

loc_10018e080:
    r25 = var_168;
    r22 = @selector(initWithInt64:);
    goto loc_10018e088;

loc_10018db9c:
    r24 = @selector(isEqual:);
    r0 = [r20 name];
    r29 = r29;
    r0 = [r0 retain];
    r25 = objc_msgSend(r0, r24);
    [r0 release];
    if (r25 != 0x0) {
            if ([r28 isInt64] != 0x0) {
                    [r28 int64Value];
                    asm { scvtf      d0, x0 };
            }
            else {
                    [r28 doubleValue];
            }
            r23 = @selector(name);
            asm { fcvtzs     x27, d0 };
    }
    else {
            r23 = @selector(name);
            r27 = 0x0;
    }
    goto loc_10018dd7c;

loc_10018db50:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r23 = 0x1;
    [r0 logWithLevel:0x1 messageCode:0x55f1 message:@"Cannot record transaction with invalid transaction value" context:r28];
    r0 = r0;
    goto loc_10018e3ec;

loc_10018daac:
    r0 = [APMMeasurement monitor];
    r0 = [r0 retain];
    r23 = 0x1;
    [r0 logWithLevel:0x1 messageCode:0x55f0 message:@"Cannot record transaction with invalid currency code" context:r21];
    r0 = r0;
    goto loc_10018daf4;

loc_10018daa4:
    r23 = 0x1;
    goto loc_10018db00;
}

@end