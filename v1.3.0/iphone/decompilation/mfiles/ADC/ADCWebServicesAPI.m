@implementation ADCWebServicesAPI

+(void *)userAgent {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011d2288 == 0x0) {
            if ([NSThread isMainThread] != 0x0) {
                    sub_1001ce6fc(0x100e71348);
            }
            else {
                    dispatch_sync(*__dispatch_main_q, 0x100e71388);
            }
    }
    r0 = *0x1011d2288;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)sharedAPI {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d2290 != -0x1) {
            dispatch_once(0x1011d2290, &var_28);
    }
    r0 = *0x1011d2298;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r0 = @class(NSMutableArray);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_downloaders));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_getRequests));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = @class(NSMutableArray);
            r0 = [r0 new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_postRequests));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r20 = [[NSURLSessionConfiguration defaultSessionConfiguration] retain];
            r21 = [[NSURLCache alloc] initWithMemoryCapacity:0x0 diskCapacity:0x0 diskPath:0x0];
            [r20 setURLCache:r21];
            [r21 release];
            [r20 setRequestCachePolicy:0x1];
            r0 = [NSURLSession sessionWithConfiguration:r20 delegate:r19 delegateQueue:0x0];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_httpSession));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

+(void)getWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 completion:(void *)arg4 {
    r31 = r31 - 0x120;
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
    r26 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    if (r20 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 == 0x0) {
                    r21 = @"";
                    [r21 retain];
            }
            r27 = [[r19 objectForKeyedSubscript:r2] retain];
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            var_EC = [r0 boolValue];
                            [r0 release];
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r0 = [r0 retain];
                            r28 = [r0 boolValue];
                            [r0 release];
                            r0 = [NSMutableURLRequest requestWithURL:r22];
                            r0 = [r0 retain];
                            r25 = r0;
                            [r0 setAllowsCellularAccess:r28 ^ 0x1];
                            r24 = [[r26 userAgent] retain];
                            [r25 setValue:r24 forHTTPHeaderField:@"User-Agent"];
                            [r24 release];
                            var_F8 = [ADCHTTPConnection alloc];
                            r0 = [ADCWebServicesAPI sharedAPI];
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 httpSession];
                            r0 = [r0 retain];
                            var_E8 = r22;
                            var_C0 = [r19 retain];
                            var_B8 = [r23 retain];
                            var_B0 = [r20 retain];
                            var_A8 = [r21 retain];
                            var_A0 = [r27 retain];
                            r22 = [var_F8 initWithRequest:r25 httpSession:r0 followRedirects:var_EC ^ 0x1 completionHandler:&var_E0];
                            r27 = r27;
                            r23 = r23;
                            r21 = r21;
                            [r0 release];
                            [r24 release];
                            r24 = [[ADCWebServicesAPI sharedAPI] retain];
                            [r24->_getRequests addObject:r22];
                            [r24 release];
                            [r22 start];
                            [r22 release];
                            [var_A0 release];
                            [var_A8 release];
                            [var_B0 release];
                            [var_B8 release];
                            [var_C0 release];
                            [r25 release];
                            r0 = var_E8;
                    }
                    else {
                            r28 = r22;
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCWebServicesAPI getWithDict:andModuleID:completion:]" line:0xa2 withFormat:@"Could not form a URL from source string: %@"];
                            r0 = [NSNumber numberWithBool:r2];
                            r29 = r29;
                            r26 = [r0 retain];
                            if (r27 != 0x0) {
                                    [NSNumber class];
                                    if (([r27 isKindOfClass:r2] & 0x1) != 0x0) {
                                            r22 = 0x0;
                                            r24 = r27;
                                    }
                                    else {
                                            r0 = [NSNumber numberWithInt:r2];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            r22 = 0x1;
                                    }
                            }
                            else {
                                    r0 = [NSNumber numberWithInt:r2];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    r22 = 0x1;
                            }
                            r0 = [NSDictionary dictionaryWithObjects:&stack[-152] forKeys:&var_98 count:0x2];
                            (*(r20 + 0x10))(r20, r21, [r0 retain]);
                            [r25 release];
                            if (r22 != 0x0) {
                                    [r24 release];
                            }
                            [r26 release];
                            r0 = r28;
                    }
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCWebServicesAPI getWithDict:andModuleID:completion:]" line:0x9b withFormat:@"No url supplied"];
                    r0 = [NSNumber numberWithBool:r2];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r27 != 0x0) {
                            [NSNumber class];
                            if (([r27 isKindOfClass:r2] & 0x1) != 0x0) {
                                    r22 = 0x0;
                                    r25 = r27;
                            }
                            else {
                                    r0 = [NSNumber numberWithInt:r2];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    r22 = 0x1;
                            }
                    }
                    else {
                            r0 = [NSNumber numberWithInt:r2];
                            r29 = r29;
                            r25 = [r0 retain];
                            r22 = 0x1;
                    }
                    (*(r20 + 0x10))(r20, r21, [[NSDictionary dictionaryWithObjects:r29 - 0x68 forKeys:r29 - 0x78 count:0x2] retain]);
                    [r26 release];
                    if (r22 != 0x0) {
                            [r25 release];
                    }
                    r0 = r24;
            }
            [r0 release];
            [r23 release];
            [r27 release];
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

