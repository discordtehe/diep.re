@implementation CLSSettings

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg2;
    r19 = [r21 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_settingsDictionary, r21);
            r21 = [r20 retain];
    }
    else {
            r21 = 0x0;
    }
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void *)configuration {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 infoDictionary];
    r0 = [r0 retain];
    r21 = [[r0 objectForKey:r2] retain];
    [r0 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)betaEndpoint {
    r0 = [self valueForConfigurationKey:@"BetaEndpoint"];
    return r0;
}

-(void *)defaultConfiguration {
    r31 = r31 - 0x90;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_28 = **___stack_chk_guard;
    r19 = [@(YES) retain];
    r21 = [@(YES) retain];
    r22 = [@(YES) retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_78 count:0x5];
    r20 = [r0 retain];
    [r22 release];
    [r21 release];
    [r19 release];
    if (**___stack_chk_guard == var_28) {
            r0 = [r20 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)valueForConfigurationKey:(void *)arg2 {
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
    r19 = [arg2 retain];
    r0 = [NSProcessInfo processInfo];
    r0 = [r0 retain];
    r22 = r0;
    r23 = [[r0 environment] retain];
    r24 = [[@"Crashlytics" stringByAppendingString:r19] retain];
    r2 = r24;
    r0 = [r23 valueForKey:r2];
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r24 release];
    [r23 release];
    [r22 release];
    if (r21 != 0x0) {
            NSLog(@"[Crashlytics:Crash] override: '%@' => '%@'", @selector(valueForKey:), r2);
    }
    else {
            r0 = [r20 configuration];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKey:r2];
            r29 = r29;
            r21 = [r0 retain];
            [r23 release];
            if (r21 == 0x0) {
                    r22 = @selector(objectForKey:);
                    r0 = [r20 defaultConfiguration];
                    r0 = [r0 retain];
                    r21 = [objc_msgSend(r0, r22) retain];
                    [r0 release];
            }
    }
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)betaSuspendDuration {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r21 = r0;
    r0 = objc_msgSend(r0, r19);
    r29 = &saved_fp;
    r19 = [r0 retain];
    [r21 release];
    [r20 release];
    if (r19 != 0x0) {
            r0 = [r19 retain];
    }
    else {
            r0 = [NSNumber numberWithInt:r2];
            r0 = [r0 retain];
    }
    [r19 release];
    r0 = [r0 autorelease];
    return r0;
}

-(bool)shouldPackageReports {
    r0 = [self valueForConfigurationKey:@"PackageReports"];
    r0 = [r0 retain];
    r20 = [r0 boolValue];
    [r0 release];
    r0 = r20;
    return r0;
}

-(void *)reportsEndpoint {
    r0 = [self valueForConfigurationKey:@"ReportsEndpoint"];
    return r0;
}

-(bool)shouldSubmitReports {
    r0 = [self valueForConfigurationKey:@"SubmitReports"];
    r0 = [r0 retain];
    r20 = [r0 boolValue];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)canProcessUrgentReports {
    r0 = [self valueForConfigurationKey:@"UrgentReports"];
    r0 = [r0 retain];
    r20 = [r0 boolValue];
    [r0 release];
    r0 = r20;
    return r0;
}

-(bool)customExceptionsEnabled {
    r0 = [self errorReportingEnabled];
    return r0;
}

-(bool)errorReportingEnabled {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 boolValue];
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)crashReportingEnabled {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 boolValue];
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)userPromptEnabled {
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"features"];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:@"prompt_enabled"];
    r0 = [r0 retain];
    r22 = [r0 boolValue];
    [r0 release];
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)firebaseCrashlyticsEnabled {
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"features"];
    r0 = [r0 retain];
    r21 = r0;
    r0 = [r0 objectForKey:@"firebase_crashlytics_enabled"];
    r0 = [r0 retain];
    r22 = [r0 boolValue];
    [r0 release];
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(unsigned int)errorLogBufferSize {
    r0 = [self logBufferSize];
    return r0;
}

-(unsigned int)logBufferSize {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 unsignedIntValue];
    }
    else {
            r20 = 0x10000;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(unsigned int)maxCustomExceptions {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 unsignedIntValue];
    }
    else {
            r20 = 0x10;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(unsigned int)maxCustomKeys {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r19 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r19);
    r0 = [r0 retain];
    r19 = [objc_msgSend(r0, r19) retain];
    [r0 release];
    [r20 release];
    if (r19 != 0x0) {
            r20 = [r19 unsignedIntValue];
    }
    else {
            r20 = 0x10;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)promptValueForSettingsKey:(void *)arg2 withLocalizedKey:(void *)arg3 defaultValue:(void *)arg4 {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = [arg2 retain];
    r20 = [arg3 retain];
    r19 = [arg4 retain];
    r0 = [self settingsDictionary];
    r0 = [r0 retain];
    r22 = r0;
    r24 = @selector(objectForKey:);
    r0 = objc_msgSend(r0, r24);
    r0 = [r0 retain];
    r25 = r0;
    r0 = objc_msgSend(r0, r24);
    r29 = &saved_fp;
    r21 = [r0 retain];
    [r23 release];
    [r25 release];
    [r22 release];
    if (r21 != 0x0) {
            r22 = [r21 retain];
            [r19 release];
            r19 = r22;
    }
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r23 = [[r0 localizedStringForKey:r20 value:r19 table:@"Crashlytics"] retain];
    [r20 release];
    [r0 release];
    [r21 release];
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void *)interactivePromptTitle {
    r0 = [self promptValueForSettingsKey:@"title" withLocalizedKey:@"CrashlyticsCrashSubmissionPromptTitle" defaultValue:@"Send Crash Report?"];
    return r0;
}

-(void *)interactivePromptMessage {
    r0 = [self promptValueForSettingsKey:@"message" withLocalizedKey:@"CrashlyticsCrashSubmissionPromptMessage" defaultValue:@"Looks like we crashed! Please help us fix the problem by sending a crash report."];
    return r0;
}

-(void *)interactivePromptCancelTitle {
    r0 = [self promptValueForSettingsKey:@"cancel_button_title" withLocalizedKey:@"CrashlyticsCrashSubmissionCancelTitle" defaultValue:@"Don't Send"];
    return r0;
}

-(void *)interactivePromptSendTitle {
    r0 = [self promptValueForSettingsKey:@"send_button_title" withLocalizedKey:@"CrashlyticsCrashSubmissionSendTitle" defaultValue:@"Send"];
    return r0;
}

-(void *)interactivePromptAlwaysSendTitle {
    r0 = [self promptValueForSettingsKey:@"always_send_button_title" withLocalizedKey:@"CrashlyticsCrashSubmissionAlwaysSendTitle" defaultValue:@"Always Send"];
    return r0;
}

-(void *)settingsDictionary {
    r0 = self->_settingsDictionary;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_settingsDictionary, 0x0);
    return;
}

@end