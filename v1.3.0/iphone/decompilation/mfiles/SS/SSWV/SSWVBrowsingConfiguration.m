@implementation SSWVBrowsingConfiguration

-(void)setUseWK:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_useWK = arg2;
    return;
}

-(bool)useWK {
    r0 = *(int8_t *)(int64_t *)&self->_useWK;
    return r0;
}

-(bool)mediaPlaybackRequiresUserAction {
    r0 = *(int8_t *)(int64_t *)&self->_mediaPlaybackRequiresUserAction;
    return r0;
}

-(void)setMediaPlaybackRequiresUserAction:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_mediaPlaybackRequiresUserAction = arg2;
    return;
}

-(void)setMediaPlaybackAllowsInLine:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_mediaPlaybackAllowsInLine = arg2;
    return;
}

-(bool)mediaPlaybackAllowsInLine {
    r0 = *(int8_t *)(int64_t *)&self->_mediaPlaybackAllowsInLine;
    return r0;
}

-(void *)allowFileAccessFromFileURLs {
    r0 = self->_allowFileAccessFromFileURLs;
    return r0;
}

-(void)setAllowFileAccessFromFileURLs:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_allowFileAccessFromFileURLs, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_allowFileAccessFromFileURLs, 0x0);
    return;
}

@end