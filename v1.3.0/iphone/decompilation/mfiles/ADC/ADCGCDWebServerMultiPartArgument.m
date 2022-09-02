@implementation ADCGCDWebServerMultiPartArgument

-(void *)description {
    [self class];
    r22 = [[self mimeType] retain];
    r0 = self->_data;
    [r0 length];
    r19 = [[NSString stringWithFormat:r2] retain];
    [r22 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithControlName:(void *)arg2 contentType:(void *)arg3 data:(void *)arg4 {
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
    r22 = arg4;
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    r19 = [r22 retain];
    r0 = [[&var_40 super] initWithControlName:r21 contentType:r23];
    r20 = r0;
    [r23 release];
    [r21 release];
    if (r20 != 0x0) {
            r21 = (int64_t *)&r20->_data;
            objc_storeStrong(r21, r22);
            r0 = [r20 contentType];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 hasPrefix:@"text/"];
            [r0 release];
            if (r24 != 0x0) {
                    r0 = [r20 contentType];
                    r0 = [r0 retain];
                    r23 = [sub_100222e30(r0, @"charset") retain];
                    [r0 release];
                    r0 = [[NSString alloc] initWithData:*r21 encoding:sub_100222fe4()];
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_string));
                    r8 = *(r20 + r9);
                    *(r20 + r9) = r0;
                    [r8 release];
                    [r23 release];
            }
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)data {
    r0 = self->_data;
    return r0;
}

-(void *)string {
    r0 = self->_string;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_string, 0x0);
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    return;
}

@end