@implementation ADJUtil

+(void)initialize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([ADJUtil class] == r19) {
            [r19 initializeDateFormat];
            [r19 initializeUniversalLinkRegex];
            [r19 initializeSecondsNumberFormatter];
            [r19 initializeShortUniversalLinkRegex];
            [r19 initializeOptionalRedirectRegex];
            [r19 initializeUrlSessionConfiguration];
    }
    return;
}

+(void)initializeDateFormat {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [NSDateFormatter alloc];
    r0 = [r0 init];
    r8 = *0x1011dab40;
    *0x1011dab40 = r0;
    [r8 release];
    if ([NSCalendar instancesRespondToSelector:@selector(calendarWithIdentifier:)] != 0x0) {
            r2 = **_NSCalendarIdentifierGregorian;
            r20 = *0x1011dab40;
            r0 = [NSCalendar calendarWithIdentifier:r2];
            r29 = r29;
            r19 = [r0 retain];
            [r20 setCalendar:r19];
            [r19 release];
    }
    r19 = *0x1011dab40;
    r20 = [[NSLocale systemLocale] retain];
    [r19 setLocale:r20];
    [r20 release];
    [*0x1011dab40 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'Z"];
    return;
}

+(void)initializeUniversalLinkRegex {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSRegularExpression regularExpressionWithPattern:@"https://[^.]*\.ulink\.adjust\.com/ulink/?(.*)" options:0x1 error:&var_38];
    r21 = r0;
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [var_38 retain];
    if ([ADJUtil isNotNull:r20] != 0x0) {
            r21 = [[ADJAdjustFactory logger] retain];
            r22 = [[r20 description] retain];
            [r21 error:@"Universal link regex rule error (%@)"];
            [r22 release];
            [r21 release];
    }
    else {
            objc_storeStrong(0x1011dab10, r21);
    }
    [r19 release];
    [r20 release];
    return;
}

+(void)initializeShortUniversalLinkRegex {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSRegularExpression regularExpressionWithPattern:@"http[s]?://[a-z0-9]{4}\.adj\.st/?(.*)" options:0x1 error:&var_38];
    r21 = r0;
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [var_38 retain];
    if ([ADJUtil isNotNull:r20] != 0x0) {
            r21 = [[ADJAdjustFactory logger] retain];
            r22 = [[r20 description] retain];
            [r21 error:@"Short Universal link regex rule error (%@)"];
            [r22 release];
            [r21 release];
    }
    else {
            objc_storeStrong(0x1011dab28, r21);
    }
    [r19 release];
    [r20 release];
    return;
}

+(void)initializeOptionalRedirectRegex {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSRegularExpression regularExpressionWithPattern:@"adjust_redirect=[^&#]*" options:0x1 error:&var_38];
    r21 = r0;
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [var_38 retain];
    if ([ADJUtil isNotNull:r20] != 0x0) {
            r21 = [[ADJAdjustFactory logger] retain];
            r22 = [[r20 description] retain];
            [r21 error:@"Optional redirect regex rule error (%@)"];
            [r22 release];
            [r21 release];
    }
    else {
            objc_storeStrong(0x1011dab20, r21);
    }
    [r19 release];
    [r20 release];
    return;
}

+(void)initializeSecondsNumberFormatter {
    r0 = [NSNumberFormatter alloc];
    r0 = [r0 init];
    r8 = *0x1011dab18;
    *0x1011dab18 = r0;
    [r8 release];
    [*0x1011dab18 setPositiveFormat:@"0.0"];
    return;
}

+(void)initializeUrlSessionConfiguration {
    r0 = [NSURLSessionConfiguration defaultSessionConfiguration];
    r0 = [r0 retain];
    r8 = *0x1011dab30;
    *0x1011dab30 = r0;
    [r8 release];
    return;
}

+(void *)baseUrl {
    objc_retainAutorelease(@"https://app.adjust.com");
    return @"https://app.adjust.com";
}

+(void)updateUrlSessionConfiguration:(void *)arg2 {
    r0 = [arg2 userAgent];
    r0 = [r0 retain];
    r8 = *0x1011dab38;
    *0x1011dab38 = r0;
    [r8 release];
    return;
}

+(void *)clientSdk {
    objc_retainAutorelease(@"ios4.11.4");
    return @"ios4.11.4";
}

+(void *)formatSeconds1970:(double)arg2 {
    r20 = [[NSDate dateWithTimeIntervalSince1970:arg2] retain];
    r19 = [[self formatDate:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void)excludeFromBackup:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSURL fileURLWithPath:arg2];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 path];
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r21 = [r0 fileSystemRepresentation];
    [r0 release];
    r0 = [ADJAdjustFactory logger];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (getxattr(r21, "com.apple.MobileBackup", 0x0, 0x1, 0x0, 0x0) != -0x1 && removexattr(r21, "com.apple.MobileBackup", 0x0) == 0x0) {
            [r20 debug:@"Removed extended attribute on file '%@'"];
    }
    r0 = @(YES);
    r29 = r29;
    r23 = [r0 retain];
    r22 = [r19 setResourceValue:r23 forKey:**_NSURLIsExcludedFromBackupKey error:&var_38];
    r21 = [var_38 retain];
    [r23 release];
    if (r21 != 0x0 || (r22 ^ 0x1) != 0x0) {
            r22 = [[r19 lastPathComponent] retain];
            r23 = [[r21 localizedDescription] retain];
            [r20 debug:@"Failed to exclude '%@' from backup (%@)"];
            [r23 release];
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void *)formatDate:(void *)arg2 {
    r0 = *0x1011dab40;
    r0 = [r0 stringFromDate:arg2];
    return r0;
}

