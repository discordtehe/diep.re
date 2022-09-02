@implementation ADCGCDWebServerDataResponse

+(void *)responseWithData:(void *)arg2 contentType:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[[self class] alloc] initWithData:r21 contentType:r19];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)initWithData:(void *)arg2 contentType:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg2;
    r21 = self;
    r19 = [r22 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            r0 = [[&var_30 super] init];
            r21 = r0;
            if (r21 != 0x0) {
                    objc_storeStrong((int64_t *)&r21->_data, r22);
                    [r21 setContentType:r20];
                    [r21 setContentLength:[r19 length]];
            }
            r21 = [r21 retain];
            r22 = r21;
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

-(void *)readData:(void * *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_done));
    if (*(int8_t *)(r19 + r20) != 0x0) {
            r0 = [NSData data];
            r0 = [r0 retain];
    }
    else {
            r0 = r19->_data;
            r0 = [r0 retain];
            *(int8_t *)(r19 + r20) = 0x1;
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void *)description {
    r0 = [[&var_30 super] description];
    r21 = [r0 retain];
    r20 = [[NSMutableString stringWithString:r21] retain];
    [r21 release];
    [r20 appendString:@"\n\n"];
    r22 = self->_data;
    r19 = [[self contentType] retain];
    r22 = [sub_1002233d4(r22, r19) retain];
    [r20 appendString:r22];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    return;
}

+(void *)responseWithText:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithText:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)responseWithHTML:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithHTML:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)responseWithHTMLTemplate:(void *)arg2 variables:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self alloc] initWithHTMLTemplate:r21 variables:r19];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)responseWithJSONObject:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithJSONObject:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)responseWithJSONObject:(void *)arg2 contentType:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r20 = [[self alloc] initWithJSONObject:r21 contentType:r19];
    [r19 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)initWithText:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[arg2 dataUsingEncoding:0x4] retain];
    if (r20 != 0x0) {
            r19 = [[r19 initWithData:r20 contentType:@"text/plain; charset=utf-8"] retain];
            r21 = r19;
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)initWithHTML:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[arg2 dataUsingEncoding:0x4] retain];
    if (r20 != 0x0) {
            r19 = [[r19 initWithData:r20 contentType:@"text/html; charset=utf-8"] retain];
            r21 = r19;
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)initWithHTMLTemplate:(void *)arg2 variables:(void *)arg3 {
    r21 = [arg2 retain];
    r24 = [arg3 retain];
    r22 = [[NSMutableString alloc] initWithContentsOfFile:r21 encoding:0x4 error:0x0];
    [r21 release];
    var_38 = r22;
    r22 = [r22 retain];
    [arg3 enumerateKeysAndObjectsUsingBlock:&var_58];
    [r24 release];
    r19 = [[self initWithHTML:r22] retain];
    [var_38 release];
    [r22 release];
    [r19 release];
    r0 = r19;
    return r0;
}

-(void *)initWithJSONObject:(void *)arg2 {
    r0 = [self initWithJSONObject:arg2 contentType:@"application/json"];
    return r0;
}

-(void *)initWithJSONObject:(void *)arg2 contentType:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [[NSJSONSerialization dataWithJSONObject:r22 options:0x0 error:0x0] retain];
    [r22 release];
    if (r21 != 0x0) {
            r19 = [[r19 initWithData:r21 contentType:r20] retain];
            r22 = r19;
    }
    else {
            r22 = 0x0;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

@end