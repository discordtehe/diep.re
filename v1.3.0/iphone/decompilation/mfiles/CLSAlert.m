@implementation CLSAlert

+(void *)alertWithTitle:(void *)arg2 message:(void *)arg3 delegate:(void *)arg4 cancelButtonTitle:(void *)arg5 otherButtonTitle:(void *)arg6 {
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [arg4 retain];
    r21 = [arg5 retain];
    r20 = [arg6 retain];
    r24 = [[NSClassFromString(@"UIAlertView") alloc] initWithTitle:r19 message:r23 delegate:r22 cancelButtonTitle:r21 otherButtonTitles:r20];
    [r20 release];
    [r21 release];
    [r22 release];
    [r23 release];
    [r19 release];
    r0 = [r24 autorelease];
    return r0;
}

@end