+(void)saveJsonResponse:(void *)arg2 responseData:(void *)arg3 {
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
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [ADJUtil buildJsonDict:r20 exceptionPtr:&var_38 errorPtr:&var_40];
    [r20 release];
    r20 = [r21 retain];
    r21 = [var_38 retain];
    r22 = [var_40 retain];
    if (r21 == 0x0) goto loc_1006958a4;

loc_100695834:
    r24 = [[r21 description] retain];
    r23 = [[NSString stringWithFormat:@"Failed to parse json response. (%@)"] retain];
    [r24 release];
    r0 = [ADJAdjustFactory logger];
    goto loc_100695914;

loc_100695914:
    r0 = [r0 retain];
    [r0 error:r23];
    [r0 release];
    [r19 setMessage:r23];
    [r23 release];
    goto loc_100695950;

loc_100695950:
    [r20 release];
    [r21 release];
    [r22 release];
    [r19 release];
    return;

loc_1006958a4:
    if (r22 == 0x0) goto loc_100695988;

loc_1006958a8:
    r24 = [[r22 localizedDescription] retain];
    r23 = [[NSString stringWithFormat:@"Failed to parse json response. (%@)"] retain];
    [r24 release];
    r0 = [ADJAdjustFactory logger];
    goto loc_100695914;

loc_100695988:
    [r19 setJsonResponse:r20];
    goto loc_100695950;
}

+(void *)getFullFilename:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1);
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r22 = [r0 stringByAppendingPathComponent:r19];
    [r19 release];
    r19 = [r22 retain];
    [r0 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)buildJsonDict:(void *)arg2 exceptionPtr:(void * *)arg3 errorPtr:(void * *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg4;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r20 = [[NSJSONSerialization JSONObjectWithData:r19 options:0x0 error:r21] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)readObject:(void *)arg2 objectName:(void *)arg3 class:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[ADJAdjustFactory logger] retain];
    r22 = [[ADJUtil getFullFilename:r19] retain];
    r0 = [NSKeyedUnarchiver unarchiveObjectWithFile:r22];
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 isKindOfClass:r2] != 0x0) {
            [r21 debug:@"Read %@: %@"];
            [r22 release];
    }
    else {
            if (r23 != 0x0) {
                    [r21 error:@"Failed to read %@ file"];
            }
            else {
                    [r21 verbose:@"%@ file not found"];
            }
            [r23 release];
            [r22 release];
            r23 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

+(void)writeObject:(void *)arg2 filename:(void *)arg3 objectName:(void *)arg4 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r22 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [[ADJAdjustFactory logger] retain];
    r23 = [ADJUtil getFullFilename:r22];
    [r22 release];
    r22 = [r23 retain];
    if ([NSKeyedArchiver archiveRootObject:r19 toFile:r22] != 0x0) {
            [ADJUtil excludeFromBackup:r22];
            r1 = @selector(debug:);
    }
    else {
            r1 = @selector(error:);
    }
    objc_msgSend(r21, r1);
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void *)queryString:(void *)arg2 {
    r0 = [ADJUtil queryString:arg2 queueSize:0x0];
    return r0;
}

+(bool)isNull:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r19 = @class(NSNull);
            r21 = [r2 retain];
            r20 = [[r19 null] retain];
            if (r20 == r21) {
                    r19 = @class(NSNull);
                    if (CPU_FLAGS & E) {
                            r19 = 0x1;
                    }
            }
            [r21 release];
            [r20 release];
    }
    else {
            r19 = 0x1;
    }
    r0 = r19;
    return r0;
}

