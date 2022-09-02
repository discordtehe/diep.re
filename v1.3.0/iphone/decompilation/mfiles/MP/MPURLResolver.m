@implementation MPURLResolver

-(void *)initWithURL:(void *)arg2 completion:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r0 = [[&var_30 super] init];
    r21 = r0;
    if (r0 != 0x0) {
            r0 = [r19 copy];
            r8 = *(r21 + 0x8);
            *(r21 + 0x8) = r0;
            [r8 release];
            r0 = [r20 copy];
            r8 = *(r21 + 0x20);
            *(r21 + 0x20) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

+(void *)resolverWithURL:(void *)arg2 completion:(void *)arg3 {
    r20 = [arg2 retain];
    r19 = [arg3 retain];
    r21 = [objc_alloc() initWithURL:r20 completion:r19];
    [r19 release];
    [r20 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)httpTaskWithRequest:(void *)arg2 {
    [arg2 retain];
    objc_initWeak(&saved_fp - 0x48, self);
    objc_copyWeak(&var_70 + 0x20, &saved_fp - 0x48);
    objc_copyWeak(&var_98 + 0x20, &saved_fp - 0x48);
    objc_copyWeak(&var_C0 + 0x20, &saved_fp - 0x48);
    [[MPHTTPNetworkSession startTaskWithHttpRequest:r19 responseHandler:&var_70 errorHandler:&var_98 shouldRedirectWithNewRequest:&var_C0] retain];
    objc_destroyWeak(&var_C0 + 0x20);
    objc_destroyWeak(&var_98 + 0x20);
    objc_destroyWeak(&var_70 + 0x20);
    objc_destroyWeak(&saved_fp - 0x48);
    [r19 release];
    r0 = [r23 autorelease];
    return r0;
}

-(void)start {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = [self task];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    r20 = [[r19 originalURL] retain];
    [r19 setCurrentURL:r20];
    [r20 release];
    r23 = [[r19 originalURL] retain];
    r0 = [r19 actionInfoFromURL:r23 error:&var_38];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r20 = [var_38 retain];
    [r23 release];
    if (r22 == 0x0) goto loc_100500b54;

loc_100500b34:
    [r19 safeInvokeAndNilCompletionBlock:r22 error:0x0];
    goto loc_100500b4c;

loc_100500b4c:
    r0 = r22;
    goto loc_100500bfc;

loc_100500bfc:
    [r0 release];
    goto loc_100500c00;

loc_100500c00:
    [r20 release];
    return;

loc_100500b54:
    if ([r19 shouldOpenWithInAppWebBrowser] == 0x0) goto loc_100500c20;

loc_100500b68:
    r21 = [[r19 originalURL] retain];
    r24 = [[r19 currentURL] retain];
    r23 = [[MPURLActionInfo infoWithURL:r21 webViewBaseURL:r24] retain];
    [r22 release];
    [r24 release];
    [r21 release];
    [r19 safeInvokeAndNilCompletionBlock:r23 error:0x0];
    r0 = r23;
    goto loc_100500bfc;

loc_100500c20:
    if (r20 == 0x0) goto loc_100500c40;

loc_100500c24:
    [r19 safeInvokeAndNilCompletionBlock:0x0 error:r20];
    goto loc_100500c00;

loc_100500c40:
    r22 = objc_alloc();
    r21 = [[r19 originalURL] retain];
    r22 = [r22 initWithURL:r21];
    [r21 release];
    r21 = [[r19 httpTaskWithRequest:r22] retain];
    [r19 setTask:r21];
    [r21 release];
    goto loc_100500b4c;
}

-(void)cancel {
    r0 = [self task];
    r0 = [r0 retain];
    [r0 cancel];
    [r0 release];
    [self setTask:0x0];
    [self setCompletion:0x0];
    return;
}

-(void)safeInvokeAndNilCompletionBlock:(void *)arg2 error:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    [r21 retain];
    var_28 = r19;
    [r19 retain];
    dispatch_async(*__dispatch_main_q, &var_58);
    [var_28 release];
    [r21 release];
    [r19 release];
    [r20 release];
    return;
}

-(bool)URLShouldOpenInApplication:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if ([r20 URLIsHTTPOrHTTPS:r19] != 0x0) {
            r20 = [r20 URLPointsToAMap:r19];
    }
    else {
            r20 = 0x1;
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)URLIsHTTPOrHTTPS:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 scheme];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 isEqualToString:r2] & 0x1) != 0x0) {
            r21 = 0x1;
    }
    else {
            r22 = @selector(isEqualToString:);
            r0 = [r19 scheme];
            r0 = [r0 retain];
            r21 = objc_msgSend(r0, r22);
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)URLHasDeeplinkPlusScheme:(void *)arg2 {
    r0 = [arg2 scheme];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 lowercaseString];
    r0 = [r0 retain];
    r21 = [r0 isEqualToString:r2];
    [r0 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(bool)URLPointsToAMap:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 host];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if (([r0 hasSuffix:r2] & 0x1) != 0x0) {
            r21 = 0x1;
    }
    else {
            r22 = @selector(hasSuffix:);
            r0 = [r19 host];
            r0 = [r0 retain];
            r21 = objc_msgSend(r0, r22);
            [r0 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)actionInfoFromURL:(void *)arg2 error:(void * *)arg3 {
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
    r20 = arg3;
    r21 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if (r0 == 0x0) goto loc_100501428;

loc_1005013b0:
    r0 = [r21 appStoreProductParametersForURL:r19];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if (r0 == 0x0) goto loc_1005014b0;

loc_1005013d4:
    r23 = [[r21 originalURL] retain];
    r0 = [MPURLActionInfo infoWithURL:r23 iTunesStoreParameters:r20 iTunesStoreFallbackURL:r19];
    goto loc_100501418;

loc_100501418:
    r21 = [r0 retain];
    r0 = r23;
    goto loc_100501630;

loc_100501630:
    [r0 release];
    goto loc_100501634;

loc_100501634:
    r21 = [r21 retain];
    [r20 release];
    r22 = r21;
    goto loc_10050164c;

loc_10050164c:
    [r21 release];
    goto loc_100501654;

loc_100501654:
    var_48 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_48) {
            r0 = [r22 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1005014b0:
    if ([r21 URLHasDeeplinkPlusScheme:r19] == 0x0) goto loc_100501530;

loc_1005014c8:
    r22 = [objc_alloc() initWithURL:r19];
    r0 = [r21 originalURL];
    r29 = r29;
    r23 = [r0 retain];
    if (r22 != 0x0) {
            r1 = @selector(infoWithURL:enhancedDeeplinkRequest:);
    }
    else {
            r1 = @selector(infoWithURL:deeplinkURL:);
    }
    r21 = [objc_msgSend(@class(MPURLActionInfo), r1) retain];
    r0 = r23;
    goto loc_100501628;

loc_100501628:
    [r0 release];
    r0 = r22;
    goto loc_100501630;

loc_100501530:
    r0 = [r21 safariURLForURL:r2];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_100501694;

loc_10050155c:
    r24 = [[r21 originalURL] retain];
    r22 = [[r21 safariURLForURL:r2] retain];
    r25 = [[NSURL URLWithString:r22] retain];
    r21 = [[MPURLActionInfo infoWithURL:r24 safariDestinationURL:r25] retain];
    [r25 release];
    [r22 release];
    r0 = r24;
    goto loc_100501630;

loc_100501694:
    if ([r19 mp_isMoPubShareScheme] == 0x0) goto loc_1005016ec;

loc_1005016a8:
    r23 = [[r21 originalURL] retain];
    r0 = [MPURLActionInfo infoWithURL:r23 shareURL:r19];
    goto loc_100501418;

loc_1005016ec:
    if ([r21 URLShouldOpenInApplication:r19] == 0x0) goto loc_100501748;

loc_100501704:
    r23 = [[r21 originalURL] retain];
    r0 = [MPURLActionInfo infoWithURL:r23 deeplinkURL:r19];
    goto loc_100501418;

loc_100501748:
    r0 = [r19 scheme];
    r29 = r29;
    r0 = [r0 retain];
    r23 = [r0 isEqualToString:r2];
    [r0 release];
    if (r23 == 0x0) goto loc_100501828;

loc_100501788:
    r0 = [MPCoreInstanceProvider sharedProvider];
    r29 = r29;
    r0 = [r0 retain];
    r25 = [r0 appTransportSecuritySettings];
    [r0 release];
    if ((r25 & 0x1) != 0x0) goto loc_100501828;

loc_1005017c4:
    r22 = [[r21 originalURL] retain];
    r0 = [r21 currentURL];
    r29 = r29;
    r24 = [r0 retain];
    if ((r25 & 0x4) == 0x0) {
            r0 = [MPURLActionInfo infoWithURL:r22 safariDestinationURL:r24];
    }
    else {
            r0 = [MPURLActionInfo infoWithURL:r22 webViewBaseURL:r24];
    }
    r21 = [r0 retain];
    r0 = r24;
    goto loc_100501628;

loc_100501828:
    r21 = 0x0;
    goto loc_100501634;

loc_100501428:
    if (r20 == 0x0) goto loc_100501528;

loc_10050142c:
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-96] forKeys:&var_58 count:0x1] retain];
    r0 = [NSError errorWithDomain:@"com.mopub.resolver" code:0xffffffffffffffff userInfo:r21];
    r0 = [r0 retain];
    r0 = [r0 autorelease];
    r22 = 0x0;
    *r20 = r0;
    goto loc_10050164c;

