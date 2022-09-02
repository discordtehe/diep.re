@implementation GADBlockSignalSource

-(void *)initWithQueue:(void *)arg2 signalBlock:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [r21 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_queue, r21);
            r0 = objc_retainBlock(r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_signalBlock));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(void)getSignalUpdateQueue:(void * *)arg2 signalCreationBlock:(void * *)arg3 {
    *arg2 = objc_retainAutorelease(self->_queue);
    *arg3 = [objc_retainBlock(self->_signalBlock) autorelease];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_signalBlock, 0x0);
    objc_storeStrong((int64_t *)&self->_queue, 0x0);
    return;
}

@end