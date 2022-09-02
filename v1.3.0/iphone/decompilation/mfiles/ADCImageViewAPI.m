@implementation ADCImageViewAPI

+(bool)createWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x90;
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
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCImageView class] viewExists:0x0];
    r20 = r0;
    r0 = [r0 isValid:0x0];
    r22 = 0x0;
    if (r0 == 0x0) goto loc_1001c7480;

loc_1001c71d0:
    r0 = [r20 filepath];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1001c72e8;

loc_1001c71f8:
    r21 = [[NSFileManager defaultManager] retain];
    r0 = [r20 filepath];
    r29 = r29;
    r23 = [r0 retain];
    r24 = [r21 fileExistsAtPath:r23];
    [r23 release];
    [r21 release];
    if ((r24 & 0x1) == 0x0) goto loc_1001c7320;

loc_1001c725c:
    r23 = [[r20 filepath] retain];
    r0 = [UIImage imageWithContentsOfFile:r23];
    r29 = r29;
    r21 = [r0 retain];
    [r23 release];
    if (r21 != 0x0) {
            r22 = [[r19 objectForKeyedSubscript:@"is_close_button"] retain];
            if (r22 != 0x0) {
                    r23 = [r22 boolValue];
            }
            else {
                    r23 = 0x0;
            }
            var_50 = [r19 retain];
            var_48 = [r20 retain];
            var_40 = [r21 retain];
            dispatch_async(*__dispatch_main_q, &var_70);
            [var_40 release];
            [var_48 release];
            [var_50 release];
            [r22 release];
            r22 = 0x1;
    }
    else {
            r22 = [[r20 filepath] retain];
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCImageViewAPI createWithDict:andModuleID:]" line:0x26 withFormat:@"Unable to create UIImage from filepath: %@"];
            [r22 release];
            r22 = 0x0;
    }
    [r21 release];
    goto loc_1001c7480;

loc_1001c7480:
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_1001c7320:
    r22 = [[r20 filepath] retain];
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCImageViewAPI createWithDict:andModuleID:]" line:0x20 withFormat:@"Invalid filepath: %@ supplied to ImageView.create"];
    [r22 release];
    goto loc_1001c737c;

loc_1001c737c:
    r22 = 0x0;
    goto loc_1001c7480;

loc_1001c72e8:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCImageViewAPI createWithDict:andModuleID:]" line:0x1c withFormat:@"Image filepath parameter not supplied"];
    goto loc_1001c737c;
}

+(bool)destroyWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = [arg2 retain];
    r19 = [[ADCViewContext alloc] initWithDict:r22 moduleID:arg3 andType:[ADCImageView class] viewExists:0x0];
    [r22 release];
    r0 = [r19 isValid:0x1];
    r20 = 0x0;
    if (r0 != 0x0) {
            r20 = [[r19 container] retain];
            r0 = [r19 viewID];
            r0 = [r0 retain];
            [r20 unbindObjectWithIdentifier:[r0 unsignedIntegerValue]];
            [r0 release];
            [r20 release];
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)setBoundsWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r19 = [[ADCViewContext alloc] initWithDict:r22 moduleID:arg3 andType:[ADCImageView class] viewExists:0x0];
    [r22 release];
    r0 = [r19 isValid:0x1];
    r20 = 0x0;
    if (r0 != 0x0) {
            var_28 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_48);
            [var_28 release];
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)setVisibleWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x80;
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
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCImageView class] viewExists:0x0];
    r20 = r0;
    r0 = [r0 isValid:0x1];
    r22 = 0x0;
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"visible"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [r21 boolValue];
                    r23 = [[r20 container] retain];
                    [[[r20 view] retain] retain];
                    var_48 = r23;
                    [r23 retain];
                    var_40 = [r20 retain];
                    dispatch_async(*__dispatch_main_q, &var_70);
                    [var_40 release];
                    [var_48 release];
                    [r0 release];
                    [r23 release];
                    [r22 release];
                    r22 = 0x1;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCImageViewAPI setVisibleWithDict:andModuleID:]" line:0x78 withFormat:@"Visible parameter not supplied"];
                    r22 = 0x0;
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(bool)setImageWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x70;
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
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCImageView class] viewExists:0x0];
    r20 = r0;
    r0 = [r0 isValid:0x1];
    r22 = 0x0;
    if (r0 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"filepath"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [UIImage imageWithContentsOfFile:r21];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 != 0x0) {
                            [[[r20 view] retain] retain];
                            var_38 = [r22 retain];
                            dispatch_async(*__dispatch_main_q, &var_60);
                            [var_38 release];
                            [r0 release];
                            [r23 release];
                    }
                    [r22 release];
                    r22 = 0x1;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCImageViewAPI setImageWithDict:andModuleID:]" line:0x9d withFormat:@"Image filepath parameter not supplied"];
                    r22 = 0x0;
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

@end