@implementation TR_AFPropertyListRequestSerializer

+(void *)serializer {
    r0 = [self serializerWithFormat:0x64 writeOptions:0x0];
    return r0;
}

+(void *)serializerWithFormat:(unsigned long long)arg2 writeOptions:(unsigned long long)arg3 {
    r0 = [self alloc];
    r0 = [r0 init];
    [r0 setFormat:arg2];
    [r0 setWriteOptions:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)requestBySerializingRequest:(void *)arg2 withParameters:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x90;
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
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r23 = [[r22 HTTPMethodsEncodingParametersInURI] retain];
    r0 = [r19 HTTPMethod];
    r0 = [r0 retain];
    r24 = r0;
    r0 = [r0 uppercaseString];
    r29 = &saved_fp;
    r25 = [r0 retain];
    r26 = [r23 containsObject:r2];
    [r25 release];
    [r24 release];
    [r23 release];
    if (r26 != 0x0) {
            r0 = [[&var_50 super] requestBySerializingRequest:r19 withParameters:r20 error:r21];
            r21 = [r0 retain];
    }
    else {
            r23 = [r19 mutableCopy];
            r0 = [r22 HTTPRequestHeaders];
            r29 = r29;
            r24 = [r0 retain];
            var_60 = [r19 retain];
            r23 = [r23 retain];
            var_58 = r23;
            [r24 enumerateKeysAndObjectsUsingBlock:&var_80];
            [r24 release];
            if (r20 != 0x0) {
                    r0 = [r23 valueForHTTPHeaderField:@"Content-Type"];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 release];
                    if (r0 == 0x0) {
                            [r23 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
                    }
                    r21 = [[NSPropertyListSerialization dataWithPropertyList:r20 format:[r22 format] options:[r22 writeOptions] error:r21] retain];
                    [r23 setHTTPBody:r21];
                    [r21 release];
            }
            r21 = [r23 retain];
            [var_58 release];
            [var_60 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_50 super] initWithCoder:r19];
    r20 = r0;
    if (r20 != 0x0) {
            r22 = [NSNumber class];
            r23 = [NSStringFromSelector(@selector(format)) retain];
            r0 = [r19 decodeObjectOfClass:r22 forKey:r23];
            r0 = [r0 retain];
            [r20 setFormat:[r0 unsignedIntegerValue]];
            [r0 release];
            [r23 release];
            r21 = [NSNumber class];
            r22 = [NSStringFromSelector(@selector(writeOptions)) retain];
            r0 = [r19 decodeObjectOfClass:r21 forKey:r22];
            r0 = [r0 retain];
            [r20 setWriteOptions:[r0 unsignedIntegerValue]];
            [r0 release];
            [r22 release];
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    [[&var_40 super] encodeWithCoder:r20];
    r23 = [self format];
    r22 = [NSStringFromSelector(@selector(format)) retain];
    [arg2 encodeInteger:r23 forKey:r22];
    [r22 release];
    r21 = [[NSNumber numberWithUnsignedInteger:[self writeOptions]] retain];
    r22 = [NSStringFromSelector(@selector(writeOptions)) retain];
    [arg2 encodeObject:r21 forKey:r22];
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(unsigned long long)format {
    r0 = self->_format;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_20 super] copyWithZone:arg2];
    [r0 setFormat:[self format]];
    [r0 setWriteOptions:[self writeOptions]];
    r0 = r0;
    return r0;
}

-(void)setFormat:(unsigned long long)arg2 {
    self->_format = arg2;
    return;
}

-(unsigned long long)writeOptions {
    r0 = self->_writeOptions;
    return r0;
}

-(void)setWriteOptions:(unsigned long long)arg2 {
    self->_writeOptions = arg2;
    return;
}

@end