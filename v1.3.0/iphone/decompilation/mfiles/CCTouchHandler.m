@implementation CCTouchHandler

+(void *)handlerWithDelegate:(void *)arg2 priority:(long long)arg3 {
    r0 = [self alloc];
    r0 = [r0 initWithDelegate:arg2 priority:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDelegate:(void *)arg2 priority:(long long)arg3 {
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
            [r21 setDelegate:r20];
            *(r21 + 0x10) = r19;
            *(int32_t *)(r21 + 0x18) = 0x0;
    }
    r0 = r21;
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)delegate {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(long long)priority {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setPriority:(long long)arg2 {
    *(self + 0x10) = arg2;
    return;
}

-(int)enabledSelectors {
    r0 = *(int32_t *)(self + 0x18);
    return r0;
}

-(void)setEnabledSelectors:(int)arg2 {
    *(int32_t *)(self + 0x18) = arg2;
    return;
}

@end