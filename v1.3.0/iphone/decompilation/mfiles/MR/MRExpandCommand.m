@implementation MRExpandCommand

+(void *)commandType {
    return @"expand";
}

-(bool)executeWithParams:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 urlFromParameters:r19 forKey:@"url"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 != 0x0) {
            r26 = 0x0;
            r24 = r21;
    }
    else {
            r0 = [NSNull null];
            r29 = r29;
            r24 = [r0 retain];
            r26 = 0x1;
    }
    r25 = [[NSNumber numberWithBool:[r20 boolFromParameters:r19 forKey:@"shouldUseCustomClose"]] retain];
    r0 = [NSDictionary dictionaryWithObjectsAndKeys:r24];
    r29 = r29;
    r22 = [r0 retain];
    [r25 release];
    if (r26 != 0x0) {
            [r24 release];
    }
    r0 = [r20 delegate];
    r0 = [r0 retain];
    [r0 mrCommand:r20 expandWithParams:r22];
    [r0 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return 0x1;
}

@end