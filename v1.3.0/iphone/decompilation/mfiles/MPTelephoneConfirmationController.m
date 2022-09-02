@implementation MPTelephoneConfirmationController

-(void)dealloc {
    r0 = [self alertView];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    r0 = [self alertView];
    r0 = [r0 retain];
    [r0 dismissWithClickedButtonIndex:0x0 animated:0x1];
    [r0 release];
    [[&var_30 super] dealloc];
    return;
}

-(void)show {
    r0 = [self alertView];
    r0 = [r0 retain];
    [r0 show];
    [r0 release];
    return;
}

-(void *)initWithURL:(void *)arg2 clickHandler:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r20 = self;
    r19 = [arg2 retain];
    r21 = [arg3 retain];
    if (([r19 mp_hasTelephoneScheme] & 0x1) != 0x0 || ([r19 mp_hasTelephonePromptScheme] & 0x1) != 0x0) goto loc_1004afd30;

loc_1004afea0:
    r23 = [[r19 absoluteString] retain];
    r25 = [[NSString stringWithFormat:@"Processing URL as a telephone URL when %@ doesn't follow the tel:// or telprompt:// schemes"] retain];
    r24 = [[MPLogEvent eventWithMessage:r25 level:0x1e] retain];
    [MPLogging logEvent:r24 source:0x0 fromClass:[r20 class]];
    [r24 release];
    r0 = r25;
    goto loc_1004b004c;

loc_1004b004c:
    [r0 release];
    [r23 release];
    r22 = 0x0;
    goto loc_1004b005c;

loc_1004b005c:
    [r21 release];
    [r19 release];
    [r20 release];
    r0 = r22;
    return r0;

loc_1004afd30:
    r0 = [[&var_50 super] init];
    r20 = r0;
    if (r0 == 0x0) goto loc_1004aff78;

loc_1004afd54:
    r0 = [r19 host];
    r29 = r29;
    r0 = [r0 retain];
    r22 = r0;
    if (r0 != 0x0) goto loc_1004afdb0;

loc_1004afd74:
    r0 = [r19 resourceSpecifier];
    r29 = r29;
    r23 = [r0 retain];
    [r22 release];
    r0 = [r23 length];
    r22 = r23;
    if (r0 == 0x0) goto loc_1004aff8c;

loc_1004afdb0:
    r0 = objc_alloc();
    r0 = [r0 initWithTitle:@"Are you sure you want to call?" message:r22 delegate:r20 cancelButtonTitle:@"Cancel" otherButtonTitles:@"Call"];
    r8 = *(r20 + 0x8);
    *(r20 + 0x8) = r0;
    [r8 release];
    [r20 setClickHandler:r21];
    if ([r19 mp_hasTelephonePromptScheme] != 0x0) {
            r24 = [[NSString stringWithFormat:@"tel://%@"] retain];
            r23 = [[NSURL URLWithString:r24] retain];
            [r20 setTelephoneURL:r23];
            [r23 release];
            [r24 release];
    }
    else {
            [r20 setTelephoneURL:r19];
    }
    [r22 release];
    goto loc_1004aff78;

loc_1004aff78:
    r0 = [r20 retain];
    r20 = r0;
    r22 = r0;
    goto loc_1004b005c;

loc_1004aff8c:
    r24 = [[r19 absoluteString] retain];
    r26 = [[NSString stringWithFormat:@"Invalid telelphone URL: %@."] retain];
    r25 = [[MPLogEvent eventWithMessage:r26 level:0x1e] retain];
    [MPLogging logEvent:r25 source:0x0 fromClass:[r20 class]];
    [r25 release];
    [r26 release];
    r0 = r24;
    goto loc_1004b004c;
}

-(void)alertView:(void *)arg2 clickedButtonAtIndex:(long long)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = self;
    r0 = [self clickHandler];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            if (r21 == 0x1) {
                    if (CPU_FLAGS & E) {
                            r21 = 0x1;
                    }
            }
            r20 = [[r19 clickHandler] retain];
            (*(r20 + 0x10))(r20, [[r19 telephoneURL] retain], r21);
            [r19 release];
            [r20 release];
    }
    return;
}

-(void *)alertView {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setAlertView:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void)setTelephoneURL:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)telephoneURL {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)clickHandler {
    r0 = objc_getProperty(self, _cmd, 0x18, 0x0);
    return r0;
}

-(void)setClickHandler:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end