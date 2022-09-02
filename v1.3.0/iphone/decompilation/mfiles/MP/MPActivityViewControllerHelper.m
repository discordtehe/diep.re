@implementation MPActivityViewControllerHelper

-(void *)initWithDelegate:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            objc_storeWeak(r20 + 0x8, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void *)initializeActivityViewControllerWithSubject:(void *)arg2 body:(void *)arg3 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (NSClassFromString(@"UIActivityViewController") != 0x0 && NSClassFromString(@"UIActivityItemProvider") != 0x0) {
            r22 = [objc_alloc() initWithSubject:r19 body:r20];
            r23 = objc_alloc();
            r0 = [NSArray arrayWithObjects:&var_40 count:0x1];
            r24 = [r0 retain];
            r23 = [r23 initWithActivityItems:r24 applicationActivities:0x0];
            [r24 release];
            [r23 setCompletionWithItemsHandler:&var_68];
            [r22 release];
    }
    else {
            r23 = 0x0;
    }
    var_38 = **___stack_chk_guard;
    [r20 release];
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = [r23 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)delegate {
    r0 = objc_loadWeakRetained(self + 0x8);
    r0 = [r0 autorelease];
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeWeak(self + 0x8, arg2);
    return;
}

-(void).cxx_destruct {
    objc_destroyWeak(self + 0x8);
    return;
}

-(bool)presentActivityViewControllerWithSubject:(void *)arg2 body:(void *)arg3 {
    var_50 = r28;
    stack[-88] = r27;
    r31 = r31 + 0xffffffffffffffa0;
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (NSClassFromString(@"UIActivityViewController") != 0x0) {
            r0 = [r22 initializeActivityViewControllerWithSubject:r19 body:r20];
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (r0 != 0x0) {
                    r0 = [r22 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r27 = [r0 respondsToSelector:r2];
                    [r0 release];
                    if (r27 != 0x0) {
                            r0 = [r22 delegate];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 activityViewControllerWillPresent];
                            [r0 release];
                    }
                    r0 = [UIDevice currentDevice];
                    r29 = r29;
                    r0 = [r0 retain];
                    r26 = [r0 userInterfaceIdiom];
                    [r0 release];
                    if (r26 == 0x1 && [r21 respondsToSelector:r2] != 0x0) {
                            r0 = [r22 delegate];
                            r0 = [r0 retain];
                            r24 = r0;
                            r0 = [r0 viewControllerForPresentingActivityViewController];
                            r0 = [r0 retain];
                            r26 = r0;
                            r27 = [[r0 view] retain];
                            r0 = [r21 popoverPresentationController];
                            r29 = r29;
                            r0 = [r0 retain];
                            [r0 setSourceView:r27];
                            [r0 release];
                            [r27 release];
                            [r26 release];
                            [r24 release];
                    }
                    r0 = [r22 delegate];
                    r0 = [r0 retain];
                    r23 = [[r0 viewControllerForPresentingActivityViewController] retain];
                    [r0 release];
                    r22 = 0x1;
                    [r23 presentViewController:r21 animated:0x1 completion:0x0];
                    [r23 release];
            }
            else {
                    r22 = 0x0;
            }
            [r21 release];
    }
    else {
            r22 = 0x0;
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;
}

-(bool)presentActivityViewControllerWithTweetShareURL:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r21 = [arg2 retain];
    r19 = [objc_alloc() initWithShareURL:r21];
    [r21 release];
    if (r19 != 0x0) {
            r22 = [[r19 screenName] retain];
            r23 = [[r19 tweetURL] retain];
            r21 = [[NSString stringWithFormat:@"Check out @%@'s Tweet: %@"] retain];
            [r23 release];
            [r22 release];
            r20 = [r20 presentActivityViewControllerWithSubject:r21 body:r21];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

@end