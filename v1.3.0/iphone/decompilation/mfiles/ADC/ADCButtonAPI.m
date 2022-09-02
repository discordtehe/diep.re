@implementation ADCButtonAPI

+(bool)createWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x100;
    var_60 = d9;
    stack[-104] = d8;
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
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCButton class] viewExists:0x0];
    r20 = r0;
    r0 = [r0 isValid:0x0];
    r25 = 0x0;
    if (r0 == 0x0) goto loc_1001bd390;

loc_1001bce6c:
    r0 = [r19 objectForKeyedSubscript:@"web_content_enabled"];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 boolValue];
    [r0 release];
    if (r25 == 0x0) goto loc_1001bcf04;

loc_1001bceb4:
    r0 = [r19 objectForKeyedSubscript:@"html"];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto loc_1001bd220;

loc_1001bced8:
    r0 = [r19 objectForKeyedSubscript:@"web_view_id"];
    r29 = r29;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_1001bd2d0;

loc_1001bcefc:
    r23 = 0x0;
    goto loc_1001bcf30;

loc_1001bcf30:
    r0 = [r19 objectForKeyedSubscript:@"normal_image_filepath"];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 != 0x0) {
            var_D0 = r21;
            var_C8 = r23;
            var_C0 = r22;
            r0 = [r19 objectForKeyedSubscript:@"down_image_filepath"];
            r29 = r29;
            r23 = [r0 retain];
            if (r23 != 0x0 && ([r23 isEqualToString:r2] & 0x1) == 0x0) {
                    r22 = @selector(isEqualToString:);
                    r0 = [r23 lastPathComponent];
                    r29 = r29;
                    r0 = [r0 retain];
                    r22 = objc_msgSend(r0, r22);
                    [r0 release];
                    var_B8 = r23;
                    if (r22 != 0x0) {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"+[ADCButtonAPI createWithDict:andModuleID:]" line:0x42 withFormat:@"No down image filepath supplied. Button will use normal image for both states"];
                            var_B8 = [r24 retain];
                            [r23 release];
                    }
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"+[ADCButtonAPI createWithDict:andModuleID:]" line:0x42 withFormat:@"No down image filepath supplied. Button will use normal image for both states"];
                    var_B8 = [r24 retain];
                    [r23 release];
            }
            var_E0 = r24;
            r0 = [UIImage imageWithContentsOfFile:r24];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 resizableImageWithCapInsets:r24];
            r29 = r29;
            r24 = [r0 retain];
            [r21 release];
            var_D8 = r24;
            if (r24 != 0x0) {
                    r0 = [UIImage imageWithContentsOfFile:var_B8];
                    r0 = [r0 retain];
                    r21 = r0;
                    r0 = [r0 resizableImageWithCapInsets:var_B8];
                    r29 = r29;
                    r28 = [r0 retain];
                    [r21 release];
                    if (r28 == 0x0) {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCButtonAPI createWithDict:andModuleID:]" line:0x4e withFormat:@"Could not create image from down image filepath: %@"];
                    }
                    r0 = [r19 objectForKeyedSubscript:@"use_uiwebview"];
                    r0 = [r0 retain];
                    [r0 boolValue];
                    [r0 release];
                    var_90 = [r20 retain];
                    r26 = var_D8;
                    var_88 = [r26 retain];
                    [r28 retain];
                    r23 = var_C8;
                    var_78 = [r23 retain];
                    r22 = var_C0;
                    var_70 = [r22 retain];
                    dispatch_async(*__dispatch_main_q, &var_B0);
                    [var_70 release];
                    [var_78 release];
                    [r28 release];
                    [var_88 release];
                    [var_90 release];
                    [r21 release];
                    r25 = 0x1;
                    r21 = var_D0;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCButtonAPI createWithDict:andModuleID:]" line:0x48 withFormat:@"Could not create image from normal image filepath"];
                    r25 = 0x0;
                    r23 = var_C8;
                    r22 = var_C0;
                    r26 = var_D8;
                    r21 = var_D0;
            }
            r24 = var_E0;
            [r26 release];
            [var_B8 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCButtonAPI createWithDict:andModuleID:]" line:0x3c withFormat:@"No normal image filepath supplied. Cannot create button"];
            r25 = 0x0;
    }
    [r24 release];
    [r21 release];
    [r22 release];
    [r23 release];
    goto loc_1001bd390;

loc_1001bd390:
    [r20 release];
    [r19 release];
    r0 = r25;
    return r0;

loc_1001bd2d0:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCButtonAPI createWithDict:andModuleID:]" line:0x2f withFormat:@"No web view id supplied for overlay. Cannot create"];
    [r21 release];
    goto loc_1001bd30c;

loc_1001bd30c:
    r0 = r22;
    goto loc_1001bd310;

loc_1001bd310:
    [r0 release];
    r25 = 0x0;
    goto loc_1001bd390;

loc_1001bd220:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCButtonAPI createWithDict:andModuleID:]" line:0x29 withFormat:@"No HTML content supplied for overlay. Cannot create"];
    goto loc_1001bd30c;

loc_1001bcf04:
    r0 = [r19 objectForKeyedSubscript:@"text"];
    r29 = r29;
    r23 = [r0 retain];
    if (r23 == 0x0) goto loc_1001bd258;

loc_1001bcf28:
    r21 = 0x0;
    r22 = 0x0;
    goto loc_1001bcf30;

loc_1001bd258:
    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCButtonAPI createWithDict:andModuleID:]" line:0x35 withFormat:@"No text supplied for non-web-based overlay. Cannot create"];
    r0 = r23;
    goto loc_1001bd310;
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
    r19 = [[ADCViewContext alloc] initWithDict:r22 moduleID:arg3 andType:[ADCButton class] viewExists:0x1];
    [r22 release];
    if ([r19 isValid:0x1] != 0x0) {
            var_28 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_48);
            [var_28 release];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

+(bool)setVisibleWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCButton class] viewExists:0x1];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"visible"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [r21 boolValue];
                    [[[r20 view] retain] retain];
                    dispatch_async(*__dispatch_main_q, &var_50);
                    [r0 release];
                    [r22 release];
                    r22 = 0x1;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCButtonAPI setVisibleWithDict:andModuleID:]" line:0xa7 withFormat:@"Visible parameter not supplied"];
                    r22 = 0x0;
            }
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

+(bool)destroyWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = [arg2 retain];
    r19 = [[ADCViewContext alloc] initWithDict:r22 moduleID:arg3 andType:[ADCButton class] viewExists:0x1];
    [r22 release];
    if ([r19 isValid:0x1] != 0x0) {
            r0 = [r19 view];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 webView];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    if (([NSThread isMainThread] & 0x1) != 0x0) {
                            [r20 retain];
                            sub_1001be4f4(&var_48);
                            r0 = r21;
                    }
                    else {
                            var_50 = [r20 retain];
                            dispatch_sync(*__dispatch_main_q, &var_70);
                            r0 = var_50;
                    }
                    [r0 release];
            }
            r21 = [[r19 container] retain];
            r0 = [r19 viewID];
            r0 = [r0 retain];
            [r21 unbindObjectWithIdentifier:[r0 unsignedIntegerValue]];
            [r0 release];
            [r21 release];
            [r20 release];
            r20 = 0x1;
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

@end