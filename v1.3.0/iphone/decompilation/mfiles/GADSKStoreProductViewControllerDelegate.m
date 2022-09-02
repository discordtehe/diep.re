@implementation GADSKStoreProductViewControllerDelegate

+(void *)sharedInstance {
    if (*qword_1011dbf70 != -0x1) {
            dispatch_once(0x1011dbf70, 0x100e9eeb8);
    }
    r0 = *0x1011dbf78;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)productViewControllerDidFinish:(void *)arg2 {
    sub_1008b4434();
    return;
}

@end