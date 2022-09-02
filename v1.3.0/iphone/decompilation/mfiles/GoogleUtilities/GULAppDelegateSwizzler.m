@implementation GULAppDelegateSwizzler

+(void)proxyOriginalDelegate {
    if (*qword_1011d1960 != -0x1) {
            dispatch_once(0x1011d1960, 0x100e68a58);
    }
    return;
}

+(void)unregisterAppDelegateInterceptorWithID:(void *)arg2 {
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
    r19 = [arg2 retain];
    if (r19 != 0x0) {
            r0 = [GULAppDelegateSwizzler interceptors];
            r0 = [r0 retain];
            r20 = [[r0 objectForKeyedSubscript:r19] retain];
            [r0 release];
            r0 = [r20 object];
            r29 = r29;
            r0 = [r0 retain];
            [r0 release];
            if (r0 != 0x0) {
                    r0 = [GULAppDelegateSwizzler interceptors];
                    r0 = [r0 retain];
                    r21 = r0;
                    [r0 removeObjectForKey:r2];
            }
            else {
                    r21 = [[NSString stringWithFormat:@"I-SWZ%06ld"] retain];
                    sub_1000abe24(@"[GoogleUtilities/AppDelegateSwizzler]", 0x0, r21, @"AppDelegateProxy cannot unregister interceptor that was not registered. Interceptor ID %@");
            }
            [r21 release];
    }
    else {
            r20 = [[NSString stringWithFormat:@"I-SWZ%06ld"] retain];
            sub_1000abe24(@"[GoogleUtilities/AppDelegateSwizzler]", 0x0, r20, @"AppDelegateProxy cannot unregister empty interceptor ID.");
    }
    [r20 release];
    [r19 release];
    return;
}

+(bool)isAppDelegateProxyEnabled {
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
    r0 = [NSBundle mainBundle];
    r0 = [r0 retain];
    r19 = [[r0 infoDictionary] retain];
    [r0 release];
    r20 = [[r19 objectForKeyedSubscript:@"FirebaseAppDelegateProxyEnabled"] retain];
    r21 = [[r19 objectForKeyedSubscript:@"GoogleUtilitiesAppDelegateProxyEnabled"] retain];
    [NSNumber class];
    if ([r20 isKindOfClass:r2] != 0x0) {
            r22 = [r20 boolValue];
    }
    else {
            r22 = 0x1;
    }
    r24 = @selector(isKindOfClass:);
    [NSNumber class];
    if (objc_msgSend(r21, r24) != 0x0) {
            r0 = [r21 boolValue];
    }
    else {
            r0 = 0x1;
    }
    [r21 release];
    [r20 release];
    [r19 release];
    r0 = r22 & r0;
    return r0;
}

+(void *)registerAppDelegateInterceptor:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    if (r19 == 0x0) goto loc_1000a9a18;

loc_1000a9928:
    if (([r19 conformsToProtocol:@protocol(UIApplicationDelegate)] & 0x1) == 0x0) goto loc_1000a9a5c;

loc_1000a9958:
    r0 = [NSString stringWithFormat:r2];
    r29 = r29;
    r0 = [r0 retain];
    r20 = r0;
    if ([r0 length] != 0x0) {
            r0 = [GULZeroingWeakContainer alloc];
            r0 = [r0 init];
            r22 = r0;
            [r0 setObject:r19];
            r0 = [GULAppDelegateSwizzler interceptors];
            r0 = [r0 retain];
            [r0 setObject:r22 forKeyedSubscript:r20];
            [r0 release];
            r21 = [r20 retain];
            [r22 release];
    }
    else {
            sub_1000abe24(@"[GoogleUtilities/AppDelegateSwizzler]", 0x0, [[NSString stringWithFormat:r2] retain], @"AppDelegateProxy cannot create Interceptor ID.");
            [r21 release];
            r21 = 0x0;
    }
    [r20 release];
    goto loc_1000a9b04;

loc_1000a9b04:
    [r19 release];
    r0 = [r21 autorelease];
    return r0;

loc_1000a9a5c:
    r20 = [[NSString stringWithFormat:r2] retain];
    r3 = @"AppDelegateProxy interceptor does not conform to UIApplicationDelegate";
    goto loc_1000a9a90;

loc_1000a9a90:
    sub_1000abe24(@"[GoogleUtilities/AppDelegateSwizzler]", 0x0, r20, r3);
    [r20 release];
    r21 = 0x0;
    goto loc_1000a9b04;

