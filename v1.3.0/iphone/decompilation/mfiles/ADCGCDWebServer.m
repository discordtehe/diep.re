@implementation ADCGCDWebServer

+(void)initialize {
    sub_100222a64();
    return;
}

-(void *)init {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_30 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = [r19 class];
            r0 = NSStringFromClass(r0);
            r0 = [r0 retain];
            r0 = objc_retainAutorelease(r0);
            r21 = r0;
            r0 = [r0 UTF8String];
            r0 = dispatch_queue_create(r0, 0x0);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_syncQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            [r21 release];
            r0 = dispatch_group_create();
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_sourceGroup));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [NSMutableArray alloc];
            r0 = objc_msgSend(r0, r20);
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_handlers));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r19->_backgroundTask = **_UIBackgroundTaskInvalid;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)_startBackgroundTask {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundTask));
    if (*(r19 + r21) == **_UIBackgroundTaskInvalid) {
            r0 = [UIApplication sharedApplication];
            r0 = [r0 retain];
            *(r19 + r21) = [r0 beginBackgroundTaskWithExpirationHandler:&var_48];
            [r0 release];
    }
    return;
}

-(void)willStartConnection:(void *)arg2 {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_syncQueue))), &var_28);
    return;
}

-(void)_didConnect {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(int64_t *)&r19->_connected = 0x1;
    r0 = [UIApplication sharedApplication];
    r0 = [r0 retain];
    r21 = [r0 applicationState];
    [r0 release];
    if (r21 != 0x2) {
            [r19 _startBackgroundTask];
    }
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    if ([*(r19 + r21) respondsToSelector:@selector(webServerDidConnect:)] != 0x0) {
            [*(r19 + r21) webServerDidConnect:r19];
    }
    return;
}

-(void)_didDisconnect {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    *(int8_t *)(int64_t *)&r19->_connected = 0x0;
    [self _endBackgroundTask];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_delegate));
    if ([*(r19 + r21) respondsToSelector:@selector(webServerDidDisconnect:)] != 0x0) {
            [*(r19 + r21) webServerDidDisconnect:r19];
    }
    return;
}

-(void)_endBackgroundTask {
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
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_backgroundTask));
    if (*(r19 + r22) != **_UIBackgroundTaskInvalid) {
            if (*(int8_t *)(int64_t *)&r19->_suspendInBackground != 0x0) {
                    r0 = [UIApplication sharedApplication];
                    r29 = r29;
                    r0 = [r0 retain];
                    r21 = r0;
                    if ([r0 applicationState] == 0x2) {
                            r20 = @selector(sharedApplication);
                            r24 = r19->_source4;
                            [r21 release];
                            if (r24 != 0x0) {
                                    r20 = @selector(sharedApplication);
                                    [r19 _stop];
                            }
                    }
                    else {
                            r20 = @selector(sharedApplication);
                            [r21 release];
                    }
            }
            else {
                    r20 = @selector(sharedApplication);
            }
            r23 = **_UIBackgroundTaskInvalid;
            r0 = objc_msgSend(@class(UIApplication), r20);
            r0 = [r0 retain];
            [r0 endBackgroundTask:*(r19 + r22)];
            [r0 release];
            *(r19 + r22) = r23;
    }
    return;
}

-(void)didEndConnection:(void *)arg2 {
    dispatch_sync(*(self + sign_extend_64(*(int32_t *)ivar_offset(_syncQueue))), &var_28);
    return;
}

-(void *)bonjourName {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_resolutionService;
    if (r0 != 0x0) {
            r19 = CFNetServiceGetName(r0);
            if (r19 != 0x0) {
                    if (CFStringGetLength(r19) != 0x0) {
                            r0 = **_kCFAllocatorDefault;
                            r0 = CFStringCreateCopy(r0, r19);
                            r19 = r0;
                            [r0 autorelease];
                    }
                    else {
                            r19 = 0x0;
                    }
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)addHandlerWithMatchBlock:(void *)arg2 processBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r0 = [arg3 retain];
    r22 = [r0 retain];
    [self addHandlerWithMatchBlock:r21 asyncProcessBlock:&var_48];
    [r21 release];
    [r0 release];
    [r22 release];
    return;
}

-(void *)bonjourType {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = self->_resolutionService;
    if (r0 != 0x0) {
            r19 = CFNetServiceGetType(r0);
            if (r19 != 0x0) {
                    if (CFStringGetLength(r19) != 0x0) {
                            r0 = **_kCFAllocatorDefault;
                            r0 = CFStringCreateCopy(r0, r19);
                            r19 = r0;
                            [r0 autorelease];
                    }
                    else {
                            r19 = 0x0;
                    }
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)addHandlerWithMatchBlock:(void *)arg2 asyncProcessBlock:(void *)arg3 {
    r21 = [arg2 retain];
    r19 = [arg3 retain];
    r22 = [[ADCGCDWebServerHandler alloc] initWithMatchBlock:r21 asyncProcessBlock:r19];
    [r19 release];
    [r21 release];
    [self->_handlers insertObject:r22 atIndex:0x0];
    [r22 release];
    return;
}

-(void)removeAllHandlers {
    [self->_handlers removeAllObjects];
    return;
}

-(void *)_createDispatchSourceWithListeningSocket:(int)arg2 isIPv6:(bool)arg3 {
    dispatch_group_enter(self->_sourceGroup);
    asm { sxtw       x22, w20 };
    r23 = [dispatch_get_global_queue(0x0, 0x0) retain];
    r22 = dispatch_source_create(*__dispatch_source_type_read, r22, 0x0, r23);
    [r23 release];
    dispatch_source_set_cancel_handler(r22, &var_70);
    dispatch_source_set_event_handler(r22, &var_A0);
    r0 = [r22 autorelease];
    return r0;
}

-(int)_createListeningSocket:(bool)arg2 localAddress:(void *)arg3 length:(unsigned int)arg4 maxPendingConnections:(unsigned long long)arg5 error:(void * *)arg6 {
    r0 = self;
    r31 = r31 - 0x90;
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
    r20 = arg6;
    r22 = arg5;
    r23 = arg4;
    r24 = arg3;
    r19 = arg2;
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r0 = 0x2;
            }
            else {
                    r0 = 0x1e;
            }
    }
    r21 = socket(r0, 0x1, 0x6);
    if (r21 < 0x1) goto loc_100219b88;

loc_100219a2c:
    setsockopt(r21, 0xffff, 0x4, &var_5C, 0x4);
    if (bind(r21, r24, r23) == 0x0) goto loc_100219cc8;

loc_100219a5c:
    if (r20 != 0x0) {
            r0 = __error();
            r0 = *(int32_t *)r0;
            r22 = @class(NSError);
            r23 = **_NSPOSIXErrorDomain;
            asm { sxtw       x24, w0 };
            r25 = [[NSString stringWithUTF8String:strerror(r0)] retain];
            r26 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
            r22 = [[r22 errorWithDomain:r23 code:r24 userInfo:r26] retain];
            [r26 release];
            [r25 release];
            *r20 = objc_retainAutorelease([r22 autorelease]);
    }
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r22 = "IPv4";
            }
            else {
                    r22 = "IPv6";
            }
    }
    strerror(*(int32_t *)__error());
    __error();
    r5 = @"Failed binding %s listening socket: %s (%i)";
    goto loc_100219e00;

