@implementation ISNMOATJSInterface

-(void *)initWithPublisherAgent:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_publisherAgent, r19);
            r0 = [NSMutableDictionary new];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_controllerCallbacks));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [ISNMOATManager sharedInstance];
            r0 = [r0 retain];
            [r0 setDelegate:r20];
            [r0 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)moatMethodNameFromParams:(void *)arg2 {
    r0 = [arg2 objectForKeyedSubscript:@"moatFunction"];
    return r0;
}

-(void)invokeAPIWithParams:(void *)arg2 adView:(void *)arg3 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = _cmd;
    r23 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [r23 moatMethodNameFromParams:r19];
    r29 = &saved_fp;
    r21 = [r0 retain];
    if (r21 == 0x0) goto loc_10073fea4;

loc_10073fd0c:
    r0 = [r23 controllerCallbacks];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setObject:r19 forKeyedSubscript:r21];
    [r0 release];
    if ([r21 isEqualToString:r2] == 0x0) goto loc_10073fdc4;

loc_10073fd64:
    r22 = [[ISNMOATManager sharedInstance] retain];
    r23 = [[r23 moatMethodParamsFromParams:r19] retain];
    [r22 initWithOptions:r23];
    [r23 release];
    goto loc_10073fe9c;

loc_10073fe9c:
    r0 = r22;
    goto loc_10073fea0;

loc_10073fea0:
    [r0 release];
    goto loc_10073fea4;

loc_10073fea4:
    [r21 release];
    [r20 release];
    [r19 release];
    return;

loc_10073fdc4:
    if ([r21 isEqualToString:r2] == 0x0) goto loc_10073fe10;

loc_10073fddc:
    r0 = [ISNMOATManager sharedInstance];
    r0 = [r0 retain];
    r22 = r0;
    [r0 createAdTrackerWithAdView:r20];
    goto loc_10073fe9c;

loc_10073fe10:
    if ([r21 isEqualToString:r2] == 0x0) goto loc_10073fe54;

loc_10073fe28:
    r22 = [[ISNMOATManager sharedInstance] retain];
    r1 = @selector(startTracking);
    goto loc_10073fe94;

loc_10073fe94:
    objc_msgSend(r22, r1);
    goto loc_10073fe9c;

loc_10073fe54:
    if ([r21 isEqualToString:r2] == 0x0) goto loc_10073fed0;

loc_10073fe6c:
    r22 = [[ISNMOATManager sharedInstance] retain];
    r1 = @selector(stopTracking);
    goto loc_10073fe94;

loc_10073fed0:
    r23 = [[SupersonicLogManager sharedManager] retain];
    r22 = [NSStringFromSelector(r22) retain];
    r24 = [[NSString stringWithFormat:@"%@ | unsupported MOAT API"] retain];
    [r23 log:r24 withLevel:0x1 withTag:0x6];
    [r24 release];
    [r22 release];
    r0 = r23;
    goto loc_10073fea0;
}

-(void *)moatMethodParamsFromParams:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = [[arg2 objectForKeyedSubscript:@"moatParams"] retain];
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

-(void)sendSuccessCallbackToControllerForMethodName:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r22 = [arg2 retain];
    r0 = [r20 controllerCallbacks];
    r0 = [r0 retain];
    r19 = [[r0 objectForKeyedSubscript:r2] retain];
    [r22 release];
    [r0 release];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r22 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r24 = [r0 isEqualToString:r2];
            [r0 release];
            [r22 release];
            if ((r24 & 0x1) == 0x0) {
                    r20 = [[r20 publisherAgent] retain];
                    r21 = [[r19 objectForKeyedSubscript:r2] retain];
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-72] forKeys:&stack[-72] count:0x0];
                    r22 = [r0 retain];
                    [r20 runCommand:r21 andParameters:r22 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
                    [r22 release];
                    [r21 release];
                    [r20 release];
            }
    }
    [r19 release];
    return;
}

-(void)moatManagerStartedTracking {
    r21 = [[SupersonicLogManager sharedManager] retain];
    r20 = [NSStringFromSelector(_cmd) retain];
    r22 = [[NSString stringWithFormat:@"ISNMOATManagerDelegate | %@"] retain];
    [r21 log:r22 withLevel:0x1 withTag:0x6];
    [r22 release];
    [r20 release];
    [r21 release];
    [self sendSuccessCallbackToControllerForMethodName:@"startTracking"];
    return;
}

-(void)moatManagerStoppedTracking {
    r21 = [[SupersonicLogManager sharedManager] retain];
    r20 = [NSStringFromSelector(_cmd) retain];
    r22 = [[NSString stringWithFormat:@"ISNMOATManagerDelegate | %@"] retain];
    [r21 log:r22 withLevel:0x1 withTag:0x6];
    [r22 release];
    [r20 release];
    [r21 release];
    [self sendSuccessCallbackToControllerForMethodName:@"stopTracking"];
    return;
}

-(void)sendErrorCallbackToControllerForMethodName:(void *)arg2 errorReason:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r21 = self;
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [r21 controllerCallbacks];
    r0 = [r0 retain];
    r20 = [[r0 objectForKeyedSubscript:r2] retain];
    [r23 release];
    [r0 release];
    r0 = [r20 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [r20 objectForKeyedSubscript:r2];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 isEqualToString:r2];
            [r0 release];
            [r23 release];
            if ((r25 & 0x1) == 0x0) {
                    if (r19 != 0x0) {
                            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                            r29 = r29;
                    }
                    else {
                            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                            r29 = r29;
                    }
                    r23 = [r0 retain];
                    r21 = [[r21 publisherAgent] retain];
                    r22 = [[r20 objectForKeyedSubscript:r2] retain];
                    [r21 runCommand:r22 andParameters:r23 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x0];
                    [r22 release];
                    [r21 release];
                    [r23 release];
            }
    }
    var_48 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)moatManagerFailedToStartTrackingWithReason:(void *)arg2 {
    r20 = [arg2 retain];
    r22 = [[SupersonicLogManager sharedManager] retain];
    r21 = [NSStringFromSelector(_cmd) retain];
    r23 = [[NSString stringWithFormat:@"ISNMOATManagerDelegate | %@"] retain];
    [r22 log:r23 withLevel:0x1 withTag:0x6];
    [r23 release];
    [r21 release];
    [r22 release];
    [self sendErrorCallbackToControllerForMethodName:@"startTracking" errorReason:r20];
    [r20 release];
    return;
}

-(void *)publisherAgent {
    r0 = objc_loadWeakRetained((int64_t *)&self->_publisherAgent);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)controllerCallbacks {
    r0 = self->_controllerCallbacks;
    return r0;
}

-(void)setControllerCallbacks:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_controllerCallbacks, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_controllerCallbacks, 0x0);
    objc_destroyWeak((int64_t *)&self->_publisherAgent);
    return;
}

@end