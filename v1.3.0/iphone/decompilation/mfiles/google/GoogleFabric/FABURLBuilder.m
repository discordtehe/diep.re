@implementation FABURLBuilder

+(void *)URLWithBase:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [FABURLBuilder alloc];
    r0 = [r0 init];
    [r0 appendComponent:r21];
    [r21 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [NSMutableString alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_URLString));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r19->_queryParams = 0x0;
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)escapeString:(void *)arg2 {
    r0 = [arg2 stringByAddingPercentEscapesUsingEncoding:0x4];
    return r0;
}

-(void)appendComponent:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self URLString];
    r0 = [r0 retain];
    [r0 appendString:r21];
    [r21 release];
    [r0 release];
    return;
}

-(void)escapeAndAppendComponent:(void *)arg2 {
    r20 = [[self escapeString:arg2] retain];
    [self appendComponent:r20];
    [r20 release];
    return;
}

-(void *)URL {
    r20 = [[self URLString] retain];
    r19 = [[NSURL URLWithString:r2] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)appendValue:(void *)arg2 forQueryParam:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 != 0x0) {
            [r21 queryParams] == 0x0;
            [r21 appendComponent:r2];
            [r21 setQueryParams:[r21 queryParams] + 0x1];
            [r21 appendComponent:r2];
            [r21 appendComponent:r2];
            [NSString class];
            if ([r19 isKindOfClass:r2] != 0x0) {
                    [r21 escapeAndAppendComponent:r19];
            }
            else {
                    r22 = [[r19 description] retain];
                    [r21 escapeAndAppendComponent:r22];
                    [r22 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void *)URLString {
    r0 = self->_URLString;
    return r0;
}

-(void)setURLString:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_URLString, arg2);
    return;
}

-(unsigned long long)queryParams {
    r0 = self->_queryParams;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_URLString, 0x0);
    return;
}

-(void)setQueryParams:(unsigned long long)arg2 {
    self->_queryParams = arg2;
    return;
}

@end