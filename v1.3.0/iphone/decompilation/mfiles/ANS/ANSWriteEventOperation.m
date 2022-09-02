@implementation ANSWriteEventOperation

-(void *)initWithEvent:(void *)arg2 metadata:(void *)arg3 logFileUrl:(void *)arg4 {
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
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = [[&var_40 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            [r22 setEvent:r19];
            r23 = [[r22 generateFormattedLogLineWithEvent:r19] retain];
            [r22 setFormattedEvent:r23];
            [r23 release];
            r23 = [[r19 timestamp] retain];
            r24 = [[r22 generateFormattedLogLineWithMetdata:r20 timestamp:r23] retain];
            [r22 setFormattedMetadata:r24];
            [r24 release];
            [r23 release];
            [r22 setLogFileUrl:r21];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)writeDataToDescriptor:(int)arg2 withPreexistingFile:(bool)arg3 {
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
    r22 = arg3;
    r20 = arg2;
    r19 = self;
    r0 = [self formattedEvent];
    r29 = &saved_fp;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            r0 = [r19 formattedMetadata];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            [r24 release];
            if (r0 != 0x0) {
                    if (r22 != 0x0) {
                            r21 = [[r19 formattedEvent] retain];
                            r19 = [r19 appendLogLine:r2 toFileDescriptor:r3];
                            [r21 release];
                            r0 = r19;
                    }
                    else {
                            r0 = [r19 formattedMetadata];
                            r29 = r29;
                            r23 = [r0 retain];
                            r24 = [r19 appendLogLine:r2 toFileDescriptor:r3];
                            [r23 release];
                            if (r24 != 0x0) {
                                    r21 = [[r19 formattedEvent] retain];
                                    r19 = [r19 appendLogLine:r2 toFileDescriptor:r3];
                                    [r21 release];
                                    r0 = r19;
                            }
                            else {
                                    r0 = 0x0;
                            }
                    }
            }
            else {
                    r0 = 0x0;
            }
    }
    else {
            [r24 release];
            r0 = 0x0;
    }
    return r0;
}

-(void)main {
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
    r20 = [[NSFileManager defaultManager] retain];
    [r19 setSuccess:0x0];
    r0 = [r19 logFileUrl];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 path];
    r29 = &saved_fp;
    r26 = [r0 retain];
    r22 = [r20 fileExistsAtPath:r26 isDirectory:&var_41];
    [r26 release];
    [r25 release];
    if (var_41 == 0x0 || r22 == 0x0) {
            r0 = [r19 logFileUrl];
            r0 = [r0 retain];
            r25 = r0;
            r0 = [r0 path];
            r29 = r29;
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r23 = open_dprotected_np([r0 fileSystemRepresentation], 0x209, 0x4, 0x0);
            [r0 release];
            [r25 release];
            if ((r23 & 0xffffffff80000000) == 0x0) {
                    [r19 setSuccess:[r19 writeDataToDescriptor:r23 withPreexistingFile:r22]];
                    if (close(r23) != 0x0) {
                            [[ANSLogger sharedLogger] retain];
                            strerror(*(int32_t *)__error());
                            [r22 logWithLabel:@"WriteOperation" format:@"Failed to close file, error: %s"];
                            [r22 release];
                            [r19 setSuccess:0x0];
                    }
            }
    }
    [r20 release];
    return;
}

-(bool)appendLogLine:(void *)arg2 toFileDescriptor:(int)arg3 {
    r31 = r31 - 0x90;
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
    r20 = arg3;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 stringByAppendingString:@"\n"];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r21 = [r0 UTF8String];
    [r0 release];
    if (r21 == 0x0) goto loc_10012d0c4;

loc_10012cfa4:
    r22 = sub_100021280();
    r0 = [&var_68 retain];
    r20 = r0;
    if (r22 == 0x0) goto loc_10012d070;

loc_10012cff4:
    r23 = sub_10012d12c(r20, r21, r22);
    if ((r23 & 0xffffffff80000000) != 0x0 || r22 != r23) goto loc_10012d014;

loc_10012d068:
    r21 = 0x1;
    goto loc_10012d0bc;

loc_10012d0bc:
    [r20 release];
    goto loc_10012d0c4;

loc_10012d0c4:
    [r19 release];
    r0 = r21;
    return r0;

loc_10012d014:
    r25 = 0x1;
    goto loc_10012d018;

