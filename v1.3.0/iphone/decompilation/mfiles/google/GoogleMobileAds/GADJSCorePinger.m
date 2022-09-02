@implementation GADJSCorePinger

-(void *)init {
    [self release];
    return 0x0;
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

-(void)pingURL:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[NSURL URLWithString:r2] retain];
    if (r20 != 0x0) {
            sub_10084cc54(r20, r19->_eventContext);
    }
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_eventContext, 0x0);
    return;
}

@end