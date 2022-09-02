@implementation CDBufferLoadRequest

-(void *)init:(int)arg2 filePath:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(r21 + 0x10) = r20;
            *(r21 + 0x8) = [r19 copy];
    }
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)filePath {
    r0 = *(self + 0x8);
    return r0;
}

-(int)soundId {
    r0 = *(int32_t *)(self + 0x10);
    return r0;
}

@end