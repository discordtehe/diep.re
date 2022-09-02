@implementation MRViewableProperty

-(void)setIsViewable:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isViewable = arg2;
    return;
}

+(void *)propertyWithViewable:(bool)arg2 {
    r0 = objc_alloc();
    r0 = [r0 init];
    [r0 setIsViewable:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(bool)isViewable {
    r0 = *(int8_t *)(int64_t *)&self->_isViewable;
    return r0;
}

-(void *)description {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_isViewable));
    r9 = *(int8_t *)(self + r9);
    if (r9 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r9 = @"true";
            }
            else {
                    r9 = @"false";
            }
    }
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

@end