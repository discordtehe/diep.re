@implementation FNFAssetResourceLoadingContentInformationRequest

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_contentType, 0x0);
    return;
}

-(void)setContentLength:(long long)arg2 {
    self->_contentLength = arg2;
    return;
}

-(long long)contentLength {
    r0 = self->_contentLength;
    return r0;
}

-(void *)contentType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_contentType)), 0x0);
    return r0;
}

-(void)setContentType:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(bool)isByteRangeAccessSupported {
    r0 = *(int8_t *)(int64_t *)&self->_byteRangeAccessSupported;
    return r0;
}

-(void)setByteRangeAccessSupported:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_byteRangeAccessSupported = arg2;
    return;
}

@end