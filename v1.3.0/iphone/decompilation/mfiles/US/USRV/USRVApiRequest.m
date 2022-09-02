@implementation USRVApiRequest

+(void)WebViewExposed_get:(void *)arg2 url:(void *)arg3 headers:(void *)arg4 connectTimeout:(void *)arg5 callback:(void *)arg6 {
    r31 = r31 - 0x80;
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
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r22 = [arg6 retain];
    if (r20 != 0x0 && [r20 count] == 0x0) {
            [r20 release];
            r20 = 0x0;
    }
    r23 = [r23 retain];
    var_48 = r23;
    r0 = objc_retainBlock(&var_68);
    r24 = r0;
    r0 = [USRVApiRequest getHeadersMap:r20];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) {
            [USRVWebRequestQueue requestUrl:r19 type:@"GET" headers:r25 completeBlock:r24 connectTimeout:[r21 intValue]];
            [r22 invoke:r23];
    }
    else {
            r26 = [sub_1000e2900() retain];
            [r22 error:r26 arg1:0x0];
            [r26 release];
    }
    [r25 release];
    [r24 release];
    [var_48 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r23 release];
    return;
}

+(void)WebViewExposed_head:(void *)arg2 url:(void *)arg3 headers:(void *)arg4 connectTimeout:(void *)arg5 callback:(void *)arg6 {
    r31 = r31 - 0x80;
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
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r22 = [arg6 retain];
    if (r20 != 0x0 && [r20 count] == 0x0) {
            [r20 release];
            r20 = 0x0;
    }
    r23 = [r23 retain];
    var_48 = r23;
    r0 = objc_retainBlock(&var_68);
    r24 = r0;
    r0 = [USRVApiRequest getHeadersMap:r20];
    r29 = r29;
    r25 = [r0 retain];
    if (r25 != 0x0) {
            [USRVWebRequestQueue requestUrl:r19 type:@"HEAD" headers:r25 completeBlock:r24 connectTimeout:[r21 intValue]];
            [r22 invoke:r23];
    }
    else {
            r26 = [sub_1000e2900() retain];
            [r22 error:r26 arg1:0x0];
            [r26 release];
    }
    [r25 release];
    [r24 release];
    [var_48 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r23 release];
    return;
}

+(void)WebViewExposed_post:(void *)arg2 url:(void *)arg3 body:(void *)arg4 headers:(void *)arg5 connectTimeout:(void *)arg6 callback:(void *)arg7 {
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
    r29 = &saved_fp;
    r24 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [arg4 retain];
    r21 = [arg5 retain];
    r22 = [arg6 retain];
    r23 = [arg7 retain];
    if (r21 != 0x0 && [r21 count] == 0x0) {
            [r21 release];
            r21 = 0x0;
    }
    r24 = [r24 retain];
    var_58 = r24;
    r0 = objc_retainBlock(&var_78);
    r25 = r0;
    r0 = [USRVApiRequest getHeadersMap:r21];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 != 0x0) {
            [USRVWebRequestQueue requestUrl:r19 type:@"POST" headers:r26 body:r20 completeBlock:r25 connectTimeout:[r22 intValue]];
            [r23 invoke:r24];
    }
    else {
            r27 = [sub_1000e2900() retain];
            [r23 error:r27 arg1:0x0];
            [r27 release];
    }
    [r26 release];
    [r25 release];
    [var_58 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    [r24 release];
    return;
}

+(void)WebViewExposed_setConcurrentRequestCount:(void *)arg2 callback:(void *)arg3 {
    r21 = [arg2 retain];
    r24 = [arg3 retain];
    r20 = [arg2 intValue];
    [r21 release];
    [USRVWebRequestQueue setConcurrentRequestCount:r20];
    [arg3 invoke:0x0];
    [r24 release];
    return;
}

