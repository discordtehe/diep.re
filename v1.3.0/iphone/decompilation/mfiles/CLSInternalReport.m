@implementation CLSInternalReport

+(void *)reportWithPath:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithPath:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithPath:(void *)arg2 executionIdentifier:(void *)arg3 {
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
    r22 = 0x0;
    r21 = r0;
    if (r21 != 0x0) {
            r22 = 0x0;
            if (r19 != 0x0) {
                    r22 = 0x0;
                    if (r20 != 0x0) {
                            [r21 setPath:r19];
                            r0 = [r20 copy];
                            r9 = sign_extend_64(*(int32_t *)ivar_offset(_identifier));
                            r8 = *(r21 + r9);
                            *(r21 + r9) = r0;
                            [r8 release];
                            r22 = [r21 retain];
                    }
            }
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

-(void *)initWithPath:(void *)arg2 {
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
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r21 = [[r0 stringByAppendingPathComponent:@"metadata.clsrecord"] retain];
    r0 = [r20 class];
    r0 = [r0 readCLSFileAtPath:r21];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r24 = r0;
    r22 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r22);
    r0 = [r0 retain];
    r1 = r22;
    r22 = [objc_msgSend(r0, r1) retain];
    [r0 release];
    [r24 release];
    [r23 release];
    if (r22 == 0x0) {
            NSLog(@"[Crashlytics:Crash] Unable to read identifier at path %@", r1);
    }
    r20 = [r20 initWithPath:r19 executionIdentifier:r22];
    [r22 release];
    [r21 release];
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)directoryName {
    r0 = [self path];
    r0 = [r0 retain];
    r20 = [[r0 lastPathComponent] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)pathForContentFile:(void *)arg2 {
    r21 = [arg2 retain];
    r0 = [self path];
    r0 = [r0 retain];
    r20 = [[r0 stringByAppendingPathComponent:r21] retain];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)metadataPath {
    r0 = [self path];
    r0 = [r0 retain];
    r20 = [[r0 stringByAppendingPathComponent:@"metadata.clsrecord"] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)binaryImagePath {
    r0 = [self pathForContentFile:@"binary_images.clsrecord"];
    return r0;
}

-(bool)needsToBeSubmitted {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r0 = [NSArray arrayWithObjects:&var_50 count:0x7];
    r20 = [r0 retain];
    r19 = [self checkExistenceOfAtLeastOnceFileInArray:r20];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)crashFilenames {
    if (*qword_1011d1df8 != -0x1) {
            dispatch_once(0x1011d1df8, 0x100e6ab18);
    }
    r0 = *0x1011d1df0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(bool)isCrash {
    r20 = [[self crashFilenames] retain];
    r19 = [self checkExistenceOfAtLeastOnceFileInArray:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)checkExistenceOfAtLeastOnceFileInArray:(void *)arg2 {
    r31 = r31 - 0x140;
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
    r19 = self;
    r21 = [arg2 retain];
    r0 = [NSFileManager defaultManager];
    r29 = &saved_fp;
    r20 = [r0 retain];
    r0 = [r21 retain];
    r21 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_120 = r1;
    r23 = objc_msgSend(r0, r1);
    if (r23 == 0x0) goto loc_100105b04;

loc_100105a6c:
    r22 = 0x0;
    goto loc_100105a78;

loc_100105a78:
    if (*0x0 != *0x0) {
            objc_enumerationMutation(r21);
    }
    r0 = [r19 pathForContentFile:r2];
    r29 = r29;
    r26 = [r0 retain];
    r27 = [r20 fileExistsAtPath:r2];
    [r26 release];
    if ((r27 & 0x1) != 0x0) goto loc_100105b14;

loc_100105ad0:
    r22 = r22 + 0x1;
    if (r22 < r23) goto loc_100105a78;

loc_100105adc:
    r23 = objc_msgSend(r21, var_120);
    if (r23 != 0x0) goto loc_100105a6c;

loc_100105b04:
    [r21 release];
    r19 = 0x0;
    goto loc_100105b20;

loc_100105b20:
    var_58 = **___stack_chk_guard;
    [r20 release];
    [r21 release];
    if (**___stack_chk_guard == var_58) {
            r0 = r19;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100105b14:
    [r21 release];
    r19 = 0x1;
    goto loc_100105b20;
}

+(void *)readCLSFileAtPath:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = [arg2 retain];
    r19 = [objc_retainAutorelease(arg2) fileSystemRepresentation];
    [r20 release];
    r0 = sub_10011d9bc(r19, 0x0, 0x0);
    r0 = [r0 retain];
    r19 = r0;
    if ([r0 count] != 0x0) {
            r20 = [r19 retain];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)metadataSections {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_metadataSections));
    r0 = *(r19 + r22);
    if (r0 == 0x0) {
            r20 = [r19 class];
            r21 = [[r19 metadataPath] retain];
            r0 = [r20 readCLSFileAtPath:r21];
            r0 = [r0 retain];
            r8 = *(r19 + r22);
            *(r19 + r22) = r0;
            [r8 release];
            [r21 release];
            r0 = *(r19 + r22);
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void)enumerateSymbolicatableFilesInContent:(void *)arg2 {
    r31 = r31 - 0x130;
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
    r19 = self;
    r20 = [arg2 retain];
    r0 = [r19 crashFilenames];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    r23 = [r0 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r23 != 0x0) {
            do {
                    r28 = 0x0;
                    do {
                            if (*0x0 != *0x0) {
                                    objc_enumerationMutation(r21);
                            }
                            r0 = [r19 pathForContentFile:r2];
                            r29 = r29;
                            (*(r20 + 0x10))(r20, [r0 retain]);
                            [r25 release];
                            r28 = r28 + 0x1;
                    } while (r28 < r23);
                    r23 = [r21 countByEnumeratingWithState:r2 objects:r3 count:r4];
            } while (r23 != 0x0);
    }
    var_58 = **___stack_chk_guard;
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_58) {
            __stack_chk_fail();
    }
    return;
}

-(void *)APIKey {
    r0 = [self metadataSections];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r20 = r0;
    r21 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r21);
    r0 = [r0 retain];
    r21 = [objc_msgSend(r0, r21) retain];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)customKeys {
    return 0x0;
}

-(void *)bundleShortVersionString {
    r0 = [self metadataSections];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectAtIndex:0x2];
    r0 = [r0 retain];
    r20 = r0;
    r21 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r21);
    r0 = [r0 retain];
    r21 = [objc_msgSend(r0, r21) retain];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)bundleVersion {
    r0 = [self metadataSections];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectAtIndex:0x2];
    r0 = [r0 retain];
    r20 = r0;
    r21 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r21);
    r0 = [r0 retain];
    r21 = [objc_msgSend(r0, r21) retain];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)dateCreated {
    r0 = [self metadataSections];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 objectForKey:@"identity"];
    r0 = [r0 retain];
    r22 = r0;
    r2 = @"started_at";
    r0 = [r0 objectForKey:r2];
    r0 = [r0 retain];
    [r0 unsignedIntegerValue];
    [r0 release];
    [r22 release];
    [r20 release];
    [r19 release];
    r8 = &@class(MCConfigurationData);
    asm { ucvtf      d0, x23 };
    r0 = *(r8 + 0x228);
    r0 = [r0 dateWithTimeIntervalSince1970:r2];
    return r0;
}

