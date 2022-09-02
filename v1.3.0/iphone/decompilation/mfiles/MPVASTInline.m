@implementation MPVASTInline

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] initWithDictionary:r19];
    r20 = r0;
    if (r0 != 0x0) {
            r21 = [[r19 objectForKeyedSubscript:@"Extensions"] retain];
            r0 = [r20 generateModelFromDictionaryValue:r21 modelProvider:0x100e7eb50];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_extensions));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)creatives {
    r0 = self->_creatives;
    return r0;
}

-(void *)errorURLs {
    r0 = self->_errorURLs;
    return r0;
}

+(void *)modelMap {
    r31 = r31 - 0xd0;
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
    r19 = [sub_1004ca464([MPVASTCreative class]) retain];
    r20 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_98 count:0x2];
    r21 = [r0 retain];
    r22 = [sub_1004ca3dc() retain];
    r23 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_A8 count:0x2];
    r25 = [r0 retain];
    r26 = [sub_1004ca3dc() retain];
    r27 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_B8 count:0x2];
    r28 = [r0 retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3];
    r24 = [r0 retain];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r23 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r24 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)extensions {
    r0 = self->_extensions;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_impressionURLs, 0x0);
    objc_storeStrong((int64_t *)&self->_extensions, 0x0);
    objc_storeStrong((int64_t *)&self->_errorURLs, 0x0);
    objc_storeStrong((int64_t *)&self->_creatives, 0x0);
    return;
}

-(void *)impressionURLs {
    r0 = self->_impressionURLs;
    return r0;
}

@end