@implementation TR_AFPropertyListResponseSerializer

+(void *)serializer {
    r0 = [self serializerWithFormat:0x64 readOptions:0x0];
    return r0;
}

+(void *)serializerWithFormat:(unsigned long long)arg2 readOptions:(unsigned long long)arg3 {
    r0 = [self alloc];
    r0 = [r0 init];
    [r0 setFormat:arg2];
    [r0 setReadOptions:arg3];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = [[NSSet alloc] initWithObjects:@"application/x-plist"];
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
            r21 = 0x0;
    }
    else {
            if (r19 != 0x0) {
                    r0 = [NSPropertyListSerialization propertyListWithData:r19 options:[r21 readOptions] format:0x0 error:&var_38];
                    r29 = r29;
                    r21 = [r0 retain];
                    r22 = [var_38 retain];
                    if (r20 != 0x0) {
                            *r20 = [[sub_100411420(r22, *r20) retain] autorelease];
                    }
            }
            else {
                    r21 = 0x0;
                    r22 = 0x0;
                    if (r20 == 0x0) {
                            r22 = 0x0;
                            r21 = 0x0;
                    }
                    else {
                            *r20 = [[sub_100411420(r22, *r20) retain] autorelease];
                    }
            }
            [r22 release];
    }
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
            r22 = [NSStringFromSelector(@selector(readOptions)) retain];
            r0 = [r19 decodeObjectOfClass:r21 forKey:r22];
            r0 = [r0 retain];
            [r20 setReadOptions:[r0 unsignedIntegerValue]];
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

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[[self class] allocWithZone:arg2] init];
    [r19 setFormat:[self format]];
    [r19 setReadOptions:[self readOptions]];
    r0 = r19;
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    [[&var_50 super] encodeWithCoder:r20];
    r22 = @class(NSNumber);
    r22 = [[r22 numberWithUnsignedInteger:[self format]] retain];
    r23 = [NSStringFromSelector(@selector(format)) retain];
    [arg2 encodeObject:r22 forKey:r23];
    [r23 release];
    [r22 release];
    r21 = [[NSNumber numberWithUnsignedInteger:[self readOptions]] retain];
    r22 = [NSStringFromSelector(@selector(readOptions)) retain];
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

-(unsigned long long)readOptions {
    r0 = self->_readOptions;
    return r0;
}

-(void)setFormat:(unsigned long long)arg2 {
    self->_format = arg2;
    return;
}

-(void)setReadOptions:(unsigned long long)arg2 {
    self->_readOptions = arg2;
    return;
}

@end