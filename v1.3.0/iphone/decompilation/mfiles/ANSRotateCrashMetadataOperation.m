@implementation ANSRotateCrashMetadataOperation

-(void *)initWithCrashMetadataURL:(void *)arg2 currentMetadata:(void *)arg3 {
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
    r22 = arg3;
    r23 = arg2;
    r19 = [r23 retain];
    r20 = [r22 retain];
    r0 = [[&var_40 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_crashMetadataURL, r23);
            objc_storeStrong((int64_t *)&r21->_currentMetadata, r22);
            r22 = r21->_currentMetadata;
            r0 = [NSDate date];
            r0 = [r0 retain];
            r23 = r0;
            [r0 timeIntervalSince1970];
            asm { fcvtzu     x2, d0 };
            r0 = [r22 dictionaryRepresentationWithStartTime:r2];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_currentMetadataDictionary));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            [r23 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)crashMetadataURL {
    r0 = self->_crashMetadataURL;
    return r0;
}

-(void)setCrashMetadataURL:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_crashMetadataURL, arg2);
    return;
}

-(void *)currentMetadata {
    r0 = self->_currentMetadata;
    return r0;
}

-(void)main {
    r31 = r31 - 0x60;
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
    r19 = self;
    r22 = [[NSFileManager defaultManager] retain];
    r0 = [r19 crashMetadataURL];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 path];
    r29 = &saved_fp;
    r24 = [r0 retain];
    r25 = [r22 fileExistsAtPath:r24];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r25 != 0x0) {
            r23 = [[r19 crashMetadataURL] retain];
            r22 = [[ANSCrashMetadata readSerializedDictionaryFromURL:r23] retain];
            [r23 release];
            r0 = @class(ANSCrashMetadata);
            r0 = [r0 alloc];
            r0 = [r0 initWithDictionary:r22];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_crashMetadata));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r21 = [[NSFileManager defaultManager] retain];
            r0 = [r19 crashMetadataURL];
            r29 = r29;
            r23 = [r0 retain];
            [r21 removeItemAtURL:r23 error:0x0];
            [r23 release];
            r0 = r21;
    }
    else {
            r21 = [ANSCrashMetadata alloc];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&stack[-88] count:0x0];
            r29 = r29;
            r22 = [r0 retain];
            r0 = [r21 initWithDictionary:r22];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_crashMetadata));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            r0 = r8;
    }
    [r0 release];
    [r22 release];
    r21 = @class(ANSCrashMetadata);
    r22 = [[r19 currentMetadataDictionary] retain];
    r19 = [[r19 crashMetadataURL] retain];
    [r21 writeSerializedDictionary:r22 toURL:r19];
    [r19 release];
    [r22 release];
    return;
}

-(void)setCurrentMetadata:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currentMetadata, arg2);
    return;
}

-(void)setCrashMetadata:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_crashMetadata, arg2);
    return;
}

-(void *)currentMetadataDictionary {
    r0 = self->_currentMetadataDictionary;
    return r0;
}

-(void *)crashMetadata {
    r0 = self->_crashMetadata;
    return r0;
}

-(void)setCurrentMetadataDictionary:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_currentMetadataDictionary, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_currentMetadataDictionary, 0x0);
    objc_storeStrong((int64_t *)&self->_crashMetadata, 0x0);
    objc_storeStrong((int64_t *)&self->_currentMetadata, 0x0);
    objc_storeStrong((int64_t *)&self->_crashMetadataURL, 0x0);
    return;
}

@end