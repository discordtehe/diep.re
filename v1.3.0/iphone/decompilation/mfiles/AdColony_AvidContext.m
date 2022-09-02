@implementation AdColony_AvidContext

+(void *)sharedContext {
    r29 = &saved_fp;
    r31 = r31 + 0xfffffffffffffff0 - 0x30;
    var_28 = *__NSConcreteStackBlock;
    if (*qword_1011d23f8 != -0x1) {
            r0 = dispatch_once(0x1011d23f8, &var_28);
    }
    r0 = *0x1011d2400;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)avidVersion {
    objc_retainAutorelease(@"3.6.8");
    return @"3.6.8";
}

-(void *)bundleId {
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r20 = [[r0 bundleIdentifier] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)partnerName {
    objc_retainAutorelease(@"adcolony");
    return @"adcolony";
}

-(void *)avidReleaseDate {
    objc_retainAutorelease(@"29-Jun-17");
    return @"29-Jun-17";
}

@end