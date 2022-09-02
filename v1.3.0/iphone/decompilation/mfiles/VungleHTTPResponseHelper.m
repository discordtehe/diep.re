@implementation VungleHTTPResponseHelper

+(void *)retryableSessionErrorCodes {
    r20 = objc_alloc();
    r19 = [@(0xfffffffffffffc14) retain];
    r21 = [@(0xfffffffffffffc0f) retain];
    r23 = [@(0xfffffffffffffc05) retain];
    r24 = [@(0xfffffffffffffc13) retain];
    r25 = [@(0xfffffffffffffc17) retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInteger:0xfffffffffffffc0d];
    r0 = [r0 retain];
    r20 = [r20 initWithObjects:r19];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)notRetryableSessionErrorCodes {
    r19 = objc_alloc();
    r21 = [@(0xfffffffffffffc15) retain];
    r22 = [@(0xfffffffffffffc19) retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInteger:0xfffffffffffffc18];
    r0 = [r0 retain];
    r19 = [r19 initWithObjects:r21];
    [r0 release];
    [r22 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

+(void *)retryableHTTPErrorCodes {
    r20 = objc_alloc();
    r19 = [@(0x198) retain];
    r21 = [@(0x1c1) retain];
    r23 = [@(0x1f4) retain];
    r24 = [@(0x1f6) retain];
    r25 = [@(0x1f7) retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInt:0x1f8];
    r0 = [r0 retain];
    r20 = [r20 initWithObjects:r19];
    [r0 release];
    [r25 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

+(void *)notRetryableHTTPErrorCodes {
    r20 = objc_alloc();
    r19 = [@(0x190) retain];
    r21 = [@(0x191) retain];
    r23 = [@(0x193) retain];
    r24 = [@(0x194) retain];
    r0 = @class(NSNumber);
    r0 = [r0 numberWithInt:0x195];
    r0 = [r0 retain];
    r20 = [r20 initWithObjects:r19];
    [r0 release];
    [r24 release];
    [r23 release];
    [r21 release];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end