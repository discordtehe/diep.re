@implementation TR_AFCompoundResponseSerializer

+(void *)compoundSerializerWithResponseSerializers:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self alloc];
    r0 = [r0 init];
    [r0 setResponseSerializers:r21];
    [r21 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)encodeWithCoder:(void *)arg2 {
    r22 = [arg2 retain];
    [[&var_30 super] encodeWithCoder:r22];
    r20 = [[self responseSerializers] retain];
    r21 = [NSStringFromSelector(@selector(responseSerializers)) retain];
    [arg2 encodeObject:r20 forKey:r21];
    [r22 release];
    [r21 release];
    [r20 release];
    return;
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
            r21 = [NSArray class];
            r22 = [NSStringFromSelector(@selector(responseSerializers)) retain];
            r21 = [[r19 decodeObjectOfClass:r21 forKey:r22] retain];
            [r20 setResponseSerializers:r21];
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

-(void *)responseObjectForResponse:(void *)arg2 data:(void *)arg3 error:(void * *)arg4 {
    r31 = r31 - 0x180;
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
    var_150 = arg4;
    r21 = [arg2 retain];
    r26 = [arg3 retain];
    var_168 = self;
    r0 = [self responseSerializers];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_138 = r0;
    var_160 = r1;
    r25 = objc_msgSend(r0, r1);
    if (r25 == 0x0) goto loc_100413b84;

loc_100413a48:
    var_148 = r21;
    goto loc_100413a64;

loc_100413a64:
    r20 = 0x0;
    goto loc_100413a78;

loc_100413a78:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(var_138);
    }
    r27 = @selector(class);
    r24 = *(0x0 + r20 * 0x8);
    objc_msgSend(@class(TR_AFHTTPResponseSerializer), r27);
    if (objc_msgSend(r24, r28) == 0x0) goto loc_100413b4c;

loc_100413ab8:
    r23 = r26;
    r0 = [r24 responseObjectForResponse:r2 data:r3 error:r4];
    r29 = r29;
    r24 = [r0 retain];
    r26 = [0x0 retain];
    if (r24 != 0x0) {
            r21 = var_150;
            if (r21 != 0x0) {
                    r0 = sub_100411420(r26, *r21);
                    r29 = r29;
                    *r21 = [[r0 retain] autorelease];
            }
            var_158 = [r24 retain];
            r21 = 0x0;
    }
    else {
            r21 = 0x1;
    }
    [r24 release];
    [r26 release];
    if (r21 == 0x0) goto loc_100413bcc;

loc_100413b44:
    r21 = var_148;
    r26 = r23;
    goto loc_100413b4c;

loc_100413b4c:
    r20 = r20 + 0x1;
    if (r20 < r25) goto loc_100413a78;

loc_100413b58:
    r25 = objc_msgSend(var_138, var_160);
    if (r25 != 0x0) goto loc_100413a64;

loc_100413b84:
    [var_138 release];
    r0 = [[&var_130 super] responseObjectForResponse:r21 data:r26 error:var_150];
    r19 = [r0 retain];
    goto loc_100413be0;

loc_100413be0:
    var_58 = **___stack_chk_guard;
    [r26 release];
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100413bcc:
    [var_138 release];
    r21 = var_148;
    r26 = r23;
    r19 = var_158;
    goto loc_100413be0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    r19 = [[[self class] allocWithZone:arg2] init];
    r20 = [[self responseSerializers] retain];
    [r19 setResponseSerializers:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void *)responseSerializers {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_responseSerializers)), 0x0);
    return r0;
}

-(void)setResponseSerializers:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_responseSerializers, 0x0);
    return;
}

@end