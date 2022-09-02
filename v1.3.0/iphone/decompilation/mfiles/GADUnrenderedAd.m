@implementation GADUnrenderedAd

-(void *)initWithContext:(void *)arg2 renderingOperation:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r23 = [arg2 retain];
    r20 = [r19 retain];
    r21 = [[GADAdMetadata alloc] initWithAdNetworkClassName:*0x100e8f668];
    r0 = [[&var_40 super] initWithContext:r23 metadata:r21];
    r22 = r0;
    [r23 release];
    if (r22 != 0x0) {
            objc_storeStrong((int64_t *)&r22->_renderingOperation, r19);
    }
    [r21 release];
    [r20 release];
    r0 = r22;
    return r0;
}

-(void)renderWithCompletionHandler:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_renderingOperation));
    r0 = *(self + r20);
    r0 = [r0 completionBlock];
    r0 = [r0 retain];
    r22 = *(self + r20);
    [r0 retain];
    var_48 = r21;
    [r21 retain];
    [r22 setCompletionBlock:&var_70];
    r22 = [dispatch_get_global_queue(0x0, 0x0) retain];
    var_78 = [self retain];
    dispatch_async(r22, &var_98);
    [r22 release];
    [var_78 release];
    [var_48 release];
    [r0 release];
    [r21 release];
    [r20 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_renderingOperation, 0x0);
    return;
}

@end