+(void *)getHeadersArray:(void *)arg2 {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    var_38 = &var_40;
    var_18 = [[NSArray array] retain];
    if (r19 != 0x0 && [r19 count] != 0x0) {
            [r19 enumerateKeysAndObjectsUsingBlock:&var_68];
    }
    [*(var_38 + 0x28) retain];
    _Block_object_dispose(&var_40, 0x8);
    [var_18 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getHeadersMap:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    var_58 = [[NSMutableDictionary alloc] init];
    if (r19 == 0x0 || [r19 count] == 0x0) goto loc_1000ddfa0;

loc_1000ddd00:
    r25 = @selector(count);
    if (objc_msgSend(r19, r25) == 0x0) goto loc_1000ddfa0;

loc_1000ddd10:
    r23 = 0x0;
    r24 = @selector(objectAtIndex:);
    r26 = @selector(class);
    r28 = @selector(isKindOfClass:);
    var_78 = r28;
    goto loc_1000ddd6c;

loc_1000ddd6c:
    r0 = objc_msgSend(r19, r24);
    r29 = r29;
    [r0 retain];
    objc_msgSend(@class(NSArray), r26);
    r27 = objc_msgSend(r21, r28);
    [r21 release];
    if (r27 == 0x0) goto loc_1000ddfd0;

loc_1000dddb8:
    r0 = objc_msgSend(r19, r24);
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (objc_msgSend(r0, r25) != 0x2) goto loc_1000ddfc8;

loc_1000ddde4:
    r0 = objc_msgSend(r20, r24);
    r29 = r29;
    r21 = [r0 retain];
    objc_msgSend(@class(NSString), r26);
    if ((objc_msgSend(r21, r28) & 0x1) == 0x0) goto loc_1000ddfb0;

loc_1000dde24:
    r0 = objc_msgSend(r20, r24);
    r29 = r29;
    [r0 retain];
    objc_msgSend(@class(NSString), r26);
    r22 = objc_msgSend(r27, r28);
    [r27 release];
    [r21 release];
    if (r22 == 0x0) goto loc_1000ddfc8;

loc_1000dde74:
    r27 = [objc_msgSend(r20, r24) retain];
    r0 = objc_msgSend(r20, r24);
    r29 = r29;
    r21 = [r0 retain];
    if ([r27 length] == 0x0) goto loc_1000ddfb8;

loc_1000ddebc:
    var_98 = @selector(setObject:forKey:);
    r22 = [NSMutableArray alloc];
    var_60 = r20;
    r0 = [var_58 objectForKey:r27];
    r29 = r29;
    r20 = [r0 retain];
    r22 = [r22 initWithArray:r20];
    r25 = r25;
    r26 = r26;
    r19 = r19;
    r24 = r24;
    r28 = var_78;
    [r20 release];
    [r22 addObject:r2];
    objc_msgSend(var_58, var_98);
    [r22 release];
    [r21 release];
    [r27 release];
    [var_60 release];
    r23 = r23 + 0x1;
    if (objc_msgSend(r19, r25) > r23) goto loc_1000ddd6c;

loc_1000ddfa0:
    r21 = [var_58 retain];
    goto loc_1000ddfd4;

loc_1000ddfd4:
    [var_58 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_1000ddfb8:
    [r21 release];
    r0 = r27;
    goto loc_1000ddfc4;

loc_1000ddfc4:
    [r0 release];
    goto loc_1000ddfc8;

loc_1000ddfc8:
    [r20 release];
    goto loc_1000ddfd0;

loc_1000ddfd0:
    r21 = 0x0;
    goto loc_1000ddfd4;

loc_1000ddfb0:
    r0 = r21;
    goto loc_1000ddfc4;
}

+(void)sendSuccess:(void *)arg2 url:(void *)arg3 response:(void *)arg4 responseCode:(long long)arg5 headers:(void *)arg6 {
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
    r23 = arg5;
    r20 = [arg2 retain];
    r22 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [USRVApiRequest getHeadersArray:arg6];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r24 = [[USRVWebViewApp getCurrentApp] retain];
            r25 = [sub_1000e2f84() retain];
            r23 = [[NSNumber numberWithLong:r23] retain];
            [r24 sendEvent:r25 category:@"REQUEST" param1:r20];
            [r22 release];
            [r20 release];
            [r23 release];
            [r25 release];
            r0 = r24;
    }
    else {
            r24 = [@(0xa) retain];
            r25 = [[NSDictionary dictionaryWithObjects:&stack[-104] forKeys:&var_68 count:0x2] retain];
            r23 = [[NSError errorWithDomain:@"com.unity3d.ads.UnityServices.Error" code:0xa userInfo:r25] retain];
            [r25 release];
            [r24 release];
            [USRVApiRequest sendFailed:r20 url:r22 error:r23];
            [r22 release];
            [r20 release];
            r0 = r23;
    }
    var_48 = **___stack_chk_guard;
    [r0 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

+(void)sendFailed:(void *)arg2 url:(void *)arg3 error:(void *)arg4 {
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
    r21 = arg2;
    r20 = [r21 retain];
    r22 = [arg3 retain];
    r19 = [arg4 retain];
    r24 = @"";
    [r24 retain];
    r0 = [r19 userInfo];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = r0;
    [r0 release];
    if (r23 != 0x0) {
            r0 = [r19 userInfo];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r23 release];
            if (r0 != 0x0) {
                    r25 = @selector(userInfo);
                    r24 = @selector(objectForKey:);
                    r0 = objc_msgSend(r19, r25);
                    r0 = [r0 retain];
                    r26 = r0;
                    r0 = objc_msgSend(r0, r24);
                    r29 = r29;
                    r23 = [r0 retain];
                    [r26 release];
            }
            else {
                    r23 = 0x0;
            }
            r25 = @selector(userInfo);
            r24 = @selector(objectForKey:);
            r0 = objc_msgSend(r19, r25);
            r0 = [r0 retain];
            r26 = r0;
            r0 = objc_msgSend(r0, r24);
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r26 release];
            if (r0 != 0x0) {
                    r25 = @selector(userInfo);
                    r24 = @selector(objectForKey:);
                    r0 = objc_msgSend(r19, r25);
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = objc_msgSend(r0, r24);
                    r29 = r29;
                    r24 = [r0 retain];
                    [@"" release];
                    [r25 release];
            }
            else {
                    r24 = @"";
            }
    }
    r25 = [[USRVWebViewApp getCurrentApp] retain];
    r26 = [sub_1000e2f84() retain];
    [r23 longValue];
    r27 = [[NSString stringWithFormat:@"%@: %ld"] retain];
    [r25 sendEvent:r26 category:@"REQUEST" param1:r21];
    [r22 release];
    [r20 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r19 release];
    return;
}

@end