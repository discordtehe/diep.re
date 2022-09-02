@implementation CCViewController_MCPlatform

-(unsigned long long)preferredScreenEdgesDeferringSystemGestures {
    return *0x1011e3550;
}

-(bool)prefersHomeIndicatorAutoHidden {
    return *(int8_t *)0x1011d7211;
}

-(void)viewDidAppear:(bool)arg2 {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    [[&var_18 super] viewDidAppear:arg2];
    if (*0x1011e3528 != 0x0) {
            (*(**0x1011e3528 + 0x30))();
    }
    else {
            sub_1004353e8();
    }
    return;
}

-(void)viewWillDisappear:(bool)arg2 {
    r2 = arg2;
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if (*0x1011e3528 != 0x0) {
            (*(**0x1011e3528 + 0x30))();
            [[&var_28 super] viewWillDisappear:r2];
    }
    else {
            sub_1004353e8();
    }
    return;
}

-(void)viewWillAppear:(bool)arg2 {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    [[&var_18 super] viewWillAppear:arg2];
    if (*0x1011e3528 != 0x0) {
            (*(**0x1011e3528 + 0x30))();
    }
    else {
            sub_1004353e8();
    }
    return;
}

-(void)viewDidDisappear:(bool)arg2 {
    r2 = arg2;
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if (*0x1011e3528 != 0x0) {
            (*(**0x1011e3528 + 0x30))();
            [[&var_28 super] viewDidDisappear:r2];
    }
    else {
            sub_1004353e8();
    }
    return;
}

-(void)didReceiveMemoryWarning {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (*0x1011e3528 != 0x0) {
            (*(**0x1011e3528 + 0x30))();
            [[&var_28 super] didReceiveMemoryWarning];
    }
    else {
            sub_1004353e8();
    }
    return;
}

-(void)viewDidLayoutSubviews {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if ((*(int8_t *)0x1011d7210 & 0x1) == 0x0) {
            if (*0x1011e3548 != 0x0) {
                    (*(**0x1011e3548 + 0x30))();
            }
            *(int8_t *)0x1011d7210 = 0x1;
    }
    return;
}

@end