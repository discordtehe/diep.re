@implementation GADContentHashingController

+(void *)sharedInstance {
    if (*qword_1011dbef0 != -0x1) {
            dispatch_once(0x1011dbef0, 0x100e9cf08);
    }
    r0 = *0x1011dbef8;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

-(void *)init {
    r31 = r31 - 0x80;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r0 = [[&var_40 super] init];
    r19 = r0;
    if (r19 != 0x0) {
            r20 = @selector(init);
            r0 = sub_100860a2c("com.google.admob.n.content-hashing", 0x0, 0x21);
            r0 = [r0 retain];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_serialQueue));
            r8 = *(r19 + r9);
            *(r19 + r9) = r0;
            [r8 release];
            r0 = [GADObserverCollection alloc];
            r0 = objc_msgSend(r0, r20);
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_observers));
            r8 = *(r19 + r20);
            *(r19 + r20) = r0;
            [r8 release];
            objc_initWeak(&stack[-88], r19);
            [[NSOperationQueue mainQueue] retain];
            objc_copyWeak(&var_70 + 0x20, &stack[-88]);
            [r20 addObserverForName:*0x100e9c400 object:0x0 queue:r22 usingBlock:&var_70];
            [r22 release];
            objc_destroyWeak(&var_70 + 0x20);
            objc_destroyWeak(&stack[-88]);
    }
    r0 = r19;
    return r0;
}

-(void *)fingerprintWithServedPenaltyDeduction {
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    var_38 = &var_40;
    r19 = self->_serialQueue;
    var_50 = [self retain];
    dispatch_sync(r19, &var_70);
    if ([*(var_38 + 0x28) length] != 0x0) {
            r0 = [GADSQLStorage sharedInstance];
            r0 = [r0 retain];
            r19 = r0;
            [r0 setString:*(var_38 + 0x28) forKey:*0x100e9be10];
    }
    else {
            r0 = [GADSQLStorage sharedInstance];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 stringForKey:*0x100e9be10];
            r0 = [r0 retain];
            r8 = *(var_38 + 0x28);
            *(var_38 + 0x28) = r0;
            [r8 release];
    }
    [r19 release];
    [*(var_38 + 0x28) retain];
    [var_50 release];
    _Block_object_dispose(&var_40, 0x8);
    [0x0 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void)startContentHashing {
    r31 = r31 - 0xd0;
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
    r29 = &saved_fp;
    r19 = self;
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_scheduler));
    if (*(r19 + r26) == 0x0) {
            r0 = @class(GADSettings);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            [r0 integerForKey:*0x100e9b860];
            [r0 release];
            r0 = @class(GADSettings);
            r0 = [r0 sharedInstance];
            r0 = [r0 retain];
            [r0 doubleForKey:*0x100e9b868];
            [r0 release];
            r20 = *(r19 + sign_extend_64(*(int32_t *)ivar_offset(_serialQueue)));
            var_60 = [r19 retain];
            dispatch_sync(r20, &var_80);
            objc_initWeak(&stack[-152], r21->_contentQueue);
            r0 = [GADScheduler alloc];
            r0 = [r0 initWithInterval:*0x100e9b868];
            r8 = *(r19 + r26);
            *(r19 + r26) = r0;
            [r8 release];
            r21 = [[GADViewHierarchyTraverser alloc] init];
            [*(r19 + r24) retain];
            [r21 retain];
            objc_copyWeak(&var_C0 + 0x30, &stack[-152]);
            r22 = [r22 retain];
            r0 = objc_retainBlock(&var_C0);
            r24 = *(r19 + r26);
            r25 = *__dispatch_main_q;
            [r25 retain];
            [r24 scheduleOnQueue:r25 block:r0];
            [*__dispatch_main_q release];
            [*(r19 + r26) start];
            [r0 release];
            [r22 release];
            objc_destroyWeak(&var_C0 + 0x30);
            [r21 release];
            [r22 release];
            [r21 release];
            objc_destroyWeak(&stack[-152]);
            [var_60 release];
    }
    return;
}

-(void)stopContentHashing {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_scheduler));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            [r0 stop];
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void)getSignalUpdateQueue:(void * *)arg2 signalCreationBlock:(void * *)arg3 {
    *arg2 = [[dispatch_get_global_queue(0x0, 0x0) retain] autorelease];
    *arg3 = [objc_retainBlock(0x100e9d158) autorelease];
    return;
}

-(void)addSignalEntriesToMutableDictionary:(void *)arg2 {
    r31 = r31 - 0x70;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = [arg2 retain];
    r0 = [GADSettings sharedInstance];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r22 = [r0 boolForKey:*0x100e9b870];
    [r0 release];
    if (r22 != 0x0) {
            r0 = [r20 fingerprintWithServedPenaltyDeduction];
            r29 = r29;
            r0 = [r0 retain];
            r20 = r0;
            if ([r0 length] != 0x0) {
                    r21 = [[NSMutableDictionary alloc] init];
                    [@(0x1) retain];
                    r0 = [NSDictionary dictionaryWithObjects:&stack[-88] forKeys:&var_58 count:0x2];
                    sub_100822058(r21, *0x100e95e50, [r0 retain]);
                    [r24 release];
                    [r23 release];
                    [r19 addEntriesFromDictionary:r21];
                    [r21 release];
            }
            [r20 release];
    }
    var_38 = **___stack_chk_guard;
    [r19 release];
    if (**___stack_chk_guard != var_38) {
            __stack_chk_fail();
    }
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_observers, 0x0);
    objc_storeStrong((int64_t *)&self->_serialQueue, 0x0);
    objc_storeStrong((int64_t *)&self->_scheduler, 0x0);
    objc_storeStrong((int64_t *)&self->_contentQueue, 0x0);
    return;
}

@end