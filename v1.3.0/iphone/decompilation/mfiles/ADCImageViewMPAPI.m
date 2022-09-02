@implementation ADCImageViewMPAPI

-(void)create:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
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
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCImageView class] viewExists:0x0];
    [r21 release];
    if ([r20 isValid:0x0] != 0x0) {
            r0 = [r20 filepath];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [NSFileManager defaultManager];
                    r29 = r29;
                    r0 = [r0 retain];
                    r23 = [r0 fileExistsAtPath:r21];
                    [r0 release];
                    if ((r23 & 0x1) != 0x0) {
                            r0 = [UIImage imageWithContentsOfFile:r21];
                            r29 = r29;
                            r22 = [r0 retain];
                            if (r22 != 0x0) {
                                    r0 = [r19 dict];
                                    r0 = [r0 retain];
                                    r24 = r0;
                                    r0 = [r0 objectForKeyedSubscript:@"is_close_button"];
                                    r29 = r29;
                                    r23 = [r0 retain];
                                    [r24 release];
                                    if (r23 != 0x0) {
                                            r24 = [r23 boolValue];
                                    }
                                    else {
                                            r24 = 0x0;
                                    }
                                    r25 = [[ADCMessage numberValueFromMessage:r19 withKey:@"autoresizing"] retain];
                                    if (r25 != 0x0) {
                                            r26 = [r25 integerValue];
                                    }
                                    else {
                                            r26 = 0x12;
                                    }
                                    var_60 = [r20 retain];
                                    var_58 = [r22 retain];
                                    dispatch_async(*__dispatch_main_q, &var_80);
                                    [var_58 release];
                                    [var_60 release];
                                    [r25 release];
                                    [r23 release];
                            }
                            else {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCImageViewMPAPI create:]" line:0x27 withFormat:@"Unable to create UIImage from filepath: %@"];
                            }
                            [r22 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
                    }
            }
            else {
                    [ADCLogManager fullLogWithModuleID:r2 isPublic:r3 level:r4 function:r5 line:r6 withFormat:r7];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)destroy:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCImageView class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            r21 = [[r20 container] retain];
            r0 = [r20 viewID];
            r0 = [r0 retain];
            [r21 unbindObjectWithIdentifier:[r0 unsignedIntegerValue]];
            [r0 release];
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setBounds:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xa0;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r21 = [[NSNumber numberWithInt:[r19 origin]] retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCImageView class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            if (CGRectIsNull([ADCMessage rectValueFromMessage:r19]) != 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCImageViewMPAPI setBounds:]" line:0x63 withFormat:@"Invalid bounds sent for image view. Ignoring"];
            }
            else {
                    var_68 = [r20 retain];
                    dispatch_async(*__dispatch_main_q, &var_88);
                    [var_68 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setVisible:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCImageView class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            r0 = [r19 dict];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectForKeyedSubscript:@"visible"];
            r29 = r29;
            r21 = [r0 retain];
            [r22 release];
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
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCImageViewMPAPI setVisible:]" line:0x76 withFormat:@"Visible parameter not supplied"];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setImage:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [r2 retain];
    r20 = [ADCMPViewContext alloc];
    r0 = [NSNumber numberWithInt:[r19 origin]];
    r29 = &saved_fp;
    r21 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCImageView class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            r0 = [r20 filepath];
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
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCImageViewMPAPI setImage:]" line:0x9a withFormat:@"Image filepath parameter not supplied"];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

+(void)registerHandlers {
    r19 = [ADCImageViewMPAPI new];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(create:) forMessageType:@"ImageView.create"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(destroy:) forMessageType:@"ImageView.destroy"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(setBounds:) forMessageType:@"ImageView.set_bounds"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(setVisible:) forMessageType:@"ImageView.set_visible"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(setImage:) forMessageType:@"ImageView.set_image"];
    [r0 release];
    [r19 release];
    return;
}

+(void)load {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 addObserver:r2 selector:r3 name:r4 object:r5];
    [r20 release];
    return;
}

@end