+(void *)queryString:(void *)arg2 queueSize:(unsigned long long)arg3 {
    r31 = r31 - 0x180;
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
    var_150 = arg3;
    r20 = [arg2 retain];
    r0 = [NSMutableArray array];
    r29 = &saved_fp;
    var_138 = [r0 retain];
    r0 = [r20 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    r2 = &var_128;
    var_130 = r0;
    var_148 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 != 0x0) {
            do {
                    r20 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(var_130);
                            }
                            r28 = @selector(addObject:);
                            r27 = @selector(stringWithFormat:);
                            r21 = *(0x0 + r20 * 0x8);
                            r0 = [var_130 objectForKey:r21];
                            r0 = [r0 retain];
                            [[r0 adjUrlEncode] retain];
                            [[r21 adjUrlEncode] retain];
                            r0 = objc_msgSend(@class(NSString), r27);
                            r29 = r29;
                            [r0 retain];
                            objc_msgSend(var_138, r28);
                            [r24 release];
                            [r21 release];
                            [r19 release];
                            [r22 release];
                            r20 = r20 + 0x1;
                    } while (r20 < r23);
                    r2 = &var_128;
                    r23 = objc_msgSend(var_130, var_148);
            } while (r23 != 0x0);
    }
    [var_130 release];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    r0 = [ADJUtil formatSeconds1970:r2];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[r0 adjUrlEncode] retain];
    r0 = [NSString stringWithFormat:@"%@=%@"];
    r29 = r29;
    r24 = [r0 retain];
    r28 = var_138;
    [r28 addObject:r24];
    r8 = var_150;
    if (r8 != 0x0) {
            r0 = @class(NSString);
            r0 = [r0 stringWithFormat:@"%lu"];
            r0 = [r0 retain];
            r19 = r0;
            r21 = [[r0 adjUrlEncode] retain];
            r0 = @class(NSString);
            r0 = [r0 stringWithFormat:@"%@=%@"];
            r29 = r29;
            r25 = [r0 retain];
            [r28 addObject:r25];
            [r25 release];
            [r21 release];
            [r19 release];
    }
    var_68 = **___stack_chk_guard;
    r21 = [[r28 componentsJoinedByString:@"&"] retain];
    [r24 release];
    [r23 release];
    [r22 release];
    [r28 release];
    [var_130 release];
    if (**___stack_chk_guard == var_68) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(bool)isNotNull:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r19 = @class(NSNull);
            r21 = [r2 retain];
            r20 = [[r19 null] retain];
            if (r20 != r21) {
                    r19 = @class(NSNull);
                    if (CPU_FLAGS & NE) {
                            r19 = 0x1;
                    }
            }
            [r21 release];
            [r20 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

+(void *)formatErrorMessage:(void *)arg2 systemErrorMessage:(void *)arg3 suffixErrorMessage:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r22 = [NSString stringWithFormat:r2];
    [r20 release];
    [r21 release];
    r20 = [r22 retain];
    if (r19 != 0x0) {
            r0 = [r20 stringByAppendingFormat:@" %@"];
            r0 = [r0 retain];
    }
    else {
            r0 = [r20 retain];
    }
    [r20 release];
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

+(void)sendPostRequest:(void *)arg2 queueSize:(unsigned long long)arg3 prefixErrorMessage:(void *)arg4 suffixErrorMessage:(void *)arg5 activityPackage:(void *)arg6 responseDataHandler:(void *)arg7 {
    r24 = [arg2 retain];
    r22 = [arg4 retain];
    r21 = [arg5 retain];
    r20 = [arg6 retain];
    r25 = @class(ADJUtil);
    r19 = [arg7 retain];
    r23 = [r25 requestForPackage:r20 baseUrl:r24 queueSize:arg3];
    [r24 release];
    r23 = [r23 retain];
    [ADJUtil sendRequest:r23 prefixErrorMessage:r22 suffixErrorMessage:r21 activityPackage:r20 responseDataHandler:r19];
    [r19 release];
    [r20 release];
    [r21 release];
    [r22 release];
    [r23 release];
    return;
}

+(void)sendRequest:(void *)arg2 prefixErrorMessage:(void *)arg3 activityPackage:(void *)arg4 responseDataHandler:(void *)arg5 {
    r22 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    [ADJUtil sendRequest:r22 prefixErrorMessage:r21 suffixErrorMessage:0x0 activityPackage:r20 responseDataHandler:arg5];
    [r20 release];
    [r21 release];
    [r22 release];
    return;
}

+(void *)requestForPackage:(void *)arg2 baseUrl:(void *)arg3 queueSize:(unsigned long long)arg4 {
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r24 = [[arg2 path] retain];
    r20 = [NSURL URLWithString:r24 relativeToURL:r19];
    [r19 release];
    r19 = [r20 retain];
    [r24 release];
    r0 = [NSMutableURLRequest requestWithURL:r19];
    r0 = [r0 retain];
    r20 = r0;
    [r0 setTimeoutInterval:r19];
    [r20 setHTTPMethod:@"POST"];
    [r20 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    r25 = [[arg2 clientSdk] retain];
    [r20 setValue:r25 forHTTPHeaderField:@"Client-Sdk"];
    [r25 release];
    r23 = [arg2 parameters];
    [r22 release];
    r22 = [r23 retain];
    r21 = [[ADJUtil queryString:r22 queueSize:arg4] retain];
    [r22 release];
    r0 = objc_retainAutorelease(r21);
    r22 = [[NSData dataWithBytes:[r0 UTF8String] length:[r0 length]] retain];
    [r20 setHTTPBody:r22];
    [r22 release];
    [r0 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void)sendRequest:(void *)arg2 prefixErrorMessage:(void *)arg3 suffixErrorMessage:(void *)arg4 activityPackage:(void *)arg5 responseDataHandler:(void *)arg6 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r23 = [arg6 retain];
    r24 = NSClassFromString(@"NSURLSession");
    if (*0x1011dab38 != 0x0) {
            [r19 setValue:r2 forHTTPHeaderField:@"User-Agent"];
    }
    if (r24 != 0x0) {
            r1 = @selector(sendNSURLSessionRequest:prefixErrorMessage:suffixErrorMessage:activityPackage:responseDataHandler:);
    }
    else {
            r1 = @selector(sendNSURLConnectionRequest:prefixErrorMessage:suffixErrorMessage:activityPackage:responseDataHandler:);
    }
    objc_msgSend(@class(ADJUtil), r1);
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

+(void)sendNSURLSessionRequest:(void *)arg2 prefixErrorMessage:(void *)arg3 suffixErrorMessage:(void *)arg4 activityPackage:(void *)arg5 responseDataHandler:(void *)arg6 {
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
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    r22 = [arg4 retain];
    r23 = [arg5 retain];
    r20 = [arg6 retain];
    if ([r23 activityKind] != 0x2 && [r23 activityKind] != 0x1) {
            if ([r23 activityKind] == 0x6) {
                    r0 = [r23 parameters];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 objectForKey:@"tce"];
                    r0 = [r0 retain];
                    r26 = [r0 intValue];
                    [r0 release];
                    [r24 release];
                    r0 = [ADJConnectionValidator alloc];
                    r0 = [r0 init];
                    r25 = r0;
                    [r0 setExpectedTce:r26];
                    [r25 setDidValidationHappen:0x0];
                    r24 = [[NSURLSession sessionWithConfiguration:*0x1011dab30 delegate:r25 delegateQueue:0x0] retain];
            }
            else {
                    r24 = [[NSURLSession sessionWithConfiguration:*0x1011dab30] retain];
                    r25 = 0x0;
            }
    }
    else {
            r0 = [r23 parameters];
            r0 = [r0 retain];
            r24 = r0;
            r0 = [r0 objectForKey:@"tce"];
            r0 = [r0 retain];
            r26 = [r0 intValue];
            [r0 release];
            [r24 release];
            r0 = [ADJConnectionValidator alloc];
            r0 = [r0 init];
            r25 = r0;
            [r0 setExpectedTce:r26];
            [r25 setDidValidationHappen:0x0];
            r24 = [[NSURLSession sessionWithConfiguration:*0x1011dab30 delegate:r25 delegateQueue:0x0] retain];
    }
    var_68 = r21;
    r21 = [r21 retain];
    var_60 = r22;
    r22 = [r22 retain];
    var_58 = r23;
    r23 = [r23 retain];
    var_50 = r25;
    r25 = [r25 retain];
    var_48 = r20;
    r20 = [r20 retain];
    r26 = [r24 dataTaskWithRequest:r19 completionHandler:&var_88];
    [r19 release];
    r0 = [r26 retain];
    [r0 resume];
    [r24 finishTasksAndInvalidate];
    [r0 release];
    [var_48 release];
    [var_50 release];
    [var_58 release];
    [var_60 release];
    [var_68 release];
    [r20 release];
    [r25 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r24 release];
    return;
}

+(void)sendNSURLConnectionRequest:(void *)arg2 prefixErrorMessage:(void *)arg3 suffixErrorMessage:(void *)arg4 activityPackage:(void *)arg5 responseDataHandler:(void *)arg6 {
    r23 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg4 retain];
    r24 = [arg5 retain];
    r21 = [arg6 retain];
    r25 = [NSURLConnection sendSynchronousRequest:r23 returningResponse:&stack[-104] error:&var_60];
    [r23 release];
    r23 = [r25 retain];
    r26 = [stack[-104] retain];
    r27 = [ADJUtil completionHandler:r23 response:r26 error:[var_60 retain] prefixErrorMessage:r20 suffixErrorMessage:r22 activityPackage:r24];
    [r26 release];
    [r24 release];
    [r22 release];
    [r20 release];
    (*(r21 + 0x10))(arg6, [r27 retain]);
    [r21 release];
    [r20 release];
    [r23 release];
    [r25 release];
    return;
}

+(void *)idfa {
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r20 = [[r0 adjIdForAdvertisers] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)convertDictionaryValues:(void *)arg2 {
    r31 = r31 - 0x170;
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
    var_120 = [[NSMutableDictionary alloc] initWithCapacity:[r20 count]];
    r0 = [r20 retain];
    r20 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_148 = r1;
    r22 = objc_msgSend(r0, r1);
    if (r22 != 0x0) {
            do {
                    r19 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r23 = *(0x0 + r19 * 0x8);
                            r0 = [r20 objectForKey:r23];
                            r29 = r29;
                            r21 = [r0 retain];
                            if ([r21 isKindOfClass:[NSDictionary class]] != 0x0) {
                                    r0 = [ADJUtil convertDictionaryValues:r21];
                                    r29 = r29;
                            }
                            else {
                                    if ([r21 isKindOfClass:[NSDate class]] != 0x0) {
                                            r0 = [ADJUtil formatDate:r21];
                                            r29 = r29;
                                    }
                                    else {
                                            r0 = [NSString stringWithFormat:r2];
                                            r29 = r29;
                                    }
                            }
                            r27 = [r0 retain];
                            [var_120 setObject:r27 forKey:r23];
                            [r27 release];
                            [r21 release];
                            r19 = r19 + 0x1;
                    } while (r19 < r22);
                    r22 = objc_msgSend(r20, var_148);
            } while (r22 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [var_120 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

+(void *)getUpdateTime {
    r19 = [[ADJAdjustFactory logger] retain];
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 pathForResource:@"Info" ofType:@"plist"] retain];
    [r0 release];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 attributesOfItemAtPath:r20 error:&var_38];
    r0 = [r0 retain];
    r22 = [[r0 objectForKey:**_NSFileModificationDate] retain];
    [r0 release];
    [r21 release];
    [r20 release];
    r20 = [[ADJUtil formatDate:r22] retain];
    [r19 release];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getInstallTime {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[ADJAdjustFactory logger] retain];
    r0 = NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1);
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 count] != 0x0) {
            r0 = [r21 objectAtIndex:r2];
            r29 = r29;
            r20 = [r0 retain];
    }
    else {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 bundlePath];
            r29 = r29;
            r20 = [r0 retain];
            [r22 release];
    }
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 attributesOfItemAtPath:r20 error:0x0];
    r0 = [r0 retain];
    r23 = [[r0 objectForKeyedSubscript:**_NSFileCreationDate] retain];
    [r0 release];
    [r22 release];
    [r21 release];
    r21 = [[ADJUtil formatDate:r23] retain];
    [r20 release];
    [r23 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

+(void *)completionHandler:(void *)arg2 response:(void *)arg3 error:(void *)arg4 prefixErrorMessage:(void *)arg5 suffixErrorMessage:(void *)arg6 activityPackage:(void *)arg7 {
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
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r22 = [arg5 retain];
    r24 = [arg6 retain];
    r0 = [ADJResponseData buildResponseData:arg7];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r21 == 0x0) goto loc_100696f50;

loc_100696ee8:
    r26 = [[r21 localizedDescription] retain];
    r25 = [[ADJUtil formatErrorMessage:r22 systemErrorMessage:r26 suffixErrorMessage:r24] retain];
    [r26 release];
    r0 = [ADJAdjustFactory logger];
    goto loc_100696fb0;

loc_100696fb0:
    r0 = [r0 retain];
    [r0 error:r25];
    [r0 release];
    [r23 setMessage:r25];
    [r23 retain];
    goto loc_100696fec;

loc_100696fec:
    [r25 release];
    [r23 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;

loc_100696f50:
    if ([ADJUtil isNull:r2] == 0x0) goto loc_100697048;

loc_100696f6c:
    r25 = [[ADJUtil formatErrorMessage:r22 systemErrorMessage:@"empty error" suffixErrorMessage:r24] retain];
    r0 = [ADJAdjustFactory logger];
    goto loc_100696fb0;

loc_100697048:
    r0 = [NSString alloc];
    r0 = [r0 initWithData:r19 encoding:0x4];
    r27 = [[r0 adjTrim] retain];
    [r0 release];
    var_60 = [r20 statusCode];
    r0 = [ADJAdjustFactory logger];
    r0 = [r0 retain];
    var_58 = r27;
    [r0 verbose:@"Response: %@"];
    [r0 release];
    [ADJUtil saveJsonResponse:r19 responseData:r23];
    r25 = @class(ADJUtil);
    r0 = [r23 jsonResponse];
    r29 = r29;
    r27 = [r0 retain];
    r25 = [r25 isNull:r2];
    [r27 release];
    r0 = r23;
    if (r25 != 0x0) {
            [r0 retain];
            r25 = var_58;
    }
    else {
            r0 = [r0 jsonResponse];
            r0 = [r0 retain];
            r28 = [[r0 objectForKey:@"message"] retain];
            var_70 = r28;
            [r0 release];
            [r23 setMessage:r28];
            r0 = [r23 jsonResponse];
            r0 = [r0 retain];
            r28 = [[r0 objectForKey:@"timestamp"] retain];
            [r23 setTimeStamp:r28];
            [r28 release];
            [r0 release];
            r0 = [r23 jsonResponse];
            r0 = [r0 retain];
            r26 = r0;
            r0 = [r0 objectForKey:@"adid"];
            r29 = r29;
            r25 = [r0 retain];
            [r23 setAdid:r25];
            [r25 release];
            r0 = r26;
            r26 = var_70;
            [r0 release];
            if (r26 == 0x0) {
                    r26 = @"No message found";
                    [r26 retain];
            }
            r25 = [[ADJAdjustFactory logger] retain];
            if (var_60 == 0xc8) {
                    [r25 info:@"%@"];
                    [r25 release];
                    [r23 setSuccess:0x1];
            }
            else {
                    [r25 error:@"%@"];
                    [r25 release];
            }
            r25 = var_58;
            [r23 retain];
            [r26 release];
    }
    goto loc_100696fec;
}

+(void *)secondsNumberFormat:(double)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (d0 < 0x0) {
            asm { fcsel      d0, d1, d0, mi };
    }
    r19 = *0x1011dab18;
    r20 = [[NSNumber numberWithDouble:r2] retain];
    r19 = [[r19 stringFromNumber:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(double)randomInRange:(double)arg2 maxRange:(double)arg3 {
    var_10 = d9;
    stack[-24] = d8;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dab48 != -0x1) {
            dispatch_once(0x1011dab48, 0x100e8ae40);
    }
    r0 = drand48();
    return r0;
}

+(double)waitingTime:(long long)arg2 backoffStrategy:(void *)arg3 {
    var_30 = d9;
    stack[-56] = d8;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [arg3 retain];
    r19 = r0;
    r0 = [r0 minRetries];
    v8 = 0x0;
    if (r0 <= r20) {
            r0 = [r19 minRetries];
            asm { scvtf      d0, x8 };
            exp2(r0);
            [r19 secondMultiplier];
            [r19 maxWait];
            if (d8 * d0 < d0) {
                    asm { fcsel      d9, d8, d0, mi };
            }
            [r19 minRange];
            v8 = v0;
            [r19 maxRange];
            [ADJUtil randomInRange:r2 maxRange:r3];
    }
    r0 = [r19 release];
    return r0;
}

+(void)launchInMainThread:(void *)arg2 selector:(void *)arg3 withObject:(void *)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg3;
    r19 = [arg2 retain];
    r21 = [arg4 retain];
    if ([ADJAdjustFactory testing] != 0x0) {
            r0 = [ADJAdjustFactory logger];
            r0 = [r0 retain];
            [r0 debug:@"Launching in the background for testing"];
            [r0 release];
            [r19 performSelectorInBackground:r20 withObject:r21];
    }
    else {
            [r19 performSelectorOnMainThread:r20 withObject:r21 waitUntilDone:0x0];
    }
    [r21 release];
    [r19 release];
    return;
}

+(void *)convertUniversalLink:(void *)arg2 scheme:(void *)arg3 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [ADJAdjustFactory logger];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if ([ADJUtil isNull:r2] != 0x0) {
            [r21 error:@"Received universal link is nil"];
            r23 = 0x0;
    }
    else {
            if (([ADJUtil isNull:r2] & 0x1) != 0x0 || [r20 length] == 0x0) {
                    [r21 warn:@"Non-empty scheme required, using the scheme \"AdjustUniversalScheme\""];
                    [@"AdjustUniversalScheme" retain];
                    [r20 release];
                    r20 = @"AdjustUniversalScheme";
            }
            r0 = [r19 absoluteString];
            r29 = r29;
            r22 = [r0 retain];
            if ([ADJUtil isNull:r2] != 0x0) {
                    [r21 error:r2];
                    r23 = 0x0;
            }
            else {
                    if (*0x1011dab10 != 0x0 && *qword_1011dab28 != 0x0) {
                            r24 = *0x1011dab10;
                            [r22 length];
                            r0 = [r24 matchesInString:r22 options:0x0 range:0x0];
                            r29 = r29;
                            r0 = [r0 retain];
                            r24 = r0;
                            if ([r0 count] == 0x0) {
                                    r25 = @selector(count);
                                    var_58 = r24;
                                    r24 = *0x1011dab28;
                                    [r22 length];
                                    r0 = [r24 matchesInString:r22 options:0x0 range:0x0];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    [var_58 release];
                                    r0 = objc_msgSend(r26, r25);
                                    r24 = r26;
                                    if (r0 != 0x0) {
                                            if ([r24 count] >= 0x2) {
                                                    [r21 error:@"Url match as universal link multiple times"];
                                                    r23 = 0x0;
                                            }
                                            else {
                                                    r0 = [r24 objectAtIndexedSubscript:0x0];
                                                    r29 = r29;
                                                    r0 = [r0 retain];
                                                    r25 = r0;
                                                    if ([r0 numberOfRanges] == 0x2) {
                                                            r9 = [[r22 substringWithRange:[r25 rangeAtIndex:0x1]] retain];
                                                            var_58 = r9;
                                                            var_60 = [[ADJUtil removeOptionalRedirect:r9] retain];
                                                            r27 = [[NSString stringWithFormat:@"%@://%@"] retain];
                                                            [r21 info:@"Converted deeplink from universal link %@"];
                                                            r26 = [[NSURL URLWithString:r2] retain];
                                                            if ([ADJUtil isNull:r2] != 0x0) {
                                                                    [r21 error:@"Unable to parse converted deeplink from universal link %@"];
                                                                    r23 = 0x0;
                                                            }
                                                            else {
                                                                    r23 = [r26 retain];
                                                            }
                                                            [r26 release];
                                                            [r27 release];
                                                            [var_60 release];
                                                            [var_58 release];
                                                    }
                                                    else {
                                                            [r21 error:@"Wrong number of ranges matched"];
                                                            r23 = 0x0;
                                                    }
                                                    [r25 release];
                                            }
                                    }
                                    else {
                                            [r21 error:@"Url doesn't match as universal link or short version"];
                                            r23 = 0x0;
                                            r24 = r26;
                                    }
                            }
                            else {
                                    if ([r24 count] >= 0x2) {
                                            [r21 error:@"Url match as universal link multiple times"];
                                            r23 = 0x0;
                                    }
                                    else {
                                            r0 = [r24 objectAtIndexedSubscript:0x0];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r25 = r0;
                                            if ([r0 numberOfRanges] == 0x2) {
                                                    r9 = [[r22 substringWithRange:[r25 rangeAtIndex:0x1]] retain];
                                                    var_58 = r9;
                                                    var_60 = [[ADJUtil removeOptionalRedirect:r9] retain];
                                                    r27 = [[NSString stringWithFormat:@"%@://%@"] retain];
                                                    [r21 info:@"Converted deeplink from universal link %@"];
                                                    r26 = [[NSURL URLWithString:r2] retain];
                                                    if ([ADJUtil isNull:r2] != 0x0) {
                                                            [r21 error:@"Unable to parse converted deeplink from universal link %@"];
                                                            r23 = 0x0;
                                                    }
                                                    else {
                                                            r23 = [r26 retain];
                                                    }
                                                    [r26 release];
                                                    [r27 release];
                                                    [var_60 release];
                                                    [var_58 release];
                                            }
                                            else {
                                                    [r21 error:@"Wrong number of ranges matched"];
                                                    r23 = 0x0;
                                            }
                                            [r25 release];
                                    }
                            }
                            [r24 release];
                    }
                    else {
                            [r21 error:r2];
                            r23 = 0x0;
                    }
            }
            [r22 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

+(void *)removeOptionalRedirect:(void *)arg2 {
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
    r0 = [ADJAdjustFactory logger];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (*0x1011dab20 == 0x0) goto loc_100697f28;

loc_100697eac:
    r22 = *0x1011dab20;
    [r19 length];
    r0 = [r22 matchesInString:r19 options:0x0 range:0x0];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 count] == 0x0) goto loc_100697f6c;

loc_100697f00:
    if ([r21 count] < 0x2) goto loc_100697f94;

loc_100697f14:
    r1 = @selector(error:);
    goto loc_100697f7c;

loc_100697f7c:
    objc_msgSend(r20, r1);
    r22 = [r19 retain];
    goto loc_100698260;

loc_100698260:
    [r21 release];
    goto loc_100698268;

loc_100698268:
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_100697f94:
    r0 = [r21 objectAtIndexedSubscript:0x0];
    r0 = [r0 retain];
    r27 = r0;
    r23 = [[r19 substringToIndex:[r0 rangeAtIndex:0x0]] retain];
    r0 = [r19 substringFromIndex:r2];
    r29 = r29;
    r24 = [r0 retain];
    if ([r23 length] != 0x0 && [r24 length] != 0x0) {
            var_60 = r27;
            [r23 length] - 0x1;
            r27 = [[r23 substringFromIndex:r2] retain];
            r0 = [r24 substringToIndex:0x1];
            r29 = r29;
            var_58 = [r0 retain];
            if ([@"&" isEqualToString:r2] != 0x0) {
                    if ([@"&" isEqualToString:r2] != 0x0) {
                            r0 = [r23 substringToIndex:[r23 length] - 0x1];
                            r29 = r29;
                            var_68 = [r0 retain];
                            [r23 release];
                            r23 = var_68;
                    }
            }
            if ([@"&" isEqualToString:r2] != 0x0 && [@"#" isEqualToString:r2] != 0x0) {
                    r0 = [r23 substringToIndex:[r23 length] - 0x1];
                    r29 = r29;
                    var_68 = [r0 retain];
                    [r23 release];
                    r23 = var_68;
            }
            if ([@"?" isEqualToString:r2] != 0x0 && [@"#" isEqualToString:r2] != 0x0) {
                    r0 = [r23 substringToIndex:[r23 length] - 0x1];
                    r29 = r29;
                    r25 = [r0 retain];
                    [r23 release];
                    r23 = r25;
            }
            if ([@"?" isEqualToString:r2] != 0x0 && [@"&" isEqualToString:r2] != 0x0) {
                    r0 = [r24 substringFromIndex:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r24 release];
                    r24 = r22;
            }
            [var_58 release];
            [r27 release];
            r27 = var_60;
    }
    r22 = [[NSString stringWithFormat:r2] retain];
    [r24 release];
    [r23 release];
    [r27 release];
    goto loc_100698260;

loc_100697f6c:
    r1 = @selector(debug:);
    goto loc_100697f7c;

loc_100697f28:
    r0 = [ADJAdjustFactory logger];
    r0 = [r0 retain];
    [r0 error:@"Remove Optional Redirect regex not correctly configured"];
    [r0 release];
    r22 = [r19 retain];
    goto loc_100698268;
}

+(void)launchInMainThread:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if ([ADJAdjustFactory testing] != 0x0) {
            r0 = [ADJAdjustFactory logger];
            r0 = [r0 retain];
            [r0 debug:@"Launching in the background for testing"];
            [r0 release];
            r0 = dispatch_get_global_queue(0xffffffffffff8000, 0x0);
            r0 = [r0 retain];
            dispatch_async(r0, r19);
            [r19 release];
            r0 = r20;
    }
    else {
            dispatch_async(*__dispatch_main_q, r19);
            r0 = r19;
    }
    [r0 release];
    return;
}

