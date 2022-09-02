@implementation MCUserAcquisitionManager

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)trackSessionStart {
    NSLog(@"MCUserAcquisitionManager - trackSessionStart");
    [[MCUserAcquisitionFacade sharedMCUserAcquisitionFacade] trackSessionStart];
    return;
}

-(void)start {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[MCUserAcquisitionFacade sharedMCUserAcquisitionFacade] registerDelegate:r2];
    r21 = sub_1005d85d8(sub_100084be4(@"adjust_sdk_key", @"External - Service Keys"), 0x0);
    NSLog(@"[Adjust] AppToken %@", 0x0);
    if (r21 != 0x0) {
            [[MCUserAcquisitionFacade sharedMCUserAcquisitionFacade] intializeWithAppToken:r21];
            [r19 trackSessionStart];
    }
    else {
            NSLog(@"[Adjust] Error Invalid AppToken");
    }
    return;
}

-(void)trackSessionEnd {
    NSLog(@"MCUserAcquisitionManager - trackSessionEnd");
    [[MCUserAcquisitionFacade sharedMCUserAcquisitionFacade] trackSessionEnd];
    return;
}

@end