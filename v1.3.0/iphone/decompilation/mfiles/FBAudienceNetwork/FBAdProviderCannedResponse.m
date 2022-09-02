@implementation FBAdProviderCannedResponse

-(void *)adPlacement {
    r0 = [self cannedPlacement];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_cannedPlacement, 0x0);
    return;
}

-(void *)initWithResponse:(void *)arg2 forAdAtIndex:(long long)arg3 {
    r31 = r31 - 0x90;
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
    r28 = [arg2 retain];
    var_80 = [FBAdPlacement alloc];
    r0 = [r28 adPlacement];
    r0 = [r0 retain];
    r20 = r0;
    r22 = [r0 code];
    r0 = [r28 adPlacement];
    r0 = [r0 retain];
    r21 = r0;
    r23 = [[r0 message] retain];
    r0 = [r28 adPlacement];
    r0 = [r0 retain];
    r26 = r0;
    r27 = [[r0 definition] retain];
    r19 = [[r28 adPlacement] retain];
    [r28 release];
    r0 = [r19 adCandidates];
    r0 = [r0 retain];
    r28 = r0;
    r24 = [[r0 objectAtIndexedSubscript:arg3] retain];
    r0 = [NSArray arrayWithObjects:&var_60 count:0x1];
    r25 = [r0 retain];
    r22 = [var_80 initWithCode:r22 message:r23 definition:r27 adCandidates:r25];
    [r25 release];
    [r24 release];
    [r28 release];
    [r19 release];
    [r27 release];
    [r26 release];
    [r23 release];
    [r21 release];
    [r20 release];
    r0 = [[&var_70 super] initWithAdPlacement:r22];
    r19 = r0;
    if (r0 != 0x0) {
            [r19 setCannedPlacement:r22];
    }
    var_58 = **___stack_chk_guard;
    [r22 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)cannedPlacement {
    r0 = self->_cannedPlacement;
    return r0;
}

-(void)setCannedPlacement:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_cannedPlacement, arg2);
    return;
}

@end