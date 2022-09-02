@implementation OMIDtapjoyBridge

-(void)publishCommand:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = r19->_jsExecutor;
    r20 = [arg2 retain];
    if ([r21 supportBackgroundThread] != 0x0) {
            [r19 internal_publishCommand:r20];
    }
    else {
            [OMIDtapjoyMethodInvoker performSelectorAsync:@selector(internal_publishCommand:) target:r19 argument:r20];
    }
    [r20 release];
    return;
}

-(void)internal_publishCommand:(void *)arg2 {
    [self->_jsExecutor injectJavaScriptFromString:arg2];
    return;
}

-(void *)initWithJSExecutor:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r20 = [r19 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r21 != 0x0) {
            objc_storeStrong((int64_t *)&r21->_jsExecutor, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)publishInitWithConfiguration:(void *)arg2 {
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
    var_48 = **___stack_chk_guard;
    r25 = [arg2 retain];
    r21 = [[self getStringOwner:[arg2 impressionOwner]] retain];
    r23 = [[self getStringOwner:[arg2 videoEventsOwner]] retain];
    r24 = [arg2 isolateVerificationScripts];
    [r25 release];
    r24 = [[NSNumber numberWithBool:r24] retain];
    r25 = [[NSDictionary dictionaryWithObjects:&var_60 forKeys:&var_78 count:0x3] retain];
    r22 = [[OMIDtapjoyDictionaryUtil stringFromJSON:r25] retain];
    r20 = [[OMIDtapjoyCommand commandWithName:@"init"] retain];
    [r22 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [self publishCommand:r20];
    [r20 release];
    if (**___stack_chk_guard != var_48) {
            __stack_chk_fail();
    }
    return;
}

-(void)publishStartEventWithAdSessionId:(void *)arg2 JSONContext:(void *)arg3 verificationParameters:(void *)arg4 {
    r31 = r31 - 0x80;
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
    r20 = self;
    r23 = [arg2 retain];
    r25 = [arg3 retain];
    r19 = [arg4 retain];
    r21 = [[OMIDtapjoyCommand stringWithQuotesFromString:r23] retain];
    [r23 release];
    r0 = [OMIDtapjoyDictionaryUtil stringFromJSON:r2];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r25 release];
    if (r19 != 0x0) {
            r23 = @class(OMIDtapjoyCommand);
            r24 = [[OMIDtapjoyDictionaryUtil stringFromJSON:r2] retain];
            r23 = [[r23 commandWithName:@"startSession"] retain];
            [r24 release];
    }
    else {
            r23 = [[OMIDtapjoyCommand commandWithName:@"startSession"] retain];
    }
    [r20 publishCommand:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)publishErrorWithType:(unsigned long long)arg2 errorMessage:(void *)arg3 {
    r23 = [arg3 retain];
    r19 = [[self getStringError:arg2] retain];
    r21 = [[OMIDtapjoyCommand commandWithName:@"error"] retain];
    [r23 release];
    [r19 release];
    [self publishCommand:r21];
    [r21 release];
    return;
}

-(void)publishFinishEvent {
    r20 = [[OMIDtapjoyCommand commandWithName:@"finishSession"] retain];
    [self publishCommand:r20];
    [r20 release];
    return;
}

-(void)publishImpressionEvent {
    r20 = [[OMIDtapjoyCommand commandWithName:@"publishImpressionEvent"] retain];
    [self publishCommand:r20];
    [r20 release];
    return;
}

-(void)publishVideoEventWithName:(void *)arg2 parameters:(void *)arg3 {
    r21 = [arg2 retain];
    [self publishEventWithName:r21 parameters:arg3 commandName:@"publishVideoEvent"];
    [r21 release];
    return;
}

-(void)publishEventWithName:(void *)arg2 parameters:(void *)arg3 commandName:(void *)arg4 {
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
    r23 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [arg4 retain];
    r0 = @class(OMIDtapjoyCommand);
    r0 = [r0 stringWithQuotesFromString:r23];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r23 release];
    if (r19 != 0x0) {
            r23 = @class(OMIDtapjoyCommand);
            r24 = [[OMIDtapjoyDictionaryUtil stringFromJSON:r19] retain];
            r23 = [[r23 commandWithName:r21] retain];
            [r24 release];
    }
    else {
            r23 = [[OMIDtapjoyCommand commandWithName:r21] retain];
    }
    [r20 publishCommand:r23];
    [r23 release];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void *)getStringError:(unsigned long long)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (arg2 == 0x2) {
            r19 = @"video";
    }
    else {
            r19 = @"generic";
    }
    [r19 retain];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)getStringOwner:(unsigned long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 == 0x3) goto loc_100961b90;

loc_100961b74:
    if (r2 == 0x2) goto loc_100961b9c;

loc_100961b7c:
    if (r2 != 0x1) goto loc_100961bac;

loc_100961b84:
    r19 = @"javascript";
    goto loc_100961ba4;

loc_100961ba4:
    [r19 retain];
    goto loc_100961bac;

loc_100961bac:
    r0 = [r19 autorelease];
    return r0;

loc_100961b9c:
    r19 = @"native";
    goto loc_100961ba4;

loc_100961b90:
    r19 = @"none";
    goto loc_100961ba4;
}

-(void *)jsExecutor {
    r0 = self->_jsExecutor;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_jsExecutor, 0x0);
    return;
}

@end