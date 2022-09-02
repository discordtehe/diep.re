@implementation MPVASTCreative

-(void *)identifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_identifier)), 0x0);
    return r0;
}

+(void *)modelMap {
    r31 = r31 - 0xd0;
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
    var_48 = **___stack_chk_guard;
    r19 = [sub_1004ca464([MPVASTLinearAd class]) retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_A8 count:0x2];
    r20 = [r0 retain];
    r23 = [sub_1004ca464([MPVASTCompanionAd class]) retain];
    r24 = [sub_1004ca38c() retain];
    r0 = @class(NSArray);
    r0 = [r0 arrayWithObjects:&var_B8 count:0x2];
    r22 = [r0 retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_98 count:0x5];
    r21 = [r0 retain];
    [r22 release];
    [r24 release];
    [r23 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_48) {
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

-(void *)adID {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_adID)), 0x0);
    return r0;
}

-(void *)linearAd {
    r0 = self->_linearAd;
    return r0;
}

-(void *)companionAds {
    r0 = self->_companionAds;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_companionAds, 0x0);
    objc_storeStrong((int64_t *)&self->_linearAd, 0x0);
    objc_storeStrong((int64_t *)&self->_adID, 0x0);
    objc_storeStrong((int64_t *)&self->_sequence, 0x0);
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    return;
}

@end