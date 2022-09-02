@implementation ISNNativeSessionConfiguration

+(void *)defaultConfiguration {
    r0 = [ISNNativeSessionConfiguration alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_supportViewControllerFromAdapter = 0x1;
            *(int8_t *)(int64_t *)&r0->_allowOrientationFromAppDelegate = 0x1;
    }
    return r0;
}

-(bool)supportViewControllerFromAdapter {
    r0 = *(int8_t *)(int64_t *)&self->_supportViewControllerFromAdapter;
    return r0;
}

-(bool)allowOrientationFromAppDelegate {
    r0 = *(int8_t *)(int64_t *)&self->_allowOrientationFromAppDelegate;
    return r0;
}

-(void)setSupportViewControllerFromAdapter:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_supportViewControllerFromAdapter = arg2;
    return;
}

-(void)setAllowOrientationFromAppDelegate:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_allowOrientationFromAppDelegate = arg2;
    return;
}

@end