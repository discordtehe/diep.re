@implementation ADCWebServicesMPAPI

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

-(void)download:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
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
    r23 = self;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [NSURL URLWithString:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            r0 = [NSURL fileURLWithPath:r22];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 != 0x0) {
                                    r26 = [[ADCMessage numberValueFromMessage:r19 withKey:@"max_size"] retain];
                                    r0 = [r19 dict];
                                    r0 = [r0 retain];
                                    r25 = r0;
                                    r0 = [r0 objectForKeyedSubscript:@"no_cellular"];
                                    r0 = [r0 retain];
                                    r28 = [r0 boolValue];
                                    [r0 release];
                                    [r25 release];
                                    r0 = [NSMutableURLRequest requestWithURL:r21];
                                    r0 = [r0 retain];
                                    [r0 setAllowsCellularAccess:r28 ^ 0x1];
                                    r27 = [ADCDownloader alloc];
                                    r28 = r23->_httpSession;
                                    var_68 = r26;
                                    r26 = [r26 retain];
                                    var_60 = [r20 retain];
                                    var_58 = [r19 retain];
                                    r27 = [r27 initWithRequest:r0 httpSession:r28 destination:r24 completionHandler:&var_90];
                                    [r23->_downloaders addObject:r27];
                                    [r27 start];
                                    [r27 release];
                                    [var_58 release];
                                    [var_60 release];
                                    [var_68 release];
                                    [r26 release];
                                    [r0 release];
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebServicesMPAPI download:]" line:0x49 withFormat:@"Could not form a URL from destination string: %@"];
                            }
                            [r24 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebServicesMPAPI download:]" line:0x43 withFormat:@"No filepath supplied"];
                    }
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebServicesMPAPI download:]" line:0x3d withFormat:@"Could not form a URL from source string: %@"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebServicesMPAPI download:]" line:0x37 withFormat:@"No url supplied"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)get:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xb0;
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
    r22 = self;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"url"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [NSURL URLWithString:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r23 = [[ADCMessage numberValueFromMessage:r19 withKey:@"max_size"] retain];
                    r0 = @class(ADCMessage);
                    r0 = [r0 numberValueFromMessage:r19 withKey:@"no_redirect"];
                    r0 = [r0 retain];
                    r25 = [r0 boolValue];
                    [r0 release];
                    r0 = @class(ADCMessage);
                    r0 = [r0 numberValueFromMessage:r19 withKey:@"wifi_only"];
                    r0 = [r0 retain];
                    r26 = [r0 boolValue];
                    [r0 release];
                    r0 = [NSMutableURLRequest requestWithURL:r21];
                    r0 = [r0 retain];
                    [r0 setAllowsCellularAccess:r26 ^ 0x1];
                    r26 = [ADCHTTPConnection alloc];
                    r27 = r22->_httpSession;
                    var_68 = r23;
                    r23 = [r23 retain];
                    var_60 = [r20 retain];
                    var_58 = [r19 retain];
                    r25 = [r26 initWithRequest:r0 httpSession:r27 followRedirects:r25 ^ 0x1 completionHandler:&var_90];
                    [r22->_getRequests addObject:r25];
                    [r25 start];
                    [r25 release];
                    [var_58 release];
                    [var_60 release];
                    [var_68 release];
                    [r23 release];
                    [r0 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebServicesMPAPI get:]" line:0x73 withFormat:@"Could not form a URL from source string: %@"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebServicesMPAPI get:]" line:0x6e withFormat:@"No url supplied"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)post:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xc0;
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
    r23 = self;
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"url"];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [NSURL URLWithString:r2];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [r19 dict];
                    r0 = [r0 retain];
                    r24 = r0;
                    r0 = [r0 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r22 = [r0 retain];
                    [r24 release];
                    if (r22 != 0x0) {
                            r0 = [r19 dict];
                            r0 = [r0 retain];
                            r25 = r0;
                            r0 = [r0 objectForKeyedSubscript:r2];
                            r29 = r29;
                            r24 = [r0 retain];
                            [r25 release];
                            if (r24 != 0x0) {
                                    var_A0 = [[ADCMessage numberValueFromMessage:r19 withKey:@"max_size"] retain];
                                    r0 = [r19 dict];
                                    r0 = [r0 retain];
                                    r27 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    var_98 = r24;
                                    var_A4 = [r0 boolValue];
                                    [r0 release];
                                    [r27 release];
                                    r0 = [r19 dict];
                                    r0 = [r0 retain];
                                    r25 = r0;
                                    r0 = [r0 objectForKeyedSubscript:r2];
                                    r0 = [r0 retain];
                                    r28 = [r0 boolValue];
                                    [r0 release];
                                    [r25 release];
                                    r0 = [NSMutableURLRequest requestWithURL:r21];
                                    r0 = [r0 retain];
                                    r26 = r0;
                                    [r0 setHTTPMethod:@"POST"];
                                    [r26 setValue:r22 forHTTPHeaderField:@"Content-Type"];
                                    r24 = [[var_98 dataUsingEncoding:0x4] retain];
                                    [r26 setHTTPBody:r24];
                                    [r24 release];
                                    [r26 setAllowsCellularAccess:r28 ^ 0x1];
                                    r24 = [ADCHTTPConnection alloc];
                                    r25 = r23->_httpSession;
                                    r28 = [var_A0 retain];
                                    var_60 = [r20 retain];
                                    var_58 = [r19 retain];
                                    r24 = [r24 initWithRequest:r26 httpSession:r25 followRedirects:var_A4 ^ 0x1 completionHandler:&var_90];
                                    [r23->_postRequests addObject:r24];
                                    [r24 start];
                                    r0 = r24;
                                    r24 = var_98;
                                    [r0 release];
                                    [var_58 release];
                                    [var_60 release];
                                    [var_A0 release];
                                    [r28 release];
                                    [r26 release];
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebServicesMPAPI post:]" line:0xae withFormat:@"WebServices.post requires content"];
                            }
                            [r24 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebServicesMPAPI post:]" line:0xa9 withFormat:@"WebServices.post requires content_type"];
                    }
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebServicesMPAPI post:]" line:0xa3 withFormat:@"Could not form a URL from source string: %@"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCWebServicesMPAPI post:]" line:0x9e withFormat:@"No url supplied"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)registerHandlers {
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(download:) forMessageType:@"WebServices.download"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(get:) forMessageType:@"WebServices.get"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:self selector:@selector(post:) forMessageType:@"WebServices.post"];
    [r0 release];
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
    if ([*(r22 + r20) count] == 0x0) goto loc_1001fbc80;

