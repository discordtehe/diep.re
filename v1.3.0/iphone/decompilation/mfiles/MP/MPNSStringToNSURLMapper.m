@implementation MPNSStringToNSURLMapper

-(void *)mappedObjectFromSourceObject:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    [self requiredSourceObjectClass];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r20 = [[NSCharacterSet whitespaceAndNewlineCharacterSet] retain];
            r21 = [[r19 stringByTrimmingCharactersInSet:r20] retain];
            [r20 release];
            r20 = [[NSURL URLWithString:r2] retain];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)requiredSourceObjectClass {
    r0 = [NSString class];
    return r0;
}

@end