@implementation ISNOrientationJSHandler

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
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100718d2c;

loc_100718d20:
    r1 = @selector(setAppOrientation:sendCallback:);
    goto loc_100718d5c;

loc_100718d5c:
    objc_msgSend(r20, r1);
    goto loc_100718d6c;

loc_100718d6c:
    [r19 release];
    return;

loc_100718d2c:
    r0 = [r19 objectForKeyedSubscript:r2];
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100718d6c;

loc_100718d54:
    r1 = @selector(setPresentationOrientation:sendCallback:);
    goto loc_100718d5c;
}

-(void)setPresentationOrientation:(void *)arg2 sendCallback:(bool)arg3 {
    r31 = r31 - 0x60;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r22 = [NSStringFromSelector(_cmd) retain];
    r23 = [[NSString stringWithFormat:@"calling method:%@"] retain];
    [r20 logInfo:r23];
    [r23 release];
    [r22 release];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100718ed4;

loc_100718e58:
    r0 = [r19 objectForKey:@"orientation"];
    r29 = r29;
    r23 = [r0 retain];
    [r20 updateOrientationManagerWithRequestedPresentationOrientation:r23];
    [r23 release];
    if (r21 == 0x0) goto loc_100718f60;

loc_100718e9c:
    r21 = [[r19 objectForKeyedSubscript:r2] retain];
    [r20 sendEmptyCallbackToController:r21];
    goto loc_100718f58;

loc_100718f58:
    [r21 release];
    goto loc_100718f60;

loc_100718f60:
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;

loc_100718ed4:
    if (r21 == 0x0) goto loc_100718f60;

loc_100718ed8:
    r21 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-80] forKeys:&var_48 count:0x1];
    r22 = [r0 retain];
    [r20 sendCallbackToController:r21 withParams:r22];
    [r22 release];
    goto loc_100718f58;
}

-(void)updateOrientationManagerWithRequestedPresentationOrientation:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [arg2 retain];
    r19 = r0;
    r21 = [r0 isEqualToString:@"application"];
    r20 = [ISOrientationPolicy alloc];
    if (r21 != 0x0) {
            r0 = [ISNAppOrientationHolder sharedInstance];
            r29 = r29;
            r0 = [r0 retain];
            r20 = [r20 initWithWithOrientation:[r0 appOrientation]];
            [r0 release];
            if (r20 != 0x0) {
                    r0 = [ISOrientationManager sharedManager];
                    r0 = [r0 retain];
                    [r0 updateOrientationPolicy:r20];
                    [r0 release];
            }
    }
    else {
            r20 = [r20 initWithStringOrientation:r19];
            if (r20 != 0x0) {
                    r0 = [ISOrientationManager sharedManager];
                    r0 = [r0 retain];
                    [r0 updateOrientationPolicy:r20];
                    [r0 release];
            }
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)sendEmptyCallbackToController:(void *)arg2 {
    r2 = arg2;
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if (r2 != 0x0) {
            r21 = [r2 retain];
            r19 = [[r19 publisherAgent] retain];
            r0 = [NSDictionary dictionaryWithObjects:&stack[-56] forKeys:&stack[-56] count:0x0];
            r20 = [r0 retain];
            [r19 runCommand:r21 andParameters:r20 successMethodName:0x0 failMethodName:0x0 decodeFirst:0x1];
            [r21 release];
            [r20 release];
            [r19 release];
    }
    return;
}

-(void)setAppOrientation:(void *)arg2 sendCallback:(bool)arg3 {
    r31 = r31 - 0x80;
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
    r21 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r0 = NSStringFromSelector(_cmd);
    r29 = &saved_fp;
    r22 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r19 description];
            r29 = r29;
            r24 = [r0 retain];
            r25 = 0x1;
    }
    else {
            r25 = 0x0;
            r24 = @"none";
    }
    r0 = [NSString stringWithFormat:@"calling method:%@ | js params: %@"];
    r29 = r29;
    r23 = [r0 retain];
    [r20 logInfo:r23];
    [r23 release];
    if (r25 != 0x0) {
            [r24 release];
    }
    [r22 release];
    r0 = [r19 objectForKeyedSubscript:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100719174;

loc_1007190b8:
    r24 = [[r19 objectForKeyedSubscript:r2] retain];
    r23 = [ISOrientationUtillis convertControllerStringOrientationToISOrientation:r24];
    r0 = [ISNAppOrientationHolder sharedInstance];
    r29 = r29;
    r0 = [r0 retain];
    [r0 setExternalAppOrientation:r23];
    [r0 release];
    [r24 release];
    if (r21 == 0x0) goto loc_100719200;

loc_10071913c:
    r21 = [[r19 objectForKeyedSubscript:r2] retain];
    [r20 sendEmptyCallbackToController:r21];
    goto loc_1007191f8;

loc_1007191f8:
    [r21 release];
    goto loc_100719200;

loc_100719200:
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;

loc_100719174:
    if (r21 == 0x0) goto loc_100719200;

loc_100719178:
    r21 = [[r19 objectForKeyedSubscript:r2] retain];
    r0 = [NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1];
    r22 = [r0 retain];
    [r20 sendCallbackToController:r21 withParams:r22];
    [r22 release];
    goto loc_1007191f8;
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

-(void)logInfo:(void *)arg2 {
    r22 = [arg2 retain];
    r19 = [[SupersonicLogManager sharedManager] retain];
    r20 = [NSStringFromClass([self class]) retain];
    r21 = [[NSString stringWithFormat:@"class: %@ | %@"] retain];
    [r22 release];
    [r19 log:r21 withLevel:0x1 withTag:0x5];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)publisherAgent {
    r0 = objc_loadWeakRetained((int64_t *)&self->_publisherAgent);
    r0 = [r0 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_publisherAgent);
    return;
}

@end