@implementation UADSAdsModuleConfiguration

-(void *)getWebAppApiClassList {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSArray arrayWithObjects:&var_40 count:0x7];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)resetState:(void *)arg2 {
    [UADSPlacement reset];
    return 0x1;
}

-(bool)initModuleState:(void *)arg2 {
    return 0x1;
}

-(bool)initErrorState:(void *)arg2 state:(void *)arg3 message:(void *)arg4 {
    return 0x1;
}

-(bool)initCompleteState:(void *)arg2 {
    return 0x1;
}

-(void *)getAdUnitViewHandlers {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjects:&var_20 forKeys:&var_38 count:0x3];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end