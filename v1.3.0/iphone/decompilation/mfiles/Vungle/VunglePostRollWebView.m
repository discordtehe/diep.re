@implementation VunglePostRollWebView

-(void)load {
    r20 = [[self facade] retain];
    r22 = [[self URL] retain];
    r0 = [self URL];
    r0 = [r0 retain];
    r21 = [[r0 URLByDeletingLastPathComponent] retain];
    [r20 loadFileURL:r22 baseURL:r21];
    [r21 release];
    [r0 release];
    [r22 release];
    [r20 release];
    return;
}

-(void)dealloc {
    [self setURL:0x0];
    [self setFacade:0x0];
    [self setWebView:0x0];
    [self setAdViewController:0x0];
    [[&var_20 super] dealloc];
    return;
}

-(void)removeScriptHandlers {
    var_40 = r26;
    stack[-72] = r25;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self webView];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r19 webView];
            r0 = [r0 retain];
            r21 = r0;
            r0 = [r0 configuration];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 userContentController];
            r0 = [r0 retain];
            [r0 removeAllUserScripts];
            [r0 release];
            [r23 release];
            [r21 release];
            r0 = [r19 webView];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 configuration];
            r0 = [r0 retain];
            r20 = r0;
            r0 = [r0 userContentController];
            r0 = [r0 retain];
            [r0 removeScriptMessageHandlerForName:@"VungleMessageHandler"];
            [r0 release];
            [r20 release];
            [r19 release];
    }
    return;
}

-(void *)initWithURL:(void *)arg2 {
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
    r21 = arg2;
    r19 = [arg2 retain];
    r0 = [UIScreen mainScreen];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r24 = r0;
    [r0 bounds];
    r0 = [[&var_50 super] initWithFrame:r2];
    r20 = r0;
    [r24 release];
    if (r20 != 0x0) {
            objc_storeStrong((int64_t *)&r20->_URL, r21);
            r21 = objc_alloc();
            [r20 bounds];
            r0 = objc_msgSend(r21, r23);
            r26 = sign_extend_64(*(int32_t *)ivar_offset(_facade));
            r8 = *(r20 + r26);
            *(r20 + r26) = r0;
            [r8 release];
            r0 = *(r20 + r26);
            r0 = [r0 contentView];
            r0 = [r0 retain];
            [r0 setAutoresizingMask:0x12];
            [r0 release];
            objc_storeWeak((int64_t *)&r20->_webView, [[*(r20 + r26) contentView] retain]);
            [r23 release];
            r0 = objc_loadWeakRetained((int64_t *)&r20->_webView);
            r24 = r0;
            r0 = [r0 configuration];
            r0 = [r0 retain];
            r23 = [[r0 userContentController] retain];
            [r0 release];
            [r24 release];
            [r23 addScriptMessageHandler:r20 name:@"VungleMessageHandler"];
            [r23 addUserScript:[objc_alloc() initWithSource:@"function actionClicked(param){window.webkit.messageHandlers.VungleMessageHandler.postMessage('button:' + param);}" injectionTime:0x0 forMainFrameOnly:0x1]];
            [r20 setAutoresizingMask:0x12];
            [[*(r20 + r26) contentView] retain];
            [r20 addSubview:r2];
            [r21 release];
            [r24 release];
            [r23 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)javascriptMessageHandler:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 hasPrefix:@"button:"] != 0x0) {
            r0 = [r19 componentsSeparatedByString:@":"];
            r0 = [r0 retain];
            r21 = [[r0 lastObject] retain];
            [r0 release];
            if (r21 != 0x0) {
                    r20 = [r20 javascriptToObjectiveCMapping:r21];
                    [r21 release];
            }
            else {
                    r20 = 0x0;
            }
    }
    else {
            r20 = 0x0;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)javascriptToObjectiveCMapping:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100637ec0;

loc_100637d44:
    if ([r19 isEqual:r2] == 0x0) goto loc_100637e38;

loc_100637d64:
    r0 = [r20 adViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100637e38;

loc_100637d8c:
    r0 = [r20 adViewController];
    r0 = [r0 retain];
    r22 = 0x1;
    [r0 vunglePostRollAction:0x1];
    [r0 release];
    r0 = [r20 adViewController];
    r0 = [r0 retain];
    [r0 addClickSequenceToReport:r19];
    [r0 release];
    r0 = [r20 adViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100637ec4;

loc_100637e10:
    r0 = [r20 adViewController];
    r0 = [r0 retain];
    r20 = r0;
    [r0 updateReportAd];
    goto loc_100637eb0;

loc_100637eb0:
    [r20 release];
    goto loc_100637eb8;

loc_100637eb8:
    r22 = 0x1;
    goto loc_100637ec4;

loc_100637ec4:
    [r19 release];
    r0 = r22;
    return r0;

loc_100637e38:
    if ([r19 isEqual:r2] == 0x0) goto loc_100637ec0;

loc_100637e50:
    [r20 removeScriptHandlers];
    r0 = [r20 adViewController];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100637eb8;

loc_100637e88:
    r0 = [r20 adViewController];
    r0 = [r0 retain];
    r20 = r0;
    [r0 vunglePostRollAction:0x0];
    goto loc_100637eb0;

loc_100637ec0:
    r22 = 0x0;
    goto loc_100637ec4;
}

-(void)userContentController:(void *)arg2 didReceiveScriptMessage:(void *)arg3 {
    r20 = [[arg3 body] retain];
    [self javascriptMessageHandler:r20];
    [r20 release];
    return;
}

-(void *)adViewController {
    r0 = self->_adViewController;
    return r0;
}

-(void)setAdViewController:(void *)arg2 {
    self->_adViewController = arg2;
    return;
}

-(void)setFacade:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_facade, arg2);
    return;
}

-(void *)facade {
    r0 = self->_facade;
    return r0;
}

-(void *)webView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    r0 = [r0 autorelease];
    return r0;
}

-(void *)URL {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_URL)), 0x1);
    return r0;
}

-(void)setWebView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_webView, arg2);
    return;
}

-(void)setURL:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_URL, 0x0);
    objc_destroyWeak((int64_t *)&self->_webView);
    objc_storeStrong((int64_t *)&self->_facade, 0x0);
    return;
}

@end