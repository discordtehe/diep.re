@implementation ADCGCDWebServerDataRequest

-(bool)writeData:(void *)arg2 error:(void * *)arg3 {
    [self->_data appendData:arg2];
    return 0x1;
}

-(bool)open:(void * *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r20 = self;
    r23 = [self contentLength];
    r22 = [NSMutableData alloc];
    if (r23 != -0x1) {
            [r20 contentLength];
            r1 = @selector(initWithCapacity:);
            r0 = objc_msgSend(r22, r1);
    }
    else {
            r1 = @selector(init);
            r0 = objc_msgSend(r22, r1);
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_data));
    r8 = *(r20 + r21);
    *(r20 + r21) = r0;
    [r8 release];
    if (*(r20 + (r21 << r1)) != 0x0) {
            r0 = 0x1;
    }
    else {
            if (r19 != 0x0) {
                    r21 = [[NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1] retain];
                    *r19 = [[[NSError errorWithDomain:@"ADCGCDWebServerErrorDomain" code:0xffffffffffffffff userInfo:r21] retain] autorelease];
                    [r21 release];
            }
            r0 = 0x0;
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)data {
    r0 = self->_data;
    return r0;
}

-(bool)close:(void * *)arg2 {
    return 0x1;
}

-(void *)description {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [[&var_30 super] description];
    r21 = [r0 retain];
    r0 = [NSMutableString stringWithString:r21];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_data));
    if (*(r20 + r22) != 0x0) {
            [r19 appendString:@"\n\n"];
            r22 = *(r20 + r22);
            r20 = [[r20 contentType] retain];
            r22 = [sub_1002233d4(r22, r20) retain];
            [r19 appendString:r22];
            [r22 release];
            [r20 release];
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_jsonObject, 0x0);
    objc_storeStrong((int64_t *)&self->_text, 0x0);
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    return;
}

-(void *)jsonObject {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_jsonObject));
    r0 = *(r19 + r22);
    if (r0 == 0x0) {
            r21 = [[r19 contentType] retain];
            r0 = sub_100222dac();
            r29 = r29;
            r20 = [r0 retain];
            [r21 release];
            if (([r20 isEqualToString:r2] & 0x1) == 0x0 && ([r20 isEqualToString:r2] & 0x1) == 0x0) {
                    if ([r20 isEqualToString:r2] != 0x0) {
                            r0 = [NSJSONSerialization JSONObjectWithData:r19->_data options:0x0 error:0x0];
                            r0 = [r0 retain];
                            r8 = *(r19 + r22);
                            *(r19 + r22) = r0;
                            [r8 release];
                    }
            }
            else {
                    r0 = [NSJSONSerialization JSONObjectWithData:r19->_data options:0x0 error:0x0];
                    r0 = [r0 retain];
                    r8 = *(r19 + r22);
                    *(r19 + r22) = r0;
                    [r8 release];
            }
            [r20 release];
            r0 = *(r19 + r22);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)text {
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
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_text));
    if (*(r19 + r23) == 0x0) {
            r0 = [r19 contentType];
            r29 = r29;
            r0 = [r0 retain];
            r22 = [r0 hasPrefix:@"text/"];
            [r0 release];
            if (r22 != 0x0) {
                    r0 = [r19 contentType];
                    r0 = [r0 retain];
                    r21 = [sub_100222e30(r0, @"charset") retain];
                    [r0 release];
                    r20 = [NSString alloc];
                    r22 = [[r19 data] retain];
                    r0 = [r20 initWithData:r22 encoding:sub_100222fe4()];
                    r8 = *(r19 + r23);
                    *(r19 + r23) = r0;
                    [r8 release];
                    [r22 release];
                    [r21 release];
            }
    }
    r0 = *(r19 + r23);
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

@end