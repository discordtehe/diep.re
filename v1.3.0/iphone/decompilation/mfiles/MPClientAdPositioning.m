@implementation MPClientAdPositioning

+(void *)positioning {
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void)enableRepeatingPositionsWithInterval:(unsigned long long)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (arg2 >= 0x2) {
            [r19 setRepeatingInterval:r2];
    }
    else {
            r22 = [[NSString stringWithFormat:@"Repeating positions will not be enabled: the provided interval must be greater than 1."] retain];
            r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
            [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
            [r21 release];
            [r22 release];
    }
    return;
}

-(void)addFixedIndexPath:(void *)arg2 {
    [arg2 retain];
    r0 = [self fixedPositions];
    r0 = [r0 retain];
    [r0 addObject:r2];
    [r21 release];
    [r19 release];
    return;
}

@end