loc_100219e00:
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x0 withFormat:r5];
    close(r21);
    goto loc_100219e1c;

loc_100219e1c:
    r21 = 0xffffffffffffffff;
    goto loc_100219e20;

loc_100219e20:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = r21;
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_100219cc8:
    if (listen(r21, r22) == 0x0) goto loc_100219e20;

loc_100219cd8:
    if (r20 != 0x0) {
            r0 = __error();
            r0 = *(int32_t *)r0;
            r22 = @class(NSError);
            r23 = **_NSPOSIXErrorDomain;
            asm { sxtw       x24, w0 };
            r25 = [[NSString stringWithUTF8String:strerror(r0)] retain];
            r26 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
            r22 = [[r22 errorWithDomain:r23 code:r24 userInfo:r26] retain];
            [r26 release];
            [r25 release];
            *r20 = objc_retainAutorelease([r22 autorelease]);
    }
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r22 = "IPv4";
            }
            else {
                    r22 = "IPv6";
            }
    }
    strerror(*(int32_t *)__error());
    __error();
    r5 = @"Failed starting %s listening socket: %s (%i)";
    goto loc_100219e00;

loc_100219b88:
    if (r20 != 0x0) {
            r0 = __error();
            r0 = *(int32_t *)r0;
            r21 = @class(NSError);
            r22 = **_NSPOSIXErrorDomain;
            asm { sxtw       x23, w0 };
            r24 = [[NSString stringWithUTF8String:strerror(r0)] retain];
            r25 = [[NSDictionary dictionaryWithObjects:&var_50 forKeys:&var_58 count:0x1] retain];
            r21 = [[r21 errorWithDomain:r22 code:r23 userInfo:r25] retain];
            [r25 release];
            [r24 release];
            *r20 = objc_retainAutorelease([r21 autorelease]);
    }
    if (r19 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r21 = "IPv4";
            }
            else {
                    r21 = "IPv6";
            }
    }
    strerror(*(int32_t *)__error());
    *(int32_t *)__error();
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x0 withFormat:@"Failed creating %s listening socket: %s (%i)"];
    goto loc_100219e1c;
}

-(void)_stop {
    r31 = r31 - 0xb0;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_dnsService));
    if (*(r19 + r20) != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_dnsAddress));
            r0 = *(r19 + r8);
            *(r19 + r8) = 0x0;
            [r0 release];
            r19->_dnsPort = 0x0;
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_dnsSource));
            r0 = *(r19 + r21);
            if (r0 != 0x0) {
                    CFRunLoopSourceInvalidate(r0);
                    CFRelease(*(r19 + r21));
                    *(r19 + r21) = 0x0;
            }
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_dnsSocket));
            r0 = *(r19 + r21);
            if (r0 != 0x0) {
                    CFRelease(r0);
                    *(r19 + r21) = 0x0;
            }
            DNSServiceRefDeallocate(*(r19 + r20));
            *(r19 + r20) = 0x0;
    }
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_registrationService));
    r21 = *(r19 + r23);
    if (r21 != 0x0) {
            r24 = sign_extend_64(*(int32_t *)ivar_offset(_resolutionService));
            r22 = *(r19 + r24);
            if (r22 != 0x0) {
                    CFNetServiceUnscheduleFromRunLoop(r22, CFRunLoopGetMain(), **_kCFRunLoopCommonModes);
                    CFNetServiceSetClient(*(r19 + r24), 0x0, 0x0);
                    CFNetServiceCancel(*(r19 + r24));
                    CFRelease(*(r19 + r24));
                    *(r19 + r24) = 0x0;
                    r21 = *(r19 + r23);
            }
            CFNetServiceUnscheduleFromRunLoop(r21, CFRunLoopGetMain(), **_kCFRunLoopCommonModes);
            CFNetServiceSetClient(*(r19 + r23), 0x0, 0x0);
            CFNetServiceCancel(*(r19 + r23));
            CFRelease(*(r19 + r23));
            *(r19 + r23) = 0x0;
    }
    dispatch_source_cancel(*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_source6))));
    dispatch_source_cancel(*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_source4))));
    dispatch_group_wait(r19->_sourceGroup, 0xffffffffffffffff);
    r0 = *(r19 + r20);
    *(r19 + r20) = 0x0;
    [r0 release];
    r0 = *(r19 + r21);
    *(r19 + r21) = 0x0;
    [r0 release];
    r19->_port = 0x0;
    *(int8_t *)(int64_t *)&r19->_bindToLocalhost = 0x0;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_serverName));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_authenticationRealm));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_authenticationBasicAccounts));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_authenticationDigestAccounts));
    r0 = *(r19 + r8);
    *(r19 + r8) = 0x0;
    [r0 release];
    dispatch_async(*__dispatch_main_q, &var_68);
    [r19 class];
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x2 withFormat:@"%@ stopped"];
    if ([r19->_delegate respondsToSelector:@selector(webServerDidStop:)] != 0x0) {
            dispatch_async(*__dispatch_main_q, &var_90);
    }
    return;
}

