@implementation MPVASTResponse

+(void *)modelMap {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r19 = [sub_1004ca464([MPVASTAd class]) retain];
    r21 = [sub_1004ca38c() retain];
    r0 = [NSArray arrayWithObjects:&var_58 count:0x2];
    r22 = [r0 retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&var_48 count:0x2];
    r20 = [r0 retain];
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)ads {
    r0 = self->_ads;
    return r0;
}

-(void)setAds:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_ads, arg2);
    return;
}

-(void *)errorURLs {
    r0 = self->_errorURLs;
    return r0;
}

-(void)setErrorURLs:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_errorURLs, arg2);
    return;
}

-(void)setVersion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)version {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_version)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_version, 0x0);
    objc_storeStrong((int64_t *)&self->_errorURLs, 0x0);
    objc_storeStrong((int64_t *)&self->_ads, 0x0);
    return;
}

@end