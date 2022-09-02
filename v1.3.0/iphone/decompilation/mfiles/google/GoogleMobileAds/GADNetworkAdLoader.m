@implementation GADNetworkAdLoader

+(void *)sharedURLSession {
    if (*qword_1011db7c0 != -0x1) {
            dispatch_once(0x1011db7c0, 0x100e8f7f8);
    }
    r0 = *0x1011db7c8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)handleServerResponse:(void *)arg2 body:(void *)arg3 serverRequest:(void *)arg4 completionHandler:(void *)arg5 {
    r31 = r31 - 0x100;
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
    r21 = [arg4 retain];
    r23 = [arg5 retain];
    r22 = [[NSMutableDictionary alloc] init];
    [NSHTTPURLResponse class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r0 = [r19 copy];
            r24 = r0;
            r25 = [r0 statusCode];
            r0 = [r24 allHeaderFields];
            r29 = r29;
            r27 = [r0 retain];
            var_58 = [r22 retain];
            [r27 enumerateKeysAndObjectsUsingBlock:&var_78];
            [var_58 release];
            [r27 release];
            [r24 release];
    }
    else {
            r25 = 0x0;
    }
    sub_1008833e8(*0x100e9c1b8, r21, 0x0);
    r0 = [GADJSContextController sharedInstance];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 SDKCoreContext];
    r29 = r29;
    r24 = [r0 retain];
    [r27 release];
    if (r24 != 0x0) {
            r26 = [[NSString alloc] initWithData:r20 encoding:0x4];
            r27 = [r21 retain];
            var_C0 = r23;
            r23 = [r23 retain];
            var_B8 = [r19 retain];
            var_B0 = [r20 retain];
            [r24 normalizeAdBody:r26 headers:r22 statusCode:r25 serverRequest:r27 completionHandler:&var_E8];
            [var_B0 release];
            [var_B8 release];
            [var_C0 release];
            [r27 release];
            [r23 release];
            r0 = r26;
    }
    else {
            sub_1007ce06c(0x0, @"%@");
            r25 = [sub_100809600(0xb, @"SDK Core context does not exist to handle server response.") retain];
            r26 = [dispatch_get_global_queue(0x0, 0x0) retain];
            var_88 = r23;
            [r23 retain];
            var_80 = r25;
            [r25 retain];
            dispatch_async(r26, &var_A8);
            [r26 release];
            [var_80 release];
            [var_88 release];
            [r23 release];
            r0 = r25;
    }
    [r0 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)loadWithServerRequest:(void *)arg2 completionHandler:(void *)arg3 {
    r31 = r31 - 0xa0;
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[r19 URLRequest] retain];
    r0 = [r19 targeting];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 adData];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    [r24 release];
    if (r0 != 0x0) {
            r24 = [NSHTTPURLResponse alloc];
            r27 = [[NSURL URLWithString:@""] retain];
            r24 = [r24 initWithURL:r27 statusCode:0xc8 HTTPVersion:@"" headerFields:0x0];
            [r27 release];
            r0 = [r19 targeting];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 adData];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 adString];
            r0 = [r0 retain];
            r27 = [[r0 dataUsingEncoding:0x4] retain];
            [r0 release];
            [r25 release];
            [r23 release];
            [r22 handleServerResponse:r24 body:r27 serverRequest:r19 completionHandler:r20];
            [r27 release];
            r0 = r24;
    }
    else {
            r23 = [[GADNetworkAdLoader sharedURLSession] retain];
            r24 = [[r19 context] retain];
            var_68 = [r20 retain];
            var_60 = [r22 retain];
            var_58 = [r19 retain];
            [r23 sendRequest:r21 withContext:r24 notificationPolicy:0x3 completionHandler:&var_88];
            [r24 release];
            [r23 release];
            [var_58 release];
            [var_60 release];
            r0 = var_68;
    }
    [r0 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

@end