-(void)_didEnterBackground:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    if (r20->_backgroundTask == **_UIBackgroundTaskInvalid && r20->_source4 != 0x0) {
            [r20 _stop];
    }
    [r19 release];
    return;
}

-(void)_willEnterForeground:(void *)arg2 {
    r0 = self;
    if (r0->_source4 == 0x0) {
            [r0 _start:0x0];
    }
    return;
}

-(bool)isRunning {
    r0 = self;
    if (r0->_options != 0x0) {
            if (CPU_FLAGS & NE) {
                    r0 = 0x1;
            }
    }
    return r0;
}

-(void)stop {
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
    r19 = self;
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_options));
    if (*(r19 + r23) != 0x0) {
            if (*(int8_t *)(int64_t *)&r19->_suspendInBackground != 0x0) {
                    r0 = @class(NSNotificationCenter);
                    r0 = [r0 defaultCenter];
                    r0 = [r0 retain];
                    [r0 removeObserver:r19 name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
                    [r0 release];
                    r0 = @class(NSNotificationCenter);
                    r0 = [r0 defaultCenter];
                    r0 = [r0 retain];
                    [r0 removeObserver:r19 name:**_UIApplicationWillEnterForegroundNotification object:0x0];
                    [r0 release];
            }
            if (r19->_source4 != 0x0) {
                    [r19 _stop];
            }
            r0 = *(r19 + r23);
            *(r19 + r23) = 0x0;
            [r0 release];
    }
    return;
}

-(bool)startWithOptions:(void *)arg2 error:(void * *)arg3 {
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
    r22 = arg3;
    r20 = self;
    r19 = [arg2 retain];
    r21 = (int64_t *)&r20->_options;
    if (*r21 == 0x0) goto loc_10021be00;

loc_10021bdf8:
    r20 = 0x0;
    goto loc_10021c080;

loc_10021c080:
    [r19 release];
    r0 = r20;
    return r0;

loc_10021be00:
    if (r19 != 0x0) {
            [NSDictionary class];
            if (([r19 isKindOfClass:r2] & 0x1) != 0x0) {
                    r24 = 0x0;
                    r23 = r19;
            }
            else {
                    r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
                    r29 = r29;
                    r23 = [r0 retain];
                    r24 = 0x1;
            }
    }
    else {
            r0 = [NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4];
            r29 = r29;
            r23 = [r0 retain];
            r24 = 0x1;
    }
    objc_storeStrong(r21, r23);
    if (r24 != 0x0) {
            [r23 release];
    }
    r23 = *r21;
    r24 = [@(YES) retain];
    r23 = [r23 retain];
    r25 = @selector(objectForKey:);
    r24 = [r24 retain];
    r0 = objc_msgSend(r23, r25);
    r29 = r29;
    r25 = [r0 retain];
    r0 = [r23 release];
    if (r25 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r25;
            }
            else {
                    r0 = r24;
            }
    }
    r23 = [r0 retain];
    [r24 release];
    [r25 release];
    r25 = [r23 boolValue];
    [r23 release];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_suspendInBackground));
    *(int8_t *)(r20 + r26) = r25;
    [r24 release];
    if (*(int8_t *)(r20 + r26) == 0x0) goto loc_10021bf8c;

loc_10021bf4c:
    r0 = [UIApplication sharedApplication];
    r29 = r29;
    r0 = [r0 retain];
    r23 = r0;
    if ([r0 applicationState] != 0x2) goto loc_10021bfb4;

loc_10021bf80:
    [r23 release];
    goto loc_10021bfd8;

loc_10021bfd8:
    if (*(int8_t *)(r20 + r26) != 0x0) {
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r20 selector:@selector(_didEnterBackground:) name:**_UIApplicationDidEnterBackgroundNotification object:0x0];
            [r0 release];
            r0 = @class(NSNotificationCenter);
            r0 = [r0 defaultCenter];
            r0 = [r0 retain];
            [r0 addObserver:r20 selector:@selector(_willEnterForeground:) name:**_UIApplicationWillEnterForegroundNotification object:0x0];
            [r0 release];
    }
    r20 = 0x1;
    goto loc_10021c080;

loc_10021bfb4:
    r22 = [r20 _start:r22];
    [r23 release];
    if ((r22 & 0x1) == 0x0) goto loc_10021bfa4;
    goto loc_10021bfd8;

loc_10021bfa4:
    r0 = *r21;
    *r21 = 0x0;
    [r0 release];
    goto loc_10021bdf8;

loc_10021bf8c:
    if (([r20 _start:r22] & 0x1) != 0x0) goto loc_10021bfd8;
}

-(void *)delegate {
    r0 = self->_delegate;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    self->_delegate = arg2;
    return;
}

-(unsigned long long)port {
    r0 = self->_port;
    return r0;
}

-(void *)handlers {
    r0 = self->_handlers;
    return r0;
}

-(void *)authenticationBasicAccounts {
    r0 = self->_authenticationBasicAccounts;
    return r0;
}

-(void *)serverName {
    r0 = self->_serverName;
    return r0;
}

-(void *)authenticationRealm {
    r0 = self->_authenticationRealm;
    return r0;
}

-(void *)authenticationDigestAccounts {
    r0 = self->_authenticationDigestAccounts;
    return r0;
}

