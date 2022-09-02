@implementation CCCallFuncObjOnInterval

+(void *)actionWithDuration:(double)arg2 target:(void *)arg3 selector:(void *)arg4 object:(void *)arg5 {
    r0 = [self alloc];
    r0 = [r0 initWithDuration:arg2 target:arg3 selector:arg4 object:arg5];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithDuration:(double)arg2 target:(void *)arg3 selector:(void *)arg4 object:(void *)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg4;
    r21 = arg3;
    r22 = arg2;
    r0 = [[&var_40 super] initWithDuration:r2];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [r22 retain];
            r22 = sign_extend_64(*(int32_t *)ivar_offset(targetCallback_));
            *(r19 + r22) = r0;
            r24 = sign_extend_64(*(int32_t *)ivar_offset(selector_));
            *(r19 + r24) = r21;
            r19->object_ = [r20 retain];
            r19->callbackMethod_ = [*(r19 + r22) methodForSelector:*(r19 + r24)];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [self->targetCallback_ release];
    [self->object_ release];
    [[&var_20 super] dealloc];
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:self->targetCallback_ target:self->selector_ selector:self->object_ object:r5];
    return r0;
}

-(void)startWithTarget:(void *)arg2 {
    [[&var_20 super] startWithTarget:arg2];
    (*(self + sign_extend_64(*(int32_t *)ivar_offset(callbackMethod_))))(self->targetCallback_, self->selector_, self->object_);
    return;
}

-(void)update:(double)arg2 {
    r3 = self->callbackMethod_;
    (r3)(self->targetCallback_, self->selector_, self->object_, r3);
    return;
}

@end