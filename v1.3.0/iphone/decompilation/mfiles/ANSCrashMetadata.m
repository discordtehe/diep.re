@implementation ANSCrashMetadata

+(bool)writeSerializedDictionary:(void *)arg2 toURL:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[NSJSONSerialization dataWithJSONObject:arg2 options:0x0 error:0x0] retain];
    [r21 release];
    r21 = [r20 writeToURL:r19 atomically:0x1];
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

+(void *)readSerializedDictionaryFromURL:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [NSData dataWithContentsOfURL:arg2];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r20 = [[NSJSONSerialization JSONObjectWithData:r19 options:0x0 error:0x0] retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_rawMetadataDictionary, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)eventName {
    r0 = objc_retainAutoreleaseReturnValue(*0x100e6bf28);
    return r0;
}

-(void *)dictionaryRepresentationWithStartTime:(unsigned long long)arg2 {
    r0 = self->_rawMetadataDictionary;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)rawMetadataDictionary {
    r0 = self->_rawMetadataDictionary;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rawMetadataDictionary, 0x0);
    return;
}

@end