-(void *)crashedOnDate {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if ([self isCrash] != 0x0) {
            r0 = [r20 timeFromCrashContentFile:r2 sectionName:r3];
            r29 = r29;
            r19 = [r0 retain];
            if (r19 != 0x0) {
                    r0 = [r19 retain];
            }
            else {
                    r0 = [r20 timeFromCrashContentFile:r2 sectionName:r3];
                    r0 = [r0 retain];
            }
            r20 = r0;
            [r19 release];
    }
    else {
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)OSVersion {
    r0 = [self metadataSections];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectAtIndex:0x1];
    r0 = [r0 retain];
    r20 = r0;
    r21 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r21);
    r0 = [r0 retain];
    r21 = [objc_msgSend(r0, r21) retain];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)timeFromCrashContentFile:(void *)arg2 sectionName:(void *)arg3 {
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
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r19 = [[self pathForContentFile:r23] retain];
    [r23 release];
    r0 = [self class];
    r0 = [r0 readCLSFileAtPath:r19];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 objectAtIndex:0x0];
    r0 = [r0 retain];
    r23 = r0;
    r24 = @selector(objectForKey:);
    r25 = [objc_msgSend(r0, r24) retain];
    [r21 release];
    r0 = objc_msgSend(r25, r24);
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r25 release];
    [r23 release];
    [r22 release];
    if (r20 != 0x0) {
            r2 = @"time";
            r21 = @class(NSDate);
            [r20 unsignedIntegerValue];
            asm { ucvtf      d0, x0 };
            r21 = [[r21 dateWithTimeIntervalSince1970:r2] retain];
    }
    else {
            r21 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)OSBuildVersion {
    r0 = [self metadataSections];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectAtIndex:0x1];
    r0 = [r0 retain];
    r20 = r0;
    r21 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r21);
    r0 = [r0 retain];
    r21 = [objc_msgSend(r0, r21) retain];
    [r0 release];
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)path {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_path)), 0x0);
    return r0;
}

-(void)setPath:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)identifier {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_identifier)), 0x0);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_metadataSections, 0x0);
    objc_storeStrong((int64_t *)&self->_path, 0x0);
    objc_storeStrong((int64_t *)&self->_identifier, 0x0);
    return;
}

@end