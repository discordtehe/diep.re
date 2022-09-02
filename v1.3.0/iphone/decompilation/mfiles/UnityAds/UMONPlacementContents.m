@implementation UMONPlacementContents

+(void)initialize {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 init];
    r8 = *0x1011d1d08;
    *0x1011d1d08 = r0;
    [r8 release];
    r19 = [UMONNotAvailablePlacementContent alloc];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-48] forKeys:&var_28 count:0x1];
    r20 = [r0 retain];
    r0 = [r19 initWithPlacementId:@"" withParams:r20];
    r8 = *0x1011d1d10;
    *0x1011d1d10 = r0;
    [r8 release];
    [r20 release];
    if (**___stack_chk_guard != var_18) {
            __stack_chk_fail();
    }
    return;
}

+(void *)getPlacementContent:(void *)arg2 {
    r0 = *0x1011d1d08;
    r0 = [r0 valueForKey:arg2];
    return r0;
}

+(void *)putPlacementContent:(void *)arg2 withPlacementContent:(void *)arg3 {
    r22 = [arg2 retain];
    [arg3 retain];
    [[self getPlacementContent:r22] retain];
    [*0x1011d1d08 setObject:r2 forKey:r3];
    [r24 release];
    [r22 release];
    r0 = [r21 autorelease];
    return r0;
}

+(bool)isReady:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [[self getPlacementContent:arg2] retain];
    if (r19 != 0x0) {
            r20 = [r19 isReady];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(void)removePlacementContent:(void *)arg2 {
    [*0x1011d1d08 removeObjectForKey:r2];
    return;
}

+(void)setPlacementContentState:(void *)arg2 withPlacementContentState:(long long)arg3 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = [[self getPlacementContent:arg2] retain];
    if (r20 != 0x0) {
            [r20 setState:r19];
    }
    [r20 release];
    return;
}

@end