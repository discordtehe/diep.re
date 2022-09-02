@implementation FNFAssetResourceLoader

-(void)setDelegate:(void *)arg2 queue:(void *)arg3 videoID:(void *)arg4 trackerID:(void *)arg5 analyticsTags:(void *)arg6 {
    r24 = [arg2 retain];
    [arg3 retain];
    [arg4 retain];
    [arg5 retain];
    [arg6 retain];
    objc_storeWeak((int64_t *)&self->_delegate, r24);
    [r24 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_delegateQueue));
    r24 = *(self + r8);
    *(self + r8) = r23;
    r23 = [r23 retain];
    [r24 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_videoID));
    r24 = *(self + r8);
    *(self + r8) = r22;
    r22 = [r22 retain];
    [r24 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_trackerID));
    r24 = *(self + r8);
    *(self + r8) = r21;
    r21 = [r21 retain];
    [r24 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_analyticsTags));
    r0 = *(self + r8);
    *(self + r8) = r20;
    [r0 release];
    [r21 release];
    [r22 release];
    [r23 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_analyticsTags, 0x0);
    objc_storeStrong((int64_t *)&self->_trackerID, 0x0);
    objc_storeStrong((int64_t *)&self->_videoID, 0x0);
    objc_storeStrong((int64_t *)&self->_delegateQueue, 0x0);
    objc_destroyWeak((int64_t *)&self->_delegate);
    return;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained((int64_t *)&self->_delegate);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)delegateQueue {
    r0 = self->_delegateQueue;
    return r0;
}

-(void *)videoID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_videoID)), 0x0);
    return r0;
}

-(void *)trackerID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_trackerID)), 0x0);
    return r0;
}

-(void *)analyticsTags {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_analyticsTags)), 0x0);
    return r0;
}

@end