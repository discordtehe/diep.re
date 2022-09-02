@implementation ADCAdColonyMPAPI

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)disable:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [ADCAPIGuards sharedGuards];
    r0 = [r0 retain];
    [r0 disableAPIUsage];
    [r0 release];
    r0 = [ADCNativeLayer sharedLayer];
    r0 = [r0 retain];
    [r0 unregisterAllDynamicModules];
    [r0 release];
    r0 = [ADCController sharedController];
    r0 = [r0 retain];
    [r0 disable];
    [r19 release];
    return;
}

-(void)V4VCReward:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r31 = r31 - 0xc0;
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
    r19 = [r2 retain];
    r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 != 0x0) {
            r0 = [ADCMessage numberValueFromMessage:r2 withKey:r3];
            r29 = r29;
            r21 = [r0 retain];
            if (r21 != 0x0 && ([r21 intValue] & 0xffffffff80000000) == 0x0) {
                    r0 = [ADCMessage stringValueFromMessage:r2 withKey:r3];
                    r29 = r29;
                    r22 = [r0 retain];
                    if (r22 == 0x0) {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdColonyMPAPI V4VCReward:]" line:0x4b withFormat:@"ADCAdColonyAPI received an invalid currency name param"];
                    }
                    r0 = [AdColony sharedInstance];
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 zoneFromID];
                    r0 = [r0 retain];
                    r26 = r0;
                    r0 = [r0 objectForKeyedSubscript:r20];
                    r29 = r29;
                    r23 = [r0 retain];
                    [r26 release];
                    [r25 release];
                    if (r23 == 0x0) {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdColonyMPAPI V4VCReward:]" line:0x50 withFormat:@"A zone with the given id has not been registered"];
                    }
                    r0 = [r23 retain];
                    r23 = r0;
                    if (([r0 rewarded] & 0x1) != 0x0) {
                            r0 = [ADCMessage numberValueFromMessage:r2 withKey:r3];
                            r29 = r29;
                            r24 = [r0 retain];
                            if (r24 == 0x0) {
                                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdColonyMPAPI V4VCReward:]" line:0x5b withFormat:@"ADCAdColonyAPI received an invalid success param"];
                                    r0 = [NSNumber numberWithBool:r2];
                                    r29 = r29;
                                    r25 = [r0 retain];
                                    [r24 release];
                                    r24 = r25;
                            }
                            [r24 boolValue];
                            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
                            r0 = [r23 reward];
                            r0 = [r0 retain];
                            [r0 release];
                            if (r0 != 0x0) {
                                    var_70 = [r23 retain];
                                    var_68 = [r24 retain];
                                    var_60 = [r22 retain];
                                    var_58 = [r21 retain];
                                    dispatch_async(*__dispatch_main_q, &var_90);
                                    [var_58 release];
                                    [var_60 release];
                                    [var_68 release];
                                    [var_70 release];
                            }
                            else {
                                    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
                            }
                            [r24 release];
                    }
                    else {
                            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdColonyMPAPI V4VCReward:]" line:0x55 withFormat:@"A zone with the given id has been registered, but it isn't a V4VC-enabled zone"];
                    }
                    [r23 release];
                    [r23 release];
                    [r22 release];
            }
            else {
                    [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdColonyMPAPI V4VCReward:]" line:0x45 withFormat:@"ADCAdColonyAPI received an invalid amount param"];
            }
            [r21 release];
    }
    else {
            [ADCLogManager fullLogWithModuleID:0x0 isPublic:0x0 level:0x1 function:"-[ADCAdColonyMPAPI V4VCReward:]" line:0x3f withFormat:@"ADCAdColonyAPI received an invalid zone id param"];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)probe:(union ?)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [ADCController sharedController];
    r0 = [r0 retain];
    [r0 update];
    [r0 release];
    return;
}

+(void)registerHandlers {
    r19 = [ADCAdColonyMPAPI new];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(V4VCReward:) forMessageType:@"AdColony.v4vc_reward"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(disable:) forMessageType:@"AdColony.disable"];
    [r0 release];
    r0 = @class(ADCNativeLayer);
    r0 = [r0 sharedLayer];
    r0 = [r0 retain];
    [r0 addTarget:r19 selector:@selector(probe:) forMessageType:@"AdColony.probe_launch_server"];
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