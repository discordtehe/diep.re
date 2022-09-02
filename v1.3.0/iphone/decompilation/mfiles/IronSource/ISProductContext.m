@implementation ISProductContext

+(unsigned long long)convertProductNameToProductType:(void *)arg2 error:(void * *)arg3 {
    r31 = r31 - 0xf0;
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
    r19 = arg3;
    r20 = [arg2 retain];
    r21 = [@(0x0) retain];
    r22 = [@(0x1) retain];
    r24 = [@(0x2) retain];
    r23 = [@(0x4) retain];
    r0 = [NSDictionary dictionaryWithObjects:&saved_fp - 0x68 forKeys:&var_88 count:0x4];
    r29 = &saved_fp;
    r25 = [r0 retain];
    [r23 release];
    [r24 release];
    [r22 release];
    [r21 release];
    var_A0 = &var_A8;
    r20 = [r20 retain];
    var_C0 = r20;
    r0 = [r25 retain];
    r21 = r0;
    var_B8 = r21;
    [r0 enumerateKeysAndObjectsUsingBlock:&var_E0];
    if (r20 != 0x0) {
            r22 = *(var_A0 + 0x18);
            if (r22 == -0x1) {
                    *r19 = [[[SSAHelperMethods errorWithReason:@"failed to find product type" code:0x0 domain:@"ironsrc.com.errors.parsingControllerParams"] retain] autorelease];
                    r22 = 0xffffffffffffffff;
            }
    }
    else {
            *r19 = [[[SSAHelperMethods errorWithReason:@"failed to find product type" code:0x0 domain:@"ironsrc.com.errors.parsingControllerParams"] retain] autorelease];
            r22 = 0xffffffffffffffff;
    }
    var_48 = **___stack_chk_guard;
    [var_B8 release];
    [var_C0 release];
    _Block_object_dispose(&var_A8, 0x8);
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard == var_48) {
            r0 = r22;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end