-(bool)shouldAutomaticallyMapHEADToGET {
    r0 = *(int8_t *)(int64_t *)&self->_mapHEADToGET;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_dnsAddress, 0x0);
    objc_storeStrong((int64_t *)&self->_source6, 0x0);
    objc_storeStrong((int64_t *)&self->_source4, 0x0);
    objc_storeStrong((int64_t *)&self->_authenticationDigestAccounts, 0x0);
    objc_storeStrong((int64_t *)&self->_authenticationBasicAccounts, 0x0);
    objc_storeStrong((int64_t *)&self->_authenticationRealm, 0x0);
    objc_storeStrong((int64_t *)&self->_serverName, 0x0);
    objc_storeStrong((int64_t *)&self->_options, 0x0);
    objc_storeStrong((int64_t *)&self->_handlers, 0x0);
    objc_storeStrong((int64_t *)&self->_sourceGroup, 0x0);
    objc_storeStrong((int64_t *)&self->_syncQueue, 0x0);
    return;
}

-(void *)serverURL {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if (r20->_source4 == 0x0) goto loc_10021c480;

loc_10021c380:
    if (*(int8_t *)(int64_t *)&r20->_bindToLocalhost == 0x0) goto loc_10021c3a4;

loc_10021c390:
    r19 = @"localhost";
    [r19 retain];
    goto loc_10021c3bc;

loc_10021c3bc:
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_port));
    r8 = *(r20 + r8);
    if (r8 == 0x50) {
            r21 = [[NSString stringWithFormat:@"http://%@/"] retain];
            r0 = [NSURL URLWithString:r2];
    }
    else {
            r21 = [[NSString stringWithFormat:r2] retain];
            r0 = [NSURL URLWithString:r2];
    }
    r20 = [r0 retain];
    [r21 release];
    [r19 release];
    goto loc_10021c484;

loc_10021c484:
    r0 = [r20 autorelease];
    return r0;

loc_10021c3a4:
    r0 = sub_100223b34(0x0);
    r29 = r29;
    r19 = [r0 retain];
    if (r19 == 0x0) goto loc_10021c478;
    goto loc_10021c3bc;

loc_10021c478:
    [r19 release];
    goto loc_10021c480;

loc_10021c480:
    r20 = 0x0;
    goto loc_10021c484;
}

-(void *)bonjourServerURL {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    if (r20->_source4 == 0x0) goto loc_10021c598;

loc_10021c4c4:
    r0 = r20->_resolutionService;
    if (r0 == 0x0) goto loc_10021c598;

loc_10021c4d4:
    r0 = CFNetServiceGetTargetHost(r0);
    r29 = r29;
    r0 = [r0 retain];
    r21 = r0;
    if ([r0 length] == 0x0) goto loc_10021c590;

loc_10021c4f8:
    r0 = [r21 substringToIndex:[r21 length] - 0x1];
    r29 = r29;
    r19 = [r0 retain];
    [r21 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_port));
    r8 = *(r20 + r8);
    if (r8 == 0x50) {
            r21 = [[NSString stringWithFormat:@"http://%@/"] retain];
            r0 = [NSURL URLWithString:r2];
    }
    else {
            r21 = [[NSString stringWithFormat:r2] retain];
            r0 = [NSURL URLWithString:r2];
    }
    r20 = [r0 retain];
    [r21 release];
    [r19 release];
    goto loc_10021c5f4;

loc_10021c5f4:
    r0 = [r20 autorelease];
    return r0;

loc_10021c590:
    [r21 release];
    goto loc_10021c598;

loc_10021c598:
    r20 = 0x0;
    goto loc_10021c5f4;
}

-(void *)publicServerURL {
    r0 = self;
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    if (r0->_source4 != 0x0 && r0->_dnsService != 0x0) {
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_dnsAddress));
            r8 = *(r0 + r8);
            if (r8 != 0x0) {
                    r9 = sign_extend_64(*(int32_t *)ivar_offset(_dnsPort));
                    r9 = *(r0 + r9);
                    if (r9 != 0x0) {
                            if (r9 == 0x50) {
                                    r20 = [[NSString stringWithFormat:r2] retain];
                                    r0 = [NSURL URLWithString:r2];
                            }
                            else {
                                    r20 = [[NSString stringWithFormat:r2] retain];
                                    r0 = [NSURL URLWithString:r2];
                            }
                            r19 = [r0 retain];
                            [r20 release];
                    }
                    else {
                            r19 = 0x0;
                    }
            }
            else {
                    r19 = 0x0;
            }
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

-(bool)start {
    r0 = [self startWithPort:0x50 bonjourName:@""];
    return r0;
}

-(bool)_start:(void * *)arg2 {
    r31 = r31 - 0x1d0;
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
    var_168 = arg2;
    r23 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_options));
    r20 = *(r23 + r26);
    r21 = [@(0x0) retain];
    r22 = [r20 retain];
    r19 = @selector(objectForKey:);
    r21 = [r21 retain];
    r0 = objc_msgSend(r22, r19);
    r29 = &saved_fp;
    r25 = [r0 retain];
    r0 = [r22 release];
    if (r25 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r25;
            }
            else {
                    r0 = r21;
            }
    }
    r19 = @selector(objectForKey:);
    r22 = [r0 retain];
    [r21 release];
    [r25 release];
    r20 = [r22 unsignedIntegerValue];
    [r22 release];
    [r21 release];
    r22 = *(r23 + r26);
    r0 = @class(NSNumber);
    r1 = @selector(numberWithBool:);
    var_170 = r1;
    r27 = [objc_msgSend(r0, r1) retain];
    r22 = [r22 retain];
    r28 = [r27 retain];
    r0 = objc_msgSend(r22, r19);
    r29 = r29;
    r27 = [r0 retain];
    r0 = r22;
    r22 = r26;
    r0 = [r0 release];
    if (r27 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r27;
            }
            else {
                    r0 = r28;
            }
    }
    r19 = @selector(objectForKey:);
    r21 = [r0 retain];
    [r28 release];
    [r27 release];
    r26 = [r21 boolValue];
    [r21 release];
    [r28 release];
    r21 = *(r23 + r22);
    r24 = [@(0x10) retain];
    r21 = [r21 retain];
    r28 = [r24 retain];
    var_180 = r19;
    r1 = r19;
    r19 = r23;
    r23 = var_168;
    r0 = objc_msgSend(r21, r1);
    r29 = r29;
    r24 = [r0 retain];
    r0 = [r21 release];
    if (r24 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r24;
            }
            else {
                    r0 = r28;
            }
    }
    r21 = [r0 retain];
    [r28 release];
    [r24 release];
    r24 = [r21 unsignedIntegerValue];
    [r21 release];
    [r28 release];
    asm { rev        w8, w20 };
    var_160 = r26;
    r8 = 0x100007f;
    if (r26 != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = 0x0;
            }
            else {
                    r8 = 0x100007f;
            }
    }
    r28 = [r19 _createListeningSocket:r2 localAddress:r3 length:r4 maxPendingConnections:r5 error:r6];
    if (r28 < 0x1) goto loc_10021a8f8;

