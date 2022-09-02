@implementation MCAnimVSZRemoveFromParentAction

-(void *)initWithCleanup:(bool)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            *(int8_t *)(int64_t *)&r0->_cleanup = r19;
    }
    return r0;
}

+(void *)action {
    r0 = objc_alloc();
    r0 = [r0 initWithCleanup:0x1];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)actionWithCleanup:(bool)arg2 {
    r0 = objc_alloc();
    r0 = [r0 initWithCleanup:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:r2];
    [[arg2 parent] removeChild:arg2 cleanup:*(int8_t *)(int64_t *)&self->_cleanup];
    return;
}

@end