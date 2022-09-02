@implementation GADPlaceholderJSContext

-(void *)initWithEventContext:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [arg2 retain];
    r0 = [GADSettings sharedInstance];
    r0 = [r0 retain];
    r21 = [[r0 stringForKey:*0x100e9b3a8] retain];
    [r0 release];
    if ([r21 isEqual:r2] != 0x0) {
            r0 = @class(GADJSCoreJSContext);
    }
    else {
            r0 = @class(GADWebViewJSContext);
    }
    r22 = [[[r0 class] alloc] initWithEventContext:r20];
    [r20 release];
    [r21 release];
    [r19 release];
    r0 = r22;
    return r0;
}

@end