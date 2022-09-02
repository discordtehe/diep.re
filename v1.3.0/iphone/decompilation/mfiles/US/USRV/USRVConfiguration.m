@implementation USRVConfiguration

-(void *)initWithConfigUrl:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 createModuleConfigurationList];
            objc_storeStrong((int64_t *)&r21->_configUrl, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 createModuleConfigurationList];
    }
    r0 = r19;
    return r0;
}

-(void *)buildQueryString {
    r0 = [NSDate date];
    r0 = [r0 retain];
    r19 = r0;
    [r0 timeIntervalSince1970];
    asm { fcvtzs     x22, d0 };
    [r19 release];
    [USRVSdkProperties getVersionCode];
    r21 = [[USRVSdkProperties getVersionName] retain];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)getWebAppApiClassList {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011e2d30 == 0x0) {
            [r0 createWebAppApiClassList];
    }
    r0 = objc_retainAutoreleaseReturnValue(*0x1011e2d30);
    return r0;
}

-(void *)getModuleConfigurationList {
    r0 = *0x1011e2d38;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)makeRequest {
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
    r20 = self;
    r21 = [[self configUrl] retain];
    r22 = [[r20 buildQueryString] retain];
    r0 = [NSString stringWithFormat:@"%@%@"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r22 release];
    [r21 release];
    r1 = @selector(getLogLevel);
    if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
            NSLog(@"%@/UnityAds: %s (line:%d) :: Requesting configuration with: %@", r1, @"%@%@", r3, r4);
    }
    [r20 setError:0x0];
    r0 = [USRVWebRequest alloc];
    r0 = [r0 initWithUrl:r19 requestType:@"GET" headers:0x0 connectTimeout:0x7530];
    r21 = r0;
    r22 = [[r0 makeRequest] retain];
    r0 = [r21 error];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            [r20 setError:@"ERROR_REQUESTING_CONFIG"];
            r1 = @selector(getLogLevel);
            if (objc_msgSend(@class(USRVDeviceLog), r1) >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Configuration request failed", r1, @"ERROR_REQUESTING_CONFIG", @"GET");
            }
    }
    else {
            var_58 = 0x0;
            r4 = &var_58;
            r2 = r22;
            r0 = [NSJSONSerialization JSONObjectWithData:r2 options:0x0 error:r4];
            r29 = r29;
            r23 = [r0 retain];
            r25 = [var_58 retain];
            if (r25 != 0x0) {
                    [r20 setError:@"ERROR_PARSING_CONFIG_RESPONSE"];
            }
            else {
                    if ([USRVDeviceLog getLogLevel] >= 0x4) {
                            r0 = [r23 description];
                            r29 = r29;
                            [r0 retain];
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Fetched config: %@", @selector(description), r2, 0x0, r4);
                            [r24 release];
                    }
                    r26 = [[r23 objectForKeyedSubscript:@"hash"] retain];
                    [r20 setWebViewHash:r26];
                    [r26 release];
                    r26 = [[r23 objectForKeyedSubscript:@"url"] retain];
                    [r20 setWebViewUrl:r26];
                    [r26 release];
                    r24 = [[r23 objectForKeyedSubscript:@"version"] retain];
                    [r20 setWebViewVersion:r24];
                    [r24 release];
            }
            [r23 release];
            [r25 release];
    }
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)getModuleConfiguration:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [r2 retain];
    if (*0x1011e2d40 == 0x0) goto loc_1000c9330;

