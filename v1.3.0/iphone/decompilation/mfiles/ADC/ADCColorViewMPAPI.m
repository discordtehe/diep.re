@implementation ADCColorViewMPAPI

-(void)create:(union ?)arg2 {
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
    r22 = [r0 retain];
    r20 = [r20 initWithMessage:r19 moduleID:r22 andType:[ADCColorView class] viewExists:0x0];
    [r22 release];
    if ([r20 isValid:0x0] != 0x0) {
            r21 = [ADCColorView alloc];
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
            var_40 = [r20 retain];
            var_38 = r21;
            [r21 retain];
            dispatch_async(*__dispatch_main_q, &var_60);
            [var_38 release];
            [var_40 release];
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
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCColorView class] viewExists:0x1];
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
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCColorView class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            if (CGRectIsNull([ADCMessage rectValueFromMessage:r19]) != 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCColorViewMPAPI setBounds:]" line:0x36 withFormat:@"Invalid bounds sent for image view. Ignoring"];
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
    r31 = r31 - 0x60;
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
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCColorView class] viewExists:0x1];
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
                    [[[r20 view] retain] retain];
                    dispatch_async(*__dispatch_main_q, &var_50);
                    [r0 release];
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCColorViewMPAPI setVisible:]" line:0x49 withFormat:@"Visible parameter not supplied"];
            }
            [r21 release];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setColor:(union ?)arg2 {
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
    r20 = [r20 initWithMessage:r19 moduleID:r21 andType:[ADCColorView class] viewExists:0x1];
    [r21 release];
    if ([r20 isValid:0x1] != 0x0) {
            r0 = [ADCMessage stringValueFromMessage:r19 withKey:@"color"];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0) {
                    r0 = [ADCUtil colorWithHexString:r21];
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
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCColorViewMPAPI setColor:]" line:0x5d withFormat:@"Color parameter not supplied"];
            }
            [r21 release];
    }
    [r20 release];
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

+(void)registerHandlers {
    r19 = [ADCColorViewMPAPI new];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(create:) forMessageType:@"ColorView.create"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(destroy:) forMessageType:@"ColorView.destroy"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(setBounds:) forMessageType:@"ColorView.set_bounds"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(setVisible:) forMessageType:@"ColorView.set_visible"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(setColor:) forMessageType:@"ColorView.set_color"];
    [r0 release];
    [r19 release];
    return;
}

@end