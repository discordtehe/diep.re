@implementation CustomAction

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (self->_elapsed < self->_duration) {
            [r19 update:r2];
    }
    r20 = sign_extend_64(*(int32_t *)ivar_offset(mTarget));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)initWithDuration:(double)arg2 update:(void *)arg3 target:(void *)arg4 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg3;
    r20 = arg2;
    r0 = [[&var_30 super] initWithDuration:r2];
    r21 = r0;
    if (r0 != 0x0) {
            r21->mUpdate = r20;
            r21->mTarget = [r19 retain];
    }
    r0 = r21;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[self class] allocWithZone:arg2];
    [self duration];
    r0 = [r19 initWithDuration:self->mUpdate update:self->mTarget target:r4];
    return r0;
}

+(void *)actionWithDuration:(double)arg2 update:(void *)arg3 target:(void *)arg4 {
    r0 = [CustomAction alloc];
    r0 = [r0 initWithDuration:arg2 update:arg3 target:arg4];
    r0 = [r0 autorelease];
    return r0;
}

-(void)update:(double)arg2 {
    r2 = arg2;
    r19 = self->mTarget;
    r0 = @class(NSNumber);
    asm { fcvt       s0, d0 };
    [r0 numberWithFloat:r2];
    [r19 performSelector:r2 withObject:r3];
    return;
}

@end