@implementation SKStoreProductViewController

+(void)load {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011d8ad8 != -0x1) {
            dispatch_once(0x1011d8ad8, &var_28);
    }
    return;
}

-(void)mcAds_viewWillAppear:(bool)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    [self mcAds_viewWillAppear:arg2];
    if (*0x1011e4c98 != 0x0) {
            (*(**0x1011e4c98 + 0x30))();
    }
    return;
}

-(void)mcAds_viewWillDisappear:(bool)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    [self mcAds_viewWillDisappear:arg2];
    if (*0x1011e4cb8 != 0x0) {
            (*(**0x1011e4cb8 + 0x30))();
    }
    return;
}

@end