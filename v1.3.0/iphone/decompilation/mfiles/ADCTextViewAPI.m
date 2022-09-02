@implementation ADCTextViewAPI

+(bool)createWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x90;
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
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCTextView class] viewExists:0x0];
    r20 = r0;
    r0 = [r0 isValid:0x0];
    r23 = 0x0;
    if (r0 != 0x0) {
            r21 = [ADCTextView alloc];
            [r20 rect];
            r21 = [r21 initWithFrame:0x0];
            r23 = [[r20 container] retain];
            [r21 setTouchDelegate:r23];
            [r23 release];
            r22 = [[r20 container] retain];
            r0 = [r20 viewID];
            r0 = [r0 retain];
            [r22 bindObject:r21 withIdentifier:[r0 unsignedIntegerValue]];
            [r0 release];
            [r22 release];
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    [r21 setText:r22];
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r23 = [r0 retain];
                    if (r23 != 0x0) {
                            [r21 setTypeface:r23];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCTextViewAPI createWithDict:andModuleID:]" line:0x34 withFormat:@"No typeface specified"];
                    }
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r24 = [r0 retain];
                    if (r24 != 0x0) {
                            [r21 setSize:[r24 unsignedIntegerValue]];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCTextViewAPI createWithDict:andModuleID:]" line:0x3b withFormat:@"No font size specified"];
                    }
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r26 = [r0 retain];
                    if (r26 != 0x0) {
                            r0 = [ADCUtil colorWithHexString:r26];
                            r29 = r29;
                            [r0 retain];
                            [r21 setColor:r2];
                            [r27 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"+[ADCTextViewAPI createWithDict:andModuleID:]" line:0x42 withFormat:@"No font color specified"];
                    }
                    r0 = [r19 objectForKeyedSubscript:r2];
                    r29 = r29;
                    r27 = [r0 retain];
                    if (r27 != 0x0) {
                            r0 = [ADCUtil colorWithHexString:r27];
                            r29 = r29;
                            r28 = [r0 retain];
                            [r21 setBackgroundColor:r28];
                            [r28 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"+[ADCTextViewAPI createWithDict:andModuleID:]" line:0x49 withFormat:@"No background color specified"];
                    }
                    r25 = [[r19 objectForKeyedSubscript:r2] retain];
                    if (r25 != 0x0) {
                            [r21 setEditable:[r25 boolValue]];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x2 function:"+[ADCTextViewAPI createWithDict:andModuleID:]" line:0x50 withFormat:@"No editable property specified"];
                    }
                    var_60 = [r20 retain];
                    var_58 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_80);
                    [var_58 release];
                    [var_60 release];
                    [r25 release];
                    [r27 release];
                    [r26 release];
                    [r24 release];
                    [r23 release];
                    r23 = 0x1;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCTextViewAPI createWithDict:andModuleID:]" line:0x2c withFormat:@"Invalid text parameter"];
                    r23 = 0x0;
            }
            [r22 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    r0 = r23;
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
    r29 = &saved_fp;
    r22 = [arg2 retain];
    r19 = [[ADCViewContext alloc] initWithDict:r22 moduleID:arg3 andType:[ADCTextView class] viewExists:0x1];
    [r22 release];
    if ([r19 isValid:0x1] != 0x0) {
            [[[r19 view] retain] retain];
            var_28 = [r19 retain];
            dispatch_async(*__dispatch_main_q, &var_50);
            [var_28 release];
            [r0 release];
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
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCTextView class] viewExists:0x1];
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
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCTextViewAPI setVisibleWithDict:andModuleID:]" line:0x72 withFormat:@"Visible parameter not supplied"];
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

+(bool)setTextWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCTextView class] viewExists:0x1];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"text"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [[[r20 view] retain] retain];
                    var_28 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_50);
                    [var_28 release];
                    [r0 release];
                    [r22 release];
                    r22 = 0x1;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCTextViewAPI setTextWithDict:andModuleID:]" line:0x87 withFormat:@"Invalid text parameter"];
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

+(void *)getTextWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = [arg2 retain];
    r19 = [[ADCViewContext alloc] initWithDict:r22 moduleID:arg3 andType:[ADCTextView class] viewExists:0x1];
    [r22 release];
    if ([r19 isValid:0x1] != 0x0) {
            r0 = [r19 view];
            r0 = [r0 retain];
            r20 = [[r0 text] retain];
            [r0 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(bool)setTypefaceWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCTextView class] viewExists:0x1];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"typeface"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [[[r20 view] retain] retain];
                    var_28 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_50);
                    [var_28 release];
                    [r0 release];
                    [r22 release];
                    r22 = 0x1;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCTextViewAPI setTypefaceWithDict:andModuleID:]" line:0xa5 withFormat:@"No typeface parameter specified"];
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

+(bool)setFontSizeWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCTextView class] viewExists:0x1];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"font_size"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [[[r20 view] retain] retain];
                    var_28 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_50);
                    [var_28 release];
                    [r0 release];
                    [r22 release];
                    r22 = 0x1;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCTextViewAPI setFontSizeWithDict:andModuleID:]" line:0xb9 withFormat:@"No font size parameter specified"];
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

+(bool)setFontColorWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCTextView class] viewExists:0x1];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"font_color"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [[[r20 view] retain] retain];
                    var_28 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_50);
                    [var_28 release];
                    [r0 release];
                    [r22 release];
                    r22 = 0x1;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCTextViewAPI setFontColorWithDict:andModuleID:]" line:0xcd withFormat:@"No color parameter specified"];
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

+(bool)setBackgroundColorWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCTextView class] viewExists:0x1];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"background_color"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [[[r20 view] retain] retain];
                    var_28 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_50);
                    [var_28 release];
                    [r0 release];
                    [r22 release];
                    r22 = 0x1;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCTextViewAPI setBackgroundColorWithDict:andModuleID:]" line:0xe1 withFormat:@"No color parameter specified"];
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

+(bool)setEditableWithDict:(void *)arg2 andModuleID:(unsigned long long)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[ADCViewContext alloc] initWithDict:r19 moduleID:arg3 andType:[ADCTextView class] viewExists:0x1];
    r20 = r0;
    if ([r0 isValid:0x1] != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"editable"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    [[[r20 view] retain] retain];
                    var_28 = [r21 retain];
                    dispatch_async(*__dispatch_main_q, &var_50);
                    [var_28 release];
                    [r0 release];
                    [r22 release];
                    r22 = 0x1;
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCTextViewAPI setEditableWithDict:andModuleID:]" line:0xf5 withFormat:@"No editable parameter specified"];
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
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = [arg2 retain];
    r19 = [[ADCViewContext alloc] initWithDict:r22 moduleID:arg3 andType:[ADCTextView class] viewExists:0x1];
    [r22 release];
    if ([r19 isValid:0x1] != 0x0) {
            r20 = [[r19 container] retain];
            r0 = [r19 viewID];
            r0 = [r0 retain];
            [r20 unbindObjectWithIdentifier:[r0 unsignedIntegerValue]];
            [r0 release];
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