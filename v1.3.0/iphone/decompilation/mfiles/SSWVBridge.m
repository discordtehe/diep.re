@implementation SSWVBridge

-(void *)initWithWebView:(void *)arg2 connectivityConfiguration:(void *)arg3 {
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
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    if (r19 == 0x0) goto loc_1006ff274;

loc_1006ff0f8:
    if (r20 == 0x0) goto loc_1006ff2a8;

loc_1006ff0fc:
    r0 = [r20 messageHandlerName];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1006ff2dc;

loc_1006ff124:
    r0 = [r20 parser];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1006ff310;

loc_1006ff14c:
    r0 = [r20 interface];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1006ff344;

loc_1006ff174:
    r0 = [[&var_50 super] init];
    r22 = r0;
    if (r22 != 0x0) {
            objc_storeWeak((int64_t *)&r22->_webView, r19);
            r0 = [r20 messageHandlerName];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_messageHandlerName));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
            r0 = [r20 interface];
            r0 = [r0 retain];
            r23 = sign_extend_64(*(int32_t *)ivar_offset(_interface));
            r8 = *(r22 + r23);
            *(r22 + r23) = r0;
            [r8 release];
            [*(r22 + r23) setBridge:r22];
            r0 = [r20 parser];
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_parser));
            r8 = *(r22 + r9);
            *(r22 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r22;
    return r0;

loc_1006ff344:
    r0 = [NSException alloc];
    goto loc_1006ff374;

loc_1006ff374:
    r0 = [r0 initWithName:r2 reason:r3 userInfo:r4];
    r0 = [r0 autorelease];
    r0 = objc_exception_throw(r0);
    return r0;

loc_1006ff310:
    r0 = [NSException alloc];
    goto loc_1006ff374;

loc_1006ff2dc:
    r0 = [NSException alloc];
    goto loc_1006ff374;

loc_1006ff2a8:
    r0 = [NSException alloc];
    goto loc_1006ff374;

loc_1006ff274:
    r0 = [NSException alloc];
    goto loc_1006ff374;
}

-(void)sendMessageToWebView:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [r20 parser];
            r0 = [r0 retain];
            r22 = [[r0 convertToString:r19] retain];
            [r0 release];
            r0 = [r20 webView];
            r0 = [r0 retain];
            [r0 evaluateJavaScript:r22];
            [r0 release];
            [r22 release];
            [r19 release];
    }
    else {
            objc_exception_throw([[[NSException alloc] initWithName:**_NSInvalidArgumentException reason:@"sendMessageToWebView: message is nil" userInfo:0x0] autorelease]);
    }
    return;
}

-(void)postMessage:(void *)arg2 {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [r20 parser];
            r0 = [r0 retain];
            r22 = [[r0 convertToMessage:r19] retain];
            [r0 release];
            [r20 sendMessageToJSInterface:r22];
            [r22 release];
            [r19 release];
    }
    else {
            objc_exception_throw([[[NSException alloc] initWithName:**_NSInvalidArgumentException reason:@"stringMessageFromJavaScript is nil" userInfo:0x0] autorelease]);
    }
    return;
}

-(void *)webView {
    r0 = objc_loadWeakRetained((int64_t *)&self->_webView);
    r0 = [r0 autorelease];
    return r0;
}

