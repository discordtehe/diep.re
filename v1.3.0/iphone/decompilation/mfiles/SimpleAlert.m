@implementation SimpleAlert

+(void *)sharedSimpleAlert {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011da808;
    if (r0 == 0x0) {
            r0 = [SimpleAlert alloc];
            r0 = [r0 init];
            *0x1011da808 = r0;
    }
    return r0;
}

+(void)releaseSharedSimpleAlert {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*0x1011da808 != 0x0) {
            [*0x1011da808 release];
            *0x1011da808 = 0x0;
    }
    return;
}

+(bool)isSimpleAlertInitialized {
    r0 = self;
    if (*qword_1011da808 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void *)createIOS7View:(void *)arg2 {
    r19 = [[UIView alloc] initWithFrame:r2];
    r0 = [UILabel alloc];
    r0 = [r0 initWithFrame:r2];
    [r0 setText:arg2];
    [r0 setTextAlignment:0x1];
    [r0 setBackgroundColor:[UIColor colorWithWhite:0x1 alpha:r3]];
    [r19 addSubview:r0];
    r0 = [UIActivityIndicatorView alloc];
    r0 = [r0 initWithActivityIndicatorStyle:0x2];
    [r0 setCenter:0x2];
    [r0 startAnimating];
    [r19 addSubview:r0];
    r0 = r19;
    return r0;
}

-(void)dismiss {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x8) != 0x0) {
            r19 = r0;
            r8 = sub_1005ba6a0(sub_1005cb5ec(), @"7.0");
            r0 = *(r19 + 0x8);
            if ((r8 & 0x1) != 0x0) {
                    [r0 dismissWithClickedButtonIndex:0x0 animated:0x1];
            }
            else {
                    [r0 close:0x100e88c28];
                    [*(r19 + 0x8) release];
            }
            *(r19 + 0x8) = 0x0;
    }
    return;
}

-(void)showWithMessage:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    if (*(r0 + 0x8) == 0x0) {
            r20 = r2;
            r19 = r0;
            if (r2 == 0x0 || [r20 isEqualToString:r2] != 0x0) {
                    r20 = @"[Empty Message]";
            }
            if ((sub_1005ba6a0(sub_1005cb5ec(), @"7.0") & 0x1) != 0x0) {
                    r0 = [UIAlertView alloc];
                    r0 = [r0 initWithTitle:r20 message:0x0 delegate:r19 cancelButtonTitle:0x0 otherButtonTitles:0x0];
                    r0 = [r0 autorelease];
                    *(r19 + 0x8) = r0;
                    [r0 show];
                    r0 = [UIActivityIndicatorView alloc];
                    r0 = [r0 initWithActivityIndicatorStyle:0x0];
                    r20 = r0;
                    [r0 setCenter:0x0];
                    [r20 startAnimating];
                    [*(r19 + 0x8) addSubview:r20];
                    r8 = &@selector(release);
            }
            else {
                    r21 = sub_100434fb4();
                    *(r19 + 0x8) = [[CustomIOS7AlertView alloc] initWithParentView:r21];
                    [r21 setUserInteractionEnabled:0x0];
                    [*(r19 + 0x8) setContainerView:[r19 createIOS7View:r20]];
                    [*(r19 + 0x8) setButtonTitles:0x0];
                    [*(r19 + 0x8) setUseMotionEffects:0x1];
                    r20 = *(r19 + 0x8);
                    r8 = &@selector(show);
            }
            objc_msgSend(r20, *r8);
    }
    return;
}

-(bool)isShowing {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            if ([r0 respondsToSelector:r2] != 0x0) {
                    r20 = @selector(visible);
                    r0 = *(r19 + 0x8);
                    r0 = objc_msgSend(r0, r20);
            }
            else {
                    r0 = 0x1;
            }
    }
    return r0;
}

@end