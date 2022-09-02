@implementation MPVASTMediaFile

-(void *)identifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_identifier)), 0x0);
    return r0;
}

-(void *)delivery {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_delivery)), 0x0);
    return r0;
}

+(void *)modelMap {
    r31 = r31 - 0x120;
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
    var_58 = **___stack_chk_guard;
    r19 = [sub_1004ca404(0x1) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_D8 count:0x2];
    r20 = [r0 retain];
    r21 = [sub_1004ca404(0x1) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_E8 count:0x2];
    r22 = [r0 retain];
    r24 = [sub_1004ca404(0x1) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_F8 count:0x2];
    r25 = [r0 retain];
    r26 = [sub_1004ca3dc() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_108 count:0x2];
    r27 = [r0 retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_90 forKeys:&var_C8 count:0x7];
    r23 = [r0 retain];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)mimeType {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_mimeType)), 0x0);
    return r0;
}

-(double)bitrate {
    r0 = self;
    return r0;
}

-(double)height {
    r0 = self;
    return r0;
}

-(void *)URL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_URL)), 0x0);
    return r0;
}

-(double)width {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_URL, 0x0);
    objc_storeStrong((int64_t *)&self->_mimeType, 0x0);
    objc_storeStrong((int64_t *)&self->_delivery, 0x0);
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    return;
}

@end