@implementation CCTransitionSceneOriented

+(void *)transitionWithDuration:(double)arg2 scene:(void *)arg3 orientation:(int)arg4 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 scene:arg3 orientation:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 scene:(void *)arg3 orientation:(int)arg4 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r0 = [[&var_20 super] initWithDuration:arg2 scene:r3];
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r0->orientation = r19;
    }
    return r0;
}

@end