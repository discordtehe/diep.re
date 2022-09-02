@implementation USRVApiResolve

+(void)WebViewExposed_resolve:(void *)arg2 hostName:(void *)arg3 callback:(void *)arg4 {
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
    r21 = [arg2 retain];
    r22 = [arg3 retain];
    r19 = [arg4 retain];
    r20 = [r21 retain];
    var_38 = r20;
    r0 = objc_retainBlock(&var_58);
    r21 = r0;
    r23 = [USRVWebRequestQueue resolve:r22 completeBlock:r21];
    [r22 release];
    if (r23 != 0x0) {
            [r19 invoke:r20];
    }
    else {
            r22 = [sub_1000e08c4() retain];
            [r19 error:r22 arg1:r20];
            [r22 release];
    }
    [r21 release];
    [var_38 release];
    [r19 release];
    [r20 release];
    return;
}

@end