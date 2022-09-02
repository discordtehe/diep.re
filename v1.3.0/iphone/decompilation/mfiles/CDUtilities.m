@implementation CDUtilities

+(void *)fullPathFromRelativePath:(void *)arg2 {
    r0 = [CCFileUtils sharedFileUtils];
    r0 = [r0 fullPathForFilenameIgnoringResolutions:arg2];
    return r0;
}

@end