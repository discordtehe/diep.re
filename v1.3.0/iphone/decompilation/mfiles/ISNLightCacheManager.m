@implementation ISNLightCacheManager

+(void *)sharedInstance {
    if (*qword_1011dacb0 != -0x1) {
            dispatch_once(0x1011dacb0, 0x100e8d2f8);
    }
    r0 = *0x1011daca8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)fileUrlForFileNameOnRootDirectory:(void *)arg2 {
    r20 = [[self pathForFileNameInRootDirectory:arg2] retain];
    r19 = [[NSURL fileURLWithPath:r20] retain];
    [r20 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)saveDataOnRootDirectory:(void *)arg2 fileName:(void *)arg3 error:(void * *)arg4 {
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
    r21 = arg4;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (([r22 isFileNameExistInRootDirectory:r20] & 0x1) == 0x0) {
            if (r19 != 0x0) {
                    r23 = 0x0;
            }
            else {
                    r23 = @"Data provided is nil";
                    [r23 retain];
            }
            if ([r20 length] == 0x0) {
                    [@"File name is not valid" retain];
                    [r23 release];
                    r23 = @"File name is not valid";
            }
            if (([r22 isRootDirectoryExists] & 0x1) != 0x0) {
                    if (r23 == 0x0) {
                            r0 = [r22 rootDirectoryPath];
                            r0 = [r0 retain];
                            r23 = [[r0 stringByAppendingPathComponent:r20] retain];
                            [r0 release];
                            [r19 writeToFile:r23 options:0x1 error:r21];
                    }
                    else {
                            [r22 assignErrorToErrorObject:r21 withReason:r23];
                    }
            }
            else {
                    [@"Global Directory is not exits" retain];
                    [r23 release];
                    r23 = @"Global Directory is not exits";
                    [r22 assignErrorToErrorObject:r21 withReason:r23];
            }
            [r23 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)assignErrorToErrorObject:(void * *)arg2 withReason:(void *)arg3 {
    r3 = arg3;
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    if (*r19 != 0x0) {
            r8 = @"unknown reason";
            if (r3 == 0x0) {
                    if (!CPU_FLAGS & E) {
                            r8 = r3;
                    }
                    else {
                            r8 = @"unknown reason";
                    }
            }
            r22 = [r3 retain];
            r20 = [[NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1] retain];
            r21 = [[NSError errorWithDomain:@"com.ironsrc.errors" code:0x0 userInfo:r20] retain];
            [r22 release];
            *r19 = [r21 autorelease];
            [r20 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(bool)isRootDirectoryExists {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [[NSFileManager defaultManager] retain];
    r19 = [[self rootDirectoryPath] retain];
    r21 = [r20 fileExistsAtPath:r19 isDirectory:&var_21];
    [r19 release];
    r8 = var_21;
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r8 = 0x1;
            }
    }
    [r20 release];
    r0 = r21 & r8;
    return r0;
}

-(bool)isFileNameExistInRootDirectory:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isRootDirectoryExists] != 0x0) {
            r0 = [r20 rootDirectoryPath];
            r0 = [r0 retain];
            r21 = [[r0 stringByAppendingPathComponent:r19] retain];
            [r0 release];
            r0 = [NSFileManager defaultManager];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 fileExistsAtPath:r21 isDirectory:&var_21];
            r8 = var_21;
            if (r8 == 0x0) {
                    if (CPU_FLAGS & E) {
                            r8 = 0x1;
                    }
            }
            r20 = r0 & r8;
            [r22 release];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)pathForFileNameInRootDirectory:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 isFileNameExistInRootDirectory:r19] != 0x0) {
            r0 = [r20 rootDirectoryPath];
            r0 = [r0 retain];
            r20 = [[r0 stringByAppendingPathComponent:r19] retain];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)rootDirectoryPath {
    r0 = self->_rootDirectoryPath;
    return r0;
}

-(void)setRootDirectoryPath:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_rootDirectoryPath, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_rootDirectoryPath, 0x0);
    return;
}

@end