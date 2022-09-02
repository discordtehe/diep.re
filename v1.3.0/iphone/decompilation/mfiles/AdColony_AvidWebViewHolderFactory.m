@implementation AdColony_AvidWebViewHolderFactory

+(void *)holderForWebView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_100256a90;

loc_1002569f0:
    if ([UIWebView class] == 0x0) goto loc_100256a3c;

loc_100256a0c:
    [UIWebView class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100256a3c;

loc_100256a30:
    r0 = @class(AdColony_AvidUIWebViewHolder);
    goto loc_100256a7c;

loc_100256a7c:
    r20 = [r0 new];
    goto loc_100256a9c;

loc_100256a9c:
    [r20 setWebView:r19];
    goto loc_100256ab0;

loc_100256ab0:
    [r19 release];
    r0 = [r20 autorelease];
    return r0;

loc_100256a3c:
    if ([WKWebView class] == 0x0) goto loc_100256a98;

loc_100256a50:
    [WKWebView class];
    if ([r19 isKindOfClass:r2] == 0x0) goto loc_100256a98;

loc_100256a74:
    r0 = @class(AdColony_AvidWKWebViewHolder);
    goto loc_100256a7c;

loc_100256a98:
    r20 = 0x0;
    goto loc_100256a9c;

loc_100256a90:
    r20 = 0x0;
    goto loc_100256ab0;
}

@end