loc_10021a52c:
    var_178 = r22;
    r22 = r29 - 0xc8;
    if (r20 == 0x0) {
            if (getsockname(r28, r29 - 0xa0, r29 - 0xc8) != 0x0) {
                    strerror(*(int32_t *)__error());
                    *(int32_t *)__error();
                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x0 withFormat:@"Failed retrieving socket address: %s (%i)"];
                    r20 = 0x0;
            }
            else {
                    r8 = 0x10;
                    asm { ldurh      w8, [fp, var_9E] };
                    asm { rev        w8, w8 };
                    r20 = r8 >> 0x10;
            }
    }
    *(r22 + 0xc) = 0x0;
    *(r22 + 0x4) = 0x0;
    *(r22 + 0x14) = 0x0;
    r8 = 0x1e1c;
    asm { rev        w8, w20 };
    r21 = r8 >> 0x10;
    r8 = (r29 - 0xc8) + 0x8;
    if (var_160 != 0x0) {
            r9 = *_in6addr_loopback;
    }
    else {
            r9 = *_in6addr_any;
    }
    *(int128_t *)r8 = *(int128_t *)r9;
    r22 = var_178;
    r0 = [r19 _createListeningSocket:r2 localAddress:r3 length:r4 maxPendingConnections:r5 error:r6];
    if (r0 <= 0x0) goto loc_10021a8f0;

loc_10021a628:
    var_168 = @selector(boolValue);
    var_198 = r21;
    var_194 = r0;
    r21 = *(r19 + r22);
    r1 = @selector(class);
    var_188 = r1;
    r23 = [NSStringFromClass(objc_msgSend(r19, r1)) retain];
    r21 = [r21 retain];
    r25 = [r23 retain];
    r27 = var_180;
    r0 = objc_msgSend(r21, r27);
    r29 = r29;
    r23 = [r0 retain];
    r0 = [r21 release];
    if (r23 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r23;
            }
            else {
                    r0 = r25;
            }
    }
    r21 = [r0 retain];
    [r25 release];
    [r23 release];
    r24 = [r21 copy];
    [r21 release];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_serverName));
    r0 = *(r19 + r26);
    *(r19 + r26) = r24;
    [r0 release];
    [r25 release];
    r0 = *(r19 + r22);
    r0 = [r0 retain];
    r21 = r0;
    r0 = objc_msgSend(r0, r27);
    r29 = r29;
    r24 = [r0 retain];
    [r21 release];
    r0 = [r24 isEqualToString:r2];
    var_190 = r24;
    var_1A0 = r26;
    if (r0 == 0x0) goto loc_10021a900;

loc_10021a750:
    r0 = *(r19 + r22);
    r21 = *(r19 + r26);
    r24 = [r0 retain];
    r21 = [r21 retain];
    r0 = objc_msgSend(r24, r27);
    r29 = r29;
    r25 = [r0 retain];
    r0 = [r24 release];
    if (r25 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r25;
            }
            else {
                    r0 = r21;
            }
    }
    r24 = [r0 retain];
    [r21 release];
    [r25 release];
    r0 = [r24 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_authenticationRealm));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    [r24 release];
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_authenticationBasicAccounts));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r21 = *(r19 + r22);
    r23 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    r21 = [r21 retain];
    r23 = [r23 retain];
    r0 = objc_msgSend(r21, r27);
    r29 = r29;
    r24 = [r0 retain];
    r0 = [r21 release];
    if (r24 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r24;
            }
            else {
                    r0 = r23;
            }
    }
    r21 = [r0 retain];
    [r23 release];
    [r24 release];
    [r23 release];
    goto loc_10021aab8;

loc_10021aab8:
    [r21 enumerateKeysAndObjectsUsingBlock:r2];
    [r21 release];
    goto loc_10021aac8;

