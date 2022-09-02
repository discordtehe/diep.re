@implementation FBAdDSLAsset

-(void *)initWithAssetMetadata:(void *)arg2 fileName:(void *)arg3 withRemoteURLString:(void *)arg4 withType:(unsigned long long)arg5 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg5;
    r21 = arg4;
    r20 = arg3;
    r19 = arg2;
    [arg2 retain];
    [r20 retain];
    [r21 retain];
    r0 = [[&var_40 super] init];
    r23 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_metaData));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_fileName));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r0 = [NSURL alloc];
            r0 = [r0 initWithString:r21];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_remoteURL));
            r8 = *(r23 + r9);
            *(r23 + r9) = r0;
            [r8 release];
            r23->_type = r22;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r23;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_remoteURL, 0x0);
    objc_storeStrong((int64_t *)&self->_fileName, 0x0);
    objc_storeStrong((int64_t *)&self->_metaData, 0x0);
    return;
}

-(void *)metaData {
    r0 = self->_metaData;
    return r0;
}

-(void *)fileName {
    r0 = self->_fileName;
    return r0;
}

-(void *)remoteURL {
    r0 = self->_remoteURL;
    return r0;
}

-(unsigned long long)type {
    r0 = self->_type;
    return r0;
}

@end