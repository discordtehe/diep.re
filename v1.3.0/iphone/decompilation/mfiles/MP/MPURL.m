@implementation MPURL

+(void *)URLWithString:(void *)arg2 {
    r20 = [arg2 retain];
    r19 = [objc_alloc() initWithString:r20];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithString:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] initWithString:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSMutableDictionary dictionary];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_postData));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

+(void *)URLWithComponents:(void *)arg2 postData:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [[r20 URL] retain];
    [r20 release];
    r20 = [[r21 absoluteString] retain];
    [r21 release];
    r0 = objc_alloc();
    r0 = [r0 initWithString:r20];
    r21 = r0;
    r0 = [r0 postData];
    r0 = [r0 retain];
    [r0 addEntriesFromDictionary:r19];
    [r19 release];
    [r0 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)arrayForPOSTDataKey:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self postData];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)dictionaryForPOSTDataKey:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self postData];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)numberForPOSTDataKey:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self postData];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)stringForPOSTDataKey:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self postData];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)postData {
    r0 = self->_postData;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_postData, 0x0);
    return;
}

@end