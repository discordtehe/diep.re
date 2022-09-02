@implementation GADCharacterSets

+(void *)sharedInstance {
    if (*qword_1011dbd80 != -0x1) {
            dispatch_once(0x1011dbd80, 0x100e94d48);
    }
    r0 = *0x1011dbd88;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)characterDelimitedSet {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_characterDelimitedSet)), 0x1);
    return r0;
}

-(void *)spaceDelimitedSet {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_spaceDelimitedSet)), 0x1);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_spaceDelimitedSet, 0x0);
    objc_storeStrong((int64_t *)&self->_characterDelimitedSet, 0x0);
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableCharacterSet alloc];
            r0 = objc_msgSend(r0, r20);
            r20 = r0;
            [r0 addCharactersInRange:0x4e00];
            [r20 addCharactersInRange:0x3400];
            [r20 addCharactersInRange:0x20000];
            [r20 addCharactersInRange:0x3300];
            [r20 addCharactersInRange:0xf900];
            [r20 addCharactersInRange:0x2f800];
            [r20 addCharactersInRange:0x3100];
            [r20 addCharactersInRange:0x31a0];
            [r20 addCharactersInRange:0x3040];
            [r20 addCharactersInRange:0x30a0];
            [r20 addCharactersInRange:0x30fc];
            [r20 addCharactersInRange:0x3200];
            [r20 addCharactersInRange:0xff66];
            [r20 addCharactersInRange:0xffa1];
            [r20 addCharactersInRange:0x1b000];
            [r20 addCharactersInRange:0x31f0];
            [r20 addCharactersInRange:0xac00];
            [r20 addCharactersInRange:0x1100];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_characterDelimitedSet));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r20 release];
            r0 = [NSCharacterSet alphanumericCharacterSet];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_spaceDelimitedSet));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

@end