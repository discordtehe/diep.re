@implementation MPLastResortDelegate

+(void *)sharedDelegate {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d8288 != -0x1) {
            dispatch_once(0x1011d8288, &var_28);
    }
    r0 = *0x1011d8280;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)mailComposeController:(void *)arg2 didFinishWithResult:(long long)arg3 error:(void *)arg4 {
    r0 = [arg2 retain];
    [r0 dismissViewControllerAnimated:0x1 completion:0x0];
    [r0 release];
    return;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    [arg2 dismissViewControllerAnimated:0x1 completion:0x0];
    return;
}

@end