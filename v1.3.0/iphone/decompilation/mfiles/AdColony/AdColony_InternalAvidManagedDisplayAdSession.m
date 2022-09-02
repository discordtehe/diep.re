@implementation AdColony_InternalAvidManagedDisplayAdSession

+(void *)sessionType {
    objc_retainAutorelease(@"managedDisplay");
    return @"managedDisplay";
}

+(void *)mediaType {
    objc_retainAutorelease(@"display");
    return @"display";
}

@end