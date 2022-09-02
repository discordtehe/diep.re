@implementation TR_AFJSONRequestSerializer

+(void *)serializer {
    r0 = [self serializerWithWritingOptions:0x0];
    return r0;
}

+(void *)serializerWithWritingOptions:(unsigned long long)arg2 {
    r0 = [self alloc];
    r0 = [r0 init];
    [r0 setWritingOptions:arg2];
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
                            [r23 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
                    }
                    r21 = [[NSJSONSerialization dataWithJSONObject:r20 options:[r22 writingOptions] error:r21] retain];
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

-(void)encodeWithCoder:(void *)arg2 {
    r22 = [arg2 retain];
    [[&var_30 super] encodeWithCoder:r22];
    r20 = [self writingOptions];
    r21 = [NSStringFromSelector(@selector(writingOptions)) retain];
    [arg2 encodeInteger:r20 forKey:r21];
    [r22 release];
    [r21 release];
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r0 = [[&var_20 super] copyWithZone:arg2];
    [r0 setWritingOptions:[self writingOptions]];
    r0 = r0;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] initWithCoder:r19];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [NSNumber class];
            r22 = [NSStringFromSelector(@selector(writingOptions)) retain];
            r0 = [r19 decodeObjectOfClass:r21 forKey:r22];
            r0 = [r0 retain];
            [r20 setWritingOptions:[r0 unsignedIntegerValue]];
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

-(unsigned long long)writingOptions {
    r0 = self->_writingOptions;
    return r0;
}

-(void)setWritingOptions:(unsigned long long)arg2 {
    self->_writingOptions = arg2;
    return;
}

@end