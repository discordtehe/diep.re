@implementation TR_AFQueryStringPair

-(void *)initWithField:(void *)arg2 value:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            [r21 setField:r19];
            [r21 setValue:r20];
            r22 = [r21 retain];
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

-(void *)field {
    r0 = self->_field;
    return r0;
}

-(void *)URLEncodedStringValue {
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
    r19 = self;
    r0 = [self value];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 != 0x0) {
            r22 = [[r19 value] retain];
            r0 = [NSNull null];
            r29 = r29;
            r23 = [r0 retain];
            r24 = [r22 isEqual:r2];
            [r23 release];
            [r22 release];
            [r21 release];
            if (r24 != 0x0) {
                    r0 = [r19 field];
                    r0 = [r0 retain];
                    r21 = [[r0 description] retain];
                    r19 = [sub_100408d54() retain];
                    [r21 release];
                    r0 = r0;
            }
            else {
                    r20 = @selector(value);
                    r0 = [r19 field];
                    r0 = [r0 retain];
                    r21 = r0;
                    r22 = [[r0 description] retain];
                    r24 = [sub_100408d54() retain];
                    r0 = objc_msgSend(r19, r20);
                    r0 = [r0 retain];
                    r25 = [[r0 description] retain];
                    r26 = [sub_100408d54() retain];
                    r19 = [[NSString stringWithFormat:r2] retain];
                    [r26 release];
                    [r25 release];
                    [r0 release];
                    [r24 release];
                    [r22 release];
                    r0 = r21;
            }
    }
    else {
            r0 = [r19 field];
            r0 = [r0 retain];
            r21 = [[r0 description] retain];
            r19 = [sub_100408d54() retain];
            [r21 release];
            r0 = r0;
    }
    [r0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)setField:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_field, arg2);
    return;
}

-(void *)value {
    r0 = self->_value;
    return r0;
}

-(void)setValue:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_value, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_value, 0x0);
    objc_storeStrong((int64_t *)&self->_field, 0x0);
    return;
}

@end