@implementation GADOMIDError

+(bool)setGADOMIDErrorFor:(void * *)arg2 code:(unsigned long long)arg3 message:(void *)arg4 {
    r31 = r31 - 0x90;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r10 = *___stack_chk_guard;
    var_38 = arg2;
    var_40 = arg3;
    r0 = objc_storeStrong(&var_48, arg4);
    if (var_38 != 0x0) {
            var_70 = [[NSDictionary dictionaryWithObjects:r29 - 0x10 forKeys:r29 - 0x18 count:0x1] retain];
            *var_38 = [[[NSError errorWithDomain:@"com.omid.library" code:var_40 userInfo:var_70] retain] autorelease];
            [var_70 release];
            var_19 = 0x1;
    }
    else {
            var_19 = 0x0;
    }
    var_8 = **___stack_chk_guard;
    objc_storeStrong(&var_48, 0x0);
    var_74 = var_19 & 0x1;
    if (**___stack_chk_guard == var_8) {
            r0 = var_74 & 0x1;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end