loc_1000c92e4:
    r0 = *0x1011e2d40;
    r2 = r19;
    r0 = [r0 objectForKey:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1000c932c;

loc_1000c9310:
    r22 = [[*0x1011e2d40 objectForKey:r2] retain];
    goto loc_1000c94cc;

loc_1000c94cc:
    [r19 release];
    r0 = [r22 autorelease];
    return r0;

loc_1000c932c:
    if (*0x1011e2d40 == 0x0) {
            r0 = [NSMutableDictionary alloc];
            r0 = [r0 init];
            r8 = *0x1011e2d40;
            *0x1011e2d40 = r0;
            [r8 release];
    }
    goto loc_1000c9360;

loc_1000c9360:
    r20 = [NSClassFromString(r19) retain];
    if (r20 != 0x0) {
            r21 = [[NSClassFromString(r19) alloc] init];
            if (r21 != 0x0) {
                    if ([r21 respondsToSelector:r2] != 0x0) {
                            if ([USRVDeviceLog getLogLevel] >= 0x4) {
                                    NSLog(@"%@/UnityAds: %s (line:%d) :: Responds to selector", @selector(getLogLevel), @selector(getWebAppApiClassList), r3);
                            }
                            [*0x1011e2d40 setObject:r2 forKey:r3];
                            r22 = [r21 retain];
                    }
                    else {
                            r22 = 0x0;
                    }
            }
            else {
                    if ([USRVDeviceLog getLogLevel] >= 0x4) {
                            NSLog(@"%@/UnityAds: %s (line:%d) :: Object not created", @selector(getLogLevel), r2, r3);
                    }
                    r22 = 0x0;
            }
            [r21 release];
            [r20 release];
    }
    else {
            if ([USRVDeviceLog getLogLevel] >= 0x4) {
                    NSLog(@"%@/UnityAds: %s (line:%d) :: Class not found", @selector(getLogLevel), r2, r3);
            }
            r22 = 0x0;
    }
    goto loc_1000c94cc;

loc_1000c9330:
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 init];
    r8 = *0x1011e2d40;
    *0x1011e2d40 = r0;
    [r8 release];
    goto loc_1000c9360;
}

-(void *)webViewUrl {
    r0 = self->_webViewUrl;
    return r0;
}

-(void)createModuleConfigurationList {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSArray arrayWithObjects:&var_48 count:0x8];
    r0 = [r0 retain];
    r8 = *0x1011e2d38;
    *0x1011e2d38 = r0;
    [r8 release];
    if (**___stack_chk_guard != var_8) {
            __stack_chk_fail();
    }
    return;
}

-(void)createWebAppApiClassList {
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
    r21 = self;
    var_120 = [[NSMutableArray alloc] init];
    r0 = [r21 getModuleConfigurationList];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_128 = r1;
    r24 = objc_msgSend(r0, r1);
    if (r24 != 0x0) {
            do {
                    r19 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r22);
                            }
                            r0 = [r21 getModuleConfiguration:r2];
                            r29 = r29;
                            r28 = [r0 retain];
                            if (r28 != 0x0) {
                                    r0 = [r28 getWebAppApiClassList];
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    [r0 release];
                                    if (r0 != 0x0) {
                                            r0 = [r28 getWebAppApiClassList];
                                            r29 = r29;
                                            [r0 retain];
                                            [var_120 addObjectsFromArray:r2];
                                            [r20 release];
                                    }
                            }
                            [r28 release];
                            r19 = r19 + 0x1;
                    } while (r19 < r24);
                    r24 = objc_msgSend(r22, var_128);
            } while (r24 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    r0 = [NSArray alloc];
    r0 = [r0 initWithArray:var_120];
    r8 = *0x1011e2d30;
    *0x1011e2d30 = r0;
    [r8 release];
    [var_120 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void)setWebViewUrl:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webViewUrl, arg2);
    return;
}

-(void *)webViewHash {
    r0 = self->_webViewHash;
    return r0;
}

-(void)setWebViewHash:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webViewHash, arg2);
    return;
}

-(void *)webViewData {
    r0 = self->_webViewData;
    return r0;
}

-(void)setWebViewData:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webViewData, arg2);
    return;
}

-(void *)configUrl {
    r0 = self->_configUrl;
    return r0;
}

-(void)setConfigUrl:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_configUrl, arg2);
    return;
}

-(void *)webViewVersion {
    r0 = self->_webViewVersion;
    return r0;
}

-(void)setWebViewVersion:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_webViewVersion, arg2);
    return;
}

-(void *)error {
    r0 = self->_error;
    return r0;
}

-(void)setError:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_error, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_error, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewVersion, 0x0);
    objc_storeStrong((int64_t *)&self->_configUrl, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewData, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewHash, 0x0);
    objc_storeStrong((int64_t *)&self->_webViewUrl, 0x0);
    return;
}

@end