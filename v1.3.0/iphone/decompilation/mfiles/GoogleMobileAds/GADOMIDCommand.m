@implementation GADOMIDCommand

+(void *)commandWithName:(void *)arg2 {
    objc_storeStrong(&saved_fp - 0x18, arg2);
    *(&stack[-112] + 0x8) = [[self stringFromArguments:&saved_fp + 0x10] retain];
    stack[-112] = 0x0;
    var_48 = [[[NSString stringWithFormat:@"(function(){if(this.omidBridge!==undefined){this.omidBridge.%@(%@)}})()", r3, r4] retain] retain];
    objc_storeStrong(&var_30, 0x0);
    objc_storeStrong(&saved_fp - 0x28, 0x0);
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    r0 = [var_48 autorelease];
    return r0;
}

+(void *)stringWithQuotesFromString:(void *)arg2 {
    objc_storeStrong(&saved_fp - 0x18, arg2);
    stack[-80] = 0x0;
    var_38 = [[NSString stringWithFormat:@"'%@'", r3] retain];
    objc_storeStrong(&saved_fp - 0x18, 0x0);
    r0 = [var_38 autorelease];
    return r0;
}

+(void *)errorCommandWithType:(unsigned long long)arg2 errorMessage:(void *)arg3 {
    objc_storeStrong(&saved_fp - 0x20, arg3);
    var_50 = [[self getStringError:arg2] retain];
    var_28 = [[self stringWithQuotesFromString:var_50] retain];
    [var_50 release];
    r0 = [self escapedString:0x0];
    r0 = [r0 retain];
    *(&stack[-128] + 0x10) = 0x0;
    *(&stack[-128] + 0x8) = r0;
    stack[-128] = var_28;
    var_58 = [[self commandWithName:@"error"] retain];
    objc_storeStrong(&saved_fp - 0x30, 0x0);
    objc_storeStrong(&saved_fp - 0x28, 0x0);
    objc_storeStrong(&saved_fp - 0x20, 0x0);
    r0 = [var_58 autorelease];
    return r0;
}

+(void *)escapedString:(void *)arg2 {
    objc_storeStrong(&var_118, arg2);
    var_120 = [var_118 mutableCopy];
    [var_120 length];
    [var_120 replaceOccurrencesOfString:@"\" withString:@"\\" options:0x2 range:0x0];
    [var_120 length];
    [var_120 replaceOccurrencesOfString:r2 withString:r3 options:r4 range:r5];
    [var_120 length];
    [var_120 replaceOccurrencesOfString:r2 withString:r3 options:r4 range:r5];
    [var_120 length];
    [var_120 replaceOccurrencesOfString:r2 withString:r3 options:r4 range:r5];
    [var_120 length];
    [var_120 replaceOccurrencesOfString:r2 withString:r3 options:r4 range:r5];
    [var_120 insertString:@"'" atIndex:0x0];
    [var_120 appendString:@"'"];
    var_1F8 = [var_120 retain];
    objc_storeStrong(&var_120, 0x0);
    objc_storeStrong(&var_118, 0x0);
    r0 = [var_1F8 autorelease];
    return r0;
}

+(void *)stringFromArguments:(char *)arg2 {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_18 = arg2;
    var_20 = [NSMutableString new];
    do {
            r9 = var_18;
            var_18 = r9 + 0x8;
            r9 = *r9;
            r0 = objc_storeStrong(&var_28, r9);
            if (r9 == 0x0) {
                break;
            }
            if ([var_20 length] >= 0x0) {
                    [var_20 appendString:@","];
            }
            [var_20 appendString:var_28];
    } while (true);
    var_40 = [var_20 retain];
    objc_storeStrong(&var_28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    r0 = [var_40 autorelease];
    return r0;
}

+(void *)getStringError:(unsigned long long)arg2 {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = arg2 - 0x1;
    var_28 = arg2;
    if (r0 != 0x0 && r9 == 0x0) {
            var_8 = [@"video" retain];
    }
    else {
            var_8 = [@"generic" retain];
    }
    r0 = [var_8 autorelease];
    return r0;
}

@end