loc_100501528:
    r22 = 0x0;
    goto loc_100501654;
}

-(bool)URLIsAppleScheme:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 host];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 hasSuffix:r2];
    [r0 release];
    if (r22 != 0x0) {
            if (*0x1011d84e8 == 0x0) {
                    r22 = [[NSArray arrayWithObjects:&var_58 count:0x4] retain];
                    r0 = [NSSet setWithArray:r22];
                    r29 = r29;
                    r0 = [r0 retain];
                    r8 = *0x1011d84e8;
                    *0x1011d84e8 = r0;
                    [r8 release];
                    [r22 release];
            }
            r0 = [r19 host];
            r0 = [r0 retain];
            r21 = [[r0 componentsSeparatedByString:@"."] retain];
            [r0 release];
            r22 = [[r21 objectAtIndexedSubscript:0x0] retain];
            r20 = [*0x1011d84e8 containsObject:r2];
            [r22 release];
            [r21 release];
    }
    else {
            r20 = 0x0;
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard == var_38) {
            r0 = r20;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void *)safariURLForURL:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    r0 = [r0 scheme];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_1005021f4;

loc_100502170:
    r21 = @selector(isEqualToString:);
    r0 = [r19 host];
    r29 = r29;
    r0 = [r0 retain];
    r21 = objc_msgSend(r0, r21);
    [r0 release];
    [r20 release];
    if (r21 == 0x0) goto loc_100502204;

