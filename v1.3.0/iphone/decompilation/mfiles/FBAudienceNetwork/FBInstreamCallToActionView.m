@implementation FBInstreamCallToActionView

-(void *)initWithText:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            [r20 setText:r19];
            [r20 sizeToFitText];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

@end