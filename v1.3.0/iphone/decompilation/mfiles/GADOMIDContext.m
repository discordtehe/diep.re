@implementation GADOMIDContext

+(void *)sharedContext {
    r31 = r31 - 0x60;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x10, &var_48);
    if (*0x1011dbfe0 != -0x1) {
            dispatch_once(0x1011dbfe0, 0x0);
    }
    objc_storeStrong(r29 - 0x10, 0x0);
    r0 = *qword_1011dbfe8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)toJSON {
    r31 = r31 - 0x80;
    saved_fp = r29;
    stack[-8] = r30;
    r11 = *___stack_chk_guard;
    var_8 = **___stack_chk_guard;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    var_50 = [[r0 bundleIdentifier] retain];
    var_58 = [[GADOMIDSDK versionString] retain];
    var_60 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0x18 forKeys:&saved_fp - 0x28 count:0x2] retain];
    [var_58 release];
    [var_50 release];
    [r0 release];
    var_68 = [var_60 autorelease];
    if (**___stack_chk_guard == var_8) {
            r0 = var_68;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end