loc_1001fbc0c:
    r24 = 0x0;
    goto loc_1001fbc24;

loc_1001fbc24:
    r0 = *(r22 + r20);
    r0 = [r0 objectAtIndexedSubscript:r24];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 dataTask];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_1001fbd20;

loc_1001fbc60:
    r23 = @selector(count);
    [r27 release];
    r24 = r24 + 0x1;
    if (objc_msgSend(*(r22 + r20), r23) > r24) goto loc_1001fbc24;

loc_1001fbc80:
    r23 = @selector(count);
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_postRequests));
    if (objc_msgSend(*(r22 + r20), r23) == 0x0) goto loc_1001fbd08;

loc_1001fbc98:
    r24 = 0x0;
    goto loc_1001fbcac;

loc_1001fbcac:
    r0 = *(r22 + r20);
    r0 = [r0 objectAtIndexedSubscript:r24];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 dataTask];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == r19) goto loc_1001fbd20;

loc_1001fbce8:
    r23 = @selector(count);
    [r27 release];
    r24 = r24 + 0x1;
    if (objc_msgSend(*(r22 + r20), r23) > r24) goto loc_1001fbcac;

loc_1001fbd08:
    (*(r21 + 0x10))(r21, 0x0);
    r20 = var_58;
    goto loc_1001fbd64;

loc_1001fbd64:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_1001fbd20:
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
    goto loc_1001fbd64;
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

@end