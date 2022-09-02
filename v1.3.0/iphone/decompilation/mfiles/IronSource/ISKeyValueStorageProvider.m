@implementation ISKeyValueStorageProvider

+(void *)getKeyValueStorageForIdentifier:(void *)arg2 {
    r21 = [arg2 retain];
    r19 = [[ISUserDefaultKeyValueStorage alloc] initWithIdentifier:r21];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

@end