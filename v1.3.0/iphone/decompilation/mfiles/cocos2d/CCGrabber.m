@implementation CCGrabber

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            glGenFramebuffers(0x1, r19 + 0x8);
    }
    r0 = r19;
    return r0;
}

-(void)grab:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self + 0xc;
    glGetIntegerv(0x8ca6, r19);
    glBindFramebuffer(0x8d40, *(int32_t *)(self + 0x8));
    glFramebufferTexture2D(0x8d40, 0x8ce0, 0xde1, [arg2 name], 0x0);
    if (glCheckFramebufferStatus(0x8d40) != 0x8cd5) {
            [NSException raise:@"Frame Grabber" format:@"Could not attach texture to framebuffer"];
    }
    glBindFramebuffer(0x8d40, *(int32_t *)r19);
    return;
}

-(void)beforeRender:(void *)arg2 {
    glGetIntegerv(0x8ca6, self + 0xc);
    glBindFramebuffer(0x8d40, *(int32_t *)(self + 0x8));
    glClearColor(glGetFloatv(0xc22, self + 0x10), self + 0x10, arg2, r3);
    glClear(0x4100);
    return;
}

-(void)afterRender:(void *)arg2 {
    r1 = *(int32_t *)(self + 0xc);
    glClearColor(glBindFramebuffer(0x8d40, r1), r1, arg2, r3);
    return;
}

-(void)dealloc {
    glDeleteFramebuffers(0x1, self + 0x8);
    [[&var_20 super] dealloc];
    return;
}

@end