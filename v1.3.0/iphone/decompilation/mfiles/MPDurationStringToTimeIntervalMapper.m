@implementation MPDurationStringToTimeIntervalMapper

-(void *)mappedObjectFromSourceObject:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    [self requiredSourceObjectClass];
    if ([r19 isKindOfClass:r2] != 0x0) {
            [MPVASTStringUtilities timeIntervalFromString:r19];
            r20 = [[NSNumber numberWithDouble:r19] retain];
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