loc_1000a9a18:
    r20 = [[NSString stringWithFormat:@"I-SWZ%06ld"] retain];
    r3 = @"AppDelegateProxy cannot add nil interceptor.";
    goto loc_1000a9a90;
}

+(void *)sharedApplication {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (([GULAppEnvironmentUtil isAppExtension] & 0x1) == 0x0) {
            r0 = NSClassFromString(@"UIApplication");
            r19 = r0;
            if (r19 != 0x0) {
                    NSSelectorFromString(@"sharedApplication");
                    if ([r19 respondsToSelector:r2] != 0x0) {
                            r0 = [r19 sharedApplication];
                            r0 = [r0 retain];
                    }
                    else {
                            r0 = 0x0;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

+(void *)interceptors {
    if (*qword_1011d1968 != -0x1) {
            dispatch_once(0x1011d1968, 0x100e68ac0);
    }
    r0 = *0x1011d1970;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)addInstanceMethodWithSelector:(void *)arg2 fromClass:(void *)arg3 toClass:(void *)arg4 {
    [self addInstanceMethodWithDestinationSelector:r2 withImplementationFromSourceSelector:arg2 fromClass:arg3 toClass:arg4];
    return;
}

+(void * *)implementationOfMethodSelector:(void *)arg2 fromClass:(void *)arg3 {
    r0 = class_getInstanceMethod(arg3, arg2);
    r0 = method_getImplementation(r0);
    return r0;
}

+(void)addInstanceMethodWithDestinationSelector:(void *)arg2 withImplementationFromSourceSelector:(void *)arg3 fromClass:(void *)arg4 toClass:(void *)arg5 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg2;
    r0 = class_getInstanceMethod(arg4, arg3);
    if ((class_addMethod(arg5, r19, method_getImplementation(r0), method_getTypeEncoding(r0)) & 0x1) == 0x0) {
            r20 = [[NSString stringWithFormat:@"I-SWZ%06ld"] retain];
            [NSStringFromSelector(r19) retain];
            sub_1000ac134(@"[GoogleUtilities/AppDelegateSwizzler]", 0x0, r20, @"Cannot copy method to destination selector %@ as it already exists");
            [r19 release];
            [r20 release];
    }
    return;
}

+(void)notifyInterceptorsWithMethodSelector:(void *)arg2 callback:(void *)arg3 {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = arg2;
    r19 = [arg3 retain];
    if (r19 != 0x0) {
            r0 = [GULAppDelegateSwizzler interceptors];
            r0 = [r0 retain];
            r22 = [[r0 dictionary] retain];
            [r0 release];
            var_30 = [r19 retain];
            [r22 enumerateKeysAndObjectsUsingBlock:&var_50];
            [var_30 release];
            [r22 release];
    }
    [r19 release];
    return;
}

+(void)createSubclassWithObject:(void *)arg2 {
    r31 = r31 - 0xc0;
    var_60 = d9;
    stack[-104] = d8;
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
    r24 = self;
    r0 = [arg2 retain];
    r26 = r0;
    r0 = [r0 class];
    r23 = r0;
    r21 = [NSStringFromClass(r0) retain];
    r19 = [[@"GUL_" stringByAppendingString:r21] retain];
    [r21 release];
    r0 = [NSDate date];
    r0 = [r0 retain];
    [r0 timeIntervalSince1970];
    [r0 release];
    r0 = [NSString stringWithFormat:r2];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    if (NSClassFromString(r0) == 0x0) goto loc_1000a9f48;

loc_1000a9edc:
    r22 = [[NSString stringWithFormat:r2] retain];
    r23 = [NSStringFromClass(r23) retain];
    r3 = @"Cannot create a proxy for App Delegate. Subclass already exists. Original Class: %@, subclass: %@";
    goto loc_1000a9f2c;

loc_1000a9f2c:
    sub_1000abe24(@"[GoogleUtilities/AppDelegateSwizzler]", 0x0, r22, r3);
    [r23 release];
    r0 = r22;
    goto loc_1000aa4ac;

loc_1000aa4ac:
    [r0 release];
    [r21 release];
    [r19 release];
    [r26 release];
    return;

loc_1000a9f48:
    r22 = objc_allocateClassPair(r23, [objc_retainAutorelease(r21) UTF8String], 0x0);
    if (r22 == 0x0) goto loc_1000aa018;

loc_1000a9f74:
    r0 = [r26 respondsToSelector:@selector(application:openURL:options:), r3, r4];
    var_78 = r24;
    var_70 = r26;
    var_90 = r21;
    stack[-152] = r19;
    if ((r0 & 0x1) != 0x0) {
            r26 = @class(GULAppDelegateSwizzler);
            [r26 addInstanceMethodWithSelector:@selector(application:openURL:options:) fromClass:[r26 class] toClass:r22];
            [GULAppDelegateSwizzler implementationOfMethodSelector:@selector(application:openURL:options:) fromClass:r23, r22];
            r0 = [NSValue valueWithPointer:r2];
            r29 = r29;
            var_98 = [r0 retain];
    }
    else {
            var_98 = 0x0;
    }
    r27 = @selector(valueWithPointer:);
    r19 = @class(GULAppDelegateSwizzler);
    [r19 addInstanceMethodWithSelector:@selector(application:continueUserActivity:restorationHandler:) fromClass:[r19 class] toClass:r22];
    [GULAppDelegateSwizzler implementationOfMethodSelector:@selector(application:continueUserActivity:restorationHandler:) fromClass:r23, r22];
    var_80 = [objc_msgSend(@class(NSValue), r27) retain];
    r20 = @class(GULAppDelegateSwizzler);
    [r20 addInstanceMethodWithSelector:@selector(application:openURL:sourceApplication:annotation:) fromClass:[r20 class] toClass:r22, r5];
    [GULAppDelegateSwizzler implementationOfMethodSelector:@selector(application:openURL:sourceApplication:annotation:) fromClass:r23, r22, r5];
    var_68 = [objc_msgSend(@class(NSValue), r27) retain];
    r20 = @class(GULAppDelegateSwizzler);
    [r20 addInstanceMethodWithSelector:@selector(application:handleEventsForBackgroundURLSession:completionHandler:) fromClass:[r20 class] toClass:r22];
    [GULAppDelegateSwizzler implementationOfMethodSelector:@selector(application:handleEventsForBackgroundURLSession:completionHandler:) fromClass:r23, r22];
    r0 = objc_msgSend(@class(NSValue), r27);
    r29 = r29;
    r24 = [r0 retain];
    r28 = var_80;
    [GULAppDelegateSwizzler addInstanceMethodWithDestinationSelector:@selector(description) withImplementationFromSourceSelector:@selector(fakeDescription) fromClass:[var_78 class] toClass:r22];
    r26 = var_70;
    objc_setAssociatedObject(r26, 0x100e68a78, r28, 0x1);
    objc_setAssociatedObject(r26, 0x100e68a80, r24, 0x1);
    r27 = var_98;
    if (r27 != 0x0) {
            objc_setAssociatedObject(r26, 0x100e68a88, r27, 0x1);
    }
    objc_setAssociatedObject(r26, 0x100e68a90, var_68, 0x1);
    objc_setAssociatedObject(r26, 0x100e68a98, r23, 0x1);
    if (class_getInstanceSize(r23) == class_getInstanceSize(r22)) {
            objc_registerClassPair(r22);
            if (object_setClass(r26, r22) != 0x0) {
                    r19 = [[NSString stringWithFormat:r2] retain];
                    r0 = @class(GULAppDelegateSwizzler);
                    r0 = [r0 correctAppDelegateProxyKey];
                    r29 = r29;
                    [r0 retain];
                    sub_1000ac2a8(@"[GoogleUtilities/AppDelegateSwizzler]", 0x0, r19, @"Successfully created App Delegate Proxy automatically. To disable the proxy, set the flag %@ to NO (Boolean) in the Info.plist");
                    [r20 release];
                    [r19 release];
            }
            r0 = @class(GULAppDelegateSwizzler);
            r0 = [r0 sharedApplication];
            r0 = [r0 retain];
            r22 = [[r0 delegate] retain];
            [r0 release];
            r0 = @class(GULAppDelegateSwizzler);
            r0 = [r0 sharedApplication];
            r0 = [r0 retain];
            [r0 setDelegate:0x0];
            [r0 release];
            r0 = @class(GULAppDelegateSwizzler);
            r0 = [r0 sharedApplication];
            r0 = [r0 retain];
            [r0 setDelegate:r22];
            [r0 release];
            r19 = *0x1011d1958;
            *0x1011d1958 = r22;
            r20 = [r22 retain];
            [r19 release];
            r0 = [GULAppDelegateObserver sharedInstance];
            r0 = [r0 retain];
            r19 = r0;
            [r0 observeUIApplication];
    }
    else {
            r19 = [[NSString stringWithFormat:r2] retain];
            r20 = [NSStringFromClass(r23) retain];
            sub_1000abe24(@"[GoogleUtilities/AppDelegateSwizzler]", 0x0, r19, @"Cannot create subclass of App Delegate, because the created subclass is not the same size. %@");
    }
    [r20 release];
    [r19 release];
    r21 = var_90;
    r19 = stack[-152];
    [r24 release];
    [var_68 release];
    [r28 release];
    r0 = r27;
    goto loc_1000aa4ac;

loc_1000aa018:
    r22 = [[NSString stringWithFormat:r2] retain];
    r23 = [NSStringFromClass(r23) retain];
    r3 = @"Cannot create a proxy for App Delegate. Subclass already exists. Original Class: %@, subclass: Nil";
    goto loc_1000a9f2c;
}

-(void *)fakeDescription {
    r0 = objc_getAssociatedObject(self, 0x100e68a98);
    r0 = [r0 retain];
    [r0 release];
    r0 = [NSString stringWithFormat:r2];
    return r0;
}

-(bool)application:(void *)arg2 openURL:(void *)arg3 options:(void *)arg4 {
    r31 = r31 - 0xc0;
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
    r21 = self;
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r26 = [arg4 retain];
    r0 = objc_getAssociatedObject(r21, 0x100e68a88);
    r0 = [r0 retain];
    r19 = r0;
    r24 = [r0 pointerValue];
    var_68 = &var_70;
    r20 = [r22 retain];
    var_90 = r20;
    r22 = [r23 retain];
    var_88 = r22;
    r23 = [r26 retain];
    var_80 = r23;
    [GULAppDelegateSwizzler notifyInterceptorsWithMethodSelector:@selector(application:openURL:options:) callback:&var_B0, r4];
    if (r24 != 0x0) {
            r0 = (r24)(r21, @selector(application:openURL:options:), r20, r22, r23);
            r8 = *(int8_t *)(var_68 + 0x18);
            r8 = r8 | r0;
            *(int8_t *)(var_68 + 0x18) = r8;
    }
    else {
            r8 = *(int8_t *)(var_68 + 0x18);
    }
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    [var_80 release];
    [var_88 release];
    [var_90 release];
    _Block_object_dispose(&var_70, 0x8);
    [r19 release];
    [r23 release];
    [r22 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(bool)application:(void *)arg2 openURL:(void *)arg3 sourceApplication:(void *)arg4 annotation:(void *)arg5 {
    r31 = r31 - 0xd0;
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
    r21 = self;
    r23 = [arg2 retain];
    r22 = [arg3 retain];
    r24 = [arg4 retain];
    r27 = [arg5 retain];
    r0 = objc_getAssociatedObject(r21, 0x100e68a90);
    r0 = [r0 retain];
    r19 = r0;
    r25 = [r0 pointerValue];
    var_68 = &var_70;
    r20 = [r23 retain];
    var_98 = r20;
    r22 = [r22 retain];
    var_90 = r22;
    r23 = [r24 retain];
    var_88 = r23;
    r24 = [r27 retain];
    var_80 = r24;
    [GULAppDelegateSwizzler notifyInterceptorsWithMethodSelector:@selector(application:openURL:sourceApplication:annotation:) callback:&var_B8, r4, r5];
    if (r25 != 0x0) {
            r0 = (r25)(r21, @selector(application:openURL:sourceApplication:annotation:), r20, r22, r23, r24);
            r8 = *(int8_t *)(var_68 + 0x18);
            r8 = r8 | r0;
            *(int8_t *)(var_68 + 0x18) = r8;
    }
    else {
            r8 = *(int8_t *)(var_68 + 0x18);
    }
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    [var_80 release];
    [var_88 release];
    [var_90 release];
    [var_98 release];
    _Block_object_dispose(&var_70, 0x8);
    [r19 release];
    [r24 release];
    [r23 release];
    [r22 release];
    [r20 release];
    r0 = r21;
    return r0;
}

-(void)application:(void *)arg2 handleEventsForBackgroundURLSession:(void *)arg3 completionHandler:(void *)arg4 {
    r31 = r31 - 0xa0;
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
    r19 = self;
    r22 = [arg2 retain];
    r25 = [arg3 retain];
    r26 = [arg4 retain];
    r0 = objc_getAssociatedObject(r19, 0x100e68a80);
    r0 = [r0 retain];
    r20 = r0;
    r23 = [r0 pointerValue];
    r21 = [r22 retain];
    var_68 = r21;
    r22 = [r25 retain];
    var_60 = r22;
    r25 = [r26 retain];
    var_58 = r25;
    [GULAppDelegateSwizzler notifyInterceptorsWithMethodSelector:@selector(application:handleEventsForBackgroundURLSession:completionHandler:) callback:&var_88, r4];
    if (r23 != 0x0) {
            (r23)(r19, @selector(application:handleEventsForBackgroundURLSession:completionHandler:), r21, r22, r25);
    }
    [var_58 release];
    [var_60 release];
    [var_68 release];
    [r20 release];
    [r25 release];
    [r22 release];
    [r21 release];
    return;
}

-(bool)application:(void *)arg2 continueUserActivity:(void *)arg3 restorationHandler:(void *)arg4 {
    r31 = r31 - 0xc0;
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
    r21 = self;
    r22 = [arg2 retain];
    r23 = [arg3 retain];
    r26 = [arg4 retain];
    r0 = objc_getAssociatedObject(r21, 0x100e68a78);
    r0 = [r0 retain];
    r19 = r0;
    r24 = [r0 pointerValue];
    var_68 = &var_70;
    r20 = [r22 retain];
    var_90 = r20;
    r22 = [r23 retain];
    var_88 = r22;
    r23 = [r26 retain];
    var_80 = r23;
    [GULAppDelegateSwizzler notifyInterceptorsWithMethodSelector:@selector(application:continueUserActivity:restorationHandler:) callback:&var_B0, r4];
    if (r24 != 0x0) {
            r0 = (r24)(r21, @selector(application:continueUserActivity:restorationHandler:), r20, r22, r23);
            r8 = *(int8_t *)(var_68 + 0x18);
            r8 = r8 | r0;
            *(int8_t *)(var_68 + 0x18) = r8;
    }
    else {
            r8 = *(int8_t *)(var_68 + 0x18);
    }
    if (r8 != 0x0) {
            if (CPU_FLAGS & NE) {
                    r21 = 0x1;
            }
    }
    [var_80 release];
    [var_88 release];
    [var_90 release];
    _Block_object_dispose(&var_70, 0x8);
    [r19 release];
    [r23 release];
    [r22 release];
    [r20 release];
    r0 = r21;
    return r0;
}

+(void)proxyAppDelegate:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r19 = [[arg2 retain] retain];
    if (([GULAppDelegateSwizzler isAppDelegateProxyEnabled] & 0x1) == 0x0) goto loc_1000ab3b4;

loc_1000ab398:
    if (r19 == 0x0) goto loc_1000ab424;

loc_1000ab39c:
    [r20 createSubclassWithObject:r19];
    goto loc_1000ab4a0;

loc_1000ab4a0:
    [r19 release];
    [r19 release];
    return;

loc_1000ab424:
    r20 = [[NSString stringWithFormat:@"I-SWZ%06ld"] retain];
    r21 = [[GULAppDelegateSwizzler correctAlternativeWhenAppDelegateProxyNotCreated] retain];
    sub_1000abe24(@"[GoogleUtilities/AppDelegateSwizzler]", 0x0, r20, @"Cannot create App Delegate Proxy because App Delegate instance is nil. %@");
    goto loc_1000ab490;

loc_1000ab490:
    [r21 release];
    [r20 release];
    goto loc_1000ab4a0;

loc_1000ab3b4:
    r20 = [[NSString stringWithFormat:@"I-SWZ%06ld"] retain];
    r21 = [[GULAppDelegateSwizzler correctAlternativeWhenAppDelegateProxyNotCreated] retain];
    sub_1000ac1b0(@"[GoogleUtilities/AppDelegateSwizzler]", 0x0, r20, @"App Delegate Proxy is disabled. %@");
    goto loc_1000ab490;
}

+(void *)correctAppDelegateProxyKey {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = NSClassFromString(@"FIRCore");
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = @"FirebaseAppDelegateProxyEnabled";
            }
            else {
                    r0 = @"GoogleUtilitiesAppDelegateProxyEnabled";
            }
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void *)correctAlternativeWhenAppDelegateProxyNotCreated {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    r0 = NSClassFromString(@"FIRCore");
    if (r0 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = @"To log deep link campaigns manually, call the methods in FIRAnalytics+AppDelegate.h.";
            }
            else {
                    r0 = @"";
            }
    }
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

@end