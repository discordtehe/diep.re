@implementation ADCGCDWebServerFileRequest

-(void *)initWithMethod:(void *)arg2 url:(void *)arg3 headers:(void *)arg4 path:(void *)arg5 query:(void *)arg6 {
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
    r24 = [arg2 retain];
    r22 = [arg3 retain];
    r21 = [arg4 retain];
    r20 = [arg5 retain];
    r0 = [[&var_40 super] initWithMethod:r24 url:r22 headers:r21 path:r20 query:arg6];
    r19 = r0;
    [r20 release];
    [r21 release];
    [r22 release];
    [r24 release];
    if (r19 != 0x0) {
            r20 = [NSTemporaryDirectory() retain];
            r0 = [NSProcessInfo processInfo];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 globallyUniqueString] retain];
            r0 = [r20 stringByAppendingPathComponent:r22];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_temporaryPath));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r22 release];
            [r21 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    unlink([self->_temporaryPath fileSystemRepresentation]);
    [[&var_20 super] dealloc];
    return;
}

-(bool)writeData:(void *)arg2 error:(void * *)arg3 {
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
    r19 = arg3;
    r21 = *(int32_t *)(int64_t *)&self->_file;
    r22 = [arg2 retain];
    r0 = objc_retainAutorelease(arg2);
    r23 = [r0 bytes];
    r24 = @selector(length);
    r21 = write(r21, r23, objc_msgSend(r0, r24));
    r20 = objc_msgSend(r0, r24);
    [r22 release];
    if (r21 == r20) {
            r0 = 0x1;
    }
    else {
            if (r19 != 0x0) {
                    r0 = __error();
                    r0 = *(int32_t *)r0;
                    r20 = @class(NSError);
                    r21 = **_NSPOSIXErrorDomain;
                    asm { sxtw       x22, w0 };
                    r23 = [[NSString stringWithUTF8String:strerror(r0)] retain];
                    r24 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1] retain];
                    r20 = [[r20 errorWithDomain:r21 code:r22 userInfo:r24] retain];
                    [r24 release];
                    [r23 release];
                    r8 = objc_retainAutorelease([r20 autorelease]);
                    r0 = 0x0;
                    *r19 = r8;
            }
            else {
                    r0 = 0x0;
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
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
    r0 = self->_temporaryPath;
    r0 = [r0 fileSystemRepresentation];
    r0 = open(r0, 0x601);
    *(int32_t *)(int64_t *)&self->_file = r0;
    if (r0 > 0x0) {
            r0 = 0x1;
    }
    else {
            if (r19 != 0x0) {
                    r0 = __error();
                    r0 = *(int32_t *)r0;
                    r20 = @class(NSError);
                    r21 = **_NSPOSIXErrorDomain;
                    asm { sxtw       x22, w0 };
                    r23 = [[NSString stringWithUTF8String:strerror(r0)] retain];
                    r24 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1] retain];
                    r20 = [[r20 errorWithDomain:r21 code:r22 userInfo:r24] retain];
                    [r24 release];
                    [r23 release];
                    r8 = objc_retainAutorelease([r20 autorelease]);
                    r0 = 0x0;
                    *r19 = r8;
            }
            else {
                    r0 = 0x0;
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)description {
    r0 = [[&var_30 super] description];
    r21 = [r0 retain];
    r20 = [[NSMutableString stringWithString:r21] retain];
    [r21 release];
    [r20 appendFormat:@"\n\n{%@}"];
    r0 = [r20 autorelease];
    return r0;
}

-(bool)close:(void * *)arg2 {
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
    if ((close(*(int32_t *)(int64_t *)&self->_file) & 0xffffffff80000000) == 0x0) {
            r0 = 0x1;
    }
    else {
            if (r19 != 0x0) {
                    r0 = __error();
                    r0 = *(int32_t *)r0;
                    r20 = @class(NSError);
                    r21 = **_NSPOSIXErrorDomain;
                    asm { sxtw       x22, w0 };
                    r23 = [[NSString stringWithUTF8String:strerror(r0)] retain];
                    r24 = [[NSDictionary dictionaryWithObjects:&var_40 forKeys:&var_48 count:0x1] retain];
                    r20 = [[r20 errorWithDomain:r21 code:r22 userInfo:r24] retain];
                    [r24 release];
                    [r23 release];
                    r8 = objc_retainAutorelease([r20 autorelease]);
                    r0 = 0x0;
                    *r19 = r8;
            }
            else {
                    r0 = 0x0;
            }
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_temporaryPath, 0x0);
    return;
}

-(void *)temporaryPath {
    r0 = self->_temporaryPath;
    return r0;
}

@end