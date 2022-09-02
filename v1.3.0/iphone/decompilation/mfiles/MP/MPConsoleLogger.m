@implementation MPConsoleLogger

-(void)logMessage:(void *)arg2 {
    NSLog(@"%@", _cmd);
    return;
}

-(unsigned long long)logLevel {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(r0 + 0x8) = 0x1e;
    }
    return r0;
}

-(void)setLogLevel:(unsigned long long)arg2 {
    *(self + 0x8) = arg2;
    return;
}

@end