+(void)downloadWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 completion:(void *)arg4 {
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
    r29 = &saved_fp;
    r26 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    if (r20 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r27 = [r0 retain];
                            if (r27 != 0x0) {
                                    r0 = [NSURL fileURLWithPath:r27];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    var_120 = r27;
                                    if (r23 != 0x0) {
                                            r27 = [[r23 lastPathComponent] retain];
                                            r0 = [r19 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r28 = [r0 boolValue];
                                            [r0 release];
                                            r0 = [NSMutableURLRequest requestWithURL:r22];
                                            r0 = [r0 retain];
                                            r25 = r0;
                                            [r0 setAllowsCellularAccess:r28 ^ 0x1];
                                            r26 = [[r26 userAgent] retain];
                                            [r25 setValue:r26 forHTTPHeaderField:@"User-Agent"];
                                            [r26 release];
                                            r28 = [ADCDownloader alloc];
                                            r0 = [ADCWebServicesAPI sharedAPI];
                                            r0 = [r0 retain];
                                            r24 = r0;
                                            r0 = [r0 httpSession];
                                            r0 = [r0 retain];
                                            var_128 = r22;
                                            r22 = r23;
                                            var_F8 = [r19 retain];
                                            var_F0 = [r21 retain];
                                            var_E8 = [r20 retain];
                                            var_E0 = r27;
                                            var_130 = [r27 retain];
                                            r27 = [r28 initWithRequest:r25 httpSession:r0 destination:r22 completionHandler:&var_118];
                                            [r0 release];
                                            [r24 release];
                                            r23 = [[ADCWebServicesAPI sharedAPI] retain];
                                            [r23->_downloaders addObject:r27];
                                            r0 = r23;
                                            r23 = r22;
                                            r22 = var_128;
                                            [r0 release];
                                            [r27 start];
                                            [r27 release];
                                            [var_E0 release];
                                            [var_E8 release];
                                            [var_F0 release];
                                            [var_F8 release];
                                            [var_130 release];
                                            r0 = r25;
                                    }
                                    else {
                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCWebServicesAPI downloadWithDict:andModuleID:completion:]" line:0x69 withFormat:@"Could not form a URL from destination string: %@"];
                                            r0 = @(NO);
                                            r29 = r29;
                                            r26 = [r0 retain];
                                            [NSString class];
                                            r8 = 0x101137000;
                                            if (objc_msgSend(r21, *(r8 + 0xc70)) != 0x0) {
                                                    if (!CPU_FLAGS & NE) {
                                                            r8 = @"";
                                                    }
                                                    else {
                                                            r8 = r21;
                                                    }
                                            }
                                            r0 = [NSDictionary dictionaryWithObjects:&stack[-216] forKeys:&var_D8 count:0x2];
                                            (*(r20 + 0x10))(r20, @"", [r0 retain]);
                                            [r27 release];
                                            r0 = r26;
                                    }
                                    [r0 release];
                                    [r23 release];
                                    r27 = var_120;
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCWebServicesAPI downloadWithDict:andModuleID:completion:]" line:0x61 withFormat:@"No filepath supplied"];
                                    r0 = @(NO);
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    [NSString class];
                                    r8 = 0x101137000;
                                    if (objc_msgSend(r21, *(r8 + 0xc70)) != 0x0) {
                                            if (!CPU_FLAGS & NE) {
                                                    r8 = @"";
                                            }
                                            else {
                                                    r8 = r21;
                                            }
                                    }
                                    r0 = [NSDictionary dictionaryWithObjects:&stack[-184] forKeys:&var_B8 count:0x2];
                                    (*(r20 + 0x10))(r20, @"", [r0 retain]);
                                    [r26 release];
                                    [r24 release];
                            }
                            r0 = r27;
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCWebServicesAPI downloadWithDict:andModuleID:completion:]" line:0x59 withFormat:@"Could not form a URL from source string: %@"];
                            r0 = @(NO);
                            r29 = r29;
                            r23 = [r0 retain];
                            [NSString class];
                            r8 = 0x101137000;
                            if (objc_msgSend(r21, *(r8 + 0xc70)) != 0x0) {
                                    if (!CPU_FLAGS & NE) {
                                            r8 = @"";
                                    }
                                    else {
                                            r8 = r21;
                                    }
                            }
                            (*(r20 + 0x10))(r20, @"", [[NSDictionary dictionaryWithObjects:r29 - 0x88 forKeys:r29 - 0x98 count:0x2] retain]);
                            [r25 release];
                            r0 = r23;
                    }
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCWebServicesAPI downloadWithDict:andModuleID:completion:]" line:0x51 withFormat:@"No url supplied"];
                    r22 = [@(NO) retain];
                    (*(r20 + 0x10))(r20, @"", [[NSDictionary dictionaryWithObjects:r29 - 0x68 forKeys:r29 - 0x78 count:0x2] retain]);
                    r0 = r24;
            }
            [r0 release];
            [r22 release];
            [r21 release];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)httpSession {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_httpSession)), 0x1);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_httpSession, 0x0);
    objc_storeStrong((int64_t *)&self->_postRequests, 0x0);
    objc_storeStrong((int64_t *)&self->_getRequests, 0x0);
    objc_storeStrong((int64_t *)&self->_downloaders, 0x0);
    return;
}