loc_10021aac8:
    r21 = *(r19 + r22);
    r23 = objc_msgSend(@class(ADCGCDWebServerConnection), var_188);
    r21 = [r21 retain];
    r23 = [r23 retain];
    r0 = objc_msgSend(r21, r27);
    r29 = r29;
    r24 = [r0 retain];
    r0 = [r21 release];
    if (r24 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r24;
            }
            else {
                    r0 = r23;
            }
    }
    r21 = [r0 retain];
    [r23 release];
    [r24 release];
    [r21 release];
    r19->_connectionClass = r21;
    r21 = *(r19 + r22);
    r23 = [objc_msgSend(@class(NSNumber), var_170) retain];
    r21 = [r21 retain];
    r23 = [r23 retain];
    r0 = objc_msgSend(r21, r27);
    r29 = r29;
    r24 = [r0 retain];
    r0 = [r21 release];
    if (r24 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r24;
            }
            else {
                    r0 = r23;
            }
    }
    r21 = [r0 retain];
    [r23 release];
    [r24 release];
    r24 = objc_msgSend(r21, var_168);
    [r21 release];
    *(int8_t *)(int64_t *)&r19->_mapHEADToGET = r24;
    [r23 release];
    r21 = *(r19 + r22);
    r23 = [[NSNumber numberWithDouble:@"AutomaticallyMapHEADToGET"] retain];
    r21 = [r21 retain];
    r23 = [r23 retain];
    r0 = objc_msgSend(r21, r27);
    r29 = r29;
    r24 = [r0 retain];
    r0 = [r21 release];
    if (r24 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r24;
            }
            else {
                    r0 = r23;
            }
    }
    r21 = [r0 retain];
    [r23 release];
    [r24 release];
    [r21 doubleValue];
    [r21 release];
    r19->_disconnectDelay = d8;
    [r23 release];
    r0 = [r19 _createDispatchSourceWithListeningSocket:r28 isIPv6:0x0];
    r0 = [r0 retain];
    r28 = sign_extend_64(*(int32_t *)ivar_offset(_source4));
    r8 = *(r19 + r28);
    *(r19 + r28) = r0;
    [r8 release];
    r0 = [r19 _createDispatchSourceWithListeningSocket:var_194 isIPv6:0x1];
    r0 = [r0 retain];
    r23 = r22;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_source6));
    r8 = *(r19 + r22);
    *(r19 + r22) = r0;
    [r8 release];
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_port));
    r26 = r8;
    *(r19 + r8) = r20;
    *(int8_t *)(int64_t *)&r19->_bindToLocalhost = var_160;
    r0 = *(r19 + r23);
    r0 = [r0 retain];
    r24 = [objc_msgSend(r0, r27) retain];
    [r0 release];
    r0 = *(r19 + r23);
    r0 = [r0 retain];
    r21 = r0;
    r0 = objc_msgSend(r0, r27);
    r29 = r29;
    r23 = [r0 retain];
    r0 = [r21 release];
    if (r23 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r23;
            }
            else {
                    r0 = @"_http._tcp";
            }
    }
    var_160 = [r0 retain];
    [r23 release];
    r20 = r27;
    if (r24 != 0x0) {
            r0 = [r24 length];
            r3 = r24;
            if (r0 == 0x0) {
                    r3 = *(r19 + var_1A0);
            }
            r0 = CFNetServiceCreate(**_kCFAllocatorDefault, @"local.", var_160, r3, *(int32_t *)(r19 + r26));
            r27 = sign_extend_64(*(int32_t *)ivar_offset(_registrationService));
            *(r19 + r27) = r0;
            if (r0 != 0x0) {
                    CFNetServiceSetClient(r0, 0x10021b434, r29 - 0xa0);
                    CFNetServiceScheduleWithRunLoop(*(r19 + r27), CFRunLoopGetMain(), **_kCFRunLoopCommonModes);
                    CFNetServiceRegisterWithOptions(*(r19 + r27), 0x0, &var_128);
                    r0 = CFNetServiceCreateCopy(r23, *(r19 + r27));
                    r21 = sign_extend_64(*(int32_t *)ivar_offset(_resolutionService));
                    *(r19 + r21) = r0;
                    if (r0 != 0x0) {
                            CFNetServiceSetClient(r0, 0x10021b548, r29 - 0xa0);
                            CFNetServiceScheduleWithRunLoop(*(r19 + r21), CFRunLoopGetMain(), r25);
                    }
                    else {
                            [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x0 withFormat:@"Failed creating CFNetService for resolution"];
                    }
            }
            else {
                    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x0 withFormat:@"Failed creating CFNetService for registration"];
            }
    }
    r21 = *(r19 + var_178);
    r23 = [objc_msgSend(@class(NSNumber), var_170) retain];
    r21 = [r21 retain];
    r23 = [r23 retain];
    r0 = objc_msgSend(r21, r20);
    r29 = r29;
    r20 = [r0 retain];
    r0 = [r21 release];
    if (r20 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r20;
            }
            else {
                    r0 = r23;
            }
    }
    r21 = [r0 retain];
    [r23 release];
    [r20 release];
    r20 = objc_msgSend(r21, var_168);
    [r21 release];
    [r23 release];
    if (r20 != 0x0) {
            r21 = (int64_t *)&r19->_dnsService;
            r0 = DNSServiceNATPortMappingCreate(r21, 0x0, 0x0, 0x20, var_198, var_198, 0x0, 0x10021b6d4, r19);
            if (r0 != 0x0) {
                    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
            }
            else {
                    r21 = CFSocketCreateWithNative(**_kCFAllocatorDefault, DNSServiceRefSockFD(*r21), 0x1, 0x10021b8f0, r29 - 0xa0);
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_dnsSocket));
                    *(r19 + r23) = r21;
                    if (r21 != 0x0) {
                            CFSocketSetSocketFlags(r21, CFSocketGetSocketFlags(r21) & 0xffffffffffffff7f);
                            r0 = CFSocketCreateRunLoopSource(r20, *(r19 + r23), 0x0);
                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_dnsSource));
                            *(r19 + r20) = r0;
                            if (r0 != 0x0) {
                                    CFRunLoopAddSource(CFRunLoopGetMain(), *(r19 + r20), **_kCFRunLoopCommonModes);
                            }
                            else {
                                    [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
                            }
                    }
                    else {
                            [ADCLogManager briefLogWithModuleID:r2 isPublic:r3 level:r4 withFormat:r5];
                    }
            }
    }
    dispatch_resume(*(r19 + r28));
    dispatch_resume(*(r19 + r22));
    objc_msgSend(r19, var_188);
    r22 = [[r19 serverURL] retain];
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x2 withFormat:@"%@ started on port %i and reachable at %@"];
    [r22 release];
    if ([r19->_delegate respondsToSelector:@selector(webServerDidStart:)] != 0x0) {
            dispatch_async(*__dispatch_main_q, &var_150);
    }
    [var_160 release];
    [r24 release];
    [var_190 release];
    r0 = 0x1;
    goto loc_10021b128;

loc_10021b128:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10021a900:
    if ([r24 isEqualToString:r2] == 0x0) goto loc_10021aac8;

