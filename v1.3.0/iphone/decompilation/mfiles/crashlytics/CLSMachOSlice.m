@implementation CLSMachOSlice

+(void *)runningSlice {
    sub_1000a2d30();
    r0 = [self alloc];
    r0 = [r0 initWithSlice:&var_20];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithSlice:(struct CLSMachOSlice *)arg2 {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            *(int128_t *)(int64_t *)&r19->_slice = *(int128_t *)r20;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_minimumOSVersion));
            *(r19 + r8) = 0x0;
            *(int32_t *)(0x8 + r19 + r8) = 0x0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_linkedSDKVersion));
            *(r19 + r8) = 0x0;
            *(int32_t *)(0x8 + r19 + r8) = 0x0;
            r20 = [[NSMutableArray array] retain];
            [r19 retain];
            var_38 = r20;
            [r20 retain];
            sub_1000a3040((int64_t *)&r19->_slice, &var_60);
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_linkedDylibs));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            [var_38 release];
            [r22 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)architectureName {
    sub_1000a2fa0((int64_t *)&self->_slice);
    r0 = [NSString stringWithUTF8String:r2];
    return r0;
}

-(void *)uuid {
    r0 = self->_uuidString;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)linkedDylibs {
    r0 = self->_linkedDylibs;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(union ?)minimumOSVersion {
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_minimumOSVersion)));
    return r0;
}

-(union ?)linkedSDKVersion {
    r0 = *(self + sign_extend_64(*(int32_t *)ivar_offset(_linkedSDKVersion)));
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_linkedDylibs, 0x0);
    objc_storeStrong((int64_t *)&self->_uuidString, 0x0);
    return;
}

@end