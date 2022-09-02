@implementation ADCFilepathContext

-(bool)hasValidDirectory {
    r0 = self->_filepath;
    if (r0 != 0x0) {
            var_10 = r29;
            stack[-8] = r30;
            r31 = r31 + 0xfffffffffffffff0;
            r0 = [r0 length];
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    return r0;
}

-(void *)initWithMessage:(void *)arg2 {
    r20 = [[arg2 dict] retain];
    r19 = [self initWithDict:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

-(bool)isValid {
    r0 = self;
    if (r0->_filepath != 0x0) {
            if (r0->_fileURL != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(void *)initWithDict:(void *)arg2 {
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
            r0 = [r19 objectForKeyedSubscript:@"filepath"];
            r0 = [r0 retain];
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_filepath));
            r8 = *(r20 + r24);
            *(r20 + r24) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"data"];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_data));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 objectForKeyedSubscript:@"bundle_path"];
            r23 = r0;
            r29 = r29;
            r21 = [r0 retain];
            r0 = (int64_t *)&r20->_bundlePath;
            if (r21 != 0x0) {
                    r1 = r23;
            }
            else {
                    r1 = @"";
            }
            objc_storeStrong(r0, r1);
            r0 = [r19 objectForKeyedSubscript:@"bundle_filenames"];
            r29 = r29;
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_bundleFilenames));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            if (*(r20 + r24) != 0x0) {
                    r0 = [NSURL fileURLWithPath:@"bundle_path"];
                    r29 = r29;
                    r0 = [r0 retain];
                    r25 = sign_extend_64(*(int32_t *)ivar_offset(_fileURL));
                    r8 = *(r20 + r25);
                    *(r20 + r25) = r0;
                    [r8 release];
                    if (*(r20 + r25) == 0x0) {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCFilepathContext initWithDict:]" line:0x37 withFormat:@"ADCFileSystemAPI could not form a URL from filepath: %@"];
                    }
                    r0 = [ADCDevice sharedDevice];
                    r0 = [r0 retain];
                    r23 = [r0 pathIsAllowable:*(r20 + r24)];
                    [r0 release];
                    if ((r23 & 0x1) == 0x0) {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCFilepathContext initWithDict:]" line:0x3b withFormat:@"Invalid filepath; it is not within the AdColony media or data directories: %@"];
                            r0 = *(r20 + r24);
                            *(r20 + r24) = 0x0;
                            [r0 release];
                            r0 = *(r20 + r25);
                            *(r20 + r25) = 0x0;
                            [r0 release];
                    }
            }
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)fileURL {
    r0 = self->_fileURL;
    return r0;
}

-(void *)filepath {
    r0 = self->_filepath;
    return r0;
}

-(bool)isPathAllowed {
    r0 = [ADCDevice sharedDevice];
    r0 = [r0 retain];
    r19 = [r0 pathIsAllowable:self->_filepath];
    [r0 release];
    r0 = r19;
    return r0;
}

-(void *)bundlePath {
    r0 = self->_bundlePath;
    return r0;
}

-(void *)bundleFilenames {
    r0 = self->_bundleFilenames;
    return r0;
}

-(void *)data {
    r0 = self->_data;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_data, 0x0);
    objc_storeStrong((int64_t *)&self->_bundleFilenames, 0x0);
    objc_storeStrong((int64_t *)&self->_bundlePath, 0x0);
    objc_storeStrong((int64_t *)&self->_filepath, 0x0);
    objc_storeStrong((int64_t *)&self->_fileURL, 0x0);
    return;
}

@end