-(void)URLSession:(void *)arg2 task:(void *)arg3 willPerformHTTPRedirection:(void *)arg4 newRequest:(void *)arg5 completionHandler:(void *)arg6 {
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
    r29 = &saved_fp;
    r22 = self;
    r19 = [arg3 retain];
    var_58 = [arg5 retain];
    r21 = [arg6 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_getRequests));
    if ([*(r22 + r20) count] == 0x0) goto loc_1001d142c;

loc_1001d13b8:
    r24 = 0x0;
    goto loc_1001d13d0;

loc_1001d13d0:
    r0 = *(r22 + r20);
    r0 = [r0 objectAtIndexedSubscript:r24];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 dataTask];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_1001d14cc;

loc_1001d140c:
    r23 = @selector(count);
    [r27 release];
    r24 = r24 + 0x1;
    if (objc_msgSend(*(r22 + r20), r23) > r24) goto loc_1001d13d0;

loc_1001d142c:
    r23 = @selector(count);
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_postRequests));
    if (objc_msgSend(*(r22 + r20), r23) == 0x0) goto loc_1001d14b4;

loc_1001d1444:
    r24 = 0x0;
    goto loc_1001d1458;

loc_1001d1458:
    r0 = *(r22 + r20);
    r0 = [r0 objectAtIndexedSubscript:r24];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 dataTask];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_1001d14cc;

loc_1001d1494:
    r23 = @selector(count);
    [r27 release];
    r24 = r24 + 0x1;
    if (objc_msgSend(*(r22 + r20), r23) > r24) goto loc_1001d1458;

loc_1001d14b4:
    (*(r21 + 0x10))(r21, 0x0);
    r20 = var_58;
    goto loc_1001d1510;

