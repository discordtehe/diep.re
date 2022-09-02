@implementation OMIDtapjoyPartner

-(void *)initWithName:(void *)arg2 versionString:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 == 0x0) goto loc_1009696d4;

loc_10096965c:
    if ([r19 length] == 0x0 || [r20 length] == 0x0) goto loc_1009696e4;

loc_100969684:
    r0 = [r19 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_name));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    r0 = [r20 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_versionString));
    r8 = *(r21 + r9);
    *(r21 + r9) = r0;
    [r8 release];
    goto loc_1009696d4;

loc_1009696d4:
    r22 = [r21 retain];
    goto loc_1009696e8;

loc_1009696e8:
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;

loc_1009696e4:
    r22 = 0x0;
    goto loc_1009696e8;
}

-(void *)name {
    r0 = self->_name;
    return r0;
}

-(void *)versionString {
    r0 = self->_versionString;
    return r0;
}

-(void *)toJSON {
    r31 = r31 - 0x40;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjects:&stack[-40] forKeys:&var_28 count:0x2];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_versionString, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end