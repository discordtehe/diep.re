@implementation GADJSCoreInterface

-(void *)initWithJSCoreJSContext:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_JSCoreJSContext, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)init {
    [self release];
    return 0x0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_JSCoreJSContext);
    return;
}

-(void)notifyWithURLString:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r20 = objc_loadWeakRetained((int64_t *)&self->_JSCoreJSContext);
    if (r20 != 0x0) {
            r0 = [NSURL URLWithString:r19];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 scheme];
            r0 = [r0 retain];
            r22 = [[r0 lowercaseString] retain];
            [r0 release];
            if (([r22 isEqual:r2] & 0x1) != 0x0) {
                    r0 = [NSMutableDictionary alloc];
                    r0 = [r0 init];
                    sub_100822058(r0, *0x100e95358, r22);
                    sub_100822058(r23, *0x100e95348, r21);
                    sub_1008833e8(*0x100e9c228, r20, r23);
                    [r23 release];
            }
            else {
                    sub_1007ce06c(0x0, @"Attempted to post a GMSG notification for a non-GMSG URL. URL: %@");
            }
            [r22 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

@end