@implementation ISNRingerButtonJSHandler

-(void *)initWithPublisherAgent:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_publisherAgent, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)invokeAPIWithJSParams:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [r21 methodNameFromParams:r19];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_100723bf4;

loc_100723b78:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100723ba4;

loc_100723b98:
    r1 = @selector(handlePrepareRingerChecker:);
    goto loc_100723be8;

loc_100723be8:
    objc_msgSend(r21, r1);
    goto loc_100723bf4;

loc_100723bf4:
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_100723ba4:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100723bc8;

loc_100723bbc:
    r1 = @selector(handleStartRingerStatus:);
    goto loc_100723be8;

loc_100723bc8:
    if ([r20 isEqualToString:r2] == 0x0) goto loc_100723c34;

loc_100723be0:
    r1 = @selector(handleStopRingerCheckerStatus:);
    goto loc_100723be8;

loc_100723c34:
    r22 = [[r19 objectForKeyedSubscript:@"fail"] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
    r23 = [r0 retain];
    [r21 sendCallbackToController:r22 withParams:r23];
    [r23 release];
    [r22 release];
    goto loc_100723bf4;
}

-(void)handlePrepareRingerChecker:(void *)arg2 {
    r22 = [arg2 retain];
    [self prepareDetectorController];
    r19 = [[arg2 objectForKeyedSubscript:@"success"] retain];
    [r22 release];
    [self sendEmptyCallbackToController:r19];
    [r19 release];
    return;
}

-(void)handleStartRingerStatus:(void *)arg2 {
    r31 = r31 - 0x90;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [r20 prepareDetectorController];
    r0 = [r20 ringerCheckerController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isInitiatedSuccessfuly];
    [r0 release];
    if ((r23 & 0x1) != 0x0) {
            objc_initWeak(&stack[-96], r20);
            [[r20 ringerCheckerController] retain];
            objc_copyWeak(&var_78 + 0x20, &stack[-96]);
            [r22 startRingerCheckerWithStatusChangedHandler:&var_78];
            [r22 release];
            r22 = [[r19 objectForKeyedSubscript:@"success"] retain];
            [r20 sendEmptyCallbackToController:r22];
            [r22 release];
            objc_destroyWeak(&var_78 + 0x20);
            objc_destroyWeak(&stack[-96]);
    }
    else {
            r21 = [[r19 objectForKeyedSubscript:@"fail"] retain];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
            r22 = [r0 retain];
            [r20 sendCallbackToController:r21 withParams:r22];
            [r22 release];
            [r21 release];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)handleStopRingerCheckerStatus:(void *)arg2 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    [r20 prepareDetectorController];
    r0 = [r20 ringerCheckerController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 isInitiatedSuccessfuly];
    [r0 release];
    if ((r23 & 0x1) != 0x0) {
            r0 = [r20 ringerCheckerController];
            r0 = [r0 retain];
            [r0 stopRingerChecker];
            [r0 release];
            r21 = [[r19 objectForKeyedSubscript:@"success"] retain];
            [r20 sendEmptyCallbackToController:r21];
    }
    else {
            r21 = [[r19 objectForKeyedSubscript:@"fail"] retain];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
            r22 = [r0 retain];
            [r20 sendCallbackToController:r21 withParams:r22];
            [r22 release];
    }
    var_38 = **___stack_chk_guard;
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void)prepareDetectorController {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self ringerCheckerController];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) {
            [r19 createNativeAssetsDirectory];
            r21 = [ISNRingerCheckerController new];
            [r19 setRingerCheckerController:r21];
            [r21 release];
            r0 = [r19 ringerCheckerController];
            r0 = [r0 retain];
            [r0 prepareRingerChecker];
            [r0 release];
    }
    return;
}

-(void)createNativeAssetsDirectory {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [SSADownloadManager getInstanceRootDirectory];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [SSADownloadManager createDirectoryAtPath:r22 withName:@"native_assets" error:&var_38];
    r19 = [var_38 retain];
    [r22 release];
    if (r19 == 0x0) {
            r22 = [[ISNLightCacheManager sharedInstance] retain];
            r20 = [[SSADownloadManager getInstanceRootDirectory] retain];
            r21 = [[NSString stringWithFormat:@"%@/%@"] retain];
            [r22 setRootDirectoryPath:r21];
            [r21 release];
            [r20 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)upadateOnStatusChanged:(bool)arg2 {
    r31 = r31 - 0x50;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r20 = [[NSNumber numberWithBool:arg2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_30 forKeys:&var_38 count:0x1];
    r21 = [r0 retain];
    [self sendCallbackToController:@"ringerSwitchStatusChanged" withParams:r21];
    [r21 release];
    [r20 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void *)methodNameFromParams:(void *)arg2 {
    r0 = [arg2 objectForKeyedSubscript:@"functionName"];
    return r0;
}

-(void *)methodParamsFromJSParams:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [[arg2 objectForKeyedSubscript:@"functionParams"] retain];
    r22 = [[SSAHelperMethods decodeFromPercentEscapeString:r21] retain];
    r0 = [SSAHelperMethods dictionaryFromJsonString:r22 error:&var_30];
    r29 = &saved_fp;
    r19 = [r0 retain];
    r20 = [var_30 retain];
    [r22 release];
    [r21 release];
    if (r20 != 0x0) {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r0 = [r0 retain];
    }
    else {
            r0 = [r19 retain];
    }
    [r19 release];
    [r20 release];
    r0 = [r0 autorelease];
    return r0;
}

-(void)sendEmptyCallbackToController:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self publisherAgent] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-56] forKeys:&stack[-56] count:0x0];
    r20 = [r0 retain];
    [r19 runCommand:r21 andParameters:r20 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)sendCallbackToController:(void *)arg2 withParams:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0 && r21 != 0x0) {
            r21 = [r21 retain];
            r0 = [r20 publisherAgent];
            r0 = [r0 retain];
            [r0 runCommand:r19 andParameters:r21 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r21 release];
            [r0 release];
    }
    [r19 release];
    return;
}

-(void *)publisherAgent {
    r0 = objc_loadWeakRetained((int64_t *)&self->_publisherAgent);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)ringerCheckerController {
    r0 = self->_ringerCheckerController;
    return r0;
}

-(void)setRingerCheckerController:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_ringerCheckerController, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_ringerCheckerController, 0x0);
    objc_destroyWeak((int64_t *)&self->_publisherAgent);
    return;
}

@end