loc_1001d1510:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1001d14cc:
    r0 = [r27 followRedirects];
    r8 = *(r21 + 0x10);
    if (r0 != 0x0) {
            r20 = var_58;
            (r8)(r21, r20);
    }
    else {
            (r8)(r21, 0x0);
            r20 = var_58;
    }
    [r27 release];
    goto loc_1001d1510;
}

+(void)postWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 completion:(void *)arg4 {
    r31 = r31 - 0x180;
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
    r27 = self;
    r19 = [arg2 retain];
    r20 = [arg4 retain];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) {
            r21 = @"";
            [r21 retain];
    }
    if (r20 != 0x0) {
            r25 = [[r19 objectForKeyedSubscript:r2] retain];
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0) {
                    var_130 = r25;
                    r0 = [NSURL URLWithString:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    var_138 = r22;
                    if (r22 != 0x0) {
                            r0 = [r19 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r0 = [r0 retain];
                            var_140 = r0;
                            if (r0 != 0x0) {
                                    r0 = [r19 objectForKeyedSubscript:r2];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    var_148 = r24;
                                    if (r24 != 0x0) {
                                            r0 = [r19 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            var_150 = r23;
                                            r23 = r24;
                                            var_154 = [r0 boolValue];
                                            [r0 release];
                                            r0 = [r19 objectForKeyedSubscript:r2];
                                            r0 = [r0 retain];
                                            r24 = [r0 boolValue];
                                            [r0 release];
                                            r0 = [NSMutableURLRequest requestWithURL:r22];
                                            r0 = [r0 retain];
                                            r28 = r0;
                                            [r0 setHTTPMethod:@"POST"];
                                            [r28 setValue:var_140 forHTTPHeaderField:@"Content-Type"];
                                            r26 = [[r23 dataUsingEncoding:0x4] retain];
                                            [r28 setHTTPBody:r26];
                                            [r26 release];
                                            [r28 setAllowsCellularAccess:r24 ^ 0x1];
                                            r24 = [[r27 userAgent] retain];
                                            [r28 setValue:r24 forHTTPHeaderField:@"User-Agent"];
                                            [r24 release];
                                            var_160 = [ADCHTTPConnection alloc];
                                            r0 = [ADCWebServicesAPI sharedAPI];
                                            r0 = [r0 retain];
                                            r25 = [[r0 httpSession] retain];
                                            var_108 = [r19 retain];
                                            var_100 = [var_150 retain];
                                            var_F8 = [r20 retain];
                                            var_F0 = [r21 retain];
                                            var_E8 = [var_130 retain];
                                            r27 = [r28 retain];
                                            r22 = [var_160 initWithRequest:r27 httpSession:r25 followRedirects:var_154 ^ 0x1 completionHandler:&var_128];
                                            [r25 release];
                                            [r0 release];
                                            r24 = [[ADCWebServicesAPI sharedAPI] retain];
                                            [r24->_postRequests addObject:r22];
                                            [r24 release];
                                            [r22 start];
                                            [r22 release];
                                            [r28 release];
                                            [var_E8 release];
                                            [var_F0 release];
                                            [var_F8 release];
                                            [var_100 release];
                                            [var_108 release];
                                            r0 = r27;
                                            r27 = var_130;
                                            [r0 release];
                                            r23 = var_150;
                                            r0 = var_148;
                                    }
                                    else {
                                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCWebServicesAPI postWithDict:andModuleID:completion:]" line:0xff withFormat:@"WebServices.post requires content"];
                                            r0 = [NSNumber numberWithBool:r2];
                                            r29 = r29;
                                            r26 = [r0 retain];
                                            r27 = var_130;
                                            if (r27 != 0x0) {
                                                    [NSNumber class];
                                                    if (([r27 isKindOfClass:r2] & 0x1) != 0x0) {
                                                            r22 = 0x0;
                                                            r24 = r27;
                                                    }
                                                    else {
                                                            r0 = [NSNumber numberWithInt:r2];
                                                            r29 = r29;
                                                            r24 = [r0 retain];
                                                            r22 = 0x1;
                                                    }
                                            }
                                            else {
                                                    r0 = [NSNumber numberWithInt:r2];
                                                    r29 = r29;
                                                    r24 = [r0 retain];
                                                    r22 = 0x1;
                                            }
                                            r0 = [NSDictionary dictionaryWithObjects:&stack[-216] forKeys:&var_D8 count:0x2];
                                            (*(r20 + 0x10))(r20, r21, [r0 retain]);
                                            [r25 release];
                                            if (r22 != 0x0) {
                                                    [r24 release];
                                            }
                                            [r26 release];
                                            r0 = var_148;
                                    }
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCWebServicesAPI postWithDict:andModuleID:completion:]" line:0xf8 withFormat:@"WebServices.post requires content_type"];
                                    r0 = [NSNumber numberWithBool:r2];
                                    r29 = r29;
                                    r26 = [r0 retain];
                                    r27 = var_130;
                                    if (r27 != 0x0) {
                                            [NSNumber class];
                                            if (([r27 isKindOfClass:r2] & 0x1) != 0x0) {
                                                    r22 = 0x0;
                                                    r24 = r27;
                                            }
                                            else {
                                                    r0 = [NSNumber numberWithInt:r2];
                                                    r29 = r29;
                                                    r24 = [r0 retain];
                                                    r22 = 0x1;
                                            }
                                    }
                                    else {
                                            r0 = [NSNumber numberWithInt:r2];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            r22 = 0x1;
                                    }
                                    r0 = [NSDictionary dictionaryWithObjects:r29 - 0xa8 forKeys:&var_B8 count:0x2];
                                    (*(r20 + 0x10))(r20, r21, [r0 retain]);
                                    [r25 release];
                                    if (r22 != 0x0) {
                                            [r24 release];
                                    }
                                    r0 = r26;
                            }
                            [r0 release];
                            r22 = var_138;
                            [var_140 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCWebServicesAPI postWithDict:andModuleID:completion:]" line:0xf0 withFormat:@"Could not form a URL from source string: %@"];
                            r0 = [NSNumber numberWithBool:r2];
                            r29 = r29;
                            r25 = [r0 retain];
                            r27 = var_130;
                            if (r27 != 0x0) {
                                    [NSNumber class];
                                    if (([r27 isKindOfClass:r2] & 0x1) != 0x0) {
                                            r22 = 0x0;
                                            r24 = r27;
                                    }
                                    else {
                                            r0 = [NSNumber numberWithInt:r2];
                                            r29 = r29;
                                            r24 = [r0 retain];
                                            r22 = 0x1;
                                    }
                            }
                            else {
                                    r0 = [NSNumber numberWithInt:r2];
                                    r29 = r29;
                                    r24 = [r0 retain];
                                    r22 = 0x1;
                            }
                            (*(r20 + 0x10))(r20, r21, [[NSDictionary dictionaryWithObjects:r29 - 0x88 forKeys:r29 - 0x98 count:0x2] retain]);
                            [r26 release];
                            if (r22 != 0x0) {
                                    [r24 release];
                            }
                            [r25 release];
                            r22 = var_138;
                    }
                    r0 = r22;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCWebServicesAPI postWithDict:andModuleID:completion:]" line:0xe9 withFormat:@"No url supplied"];
                    r0 = [NSNumber numberWithBool:r2];
                    r29 = r29;
                    r24 = [r0 retain];
                    r27 = r25;
                    if (r27 != 0x0) {
                            [NSNumber class];
                            if (([r27 isKindOfClass:r2] & 0x1) != 0x0) {
                                    r22 = 0x0;
                                    r25 = r27;
                            }
                            else {
                                    r0 = [NSNumber numberWithInt:r2];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    r22 = 0x1;
                            }
                    }
                    else {
                            r0 = [NSNumber numberWithInt:r2];
                            r29 = r29;
                            r25 = [r0 retain];
                            r22 = 0x1;
                    }
                    (*(r20 + 0x10))(r20, r21, [[NSDictionary dictionaryWithObjects:r29 - 0x68 forKeys:r29 - 0x78 count:0x2] retain]);
                    [r26 release];
                    if (r22 != 0x0) {
                            [r25 release];
                    }
                    r0 = r24;
            }
            [r0 release];
            [r23 release];
            [r27 release];
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end