@implementation UIAlertController

+(void)showAlertControllerWithViewController:(void *)arg2 title:(void *)arg3 message:(void *)arg4 preferredStyle:(long long)arg5 cancelButtonTitle:(void *)arg6 okButtonTitle:(void *)arg7 completionHandler:(void *)arg8 {
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
    var_B0 = [arg2 retain];
    r24 = [arg3 retain];
    r26 = [arg4 retain];
    r19 = [arg6 retain];
    var_A8 = [arg7 retain];
    r20 = [arg8 retain];
    r0 = [UIAlertController alertControllerWithTitle:r24 message:r26 preferredStyle:arg5];
    r29 = &saved_fp;
    r23 = [r0 retain];
    [r26 release];
    [r24 release];
    if ([r19 length] != 0x0) {
            var_58 = [r20 retain];
            r0 = [UIAlertAction actionWithTitle:r2 style:r3 handler:r4];
            r29 = r29;
            [r0 retain];
            [r23 addAction:r2];
            [r25 release];
            [var_58 release];
    }
    r27 = var_A8;
    if ([r27 length] != 0x0) {
            var_80 = [r20 retain];
            r0 = [UIAlertAction actionWithTitle:r2 style:r3 handler:r4];
            r29 = r29;
            [r0 retain];
            [r23 addAction:r2];
            [r24 release];
            [var_80 release];
    }
    r22 = var_B0;
    if (r22 == 0x0) {
            r24 = [[FBAdUtility topViewController] retain];
            [r22 release];
            r22 = r24;
    }
    [r22 presentViewController:r23 animated:0x1 completion:0x0];
    [r23 release];
    [r20 release];
    [var_A8 release];
    [r19 release];
    [r22 release];
    return;
}

@end