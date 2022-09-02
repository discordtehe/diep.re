@implementation FNFRealTimerManager

-(void *)createTimerWithInterval:(unsigned long long)arg2 fireOnce:(bool)arg3 queue:(void *)arg4 block:(void *)arg5 {
    [arg4 retain];
    [arg5 retain];
    r21 = [[FNFRealTimer alloc] initWithInterval:arg2 fireOnce:arg3 queue:arg4 block:arg5];
    [arg5 release];
    [arg4 release];
    [r21 autorelease];
    r0 = r21;
    return r0;
}

@end