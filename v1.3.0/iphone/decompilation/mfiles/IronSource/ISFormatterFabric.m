@implementation ISFormatterFabric

+(void *)getFormatterFromType:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0) goto loc_1006a5aa8;

loc_1006a5a9c:
    r8 = &@class(ISIronBeastEventsFormatter);
    goto loc_1006a5ac8;

loc_1006a5ac8:
    r20 = [[*r8 alloc] init];
    goto loc_1006a5af0;

loc_1006a5af0:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_1006a5aa8:
    if ([r19 isEqualToString:r2] == 0x0) goto loc_1006a5aec;

loc_1006a5ac0:
    r8 = &@class(ISOutcomeEventsFormatter);
    goto loc_1006a5ac8;

loc_1006a5aec:
    r20 = 0x0;
    goto loc_1006a5af0;
}

@end