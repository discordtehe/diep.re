@implementation APMPBStringFilter

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_messageInfo));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            sub_1001a6fac(r0);
            *(r19 + r20) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(char *)messageID {
    return "StringFilter";
}

-(void *)protoBuffer {
    r0 = self->_messageInfo;
    if (r0 != 0x0) {
            r31 = r31 - 0x20;
            var_10 = r29;
            stack[-8] = r30;
            r29 = &var_10;
            r0 = sub_10019ed64(r0, &var_18);
            r2 = var_18;
            if (r0 != -0x1) {
                    asm { ccmp       x2, #0x0, #0x4, ne };
            }
            r0 = 0x0;
            if (!CPU_FLAGS & E) {
                    r0 = @class(NSData);
                    asm { sxtw       x3, w8 };
                    r0 = [r0 dataWithBytesNoCopy:r2 length:r3];
                    r0 = [r0 retain];
            }
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithMessageInfo:(union ? *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            if (r20 != 0x0) {
                    if (*(r20 + 0x10) == "StringFilter" && (sub_1001a7034((int64_t *)&r19->_messageInfo, r20) & 0x1) != 0x0) {
                            r20 = [r19 retain];
                    }
                    else {
                            r20 = 0x0;
                    }
            }
            else {
                    r0 = calloc(0x1, 0x18);
                    r20 = sign_extend_64(*(int32_t *)ivar_offset(_messageInfo));
                    *(r19 + r20) = r0;
                    if ((sub_1001a6d68(r0) & 0x1) != 0x0) {
                            r20 = [r19 retain];
                    }
                    else {
                            sub_1001a6fac(*(r19 + r20));
                            r20 = 0x0;
                    }
            }
    }
    else {
            r20 = [r19 retain];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initWithBuffer:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = calloc(0x1, 0x18);
    r21 = r0;
    if ((sub_1001a6d68(r0) & 0x1) != 0x0) {
            r0 = objc_retainAutorelease(r19);
            if ((sub_10019cbb4([r0 bytes], [r0 length], r21) & 0x1) != 0x0) {
                    [r20 initWithMessageInfo:r21];
                    sub_1001a6fac(r21);
                    r20 = [r20 retain];
                    r21 = r20;
            }
            else {
                    sub_1001a6fac(r21);
                    r21 = 0x0;
            }
    }
    else {
            sub_1001a6fac(r21);
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void * *)initMessageInfoFn {
    return 0x1001a6d68;
}

-(void * *)copyMessageInfoFn {
    return 0x1001a7034;
}

-(void * *)deallocMessageFieldFn {
    return 0x1001a6e9c;
}

-(union ? *)messageInfo {
    r0 = self->_messageInfo;
    return r0;
}

@end