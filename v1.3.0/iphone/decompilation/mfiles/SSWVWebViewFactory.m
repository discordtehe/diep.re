@implementation SSWVWebViewFactory

+(void *)defaultWebViewWithFrame:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r0 = [UIDevice currentDevice];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 systemVersion];
    r0 = [r0 retain];
    r21 = [r0 compare:@"8.0" options:0x40];
    [r0 release];
    [r19 release];
    r8 = &@class(SSWVUIWebView);
    if (r21 == -0x1) {
            if (!CPU_FLAGS & E) {
                    r8 = &@class(SSWVWKWebView);
            }
            else {
                    r8 = &@class(SSWVUIWebView);
            }
    }
    r0 = *r8;
    r0 = [r0 alloc];
    r0 = [r0 initWithFrame:r2];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)defaultWebViewWithFrame:(struct CGRect)arg2 browsingConfiguration:(void *)arg3 {
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = [r2 retain];
    if (([r2 useWK] & 0x1) != 0x0) {
            r0 = @class(SSWVWKWebView);
    }
    else {
            r0 = @class(SSWVUIWebView);
    }
    r20 = [[r0 alloc] initWithFrame:r19 browsingConfiguration:r3];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)defaultWebViewWithFrame:(struct CGRect)arg2 connectivityConfiguration:(void *)arg3 browsingConfiguration:(void *)arg4 {
    r4 = arg4;
    memcpy(&r2, &arg2, 0x8);
    var_40 = d11;
    stack[-72] = d10;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = [r2 retain];
    r20 = [r3 retain];
    if (([r3 useWK] & 0x1) != 0x0) {
            r0 = @class(SSWVWKWebView);
    }
    else {
            r0 = @class(SSWVUIWebView);
    }
    r21 = [[r0 alloc] initWithFrame:r19 connectivityConfiguration:r20 browsingConfiguration:r4];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

@end