-(void)sendMessageToJSInterface:(void *)arg2 {
    r31 = r31 - 0x70;
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
    r20 = self;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_1006ff820;

loc_1006ff4ac:
    r23 = [[r19 function] retain];
    r24 = [[r20 interface] retain];
    r21 = [[r20 invocationToTargetFromMessageFunction:r23 target:r24] retain];
    [r24 release];
    [r23 release];
    [r21 invoke];
    r0 = [r19 callback];
    r29 = r29;
    r24 = [r0 retain];
    if (r24 == 0x0) goto loc_1006ff7e8;

loc_1006ff550:
    r0 = [r19 callback];
    r0 = [r0 retain];
    r25 = r0;
    r0 = [r0 function];
    r29 = r29;
    r26 = [r0 retain];
    if (r26 == 0x0) goto loc_1006ff7e0;

loc_1006ff580:
    var_60 = r20;
    r0 = [r19 callback];
    r0 = [r0 retain];
    r27 = r0;
    r0 = [r0 function];
    r0 = [r0 retain];
    r28 = r0;
    r0 = [r0 name];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    [r28 release];
    [r27 release];
    [r26 release];
    [r25 release];
    [r24 release];
    if (r0 == 0x0) goto loc_1006ff7f0;

loc_1006ff5f8:
    r0 = [r21 methodSignature];
    r29 = r29;
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r24 = [r0 methodReturnType];
    [r0 release];
    if (strcmp(r24, "v") != 0x0) {
            [r21 getReturnValue:&var_58];
            if (var_58 != 0x0) {
                    r23 = @selector(callback);
                    r0 = [SSWVMessageFunctionParameter alloc];
                    r0 = [r0 init];
                    r24 = r0;
                    [r0 setName:@"callbackParam"];
                    [r24 setValue:0x0];
                    r20 = [NSMutableArray alloc];
                    r0 = objc_msgSend(r19, r23);
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 function];
                    r0 = [r0 retain];
                    r27 = [[r0 params] retain];
                    r20 = [r20 initWithArray:r27];
                    [r27 release];
                    [r0 release];
                    [r25 release];
                    [r20 addObject:r24];
                    r0 = objc_msgSend(r19, r23);
                    r0 = [r0 retain];
                    r25 = r0;
                    r0 = [r0 function];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 setParams:r20];
                    [r0 release];
                    [r25 release];
                    [r20 release];
                    [r24 release];
            }
    }
    r20 = [[r19 callback] retain];
    [var_60 sendMessageToWebView:r20];
    r0 = r20;
    goto loc_1006ff7ec;

loc_1006ff7ec:
    [r0 release];
    goto loc_1006ff7f0;

loc_1006ff7f0:
    [r21 release];
    [r19 release];
    return;

loc_1006ff7e0:
    [r25 release];
    goto loc_1006ff7e8;

loc_1006ff7e8:
    r0 = r24;
    goto loc_1006ff7ec;

loc_1006ff820:
    objc_exception_throw([[[NSException alloc] initWithName:**_NSInvalidArgumentException reason:@"sendMessageToJSInterface: message is nil" userInfo:0x0] autorelease]);
    return;
}

-(void)setWebView:(void *)arg2 {
    objc_storeWeak((int64_t *)&self->_webView, arg2);
    return;
}

-(void *)invocationToTargetFromMessageFunction:(void *)arg2 target:(void *)arg3 {
    r31 = r31 - 0x70;
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
    r19 = [arg2 retain];
    r23 = [arg3 retain];
    r22 = [self selFromMessageFunction:r19];
    r9 = [[[r23 class] instanceMethodSignatureForSelector:r22] retain];
    var_60 = r9;
    r0 = [NSInvocation invocationWithMethodSignature:r9];
    r0 = [r0 retain];
    r21 = r0;
    [r0 setTarget:r23];
    [r23 release];
    [r21 setSelector:r22];
    r0 = [r19 params];
    r29 = &saved_fp;
    r23 = [r0 retain];
    if (r23 != 0x0) {
            r0 = [r19 params];
            r29 = r29;
            r0 = [r0 retain];
            r26 = [r0 count];
            [r0 release];
            [r23 release];
            if (r26 != 0x0) {
                    r24 = @selector(count);
                    r0 = [r19 params];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = objc_msgSend(r0, r24);
                    [r0 release];
                    if (r24 != 0x0) {
                            r23 = 0x0;
                            do {
                                    r0 = [r19 params];
                                    r0 = [r0 retain];
                                    r28 = r0;
                                    r0 = [r0 objectAtIndexedSubscript:r23];
                                    r0 = [r0 retain];
                                    var_58 = [[r0 value] retain];
                                    [r0 release];
                                    [r28 release];
                                    [r21 setArgument:r2 atIndex:r3];
                                    [var_58 release];
                                    r0 = objc_msgSend(r19, r22);
                                    r29 = r29;
                                    r0 = [r0 retain];
                                    r28 = objc_msgSend(r0, r27);
                                    [r0 release];
                                    r23 = r23 + 0x1;
                            } while (r28 > r23);
                    }
            }
    }
    else {
            [r23 release];
    }
    [var_60 release];
    [r19 release];
    r0 = [r21 autorelease];
    return r0;
}

