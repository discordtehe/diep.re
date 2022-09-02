@implementation DFPInternalBannerView

-(void)resize:(struct GADAdSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    [[&saved_fp - 0x10 super] resize:&var_30];
    return;
}

-(void)recordImpression {
    var_8 = [self retain];
    sub_100860a80();
    [var_8 release];
    return;
}

-(void)setAdOptions:(void *)arg2 {
    r31 = r31 - 0x150;
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
    var_130 = self;
    r0 = [arg2 mutableCopy];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r22 != 0x0) {
            do {
                    r19 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r20);
                            }
                            r24 = @selector(class);
                            r26 = *(0x0 + r19 * 0x8);
                            objc_msgSend(@class(DFPBannerViewOptions), r24);
                            if (objc_msgSend(r26, r25) != 0x0) {
                                    [r26 retain];
                                    NSLog(@"<Google> The DFPBannerViewOptions are not supported for DFPBannerView. Please use DFPBannerView properties directly.");
                                    sub_1008223d0(r20, r26);
                                    [r26 release];
                            }
                            r19 = r19 + 0x1;
                    } while (r19 < r22);
                    r22 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r22 != 0x0);
    }
    [r20 release];
    if ([r20 count] != 0x0) {
            [[&var_128 super] setAdOptions:r20];
    }
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

@end