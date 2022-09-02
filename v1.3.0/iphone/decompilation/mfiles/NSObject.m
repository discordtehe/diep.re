@implementation NSObject

+(void *)object {
    r0 = [self alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)autoNew {
    r0 = [self object];
    return r0;
}

-(void *)autoCopy {
    r0 = [self copy];
    r0 = [r0 autorelease];
    return r0;
}

@end