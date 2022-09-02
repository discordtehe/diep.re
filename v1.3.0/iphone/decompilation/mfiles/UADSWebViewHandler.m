@implementation UADSWebViewHandler

-(bool)create:(void *)arg2 {
    return 0x1;
}

-(bool)destroy {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [USRVWebViewApp getCurrentApp];
    r29 = &saved_fp;
    r20 = [r0 retain];
    if (r20 == 0x0) goto loc_1000c0718;

loc_1000c0658:
    r0 = [USRVWebViewApp getCurrentApp];
    r0 = [r0 retain];
    r22 = r0;
    r0 = [r0 webView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r22 release];
    [r20 release];
    if (r0 == 0x0) goto .l1;

loc_1000c06a4:
    r0 = @class(USRVWebViewApp);
    r0 = [r0 getCurrentApp];
    r0 = [r0 retain];
    r20 = r0;
    r0 = [r0 webView];
    r0 = [r0 retain];
    [r0 removeFromSuperview];
    [r0 release];
    [r20 release];
    r0 = @class(USRVWebViewApp);
    r0 = [r0 getCurrentApp];
    r0 = [r0 retain];
    [r0 placeWebViewToBackgroundView];
    r0 = r0;
    goto loc_1000c071c;

loc_1000c071c:
    [r0 release];
    return 0x1;

.l1:
    return 0x1;

loc_1000c0718:
    r0 = r20;
    goto loc_1000c071c;
}

-(void *)getView {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [USRVWebViewApp getCurrentApp];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [USRVWebViewApp getCurrentApp];
            r0 = [r0 retain];
            r19 = [[r0 webView] retain];
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(void)viewDidLoad:(void *)arg2 {
    return;
}

-(void)viewDidAppear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewWillAppear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewWillDisappear:(void *)arg2 animated:(bool)arg3 {
    return;
}

-(void)viewDidDisappear:(void *)arg2 animated:(bool)arg3 {
    [self destroy];
    return;
}

@end