+(bool)isValidParameter:(void *)arg2 attributeType:(void *)arg3 parameterName:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([ADJUtil isNull:r19] == 0x0) goto loc_1006986a4;

loc_10069866c:
    r22 = [[ADJAdjustFactory logger] retain];
    goto loc_1006986f4;

loc_1006986f4:
    [r22 error:r2];
    [r22 release];
    r22 = 0x0;
    goto loc_100698710;

loc_100698710:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_1006986a4:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_10069870c;

loc_1006986c0:
    r22 = [[ADJAdjustFactory logger] retain];
    goto loc_1006986f4;

loc_10069870c:
    r22 = 0x1;
    goto loc_100698710;
}

+(void *)mergeParameters:(void *)arg2 source:(void *)arg3 parameterName:(void *)arg4 {
    r31 = r31 - 0x70;
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
    r21 = [arg4 retain];
    if (r19 == 0x0) goto loc_100698830;

loc_100698788:
    if (r20 == 0x0) goto loc_100698838;

loc_10069878c:
    r22 = [[[NSMutableDictionary dictionaryWithDictionary:r19] retain] retain];
    var_40 = r22;
    var_38 = [r21 retain];
    [r20 enumerateKeysAndObjectsUsingBlock:&var_60];
    r22 = [r22 retain];
    [var_38 release];
    [var_40 release];
    [r22 release];
    goto loc_100698844;

loc_100698844:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_100698838:
    r0 = r19;
    goto loc_10069883c;

loc_10069883c:
    r22 = [r0 retain];
    goto loc_100698844;

loc_100698830:
    r0 = r20;
    goto loc_10069883c;
}

