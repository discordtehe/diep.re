@implementation CLSdSYM

+(void *)dSYMWithURL:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithURL:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)bundleIdentifier {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_bundle;
    r0 = [r0 bundleIdentifier];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 hasPrefix:@"com.apple.xcode.dsym."] != 0x0) {
            r0 = [r19 substringFromIndex:[@"com.apple.xcode.dsym." length]];
            r0 = [r0 retain];
    }
    else {
            r0 = [r19 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)executableURL {
    r0 = self->_binary;
    r0 = [r0 URL];
    return r0;
}

-(void *)initWithURL:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r19 = [arg2 retain];
    r0 = [[&var_50 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [[NSFileManager defaultManager] retain];
            r0 = [r19 path];
            r29 = r29;
            r23 = [r0 retain];
            r24 = [r21 fileExistsAtPath:r23];
            [r23 release];
            if (r24 != 0x0) {
                    r0 = [NSBundle bundleWithURL:r19];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_bundle));
                    r8 = *(r20 + r23);
                    *(r20 + r23) = r0;
                    [r8 release];
                    if (*(r20 + r23) != 0x0) {
                            r0 = [r19 path];
                            r0 = [r0 retain];
                            r22 = r0;
                            r0 = [r0 stringByAppendingPathComponent:@"Contents/Resources/DWARF"];
                            r29 = r29;
                            r23 = [r0 retain];
                            [r22 release];
                            r0 = [r21 fileExistsAtPath:r23 isDirectory:&var_51];
                            if (var_51 != 0x0) {
                                    r26 = 0x0;
                                    r22 = 0x0;
                                    r24 = r22;
                                    if (r0 != 0x0) {
                                            r0 = [r21 enumeratorAtPath:r23];
                                            r0 = [r0 retain];
                                            r22 = r0;
                                            r0 = [r0 allObjects];
                                            r29 = r29;
                                            r0 = [r0 retain];
                                            r24 = r0;
                                            if ([r0 count] != 0x0) {
                                                    r26 = [[r24 objectAtIndex:0x0] retain];
                                                    r25 = [[r23 stringByAppendingPathComponent:r26] retain];
                                                    [r23 release];
                                                    [r26 release];
                                                    r23 = [CLSMachOBinary alloc];
                                                    r26 = [[NSURL fileURLWithPath:r25] retain];
                                                    r0 = [r23 initWithURL:r26];
                                                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_binary));
                                                    r8 = *(r20 + r9);
                                                    *(r20 + r9) = r0;
                                                    [r8 release];
                                                    [r26 release];
                                                    r26 = 0x1;
                                                    r23 = r25;
                                            }
                                            else {
                                                    r26 = 0x0;
                                            }
                                    }
                            }
                            else {
                                    r26 = 0x0;
                                    r22 = 0x0;
                                    r24 = r22;
                            }
                    }
                    else {
                            r22 = 0x0;
                            r23 = 0x0;
                            r24 = 0x0;
                            r26 = 0x0;
                    }
            }
            else {
                    r22 = 0x0;
                    r23 = 0x0;
                    r24 = 0x0;
                    r26 = 0x0;
            }
            [r24 release];
            [r21 release];
            [r23 release];
            [r22 release];
            if (r26 != 0x0) {
                    r21 = [r20 retain];
            }
            else {
                    r21 = 0x0;
            }
    }
    else {
            r21 = [r20 retain];
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)executablePath {
    r0 = self->_binary;
    r0 = [r0 path];
    return r0;
}

-(void *)bundleVersion {
    r0 = self->_bundle;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)shortBundleVersion {
    r0 = self->_bundle;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)enumerateUUIDs:(void *)arg2 {
    [self->_binary enumerateUUIDs:arg2];
    return;
}

-(void *)binary {
    r0 = self->_binary;
    return r0;
}

-(void *)bundle {
    r0 = self->_bundle;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_bundle, 0x0);
    objc_storeStrong((int64_t *)&self->_binary, 0x0);
    return;
}

@end