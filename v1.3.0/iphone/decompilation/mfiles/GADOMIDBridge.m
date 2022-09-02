@implementation GADOMIDBridge

-(void *)initWithJSExecutor:(void *)arg2 {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    objc_storeStrong(r29 - 0x18, arg2);
    r0 = [[&var_28 super] init];
    var_8 = r0;
    objc_storeStrong(r29 - 0x8, r0);
    if (var_8 != 0x0) {
            objc_storeStrong((int64_t *)&var_8->_jsExecutor, 0x0);
    }
    var_38 = [var_8 retain];
    objc_storeStrong(r29 - 0x18, 0x0);
    objc_storeStrong(r29 - 0x8, 0x0);
    r0 = var_38;
    return r0;
}

-(void)internal_publishCommand:(void *)arg2 {
    objc_storeStrong(&var_18, arg2);
    [self->_jsExecutor injectJavaScriptFromString:var_18];
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(void)publishCommand:(void *)arg2 {
    r31 = r31 - 0x30;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = self;
    r0 = objc_storeStrong(&var_18, arg2);
    if (([var_8->_jsExecutor supportBackgroundThread] & 0x1) != 0x0) {
            [var_8 internal_publishCommand:var_18];
    }
    else {
            [GADOMIDMethodInvoker performSelectorAsync:@selector(internal_publishCommand:) target:var_8 argument:var_18];
    }
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(void)publishFinishEvent {
    stack[-48] = 0x0;
    [self publishCommand:[[GADOMIDCommand commandWithName:@"finishSession"] retain]];
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(void)publishErrorWithType:(unsigned long long)arg2 errorMessage:(void *)arg3 {
    objc_storeStrong(&var_20, arg3);
    [self publishCommand:[[GADOMIDCommand errorCommandWithType:arg2 errorMessage:var_20] retain]];
    objc_storeStrong(&var_28, 0x0);
    objc_storeStrong(&var_20, 0x0);
    return;
}

-(void)publishInitWithConfiguration:(void *)arg2 {
    r31 = r31 - 0xe0;
    saved_fp = r29;
    stack[-8] = r30;
    r10 = *___stack_chk_guard;
    var_8 = **___stack_chk_guard;
    objc_storeStrong(&saved_fp - 0x50, arg2);
    var_88 = [[self getStringOwner:[0x0 impressionOwner]] retain];
    var_A0 = [[self getStringOwner:[0x0 videoEventsOwner]] retain];
    r0 = [NSNumber numberWithBool:[0x0 isolateVerificationScripts] & 0x1];
    r0 = [r0 retain];
    var_58 = [[NSDictionary dictionaryWithObjects:&saved_fp - 0x20 forKeys:&saved_fp - 0x38 count:0x3] retain];
    [r0 release];
    [var_A0 release];
    [var_88 release];
    r0 = [GADOMIDDictionaryUtil stringFromJSON:var_58];
    r0 = [r0 retain];
    *(&stack[-224] + 0x8) = 0x0;
    stack[-224] = r0;
    [self publishCommand:[[GADOMIDCommand commandWithName:@"init"] retain]];
    objc_storeStrong(&var_68, 0x0);
    objc_storeStrong(&saved_fp - 0x60, 0x0);
    objc_storeStrong(&saved_fp - 0x58, 0x0);
    objc_storeStrong(&saved_fp - 0x50, 0x0);
    if (**___stack_chk_guard != var_8) {
            __stack_chk_fail();
    }
    return;
}

-(void)publishStartEventWithAdSessionId:(void *)arg2 JSONContext:(void *)arg3 verificationParameters:(void *)arg4 {
    r31 = r31 - 0xc0;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = self;
    objc_storeStrong(&saved_fp - 0x18, arg2);
    objc_storeStrong(&saved_fp - 0x20, arg3);
    objc_storeStrong(&saved_fp - 0x28, arg4);
    var_30 = [[GADOMIDCommand stringWithQuotesFromString:0x0] retain];
    r0 = [GADOMIDDictionaryUtil stringFromJSON:0x0];
    r29 = &saved_fp;
    var_38 = [r0 retain];
    var_49 = 0x0;
    if (0x0 != 0x0) {
            r0 = [GADOMIDDictionaryUtil stringFromJSON:0x0];
            r29 = r29;
            r0 = [r0 retain];
            var_48 = r0;
            var_49 = 0x1;
            var_88 = r0;
    }
    else {
            var_88 = 0x0;
    }
    var_40 = [var_88 retain];
    if ((var_49 & 0x1 & 0x1) != 0x0) {
            [var_48 release];
    }
    if (var_38 == 0x0) {
            r0 = [GADOMIDCommand errorCommandWithType:0x1 errorMessage:[@"Bad context for GADOMID start event" retain]];
            r29 = r29;
            var_58 = [r0 retain];
            [0x0 release];
            objc_storeStrong(&var_60, 0x0);
    }
    else {
            if (0x0 != 0x0) {
                    if (var_40 == 0x0) {
                            r0 = [GADOMIDCommand errorCommandWithType:0x1 errorMessage:[@"Bad verification parameters for GADOMID start event" retain]];
                            r29 = r29;
                            var_58 = [r0 retain];
                            [0x0 release];
                            objc_storeStrong(&var_68, 0x0);
                    }
                    else {
                            *(&stack[-192] + 0x18) = 0x0;
                            *(&stack[-192] + 0x10) = var_40;
                            *(&stack[-192] + 0x8) = var_38;
                            stack[-192] = var_30;
                            r0 = [GADOMIDCommand commandWithName:@"startSession"];
                            r29 = r29;
                            var_58 = [r0 retain];
                            [0x0 release];
                    }
            }
            else {
                    *(&stack[-192] + 0x10) = 0x0;
                    *(&stack[-192] + 0x8) = var_38;
                    stack[-192] = var_30;
                    r0 = [GADOMIDCommand commandWithName:@"startSession"];
                    r29 = r29;
                    var_58 = [r0 retain];
                    [0x0 release];
            }
    }
    [var_8 publishCommand:var_58];
    objc_storeStrong(&var_58, 0x0);
    objc_storeStrong(r29 - 0x40, 0x0);
    objc_storeStrong(r29 - 0x38, 0x0);
    objc_storeStrong(r29 - 0x30, 0x0);
    objc_storeStrong(r29 - 0x28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x18, 0x0);
    return;
}

-(void)publishVideoEventWithName:(void *)arg2 parameters:(void *)arg3 {
    objc_storeStrong(&var_18, arg2);
    objc_storeStrong(&var_20, arg3);
    [self publishEventWithName:var_18 parameters:var_20 commandName:@"publishVideoEvent"];
    objc_storeStrong(&var_20, 0x0);
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(void)publishImpressionEvent {
    stack[-48] = 0x0;
    [self publishCommand:[[GADOMIDCommand commandWithName:@"publishImpressionEvent"] retain]];
    objc_storeStrong(&var_18, 0x0);
    return;
}

-(void)publishEventWithName:(void *)arg2 parameters:(void *)arg3 commandName:(void *)arg4 {
    r31 = r31 - 0x80;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = self;
    objc_storeStrong(&saved_fp - 0x18, arg2);
    objc_storeStrong(&saved_fp - 0x20, arg3);
    objc_storeStrong(&saved_fp - 0x28, arg4);
    r0 = [GADOMIDCommand stringWithQuotesFromString:0x0];
    r29 = &saved_fp;
    var_30 = [r0 retain];
    if (0x0 != 0x0) {
            r0 = [GADOMIDDictionaryUtil stringFromJSON:0x0];
            r29 = r29;
            var_40 = [r0 retain];
            if (var_40 != 0x0) {
                    *(&stack[-128] + 0x10) = 0x0;
                    *(&stack[-128] + 0x8) = var_40;
                    stack[-128] = var_30;
                    r0 = [GADOMIDCommand commandWithName:0x0];
                    r29 = r29;
                    var_38 = [r0 retain];
                    [0x0 release];
            }
            else {
                    stack[-128] = 0x0;
                    r0 = [GADOMIDCommand errorCommandWithType:0x1 errorMessage:[[NSString stringWithFormat:@"Bad parameters for '%@' event"] retain]];
                    r29 = r29;
                    var_38 = [r0 retain];
                    [0x0 release];
                    objc_storeStrong(&var_48, 0x0);
            }
            objc_storeStrong(&var_40, 0x0);
    }
    else {
            *(&stack[-128] + 0x8) = 0x0;
            stack[-128] = var_30;
            r0 = [GADOMIDCommand commandWithName:0x0];
            r29 = r29;
            var_38 = [r0 retain];
            [0x0 release];
    }
    [var_8 publishCommand:var_38];
    objc_storeStrong(&var_38, 0x0);
    objc_storeStrong(r29 - 0x30, 0x0);
    objc_storeStrong(r29 - 0x28, 0x0);
    objc_storeStrong(r29 - 0x20, 0x0);
    objc_storeStrong(r29 - 0x18, 0x0);
    return;
}

-(void *)getStringOwner:(unsigned long long)arg2 {
    r31 = r31 - 0x50;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = arg2 - 0x1;
    var_28 = arg2;
    if (r0 != 0x0) {
            if (r9 != 0x0) {
                    var_8 = [@"none" retain];
            }
            else {
                    var_8 = [@"native" retain];
            }
    }
    else {
            var_8 = [@"javascript" retain];
    }
    r0 = [var_8 autorelease];
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_jsExecutor, 0x0);
    return;
}

-(void *)jsExecutor {
    r0 = self->_jsExecutor;
    return r0;
}

@end