+(void)launchInQueue:(void *)arg2 selfInject:(void *)arg3 block:(void *)arg4 {
    [arg2 retain];
    r20 = [arg3 retain];
    [arg4 retain];
    objc_initWeak(&saved_fp - 0x28, r20);
    [r20 release];
    objc_copyWeak(&var_58 + 0x28, &saved_fp - 0x28);
    var_38 = r19;
    [r19 retain];
    dispatch_async(r21, &var_58);
    [r21 release];
    [var_38 release];
    [r19 release];
    objc_destroyWeak(&var_58 + 0x28);
    objc_destroyWeak(&saved_fp - 0x28);
    return;
}

+(void *)getFilename:(void *)arg2 {
    r19 = [arg2 retain];
    r0 = NSSearchPathForDirectoriesInDomains(0x9, 0x1, 0x1);
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r22 = [r0 stringByAppendingPathComponent:r19];
    [r19 release];
    r19 = [r22 retain];
    [r0 release];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

+(bool)deleteFile:(void *)arg2 {
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
    r19 = [arg2 retain];
    r20 = [[ADJUtil getFilename:r19] retain];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (([r0 fileExistsAtPath:r20] & 0x1) != 0x0) {
            r22 = [r21 removeItemAtPath:r20 error:&var_48];
            r23 = [var_48 retain];
            if ((r22 & 0x1) == 0x0) {
                    r0 = [ADJAdjustFactory logger];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 verbose:@"Unable to delete file %@ at path %@"];
                    [r0 release];
            }
            if (r23 != 0x0) {
                    r24 = [[ADJAdjustFactory logger] retain];
                    r25 = [[r23 localizedDescription] retain];
                    [r24 error:@"Error (%@) deleting file %@"];
                    [r25 release];
                    [r24 release];
                    [r23 release];
            }
    }
    else {
            r0 = [ADJAdjustFactory logger];
            r0 = [r0 retain];
            [r0 verbose:@"File %@ does not exist at path %@"];
            [r0 release];
            r22 = 0x1;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(void)launchDeepLinkMain:(void *)arg2 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    var_40 = r20;
    r0 = [UIApplication sharedApplication];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 respondsToSelector:@selector(openURL:options:completionHandler:), r3, r4] == 0x0) goto loc_100698f74;