loc_1005021b4:
    r0 = [r19 mp_queryAsDictionary];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 objectForKey:r2] retain];
    goto loc_1005021f8;

loc_1005021f8:
    [r20 release];
    goto loc_100502208;

loc_100502208:
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_100502204:
    r21 = 0x0;
    goto loc_100502208;

loc_1005021f4:
    r21 = 0x0;
    goto loc_1005021f8;
}

-(unsigned long long)stringEncodingFromContentType:(void *)arg2 {
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
    r22 = self;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 length] == 0x0) goto loc_10050233c;

loc_100502260:
    r21 = @selector(length);
    r20 = [[NSRegularExpression regularExpressionWithPattern:@"(?<=charset=)[^;]*" options:0x0 error:0x0] retain];
    objc_msgSend(r19, r21);
    r0 = [r20 firstMatchInString:r19 options:0x0 range:0x0];
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if (r0 == 0x0 || [r21 range] == 0x7fffffffffffffff) goto loc_1005023d4;

loc_1005022ec:
    r0 = [r19 substringWithRange:[r21 range]];
    r0 = [r0 retain];
    r23 = r0;
    r0 = CFStringConvertIANACharSetNameToEncoding(r0);
    if (r0 == -0x1) goto loc_10050240c;

loc_100502328:
    r22 = CFStringConvertEncodingToNSStringEncoding(r0);
    [r23 release];
    goto loc_1005023d8;

