@implementation IROMoatLocationFetch

-(void *)start {
    r0 = self->_start;
    return r0;
}

-(void *)fetchCompletion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_fetchCompletion)), 0x0);
    return r0;
}

-(void)setStart:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_start));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void)setFetchCompletion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_fetchCompletion, 0x0);
    objc_storeStrong((int64_t *)&self->_start, 0x0);
    return;
}

@end