loc_100698e24:
    r21 = [[r19 methodSignatureForSelector:@selector(openURL:options:completionHandler:), r3, r4] retain];
    r0 = [NSInvocation invocationWithMethodSignature:r21];
    r0 = [r0 retain];
    r22 = r0;
    [r0 setSelector:@selector(openURL:options:completionHandler:), r3, r4];
    [r22 setTarget:r19];
    [[NSDictionary dictionaryWithObjects:r29 - 0x38 forKeys:r29 - 0x38 count:0x0] retain];
    var_58 = [r20 retain];
    objc_retainBlock(&var_78);
    r0 = [r22 setArgument:&var_40 atIndex:0x2];
    [r22 setArgument:&var_48 atIndex:0x3];
    [r22 setArgument:&var_50 atIndex:0x4];
    [r22 invoke];
    [var_50 release];
    [var_58 release];
    [var_48 release];
    [r22 release];
    goto loc_100698fc4;

loc_100698fc4:
    [r21 release];
    goto loc_100698fcc;

loc_100698fcc:
    [r19 release];
    [var_40 release];
    return;

loc_100698f74:
    if (([r19 openURL:r2] & 0x1) != 0x0) goto loc_100698fcc;

loc_100698f8c:
    r0 = [ADJAdjustFactory logger];
    r0 = [r0 retain];
    r21 = r0;
    [r0 error:@"Unable to open deep link (%@)"];
    goto loc_100698fc4;
}

