@implementation MCSelectorValue

-(void *)initWithSelector:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            *(r0 + 0x8) = r19;
    }
    return r0;
}

+(void *)valueWithSelector:(void *)arg2 {
    r0 = [MCSelectorValue alloc];
    r0 = [r0 initWithSelector:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)selector {
    r0 = [self value];
    return r0;
}

+(void *)getNSSelector:(void *)arg2 {
    r0 = [MCSelectorValue valueWithSelector:arg2];
    return r0;
}

-(void *)value {
    r0 = *(self + 0x8);
    return r0;
}

+(void *)getNSSelector {
    r0 = [MCSelectorValue valueWithSelector:0x0];
    return r0;
}

@end