@implementation MPVASTAd

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_40 super] initWithDictionary:arg2];
    r19 = r0;
    if (r0 != 0x0 && r19->_inlineAd != 0x0) {
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_wrapper));
            if (*(r19 + r23) != 0x0) {
                    r22 = [[NSString stringWithFormat:@"VAST <Ad> element is not allowed to contain both an <InLine> and a <Wrapper>. The <Wrapper> will be ignored."] retain];
                    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
                    [MPLogging logEvent:r21 source:0x0 fromClass:[r19 class]];
                    [r21 release];
                    [r22 release];
                    r0 = *(r19 + r23);
                    *(r19 + r23) = 0x0;
                    [r0 release];
            }
    }
    r0 = r19;
    return r0;
}

-(void *)identifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_identifier)), 0x0);
    return r0;
}

+(void *)modelMap {
    r31 = r31 - 0xb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_38 = **___stack_chk_guard;
    r19 = [sub_1004ca464([MPVASTInline class]) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_88 count:0x2];
    r20 = [r0 retain];
    r23 = [sub_1004ca464([MPVASTWrapper class]) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_98 count:0x2];
    r22 = [r0 retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_58 forKeys:&var_78 count:0x4];
    r21 = [r0 retain];
    [r22 release];
    [r23 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r21 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)sequence {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_sequence)), 0x0);
    return r0;
}

-(void *)inlineAd {
    r0 = self->_inlineAd;
    return r0;
}

-(void *)wrapper {
    r0 = self->_wrapper;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_wrapper, 0x0);
    objc_storeStrong((int64_t *)&self->_inlineAd, 0x0);
    objc_storeStrong((int64_t *)&self->_sequence, 0x0);
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    return;
}

@end