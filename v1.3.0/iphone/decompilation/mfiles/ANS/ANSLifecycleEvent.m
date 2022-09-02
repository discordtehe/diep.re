@implementation ANSLifecycleEvent

+(void *)installEvent {
    r0 = [self alloc];
    r0 = [r0 initWithName:@"app_installed"];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)eventWithNotification:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[self alloc] initWithNotification:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)initWithNotification:(void *)arg2 {
    r21 = [arg2 retain];
    r20 = [[[self class] nameFromNotification:r21] retain];
    [r21 release];
    r19 = [self initWithName:r20];
    [r20 release];
    r0 = r19;
    return r0;
}

+(void *)appLaunchedEvent {
    r0 = [self alloc];
    r0 = [r0 initWithName:@"app_launched"];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithName:(void *)arg2 {
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
            objc_storeStrong((int64_t *)&r21->_name, r19);
    }
    [r20 release];
    r0 = r21;
    return r0;
}

+(void *)notificationNameMap {
    r31 = r31 - 0x80;
    saved_fp = r29;
    stack[-8] = r30;
    var_8 = **___stack_chk_guard;
    r0 = [NSDictionary dictionaryWithObjects:&var_38 forKeys:&var_68 count:0x6];
    if (**___stack_chk_guard != var_8) {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)name {
    r0 = self->_name;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)nameFromNotification:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = [arg2 retain];
    r19 = [[self notificationNameMap] retain];
    r21 = [[arg2 name] retain];
    [r22 release];
    r20 = [[r19 objectForKey:r2] retain];
    [r21 release];
    if (r20 != 0x0) {
            r21 = [r20 retain];
    }
    else {
            r21 = @"unknown-notification";
            [r21 retain];
    }
    [r20 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)dictionaryRepresentation {
    r31 = r31 - 0x40;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    var_18 = **___stack_chk_guard;
    r20 = [[self identifier] retain];
    r0 = [NSDictionary dictionaryWithObjects:&var_20 forKeys:&var_28 count:0x1];
    r19 = [r0 retain];
    [r20 release];
    if (**___stack_chk_guard == var_18) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(bool)triggersFlush {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [self name];
    r0 = [r0 retain];
    r19 = r0;
    if (([r0 isEqualToString:r2] & 0x1) == 0x0 && ([r19 isEqualToString:r2] & 0x1) == 0x0) {
            r20 = @selector(isEqualToString:);
            r20 = objc_msgSend(r19, r20);
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end