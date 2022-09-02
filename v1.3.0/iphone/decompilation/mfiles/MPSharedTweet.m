@implementation MPSharedTweet

-(void *)screenName {
    r0 = *(self + 0x8);
    return r0;
}

-(void *)initWithShareURL:(void *)arg2 {
    r31 = r31 - 0x80;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r0 == 0x0) goto loc_10050392c;

loc_100503770:
    r0 = [r19 mp_queryAsDictionary];
    r0 = [r0 retain];
    r21 = r0;
    r22 = @selector(objectForKey:);
    r23 = [objc_msgSend(r0, r22) retain];
    r0 = objc_msgSend(r21, r22);
    r29 = r29;
    r22 = [r0 retain];
    if (r23 != 0x0) {
            asm { ccmp       x0, #0x0, #0x4, ne };
    }
    if (CPU_FLAGS & NE) goto loc_1005038c0;

loc_1005037dc:
    r25 = [[r19 absoluteString] retain];
    r27 = [[NSString stringWithFormat:@"MPActivityViewControllerHelper+TweetShare -                        unable to initWithShareURL for share URL: %@.                        \x13screen_name or tweet_id missing or of the wrong                        format"] retain];
    r26 = [[MPLogEvent eventWithMessage:r27 level:0x14] retain];
    [MPLogging logEvent:r26 source:0x0 fromClass:[r20 class]];
    [r26 release];
    [r27 release];
    [r25 release];
    [r22 release];
    [r23 release];
    [r21 release];
    r21 = 0x0;
    goto loc_100503938;

loc_100503938:
    [r19 release];
    [r20 release];
    r0 = r21;
    return r0;

loc_1005038c0:
    r24 = *(r20 + 0x8);
    *(r20 + 0x8) = r23;
    r23 = [r23 retain];
    [r24 release];
    r0 = [NSString stringWithFormat:@"https://twitter.com/%@/status/%@"];
    r0 = [r0 retain];
    r8 = *(r20 + 0x10);
    *(r20 + 0x10) = r0;
    [r8 release];
    [r23 release];
    [r22 release];
    [r21 release];
    goto loc_10050392c;

loc_10050392c:
    r21 = [r20 retain];
    goto loc_100503938;
}

-(void *)tweetURL {
    r0 = *(self + 0x10);
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end