loc_10012d018:
    r24 = r22 - r23;
    if (r24 < 0x0) goto loc_10012d0ec;

loc_10012d020:
    if (r24 == 0x0 || r23 < 0x1 || r25 > 0x2) goto loc_10012d070;

loc_10012d034:
    r21 = r21 + r23;
    r23 = (*(r20 + 0x10))(r20, r21, r24);
    r25 = r25 + 0x1;
    r22 = r24;
    if ((r23 & 0xffffffff80000000) != 0x0) goto loc_10012d018;

loc_10012d05c:
    r22 = r24;
    if (r24 != r23) goto loc_10012d018;
    goto loc_10012d068;

loc_10012d070:
    r21 = [[ANSLogger sharedLogger] retain];
    goto loc_10012d0a8;

loc_10012d0a8:
    [r21 logWithLabel:r2 format:r3];
    [r21 release];
    r21 = 0x0;
    goto loc_10012d0bc;

loc_10012d0ec:
    r21 = [[ANSLogger sharedLogger] retain];
    goto loc_10012d0a8;
}

-(void *)generateFormattedLogLineWithEvent:(void *)arg2 {
    r22 = [arg2 retain];
    r21 = [[arg2 timestamp] retain];
    r23 = [[arg2 name] retain];
    r19 = [[arg2 dictionaryRepresentation] retain];
    [r22 release];
    r20 = [[self logLineWithTimestamp:r21 eventName:r23 payloadDictionary:r19] retain];
    [r19 release];
    [r23 release];
    [r21 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)generateFormattedLogLineWithMetdata:(void *)arg2 timestamp:(void *)arg3 {
    r20 = self;
    r21 = [arg2 retain];
    r23 = [arg3 retain];
    [arg3 timeIntervalSince1970];
    asm { fcvtzu     x2, d0 };
    r19 = [[r21 dictionaryRepresentationWithStartTime:r2] retain];
    r22 = [[r21 eventName] retain];
    [r21 release];
    r20 = [[r20 logLineWithTimestamp:r23 eventName:r22 payloadDictionary:r19] retain];
    [r23 release];
    [r22 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)event {
    r0 = self->_event;
    return r0;
}

-(void *)logLineWithTimestamp:(void *)arg2 eventName:(void *)arg3 payloadDictionary:(void *)arg4 {
    r31 = r31 - 0x80;
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
    r21 = arg4;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r21 != 0x0) {
            r0 = [NSJSONSerialization dataWithJSONObject:r21 options:0x0 error:&var_48];
            r29 = r29;
            r21 = [r0 retain];
            r22 = [var_48 retain];
            if (r21 != 0x0) {
                    r23 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
                    r24 = [[*(r23 + 0xfa8) alloc] initWithData:r21 encoding:0x4];
                    [r19 timeIntervalSince1970];
                    asm { fcvtzu     x25, d0 };
                    r23 = *(r23 + 0xfa8);
                    [r21 length];
                    r23 = [[r23 stringWithFormat:r2] retain];
                    [r24 release];
            }
            else {
                    r23 = 0x0;
            }
            [r21 release];
            [r22 release];
    }
    else {
            r23 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void)setEvent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_event, arg2);
    return;
}

-(void *)metadata {
    r0 = self->_metadata;
    return r0;
}

-(void)setLogFileUrl:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_logFileUrl, arg2);
    return;
}

-(void *)logFileUrl {
    r0 = self->_logFileUrl;
    return r0;
}

-(bool)success {
    r0 = *(int8_t *)(int64_t *)&self->_success;
    return r0;
}

-(void)setSuccess:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_success = arg2;
    return;
}

-(void)setFormattedEvent:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_formattedEvent, arg2);
    return;
}

-(void *)formattedEvent {
    r0 = self->_formattedEvent;
    return r0;
}

-(void *)formattedMetadata {
    r0 = self->_formattedMetadata;
    return r0;
}

-(void)setFormattedMetadata:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_formattedMetadata, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_formattedMetadata, 0x0);
    objc_storeStrong((int64_t *)&self->_formattedEvent, 0x0);
    objc_storeStrong((int64_t *)&self->_logFileUrl, 0x0);
    objc_storeStrong((int64_t *)&self->_metadata, 0x0);
    objc_storeStrong((int64_t *)&self->_event, 0x0);
    return;
}

@end