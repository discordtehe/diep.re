@implementation ISPublisherLogger

-(void *)initWithDelegate:(void *)arg2 level:(int)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r0 = [[&var_30 super] initWithLevel:arg3];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->logDelegate, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)log:(void *)arg2 level:(int)arg3 tag:(int)arg4 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg4;
    r21 = arg3;
    r22 = self;
    r20 = [arg2 retain];
    if (r20 != 0x0) {
            r0 = r22->logDelegate;
            if (r0 != 0x0) {
                    [r0 sendLog:r20 level:r21 tag:r19];
            }
    }
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->logDelegate, 0x0);
    return;
}

@end