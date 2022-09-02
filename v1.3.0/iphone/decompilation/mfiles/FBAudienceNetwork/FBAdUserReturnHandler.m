@implementation FBAdUserReturnHandler

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [NSNotificationCenter defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r2 selector:r3 name:r4 object:r5];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r0 = [NSNotificationCenter defaultCenter];
    r0 = [r0 retain];
    [r0 removeObserver:self];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)onDidBecomeActiveNotification:(void *)arg2 {
    [self logUserReturnEventIfNeeded];
    return;
}

-(void)moveOutOfApp:(bool)arg2 withToken:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r22 = arg2;
    r20 = self;
    r19 = [arg3 retain];
    [r20 logUserReturnEventIfNeeded];
    if (r19 != 0x0) {
            r0 = [r20 timestampNowString];
            r29 = r29;
            r21 = [r0 retain];
            if ((r22 & 0x1) != 0x0) {
                    r0 = [NSDictionary dictionaryWithObjects:&var_38 forKeys:&var_48 count:0x2];
                    r22 = [r0 retain];
                    [r20 storeEventDictionary:r22];
                    [r22 release];
            }
            else {
                    [r20 logEventWithToken:r19 isLocal:0x0 leaveTimestampString:r21 backTimestampString:r21 outcomeString:@"cannot_open"];
            }
            [r21 release];
    }
    else {
            [FBAdLogger logAtLevel:0x3 file:"ios-sdk/ads/src/FBAudienceNetwork/FBAudienceNetwork/util/FBAdUserReturnHandler.m" lineNumber:0x59 format:@"FBAdUserReturnHandler: token is nil!"];
    }
    var_28 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_28) {
            __stack_chk_fail();
    }
    return;
}

-(void)logUserReturnEventIfNeeded {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r0 = [self eventDictionary];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r19 = r0;
    if (r0 != 0x0) {
            [r20 removeEventDictionary];
            r22 = [[r19 objectForKeyedSubscript:@"token"] retain];
            r23 = [[r20 timestampNowString] retain];
            r21 = [[r19 objectForKeyedSubscript:@"leave_time"] retain];
            [r20 logEventWithToken:r22 isLocal:0x0 leaveTimestampString:r21 backTimestampString:r23 outcomeString:0x0];
            [r21 release];
            [r23 release];
            [r22 release];
    }
    [r19 release];
    return;
}

-(void)logLocalUserReturnEventWithToken:(void *)arg2 openInterval:(unsigned long long)arg3 closeInterval:(unsigned long long)arg4 {
    r23 = @class(NSNumber);
    r20 = [arg2 retain];
    r0 = [r23 numberWithUnsignedInteger:arg3];
    r0 = [r0 retain];
    r19 = r0;
    r25 = [[r0 stringValue] retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithUnsignedInteger:arg4];
    r0 = [r0 retain];
    r23 = [[r0 stringValue] retain];
    [self logEventWithToken:r20 isLocal:0x1 leaveTimestampString:r25 backTimestampString:r23 outcomeString:0x0];
    [r20 release];
    [r23 release];
    [r0 release];
    [r25 release];
    [r19 release];
    return;
}

-(void)logEventWithToken:(void *)arg2 isLocal:(bool)arg3 leaveTimestampString:(void *)arg4 backTimestampString:(void *)arg5 outcomeString:(void *)arg6 {
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
    r20 = self;
    r19 = [arg2 retain];
    r25 = [arg4 retain];
    r26 = [arg5 retain];
    r21 = [arg6 retain];
    r0 = [NSMutableDictionary new];
    r22 = r0;
    [r0 setObject:r25 forKeyedSubscript:@"leave_time"];
    [r25 release];
    [r22 setObject:r26 forKeyedSubscript:@"back_time"];
    [r26 release];
    r23 = [[FBAdUtility stringValueForBool:arg3] retain];
    [r22 setObject:r23 forKeyedSubscript:@"local"];
    [r23 release];
    if (r21 != 0x0) {
            [r22 setObject:r21 forKeyedSubscript:@"outcome"];
    }
    [r20 logEventWithToken:r19 extraData:r22];
    [r22 release];
    [r21 release];
    [r19 release];
    return;
}

-(void)logEventWithToken:(void *)arg2 extraData:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r0 = [FBAdEventManager sharedManager];
    r0 = [r0 retain];
    [r0 logUserReturnEventForToken:r20 withExtraData:r19];
    [r19 release];
    [r20 release];
    [r0 release];
    return;
}

-(void *)timestampNowString {
    r0 = [NSDate date];
    r0 = [r0 retain];
    r19 = r0;
    [r0 timeIntervalSince1970];
    asm { fcvtzu     x20, d0 };
    [r19 release];
    r0 = [NSNumber numberWithUnsignedInteger:r20];
    r0 = [r0 retain];
    r20 = [[r0 stringValue] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)eventDictionary {
    r0 = [NSUserDefaults standardUserDefaults];
    r0 = [r0 retain];
    r20 = [[r0 objectForKey:r2] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)storeEventDictionary:(void *)arg2 {
    r19 = @class(NSUserDefaults);
    r21 = [arg2 retain];
    r0 = [r19 standardUserDefaults];
    r0 = [r0 retain];
    [r0 setObject:r21 forKey:@"kFBAdUserReturnEventKey"];
    [r21 release];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r19 release];
    return;
}

-(void)removeEventDictionary {
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 removeObjectForKey:@"kFBAdUserReturnEventKey"];
    [r0 release];
    r0 = @class(NSUserDefaults);
    r0 = [r0 standardUserDefaults];
    r0 = [r0 retain];
    [r0 synchronize];
    [r19 release];
    return;
}

+(void)moveOutOfApp:(bool)arg2 withToken:(void *)arg3 {
    r22 = [arg3 retain];
    r0 = [self shared];
    r0 = [r0 retain];
    [r0 moveOutOfApp:arg2 withToken:r22];
    [r22 release];
    [r0 release];
    return;
}

+(void)logUserReturnEventIfNeeded {
    r0 = [self shared];
    r0 = [r0 retain];
    [r0 logUserReturnEventIfNeeded];
    [r0 release];
    return;
}

+(void)logLocalUserReturnEventWithToken:(void *)arg2 openInterval:(unsigned long long)arg3 closeInterval:(unsigned long long)arg4 {
    r23 = [arg2 retain];
    r0 = [self shared];
    r0 = [r0 retain];
    [r0 logLocalUserReturnEventWithToken:r23 openInterval:arg3 closeInterval:arg4];
    [r23 release];
    [r0 release];
    return;
}

+(void *)shared {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = objc_retainBlock(&var_38);
    r19 = r0;
    if (*qword_1011ddbc0 != -0x1) {
            dispatch_once(0x1011ddbc0, r19);
    }
    r20 = objc_retainAutoreleaseReturnValue(*0x1011ddbc8);
    [r19 release];
    r0 = r20;
    return r0;
}

@end