+(void *)convertDeviceToken:(void *)arg2 {
    r2 = arg2;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r2 != 0x0) {
            r20 = [[r2 description] retain];
            r21 = [[NSCharacterSet characterSetWithCharactersInString:@"<>"] retain];
            r0 = [r20 stringByTrimmingCharactersInSet:r21];
            r29 = r29;
            r19 = [r0 retain];
            [r21 release];
            [r20 release];
            if (r19 != 0x0) {
                    r20 = [[r19 stringByReplacingOccurrencesOfString:@" " withString:@""] retain];
                    [r19 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

+(bool)contains:(void *)arg2 key:(void *)arg3 value:(void *)arg4 {
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
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r19 = [arg4 retain];
    r20 = [arg2 objectForKey:arg3];
    [r23 release];
    [r22 release];
    r20 = [r20 retain];
    if (([ADJUtil isNull:r20] & 0x1) != 0x0) {
            r21 = 0x0;
    }
    else {
            r22 = [[r20 description] retain];
            r21 = [r19 isEqualToString:r2];
            [r22 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(bool)checkAttributionDetails:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (([ADJUtil isNull:r2] & 0x1) == 0x0) goto loc_10069919c;

loc_100699194:
    r21 = 0x0;
    goto loc_100699378;

loc_100699378:
    [r19 release];
    r0 = r21;
    return r0;

loc_10069919c:
    r0 = [r19 objectForKey:r2];
    r29 = r29;
    r20 = [r0 retain];
    if (([ADJUtil isNull:r2] & 0x1) != 0x0) goto loc_10069936c;

loc_1006991d4:
    if (([ADJUtil contains:r2 key:r3 value:r4] & 0x1) == 0x0 || [ADJUtil contains:r2 key:r3 value:r4] == 0x0 || [ADJUtil contains:r2 key:r3 value:r4] == 0x0 || [ADJUtil contains:r2 key:r3 value:r4] == 0x0 || [ADJUtil contains:r2 key:r3 value:r4] == 0x0) goto loc_100699330;

loc_100699290:
    if ([ADJUtil contains:r2 key:r3 value:r4] == 0x0 || [ADJUtil contains:r2 key:r3 value:r4] == 0x0 || [ADJUtil contains:r2 key:r3 value:r4] == 0x0) goto loc_100699394;

loc_1006992fc:
    r21 = [[ADJAdjustFactory logger] retain];
    goto loc_10069940c;

loc_10069940c:
    [r21 debug:r2];
    [r21 release];
    r21 = 0x0;
    goto loc_100699370;

loc_100699370:
    [r20 release];
    goto loc_100699378;

loc_100699394:
    if ([ADJUtil contains:r2 key:r3 value:r4] == 0x0 || [ADJUtil contains:r2 key:r3 value:r4] == 0x0) goto loc_10069936c;

loc_1006993dc:
    r21 = [[ADJAdjustFactory logger] retain];
    goto loc_10069940c;

loc_10069936c:
    r21 = 0x1;
    goto loc_100699370;

loc_100699330:
    r0 = [ADJAdjustFactory logger];
    r0 = [r0 retain];
    [r0 debug:@"iAd attribution details has dummy common fields for both iAd3 and Apple Search Ads"];
    [r0 release];
    goto loc_10069936c;
}

@end