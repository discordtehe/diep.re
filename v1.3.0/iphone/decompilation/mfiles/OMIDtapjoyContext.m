@implementation OMIDtapjoyContext

+(void *)sharedContext {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    if (*qword_1011dc250 != -0x1) {
            dispatch_once(0x1011dc250, &var_28);
    }
    r0 = *0x1011dc258;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)toJSON {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r21 = [[r0 bundleIdentifier] retain];
    r22 = [[OMIDtapjoySDK versionString] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&var_48 count:0x2];
    r20 = [r0 retain];
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end