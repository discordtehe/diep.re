@implementation FBAdSdkCapabilityUtility

+(void *)supportedCapabilities {
    r31 = r31 - 0xb0;
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
    var_58 = **___stack_chk_guard;
    r19 = [@(0x3) retain];
    r20 = [@(0x4) retain];
    r21 = [@(0x5) retain];
    r23 = [@(0x7) retain];
    r24 = [@(0x9) retain];
    r25 = [@(0xa) retain];
    r26 = [@(0xc) retain];
    r27 = [@(0x10) retain];
    r28 = [@(0x11) retain];
    r0 = [NSArray arrayWithObjects:&var_A0 count:0x9];
    r22 = [r0 retain];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

@end