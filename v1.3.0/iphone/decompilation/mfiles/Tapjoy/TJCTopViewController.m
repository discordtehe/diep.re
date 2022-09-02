@implementation TJCTopViewController

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_canRotate = 0x1;
    }
    return r0;
}

-(bool)shouldAutorotate {
    r0 = *(int8_t *)(int64_t *)&self->_canRotate;
    return r0;
}

-(bool)canRotate {
    r0 = *(int8_t *)(int64_t *)&self->_canRotate;
    return r0;
}

-(void)setCanRotate:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_canRotate = arg2;
    return;
}

@end