loc_10021a918:
    r0 = *(r19 + r22);
    r21 = *(r19 + var_1A0);
    r24 = [r0 retain];
    r21 = [r21 retain];
    r0 = objc_msgSend(r24, r27);
    r29 = r29;
    r25 = [r0 retain];
    r0 = [r24 release];
    if (r25 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r25;
            }
            else {
                    r0 = r21;
            }
    }
    r24 = [r0 retain];
    [r21 release];
    [r25 release];
    r0 = [r24 copy];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_authenticationRealm));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    [r24 release];
    r0 = [NSMutableDictionary alloc];
    r0 = [r0 init];
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_authenticationDigestAccounts));
    r8 = *(r19 + r9);
    *(r19 + r9) = r0;
    [r8 release];
    r21 = *(r19 + r22);
    r23 = [[NSDictionary dictionaryWithObjects:r2 forKeys:r3 count:r4] retain];
    r21 = [r21 retain];
    r23 = [r23 retain];
    r0 = objc_msgSend(r21, r27);
    r29 = r29;
    r24 = [r0 retain];
    r0 = [r21 release];
    if (r24 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r0 = r24;
            }
            else {
                    r0 = r23;
            }
    }
    r21 = [r0 retain];
    [r23 release];
    [r24 release];
    [r23 release];
    goto loc_10021aab8;

loc_10021a8f0:
    close(r28);
    goto loc_10021a8f8;

loc_10021a8f8:
    r0 = 0x0;
    goto loc_10021b128;
}

-(bool)startWithPort:(unsigned long long)arg2 bonjourName:(void *)arg3 {
    r24 = [arg3 retain];
    r22 = [[NSMutableDictionary dictionary] retain];
    r21 = [[NSNumber numberWithInteger:arg2] retain];
    [r22 setObject:r21 forKey:@"Port"];
    [r21 release];
    [r22 setValue:arg3 forKey:@"BonjourName"];
    [r24 release];
    r19 = [self startWithOptions:r22 error:0x0];
    [r22 release];
    r0 = r19;
    return r0;
}

-(void)addDefaultHandlerForMethod:(void *)arg2 requestClass:(void *)arg3 processBlock:(void *)arg4 {
    r22 = [arg2 retain];
    r0 = [arg4 retain];
    r23 = [r0 retain];
    [self addDefaultHandlerForMethod:r22 requestClass:arg3 asyncProcessBlock:&var_58];
    [r22 release];
    [r0 release];
    [r23 release];
    return;
}

-(void)addDefaultHandlerForMethod:(void *)arg2 requestClass:(void *)arg3 asyncProcessBlock:(void *)arg4 {
    r22 = [arg2 retain];
    r19 = [arg4 retain];
    var_30 = r22;
    r22 = [r22 retain];
    [self addHandlerWithMatchBlock:&var_50 asyncProcessBlock:r19];
    [r19 release];
    [var_30 release];
    [r22 release];
    return;
}

-(void)addHandlerForMethod:(void *)arg2 path:(void *)arg3 requestClass:(void *)arg4 processBlock:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [arg5 retain];
    r24 = [r0 retain];
    [self addHandlerForMethod:r23 path:r21 requestClass:arg4 asyncProcessBlock:&var_58];
    [r21 release];
    [r23 release];
    [r0 release];
    [r24 release];
    return;
}

-(void)addHandlerForMethod:(void *)arg2 path:(void *)arg3 requestClass:(void *)arg4 asyncProcessBlock:(void *)arg5 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r23 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r22 = [arg5 retain];
    if ([r20 hasPrefix:@"/"] != 0x0 && [r23 isSubclassOfClass:[ADCGCDWebServerRequest class]] != 0x0) {
            var_48 = [r19 retain];
            var_40 = [r20 retain];
            [r21 addHandlerWithMatchBlock:&var_68 asyncProcessBlock:r22];
            [var_40 release];
            [var_48 release];
    }
    [r22 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)addHandlerForMethod:(void *)arg2 pathRegex:(void *)arg3 requestClass:(void *)arg4 processBlock:(void *)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r0 = [arg5 retain];
    r24 = [r0 retain];
    [self addHandlerForMethod:r23 pathRegex:r21 requestClass:arg4 asyncProcessBlock:&var_58];
    [r21 release];
    [r23 release];
    [r0 release];
    [r24 release];
    return;
}

