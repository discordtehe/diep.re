@implementation GADWKScriptMessageHandler

-(void *)initWithWebViewController:(void *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r0 = [[&var_20 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            objc_storeWeak((int64_t *)&r20->_webViewController, r19);
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    objc_destroyWeak((int64_t *)&self->_webViewController);
    return;
}

-(void)userContentController:(void *)arg2 didReceiveScriptMessage:(void *)arg3 {
    r31 = r31 - 0x60;
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
    r19 = [arg3 retain];
    r20 = objc_loadWeakRetained((int64_t *)&self->_webViewController);
    if (r20 == 0x0) goto loc_1008aacd8;

loc_1008aaa84:
    r21 = [[r20 delegate] retain];
    r0 = [r19 name];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (([r0 isEqual:r2] & 0x1) == 0x0) goto loc_1008aab34;

loc_1008aaadc:
    r0 = [r19 frameInfo];
    r29 = r29;
    r0 = [r0 retain];
    r26 = [r0 isMainFrame];
    [r0 release];
    [r24 release];
    if ((r26 & 0x1) != 0x0) goto loc_1008aab3c;

loc_1008aab1c:
    [r21 webViewControllerDidFinishLoad:r20];
    goto loc_1008aacd0;

loc_1008aacd0:
    [r21 release];
    goto loc_1008aacd8;

loc_1008aacd8:
    [r20 release];
    [r19 release];
    return;

loc_1008aab3c:
    r23 = @selector(isEqual:);
    r0 = [r19 name];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r23);
    [r0 release];
    if (r23 == 0x0) goto loc_1008aacd0;

loc_1008aab74:
    r0 = [r19 body];
    r29 = r29;
    r23 = [r0 retain];
    [NSString class];
    r24 = [r23 isKindOfClass:r2];
    [r23 release];
    if ((r24 & 0x1) == 0x0) goto loc_1008aac9c;

loc_1008aabcc:
    r24 = [[r19 body] retain];
    r0 = [NSURL URLWithString:r2];
    r29 = r29;
    r22 = [r0 retain];
    [r24 release];
    if (r22 == 0x0) goto loc_1008aacd0;

loc_1008aac18:
    r23 = [[NSMutableURLRequest requestWithURL:r22] retain];
    r24 = [[r20 mainDocumentURL] retain];
    [r23 setMainDocumentURL:r24];
    [r24 release];
    [r21 webViewController:r20 shouldStartLoadWithRequest:r23 navigationType:0x5];
    [r23 release];
    goto loc_1008aacc8;

loc_1008aacc8:
    [r22 release];
    goto loc_1008aacd0;

loc_1008aac9c:
    r22 = [[r19 body] retain];
    sub_1007ce06c(0x0, @"GMSGs must be of type NSString. Invalid GMSG : %@");
    goto loc_1008aacc8;

loc_1008aab34:
    [r24 release];
    goto loc_1008aab3c;
}

@end