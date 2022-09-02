@implementation GADJSContext

+(void)initialize {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if ([GADJSContext class] == self) {
            r0 = [GADPlaceholderJSContext alloc];
            r8 = *0x1011dbe70;
            *0x1011dbe70 = r0;
            [r8 release];
    }
    return;
}

+(void *)allocWithZone:(struct _NSZone *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = self;
    if ([GADJSContext class] != r20) {
            r0 = [[&var_20 super] allocWithZone:r19];
    }
    else {
            r0 = *0x1011dbe70;
            r0 = [r0 retain];
    }
    return r0;
}

-(void *)initWithEventContext:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_eventContext, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)asyncEvaluateFunction:(void *)arg2 parameters:(void *)arg3 {
    return;
}

-(void *)context {
    r0 = self->_eventContext;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_eventContext, 0x0);
    return;
}

@end