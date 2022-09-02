@implementation ISAdapterDispatcherProxy

-(void)dispatchAsyncWithQueue:(void *)arg2 withBlock:(void *)arg3 {
    r0 = [arg2 retain];
    sub_1006df8e4(r0, arg3);
    [r20 release];
    return;
}

@end