@implementation GADComposeViewControllerDelegate

+(void *)sharedInstance {
    if (*qword_1011db7e8 != -0x1) {
            dispatch_once(0x1011db7e8, 0x100e904e0);
    }
    r0 = *0x1011db7f0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)messageComposeViewController:(void *)arg2 didFinishWithResult:(long long)arg3 {
    [[arg2 retain] retain];
    sub_100860a80();
    [r0 release];
    [r19 release];
    return;
}

-(void)mailComposeController:(void *)arg2 didFinishWithResult:(long long)arg3 error:(void *)arg4 {
    [[arg2 retain] retain];
    sub_100860a80();
    [r0 release];
    [r19 release];
    return;
}

@end