-(void *)selFromMessageFunction:(void *)arg2 {
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
    r0 = [arg2 retain];
    r19 = r0;
    r22 = [[r0 name] retain];
    r0 = [r19 params];
    r29 = &saved_fp;
    r20 = [r0 retain];
    var_70 = r19;
    if (r20 != 0x0) {
            r0 = [r19 params];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 count];
            [r0 release];
            [r20 release];
            if (r25 != 0x0) {
                    r0 = [r22 stringByAppendingString:@":"];
                    r29 = r29;
                    r20 = [r0 retain];
                    [r22 release];
                    r22 = r20;
            }
    }
    else {
            [r20 release];
    }
    r23 = @selector(count);
    r0 = [var_70 params];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r23);
    [r0 release];
    if (r23 >= 0x2) {
            r19 = @selector(objectAtIndexedSubscript:);
            var_60 = r19;
            r26 = 0x1;
            r23 = var_70;
            do {
                    r0 = [r23 params];
                    r0 = [r0 retain];
                    r27 = r0;
                    r0 = objc_msgSend(r0, r19);
                    r0 = [r0 retain];
                    r28 = r0;
                    r20 = @selector(name);
                    r0 = objc_msgSend(r0, r20);
                    r29 = r29;
                    r25 = [r0 retain];
                    if (r25 != 0x0) {
                            r0 = [r23 params];
                            r0 = [r0 retain];
                            r23 = r0;
                            r0 = objc_msgSend(r0, r19);
                            r0 = [r0 retain];
                            r19 = r0;
                            r0 = objc_msgSend(r0, r20);
                            r29 = r29;
                            r20 = [r0 retain];
                            [r19 release];
                            r0 = r23;
                            r23 = var_70;
                            [r0 release];
                    }
                    else {
                            r20 = @"";
                            [r20 retain];
                    }
                    [r25 release];
                    [r28 release];
                    [r27 release];
                    r19 = [[r22 stringByAppendingString:r20] retain];
                    [r22 release];
                    r22 = [[r19 stringByAppendingString:@":"] retain];
                    [r19 release];
                    [r20 release];
                    r26 = r26 + 0x1;
                    r0 = [r23 params];
                    r29 = r29;
                    r0 = [r0 retain];
                    r20 = [r0 count];
                    [r0 release];
                    r19 = var_60;
            } while (r20 > r26);
    }
    else {
            r23 = var_70;
    }
    r20 = NSSelectorFromString(r22);
    [r22 release];
    [r23 release];
    r0 = r20;
    return r0;
}

-(void *)messageHandlerName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_messageHandlerName)), 0x1);
    return r0;
}

-(void)setMessageHandlerName:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)interface {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_interface)), 0x1);
    return r0;
}

-(void)setInterface:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void *)parser {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_parser)), 0x1);
    return r0;
}

-(void)setParser:(void *)arg2 {
    objc_setProperty_atomic();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_parser, 0x0);
    objc_storeStrong((int64_t *)&self->_interface, 0x0);
    objc_storeStrong((int64_t *)&self->_messageHandlerName, 0x0);
    objc_destroyWeak((int64_t *)&self->_webView);
    return;
}

@end