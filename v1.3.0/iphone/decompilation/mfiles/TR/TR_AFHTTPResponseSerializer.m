@implementation TR_AFHTTPResponseSerializer

+(void *)serializer {
    r0 = [self alloc];
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            [r19 setStringEncoding:0x4];
            r20 = [[NSIndexSet indexSetWithIndexesInRange:0xc8] retain];
            [r19 setAcceptableStatusCodes:r20];
            [r20 release];
            [r19 setAcceptableContentTypes:0x0];
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
    r22 = [arg2 retain];
    r20 = [arg3 retain];
    [self validateResponse:r22 data:r20 error:arg4];
    [r22 release];
    r0 = [r20 autorelease];
    return r0;
}

+(bool)supportsSecureCoding {
    return 0x1;
}

-(void)encodeWithCoder:(void *)arg2 {
    r20 = [arg2 retain];
    r23 = [[self acceptableStatusCodes] retain];
    r22 = [NSStringFromSelector(@selector(acceptableStatusCodes)) retain];
    [arg2 encodeObject:r23 forKey:r22];
    [r22 release];
    [r23 release];
    r21 = [[self acceptableContentTypes] retain];
    r22 = [NSStringFromSelector(@selector(acceptableContentTypes)) retain];
    [arg2 encodeObject:r21 forKey:r22];
    [r20 release];
    [r22 release];
    [r21 release];
    return;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r20 = [[[self class] allocWithZone:arg2] init];
    r0 = [self acceptableStatusCodes];
    r0 = [r0 retain];
    r24 = [r0 copyWithZone:arg2];
    [r20 setAcceptableStatusCodes:r24];
    [r24 release];
    [r0 release];
    r0 = [self acceptableContentTypes];
    r0 = [r0 retain];
    r19 = [r0 copyWithZone:arg2];
    [r20 setAcceptableContentTypes:r19];
    [r19 release];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)initWithCoder:(void *)arg2 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
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
    r20 = [self init];
    if (r20 != 0x0) {
            r22 = [NSIndexSet class];
            r23 = [NSStringFromSelector(@selector(acceptableStatusCodes)) retain];
            r22 = [[r19 decodeObjectOfClass:r22 forKey:r23] retain];
            [r20 setAcceptableStatusCodes:r22];
            [r22 release];
            [r23 release];
            r21 = [NSIndexSet class];
            r22 = [NSStringFromSelector(@selector(acceptableContentTypes)) retain];
            r21 = [[r19 decodeObjectOfClass:r21 forKey:r22] retain];
            [r20 setAcceptableContentTypes:r21];
            [r21 release];
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

-(void)setStringEncoding:(unsigned long long)arg2 {
    self->_stringEncoding = arg2;
    return;
}

-(unsigned long long)stringEncoding {
    r0 = self->_stringEncoding;
    return r0;
}

-(void *)acceptableStatusCodes {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_acceptableStatusCodes)), 0x0);
    return r0;
}

-(bool)validateResponse:(void *)arg2 data:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0xe0;
    var_50 = r28;
    stack[-88] = r27;
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
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0) goto loc_100410e70;