loc_1005023d8:
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_10050240c:
    [r23 release];
    goto loc_1005023d4;

loc_1005023d4:
    r22 = 0x4;
    goto loc_1005023d8;

loc_10050233c:
    r20 = [[NSString stringWithFormat:r2] retain];
    r21 = [[MPLogEvent eventWithMessage:r20 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[r22 class]];
    goto loc_1005023d4;
}

-(void *)originalURL {
    r0 = *(self + 0x8);
    return r0;
}

-(bool)shouldOpenWithInAppWebBrowser {
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
    r19 = self;
    r0 = [self currentURL];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_10050262c;

loc_10050245c:
    r0 = [r19 currentURL];
    r29 = r29;
    r23 = [r0 retain];
    if (([r19 URLIsHTTPOrHTTPS:r2] & 0x1) == 0x0) goto loc_100502624;

loc_100502490:
    r0 = [r19 currentURL];
    r29 = r29;
    r24 = [r0 retain];
    r25 = [r19 URLIsAppleScheme:r2];
    [r24 release];
    [r23 release];
    if ((r25 & 0x1) != 0x0) goto loc_10050262c;

loc_1005024d8:
    r0 = [r19 currentURL];
    r0 = [r0 retain];
    r23 = r0;
    r0 = [r0 host];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if ([r0 isEqualToString:r2] == 0x0) goto loc_10050264c;

loc_100502524:
    r25 = @selector(isEqualToString:);
    r0 = [r19 currentURL];
    r0 = [r0 retain];
    r26 = r0;
    r0 = [r0 path];
    r29 = r29;
    r0 = [r0 retain];
    r25 = objc_msgSend(r0, r25);
    [r0 release];
    [r26 release];
    [r24 release];
    [r23 release];
    if (r25 == 0x0) goto loc_10050265c;

loc_10050258c:
    r0 = [r19 currentURL];
    r0 = [r0 retain];
    r23 = [[r0 mp_queryParameterForKey:@"r"] retain];
    [r0 release];
    r0 = [NSURL URLWithString:r2];
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0 || [r19 URLIsHTTPOrHTTPS:r2] != 0x0 && [r19 URLIsAppleScheme:r2] == 0x0) goto loc_10050264c;

loc_10050261c:
    [r24 release];
    goto loc_100502624;

loc_100502624:
    [r23 release];
    goto loc_10050262c;

loc_10050262c:
    r0 = 0x0;
    return r0;

loc_10050264c:
    [r24 release];
    [r23 release];
    goto loc_10050265c;

loc_10050265c:
    r0 = [MPAdDestinationDisplayAgent shouldDisplayContentInApp];
    return r0;
}

-(void)setOriginalURL:(void *)arg2 {
    objc_storeStrong(self + 0x8, arg2);
    return;
}

-(void *)appStoreProductParametersForURL:(void *)arg2 {
    r31 = r31 - 0x170;
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
    r23 = [arg2 retain];
    if ([self URLIsAppleScheme:r23] == 0x0) goto loc_100501de0;

loc_100501cf8:
    r0 = [NSURLComponents componentsWithURL:r23 resolvingAgainstBaseURL:0x1];
    r29 = r29;
    r0 = [r0 retain];
    r24 = r0;
    if (r0 == 0x0) goto loc_100501de8;

loc_100501d24:
    r0 = [r23 path];
    r0 = [r0 retain];
    r22 = [[r0 lastPathComponent] retain];
    [r0 release];
    r0 = [r23 mp_queryAsDictionary];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 objectForKey:@"id"];
    r29 = r29;
    r20 = [r0 retain];
    [r19 release];
    if ([r22 hasPrefix:@"id"] != 0x0) {
            r0 = [r22 substringFromIndex:0x2];
            r29 = r29;
            r0 = [r0 retain];
    }
    else {
            if (r20 != 0x0) {
                    r0 = r20;
            }
            else {
                    r0 = r22;
            }
            r0 = [r0 retain];
    }
    r25 = r0;
    r0 = [NSCharacterSet decimalDigitCharacterSet];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 invertedSet];
    r29 = r29;
    r21 = [r0 retain];
    [r19 release];
    if ([r25 length] != 0x0 && [r25 rangeOfCharacterFromSet:r21] != 0x7fffffffffffffff) {
            [r25 release];
            r25 = 0x0;
    }
    r19 = @selector(length);
    [r21 release];
    [r20 release];
    [r22 release];
    if (objc_msgSend(r25, r19) == 0x0) goto loc_1005020c4;

