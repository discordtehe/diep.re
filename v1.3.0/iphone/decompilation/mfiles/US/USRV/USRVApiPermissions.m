@implementation USRVApiPermissions

+(void)WebViewExposed_requestPermission:(void *)arg2 webViewCallback:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0 || [r19 length] == 0x0) goto loc_1000d9cc0;

loc_1000d9c08:
    if (([r19 isEqualToString:r2] & 0x1) != 0x0 || [r19 isEqualToString:r2] != 0x0) goto loc_1000d9c48;

loc_1000d9d00:
    r0 = r20;
    goto loc_1000d9cd8;

loc_1000d9cd8:
    [r0 error:r2 arg1:r3];
    goto loc_1000d9cdc;

loc_1000d9cdc:
    [r20 release];
    [r19 release];
    return;

loc_1000d9c48:
    r8 = [r19 retain];
    [AVCaptureDevice requestAccessForMediaType:r8 completionHandler:&var_48];
    [r20 invoke:0x0];
    [r8 release];
    goto loc_1000d9cdc;

loc_1000d9cc0:
    r0 = r20;
    goto loc_1000d9cd8;
}

+(void)WebViewExposed_checkPermission:(void *)arg2 webViewCallback:(void *)arg3 {
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
    if (r19 == 0x0 || [r19 length] == 0x0) goto loc_1000d9b64;

loc_1000d9ac4:
    if (([r19 isEqualToString:r2] & 0x1) != 0x0 || [r19 isEqualToString:r2] != 0x0) goto loc_1000d9b04;

loc_1000d9ba0:
    r0 = r20;
    goto loc_1000d9b7c;

loc_1000d9b7c:
    [r0 error:r2 arg1:r3];
    goto loc_1000d9b80;

loc_1000d9b80:
    [r20 release];
    [r19 release];
    return;

loc_1000d9b04:
    r21 = [[NSNumber numberWithInt:[AVCaptureDevice authorizationStatusForMediaType:r19]] retain];
    [r20 invoke:r21];
    [r21 release];
    goto loc_1000d9b80;

loc_1000d9b64:
    r0 = r20;
    goto loc_1000d9b7c;
}

@end