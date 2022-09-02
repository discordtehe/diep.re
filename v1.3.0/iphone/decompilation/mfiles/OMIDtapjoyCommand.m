@implementation OMIDtapjoyCommand

+(void *)commandWithName:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self stringFromArguments:&saved_fp + 0x10] retain];
    r20 = [[NSString stringWithFormat:r2] retain];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)stringWithQuotesFromString:(void *)arg2 {
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

+(void *)stringFromArguments:(char *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [NSMutableString new];
    var_38 = arg2 + 0x8;
    r20 = [*arg2 retain];
    if (r20 != 0x0) {
            do {
                    if ([r19 length] != 0x0) {
                            [r19 appendString:r2];
                    }
                    [r19 appendString:r2];
                    r8 = var_38;
                    var_38 = r8 + 0x8;
                    r24 = [*r8 retain];
                    [r20 release];
                    r20 = r24;
            } while (r24 != 0x0);
            r20 = r24;
    }
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

@end