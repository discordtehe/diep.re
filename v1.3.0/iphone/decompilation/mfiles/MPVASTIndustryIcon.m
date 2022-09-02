@implementation MPVASTIndustryIcon

-(double)width {
    r0 = self;
    return r0;
}

-(double)height {
    r0 = self;
    return r0;
}

-(void *)program {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_program)), 0x0);
    return r0;
}

-(void *)xPosition {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_xPosition)), 0x0);
    return r0;
}

-(void *)yPosition {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_yPosition)), 0x0);
    return r0;
}

-(void *)apiFramework {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_apiFramework)), 0x0);
    return r0;
}

+(void *)modelMap {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xffffffffffffffa0 - 0x210;
    var_60 = **___stack_chk_guard;
    var_1E8 = [sub_1004ca404(0x1) retain];
    r0 = [NSArray arrayWithObjects:&var_150 count:0x2];
    var_1F0 = [r0 retain];
    var_1F8 = [sub_1004ca404(0x1) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_160 count:0x2];
    var_200 = [r0 retain];
    var_208 = [sub_1004ca3dc() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_170 count:0x2];
    var_210 = [r0 retain];
    var_218 = [sub_1004ca3dc() retain];
    var_220 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_180 count:0x2];
    var_228 = [r0 retain];
    var_230 = [sub_1004ca3dc() retain];
    var_238 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_190 count:0x2];
    var_240 = [r0 retain];
    var_248 = [sub_1004ca43c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_1A0 count:0x2];
    var_250 = [r0 retain];
    var_258 = [sub_1004ca464([MPVASTDurationOffset class]) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_1B0 count:0x2];
    var_260 = [r0 retain];
    r27 = [sub_1004ca464([MPVASTResource class]) retain];
    r28 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_1C0 count:0x2];
    r19 = [r0 retain];
    r21 = [sub_1004ca464([MPVASTResource class]) retain];
    r22 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_1D0 count:0x2];
    r23 = [r0 retain];
    r24 = [sub_1004ca464([MPVASTResource class]) retain];
    r25 = [sub_1004ca38c() retain];
    r0 = [NSArray arrayWithObjects:&var_1E0 count:0x2];
    r26 = [r0 retain];
    r0 = [NSDictionary dictionaryWithObjects:&saved_fp - 0xd0 forKeys:&var_140 count:0xe];
    r20 = [r0 retain];
    [r26 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    [r28 release];
    [r27 release];
    [var_260 release];
    [var_258 release];
    [var_250 release];
    [var_248 release];
    [var_240 release];
    [var_238 release];
    [var_230 release];
    [var_228 release];
    [var_220 release];
    [var_218 release];
    [var_210 release];
    [var_208 release];
    [var_200 release];
    [var_1F8 release];
    [var_1F0 release];
    [var_1E8 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(double)duration {
    r0 = self;
    return r0;
}

-(void *)clickThroughURL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_clickThroughURL)), 0x0);
    return r0;
}

-(void *)offset {
    r0 = self->_offset;
    return r0;
}

-(void *)clickTrackingURLs {
    r0 = self->_clickTrackingURLs;
    return r0;
}

-(void *)viewTrackingURLs {
    r0 = self->_viewTrackingURLs;
    return r0;
}

-(void *)iframeResource {
    r0 = self->_iframeResource;
    return r0;
}

-(void *)HTMLResource {
    r0 = self->_HTMLResource;
    return r0;
}

-(void *)staticResource {
    r0 = self->_staticResource;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_staticResource, 0x0);
    objc_storeStrong((int64_t *)&self->_iframeResource, 0x0);
    objc_storeStrong((int64_t *)&self->_HTMLResource, 0x0);
    objc_storeStrong((int64_t *)&self->_viewTrackingURLs, 0x0);
    objc_storeStrong((int64_t *)&self->_clickTrackingURLs, 0x0);
    objc_storeStrong((int64_t *)&self->_clickThroughURL, 0x0);
    objc_storeStrong((int64_t *)&self->_offset, 0x0);
    objc_storeStrong((int64_t *)&self->_apiFramework, 0x0);
    objc_storeStrong((int64_t *)&self->_yPosition, 0x0);
    objc_storeStrong((int64_t *)&self->_xPosition, 0x0);
    objc_storeStrong((int64_t *)&self->_program, 0x0);
    return;
}

@end