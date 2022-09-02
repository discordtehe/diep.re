@implementation ADCDeviceAPI

+(bool)applicationExistsWithHandle:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [NSURL fileURLWithPath:r19];
            r29 = r29;
            r20 = [r0 retain];
            if (r20 != 0x0) {
                    r0 = [UIApplication sharedApplication];
                    r0 = [r0 retain];
                    r21 = [r0 canOpenURL:r20];
                    [r0 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCDeviceAPI applicationExistsWithHandle:]" line:0x1f withFormat:@"Device.application_exists could not form a URL from name: %@"];
                    r21 = 0x0;
            }
            [r20 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCDeviceAPI applicationExistsWithHandle:]" line:0x19 withFormat:@"Application name not supplied"];
            r21 = 0x0;
    }
    [r19 release];
    r0 = r21;
    return r0;
}

+(void)getInfo:(void *)arg2 {
    r19 = [arg2 retain];
    r20 = [[ADCDevice sharedDevice] retain];
    var_28 = r19;
    r19 = [r19 retain];
    [r20 getInfo:&var_48];
    [r20 release];
    [var_28 release];
    [r19 release];
    return;
}

+(void *)getInfoWithoutAsyncData {
    r0 = [ADCDevice sharedDevice];
    r0 = [r0 retain];
    r20 = [[r0 getInfoWithoutAsyncData] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)getMediaPoolInfo {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [ADCController sharedController];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 valueEvaluatingJavascriptString:@"ADC3_get_media_pool_listing()"];
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r20 release];
    if (r19 != 0x0) {
            if ([r19 isUndefined] != 0x0) {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCDeviceAPI getMediaPoolInfo]" line:0x3b withFormat:@"Received an undefined return value from ADC3_get_media_pool_info()"];
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            }
            else {
                    if (([r19 isObject] & 0x1) != 0x0) {
                            r0 = [r19 toDictionary];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCDeviceAPI getMediaPoolInfo]" line:0x40 withFormat:@"Received a value that is not an object as a return value from ADC3_get_media_pool_info()"];
                            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    }
            }
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"+[ADCDeviceAPI getMediaPoolInfo]" line:0x36 withFormat:@"Received a nil return value from ADC3_get_media_pool_info()"];
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
    }
    r20 = [r0 retain];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end