loc_100410dac:
    [NSHTTPURLResponse class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100410e70;

loc_100410dd8:
    r0 = [r22 acceptableContentTypes];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_100410e5c;

loc_100410dfc:
    r25 = [[r22 acceptableContentTypes] retain];
    r0 = [r19 MIMEType];
    r29 = r29;
    r26 = [r0 retain];
    if (([r25 containsObject:r2] & 0x1) == 0x0) goto loc_100410ecc;

loc_100410e4c:
    [r26 release];
    [r25 release];
    goto loc_100410e5c;

loc_100410e5c:
    [r24 release];
    goto loc_100410e64;

loc_100410e64:
    r23 = 0x0;
    r24 = 0x1;
    goto loc_10041114c;

loc_10041114c:
    r0 = [r22 acceptableStatusCodes];
    r29 = r29;
    r27 = [r0 retain];
    if (r27 == 0x0) goto loc_1004111bc;

loc_100411170:
    r0 = [r22 acceptableStatusCodes];
    r29 = r29;
    r22 = [r0 retain];
    if (([r22 containsIndex:[r19 statusCode]] & 0x1) == 0x0) goto loc_1004111e4;

loc_1004111b4:
    [r22 release];
    goto loc_1004111bc;

loc_1004111bc:
    [r27 release];
    if (r21 != 0x0) {
            if ((r24 & 0x1) == 0x0) {
                    r23 = objc_retainAutorelease(r23);
                    r24 = 0x0;
                    *r21 = r23;
            }
    }
    goto loc_100410e78;

loc_100410e78:
    var_58 = **___stack_chk_guard;
    [r23 release];
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r24;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1004111e4:
    r0 = [r19 URL];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    [r27 release];
    if (r0 != 0x0) {
            r0 = [NSBundle mainBundle];
            r0 = [r0 retain];
            var_C0 = r0;
            r24 = [[r0 localizedStringForKey:@"Request failed: %@ (%ld)" value:@"" table:@"AFNetworking"] retain];
            r27 = [[NSHTTPURLResponse localizedStringForStatusCode:[r19 statusCode]] retain];
            [r19 statusCode];
            r26 = [[NSString stringWithFormat:r24] retain];
            r28 = [[r19 URL] retain];
            r0 = [NSDictionary dictionaryWithObjects:&var_A0 forKeys:&var_B8 count:0x3];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 mutableCopy];
            [r0 release];
            [r28 release];
            [r26 release];
            [r27 release];
            [r24 release];
            [var_C0 release];
            if (r20 != 0x0) {
                    [r25 setObject:r20 forKeyedSubscript:@"com.alamofire.serialization.response.error.data"];
            }
            r0 = [NSError errorWithDomain:@"com.alamofire.error.serialization.response" code:0xfffffffffffffc0d userInfo:r25];
            r0 = [r0 retain];
            r26 = [sub_100411420(r0, r23) retain];
            [r23 release];
            [r0 release];
            [r25 release];
            r24 = 0x0;
            r23 = r26;
    }
    if (r21 != 0x0) {
            if ((r24 & 0x1) == 0x0) {
                    r23 = objc_retainAutorelease(r23);
                    r24 = 0x0;
                    *r21 = r23;
            }
    }
    goto loc_100410e78;

loc_100410ecc:
    r0 = [r19 MIMEType];
    r29 = r29;
    r0 = [r0 retain];
    if (r0 == 0x0) goto loc_100410f0c;

loc_100410ee4:
    [r0 release];
    [r26 release];
    [r25 release];
    [r24 release];
    goto loc_100410f40;

loc_100410f40:
    if ([r20 length] == 0x0) goto loc_10041113c;

loc_100410f50:
    r0 = [r19 URL];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    [r0 release];
    if (r24 == 0x0) goto loc_100411148;

loc_100410f78:
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    var_C0 = r0;
    r25 = [[r0 localizedStringForKey:@"Request failed: unacceptable content-type: %@" value:@"" table:@"AFNetworking"] retain];
    r23 = [[r19 MIMEType] retain];
    r27 = [[NSString stringWithFormat:r25] retain];
    r28 = [[r19 URL] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 mutableCopy];
    [r0 release];
    [r28 release];
    [r27 release];
    [r23 release];
    [r25 release];
    [var_C0 release];
    if (r20 != 0x0) {
            [r26 setObject:r20 forKeyedSubscript:@"com.alamofire.serialization.response.error.data"];
    }
    r0 = [NSError errorWithDomain:@"com.alamofire.error.serialization.response" code:0xfffffffffffffc08 userInfo:r26];
    r0 = [r0 retain];
    r24 = r0;
    r0 = sub_100411420(r0, 0x0);
    r29 = r29;
    r23 = [r0 retain];
    [r24 release];
    [r26 release];
    goto loc_100411140;

loc_100411140:
    r24 = 0x0;
    goto loc_10041114c;

loc_100411148:
    r23 = 0x0;
    goto loc_10041114c;

loc_10041113c:
    r23 = 0x0;
    goto loc_100411140;

loc_100410f0c:
    r28 = [r20 length];
    [r26 release];
    [r25 release];
    [r24 release];
    if (r28 == 0x0) goto loc_100410e64;
    goto loc_100410f40;

loc_100410e70:
    r23 = 0x0;
    r24 = 0x1;
    goto loc_100410e78;
}

-(void)setAcceptableStatusCodes:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)acceptableContentTypes {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_acceptableContentTypes)), 0x0);
    return r0;
}

-(void)setAcceptableContentTypes:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_acceptableContentTypes, 0x0);
    objc_storeStrong((int64_t *)&self->_acceptableStatusCodes, 0x0);
    return;
}

@end