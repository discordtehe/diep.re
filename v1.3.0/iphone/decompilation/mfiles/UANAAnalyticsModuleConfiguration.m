@implementation UANAAnalyticsModuleConfiguration

-(void *)getWebAppApiClassList {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSArray arrayWithObjects:&var_10 count:0x1];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end