loc_100501eb4:
    var_150 = r23;
    r0 = [NSMutableDictionary dictionaryWithCapacity:0x3];
    r0 = [r0 retain];
    var_128 = r0;
    var_160 = r25;
    [r0 setObject:r25 forKeyedSubscript:**_SKStoreProductParameterITunesItemIdentifier];
    var_110 = q0;
    var_158 = r24;
    r0 = [r24 queryItems];
    r29 = r29;
    r0 = [r0 retain];
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_130 = r0;
    var_148 = r1;
    r0 = objc_msgSend(r0, r1);
    if (r0 == 0x0) goto loc_1005020b0;

loc_100501f4c:
    r26 = r0;
    r9 = *_SKStoreProductParameterCampaignToken;
    r22 = *var_110;
    var_140 = *r9;
    goto loc_100501f78;

loc_100501f78:
    r20 = 0x0;
    goto loc_100501f94;

loc_100501f94:
    if (*var_110 != r22) {
            objc_enumerationMutation(var_130);
    }
    r25 = @selector(isEqualToString:);
    r21 = *(var_118 + r20 * 0x8);
    r0 = [r21 name];
    r29 = r29;
    r0 = [r0 retain];
    r28 = objc_msgSend(r0, r25);
    [r0 release];
    if (r28 == 0x0) goto loc_100502018;

loc_100501fec:
    r0 = [r21 value];
    r29 = r29;
    r21 = [r0 retain];
    r0 = var_128;
    goto loc_100502078;

loc_100502078:
    [r0 setObject:r2 forKeyedSubscript:r3];
    [r21 release];
    goto loc_100502084;

loc_100502084:
    r20 = r20 + 0x1;
    if (r20 < r26) goto loc_100501f94;

loc_100502090:
    r0 = objc_msgSend(var_130, var_148);
    r26 = r0;
    if (r0 != 0x0) goto loc_100501f78;

loc_1005020b0:
    [var_130 release];
    r24 = var_158;
    r23 = var_150;
    r25 = var_160;
    goto loc_1005020c8;

loc_1005020c8:
    [r25 release];
    goto loc_1005020d0;

loc_1005020d0:
    [r24 release];
    goto loc_1005020d8;

loc_1005020d8:
    var_60 = **___stack_chk_guard;
    [r23 release];
    if (**___stack_chk_guard == var_60) {
            r0 = [var_128 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100502018:
    r25 = @selector(isEqualToString:);
    r0 = [r21 name];
    r29 = r29;
    r0 = [r0 retain];
    r28 = objc_msgSend(r0, r25);
    [r0 release];
    if (r28 == 0x0) goto loc_100502084;

loc_100502050:
    r0 = [r21 value];
    r29 = r29;
    r21 = [r0 retain];
    r0 = var_128;
    goto loc_100502078;

loc_1005020c4:
    var_128 = 0x0;
    goto loc_1005020c8;

loc_100501de8:
    var_128 = 0x0;
    goto loc_1005020d0;

loc_100501de0:
    var_128 = 0x0;
    goto loc_1005020d8;
}

-(void *)currentURL {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setCurrentURL:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void *)task {
    r0 = *(self + 0x18);
    return r0;
}

-(void)setTask:(void *)arg2 {
    objc_storeStrong(self + 0x18, arg2);
    return;
}

-(void *)completion {
    r0 = objc_getProperty(self, _cmd, 0x20, 0x0);
    return r0;
}

-(void)setCompletion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x20, 0x0);
    objc_storeStrong(self + 0x18, 0x0);
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end