-(void)addHandlerForMethod:(void *)arg2 pathRegex:(void *)arg3 requestClass:(void *)arg4 asyncProcessBlock:(void *)arg5 {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r22 = arg4;
    r21 = self;
    r19 = [arg2 retain];
    r24 = [arg3 retain];
    r20 = [arg5 retain];
    r23 = [[NSRegularExpression regularExpressionWithPattern:r24 options:0x1 error:0x0] retain];
    [r24 release];
    if (r23 != 0x0 && [r22 isSubclassOfClass:[ADCGCDWebServerRequest class]] != 0x0) {
            var_48 = [r19 retain];
            var_40 = [r23 retain];
            [r21 addHandlerWithMatchBlock:&var_68 asyncProcessBlock:r20];
            [var_40 release];
            [var_48 release];
    }
    [r23 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)addGETHandlerForPath:(void *)arg2 staticData:(void *)arg3 contentType:(void *)arg4 cacheAge:(unsigned long long)arg5 {
    r23 = [arg2 retain];
    r21 = [arg3 retain];
    r20 = [arg4 retain];
    r24 = [ADCGCDWebServerRequest class];
    var_48 = r21;
    r21 = [r21 retain];
    var_40 = r20;
    r20 = [r20 retain];
    [self addHandlerForMethod:@"GET" path:r23 requestClass:r24 processBlock:&var_68];
    [r23 release];
    [var_40 release];
    [var_48 release];
    [r20 release];
    [r21 release];
    return;
}

-(void)addGETHandlerForPath:(void *)arg2 filePath:(void *)arg3 isAttachment:(bool)arg4 cacheAge:(unsigned long long)arg5 allowRangeRequests:(bool)arg6 {
    r24 = [arg2 retain];
    r22 = [arg3 retain];
    r25 = [ADCGCDWebServerRequest class];
    r20 = [r22 retain];
    [self addHandlerForMethod:@"GET" path:r24 requestClass:r25 processBlock:&var_78];
    [r24 release];
    [r22 release];
    [r20 release];
    return;
}

-(void)addGETHandlerForBasePath:(void *)arg2 directoryPath:(void *)arg3 indexFilename:(void *)arg4 cacheAge:(unsigned long long)arg5 allowRangeRequests:(bool)arg6 {
    r31 = r31 - 0xe0;
    var_50 = d9;
    stack[-88] = d8;
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
    r23 = arg6;
    r24 = arg5;
    r22 = self;
    r19 = [arg2 retain];
    r20 = [arg3 retain];
    r21 = [arg4 retain];
    if ([r19 hasPrefix:@"/"] != 0x0 && [r19 hasSuffix:r2] != 0x0) {
            r25 = [r19 retain];
            var_A8 = [r20 retain];
            var_A0 = [r25 retain];
            var_98 = [r21 retain];
            [r22 addHandlerWithMatchBlock:&var_78 processBlock:&var_C8];
            [var_98 release];
            [var_A0 release];
            [var_A8 release];
            [r25 release];
    }
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void *)_responseWithContentsOfDirectory:(void *)arg2 {
    r31 = r31 - 0x1b0;
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
    r21 = [arg2 retain];
    r0 = [NSFileManager defaultManager];
    r0 = [r0 retain];
    r19 = r0;
    r0 = [r0 enumeratorAtPath:r21];
    r29 = &saved_fp;
    r20 = [r0 retain];
    [r21 release];
    [r19 release];
    if (r20 == 0x0) goto loc_10021dd14;

loc_10021da2c:
    r0 = [NSMutableString string];
    r29 = r29;
    r0 = [r0 retain];
    [r0 appendString:@"<!DOCTYPE html>\n"];
    [r0 appendString:@"<html><head><meta charset=\"utf-8\"></head><body>\n"];
    var_160 = r0;
    [r0 appendString:@"<ul>\n"];
    var_108 = q0;
    var_178 = r20;
    r0 = [r20 retain];
    r22 = r0;
    r1 = @selector(countByEnumeratingWithState:objects:count:);
    var_170 = r1;
    r25 = objc_msgSend(r0, r1);
    if (r25 == 0x0) goto loc_10021dca8;

loc_10021dadc:
    r26 = *var_108;
    r8 = *_NSFileType;
    r9 = *_NSFileTypeRegular;
    var_148 = *r8;
    var_150 = *r9;
    goto loc_10021db1c;

loc_10021db1c:
    r20 = 0x0;
    r23 = @selector(hasPrefix:);
    r21 = @selector(skipDescendents);
    r24 = @selector(isEqualToString:);
    var_140 = r21;
    stack[-328] = r24;
    goto loc_10021db6c;

loc_10021db6c:
    if (*var_108 != r26) {
            objc_enumerationMutation(r22);
    }
    r28 = *(var_110 + r20 * 0x8);
    if ((objc_msgSend(r28, r23) & 0x1) != 0x0) goto loc_10021dc70;

loc_10021dba0:
    r21 = r23;
    r23 = r25;
    r25 = r26;
    r0 = [r22 fileAttributes];
    r0 = [r0 retain];
    r26 = [[r0 objectForKey:var_148] retain];
    [r0 release];
    r0 = [r28 stringByAddingPercentEscapesUsingEncoding:0x4];
    r29 = r29;
    r19 = [r0 retain];
    if (objc_msgSend(r26, r24) == 0x0) goto loc_10021dc28;

loc_10021dc14:
    r0 = var_160;
    r1 = @selector(appendFormat:);
    goto loc_10021dc4c;

loc_10021dc4c:
    objc_msgSend(r0, r1);
    goto loc_10021dc50;

loc_10021dc50:
    [r19 release];
    [r26 release];
    r26 = r25;
    r25 = r23;
    r23 = r21;
    r21 = var_140;
    r24 = stack[-328];
    goto loc_10021dc70;

loc_10021dc70:
    objc_msgSend(r22, r21);
    r20 = r20 + 0x1;
    if (r20 < r25) goto loc_10021db6c;

loc_10021dc88:
    r25 = objc_msgSend(r22, var_170);
    if (r25 != 0x0) goto loc_10021db1c;

loc_10021dca8:
    [r22 release];
    [var_160 appendString:r2];
    [var_160 appendString:r2];
    r19 = [[ADCGCDWebServerDataResponse responseWithHTML:var_160] retain];
    [var_160 release];
    r20 = var_178;
    goto loc_10021dd18;

loc_10021dd18:
    var_58 = **___stack_chk_guard;
    [r20 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_10021dc28:
    if (objc_msgSend(r26, r24) == 0x0) goto loc_10021dc50;

loc_10021dc3c:
    r0 = var_160;
    r1 = @selector(appendFormat:);
    goto loc_10021dc4c;

loc_10021dd14:
    r19 = 0x0;
    goto loc_10021dd18;
}

+(void)setLogLevel:(int)arg2 {
    return;
}

-(void)logVerbose:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSString alloc] initWithFormat:r22 arguments:&saved_fp + 0x10];
    [r22 release];
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x2 withFormat:@"%@"];
    [r20 release];
    return;
}

-(void)logInfo:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSString alloc] initWithFormat:r22 arguments:&saved_fp + 0x10];
    [r22 release];
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x2 withFormat:@"%@"];
    [r20 release];
    return;
}

-(void)logWarning:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSString alloc] initWithFormat:r22 arguments:&saved_fp + 0x10];
    [r22 release];
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x1 withFormat:@"%@"];
    [r20 release];
    return;
}

-(void)logError:(void *)arg2 {
    r22 = [arg2 retain];
    r20 = [[NSString alloc] initWithFormat:r22 arguments:&saved_fp + 0x10];
    [r22 release];
    [ADCLogManager briefLogWithModuleID:0x0 isPublic:0x0 level:0x0 withFormat:@"%@"];
    [r20 release];
    return;
}

-(void)logException:(void *)arg2 {
    return;
}

@end