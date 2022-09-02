@implementation TR_AFJSONResponseSerializer

+(void *)serializer {
    r0 = [self serializerWithReadingOptions:0x0];
    return r0;
}

+(void *)serializerWithReadingOptions:(unsigned long long)arg2 {
    r0 = [self alloc];
    r0 = [r0 init];
    [r0 setReadingOptions:arg2];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [[NSSet setWithObjects:@"application/json"] retain];
            [r19 setAcceptableContentTypes:r20];
            [r20 release];
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)responseObjectForResponse:(void *)arg2 data:(void *)arg3 error:(void * *)arg4 {
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
    r20 = arg4;
    r21 = self;
    r22 = [arg2 retain];
    r19 = [arg3 retain];
    r23 = [r21 validateResponse:r22 data:r19 error:r20];
    [r22 release];
    if ((r23 & 0x1) == 0x0 && (r20 == 0x0 || (sub_100411d0c() & 0x1) != 0x0)) {
            r22 = 0x0;
    }
    else {
            r0 = [NSData dataWithBytes:" " length:0x1];
            r29 = r29;
            r22 = [r0 retain];
            r23 = [r19 isEqualToData:r22];
            [r22 release];
            r0 = [r19 length];
            r22 = 0x0;
            if ((r23 & 0x1) == 0x0) {
                    r22 = 0x0;
                    if (r0 != 0x0) {
                            r0 = [NSJSONSerialization JSONObjectWithData:r19 options:[r21 readingOptions] error:&var_38];
                            r29 = r29;
                            r22 = [r0 retain];
                            r23 = [var_38 retain];
                            r0 = [r21 removesKeysWithNullValues];
                            if (r22 != 0x0) {
                                    if (r0 != 0x0) {
                                            r0 = [r21 readingOptions];
                                            r0 = sub_100411e58(r22, r0);
                                            r29 = r29;
                                            r21 = [r0 retain];
                                            [r22 release];
                                            r22 = r21;
                                    }
                            }
                            if (r20 != 0x0) {
                                    *r20 = [[sub_100411420(r23, *r20) retain] autorelease];
                            }
                            [r23 release];
                    }
            }
    }
    [r19 release];
    r0 = [r22 autorelease];
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
            r23 = [NSStringFromSelector(@selector(readingOptions)) retain];
            r0 = [r19 decodeObjectOfClass:r22 forKey:r23];
            r0 = [r0 retain];
            [r20 setReadingOptions:[r0 unsignedIntegerValue]];
            [r0 release];
            [r23 release];
            r21 = [NSNumber class];
            r22 = [NSStringFromSelector(@selector(removesKeysWithNullValues)) retain];
            r0 = [r19 decodeObjectOfClass:r21 forKey:r22];
            r0 = [r0 retain];
            [r20 setRemovesKeysWithNullValues:[r0 boolValue]];
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
    [[&var_50 super] encodeWithCoder:r20];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithUnsignedInteger:[self readingOptions]] retain];
    r23 = [NSStringFromSelector(@selector(readingOptions)) retain];
    [arg2 encodeObject:r22 forKey:r23];
    [r23 release];
    [r22 release];
    r22 = @class(NSNumber);
    [self removesKeysWithNullValues];
    r21 = [[r22 numberWithBool:r2] retain];
    r22 = [NSStringFromSelector(@selector(removesKeysWithNullValues)) retain];
    [arg2 encodeObject:r21 forKey:r22];
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(unsigned long long)readingOptions {
    r0 = self->_readingOptions;
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[[self class] allocWithZone:arg2] init];
    [r19 setReadingOptions:[self readingOptions]];
    [r19 setRemovesKeysWithNullValues:[self removesKeysWithNullValues]];
    r0 = r19;
    return r0;
}

-(void)setReadingOptions:(unsigned long long)arg2 {
    self->_readingOptions = arg2;
    return;
}

-(bool)removesKeysWithNullValues {
    r0 = *(int8_t *)(int64_t *)&self->_removesKeysWithNullValues;
    return r0;
}

-(void)setRemovesKeysWithNullValues:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_removesKeysWithNullValues = arg2;
    return;
}

@end