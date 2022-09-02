@implementation GADVideoAnimationConfig

-(void *)init {
    [self release];
    return 0x0;
}

-(void *)initWithDictionary:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = self;
    r23 = [arg2 retain];
    r19 = [[arg2 objectForKeyedSubscript:@"initial_video_box"] retain];
    r20 = [arg2 objectForKeyedSubscript:@"final_video_box"];
    [r23 release];
    r20 = [r20 retain];
    [NSDictionary class];
    if ([r19 isKindOfClass:r2] != 0x0) {
            r23 = @selector(isKindOfClass:);
            r2 = [NSDictionary class];
            if (objc_msgSend(r20, r23) != 0x0) {
                    r0 = [[&var_40 super] init];
                    r21 = r0;
                    if (r21 != 0x0) {
                            sub_100800758();
                            [r21 setInitialFrame:r2];
                            sub_100800758();
                            [r21 setFinalFrame:r2];
                    }
                    r21 = [r21 retain];
                    r22 = r21;
            }
            else {
                    r22 = 0x0;
            }
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    [r21 release];
    r0 = r22;
    return r0;
}

@end