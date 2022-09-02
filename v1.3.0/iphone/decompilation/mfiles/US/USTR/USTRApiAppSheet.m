@implementation USTRApiAppSheet

+(void)WebViewExposed_canOpen:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [USTRStore appSheet];
    r0 = [r0 retain];
    r21 = [[NSNumber numberWithBool:[r0 canOpenAppSheet]] retain];
    [arg2 invoke:r21];
    [r22 release];
    [r21 release];
    [r0 release];
    return;
}

+(void)WebViewExposed_prepare:(void *)arg2 prepareTimeout:(void *)arg3 callback:(void *)arg4 {
    r31 = r31 - 0x80;
    r19 = arg4;
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r20 = [r19 retain];
    r24 = [[USTRStore appSheet] retain];
    [arg3 intValue];
    [r23 release];
    r8 = 0x10624dd3;
    asm { smull      x8, w21, w8 };
    var_48 = r22;
    r22 = [r22 retain];
    [r24 prepareAppSheet:r22 prepareTimeoutInSeconds:(r8 >> 0x3f) + (r8 >> 0x20) / 0x40 completionBlock:&var_68];
    [r24 release];
    [r19 invoke:0x0];
    [r20 release];
    [var_48 release];
    [r22 release];
    return;
}

+(void)WebViewExposed_present:(void *)arg2 animated:(void *)arg3 callback:(void *)arg4 {
    r21 = [arg2 retain];
    r22 = [arg3 retain];
    r19 = [arg4 retain];
    r23 = [[USTRStore appSheet] retain];
    r20 = [arg3 boolValue];
    [r22 release];
    var_40 = r19;
    r19 = [r19 retain];
    var_38 = r21;
    r21 = [r21 retain];
    [r23 presentAppSheet:r21 animated:r20 completionBlock:&var_60];
    [r23 release];
    [var_38 release];
    [var_40 release];
    [r21 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_destroy:(void *)arg2 {
    r22 = [arg2 retain];
    r0 = [USTRStore appSheet];
    r0 = [r0 retain];
    [r0 destroyAppSheet];
    [r0 release];
    [arg2 invoke:0x0];
    [r22 release];
    return;
}

+(void)WebViewExposed_setPrepareTimeout:(void *)arg2 callback:(void *)arg3 {
    r19 = arg3;
    r21 = [arg2 retain];
    r24 = [r19 retain];
    r22 = [[USTRStore appSheet] retain];
    [arg2 intValue];
    [r21 release];
    r8 = 0x10624dd3;
    asm { smull      x8, w20, w8 };
    [r22 setPrepareTimeoutInSeconds:(SAR(r8, 0x26)) + (r8 >> 0x3f)];
    [r22 release];
    [r19 invoke:0x0];
    [r24 release];
    return;
}

+(void)WebViewExposed_destroy:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [USTRStore appSheet];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 destroyAppSheet:r19];
    [r0 release];
    if (r22 != 0x0) {
            [r20 invoke:0x0];
    }
    else {
            r21 = [sub_1000f8b8c() retain];
            [r20 error:r21 arg1:r19];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)WebViewExposed_getPrepareTimeout:(void *)arg2 {
    r23 = [arg2 retain];
    r0 = [USTRStore appSheet];
    r0 = [r0 retain];
    r20 = [[NSNumber numberWithInt:[r0 prepareTimeoutInSeconds] * 0x3e8] retain];
    [r0 release];
    [arg2 invoke:r20];
    [r23 release];
    [r20 release];
    return;
}

@end