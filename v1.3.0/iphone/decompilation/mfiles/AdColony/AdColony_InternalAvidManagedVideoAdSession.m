@implementation AdColony_InternalAvidManagedVideoAdSession

+(void *)sessionType {
    objc_retainAutorelease(@"managedVideo");
    return @"managedVideo";
}

+(void *)mediaType {
    objc_retainAutorelease(@"video");
    return @"video";
}

-(void *)initWithId:(void *)arg2 context:(void *)arg3 {
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r29 = &saved_fp;
    r21 = [arg2 retain];
    r0 = [[&var_30 super] initWithId:r21 context:arg3];
    r19 = r0;
    [r21 release];
    if (r19 != 0x0) {
            r20 = [AdColony_AvidVideoPlaybackListenerImpl new];
            [r19 setAvidVideoPlaybackListenerImpl:r20];
            [r20 release];
            r20 = [[r19 avidVideoPlaybackListenerImpl] retain];
            r0 = [r19 eventDispatcher];
            r29 = r29;
            r21 = [r0 retain];
            [r20 setDispatcher:r21];
            [r21 release];
            [r20 release];
    }
    r0 = r19;
    return r0;
}

-(void *)avidVideoPlaybackListener {
    r0 = [self avidVideoPlaybackListenerImpl];
    return r0;
}

-(void *)avidVideoPlaybackListenerImpl {
    r0 = self->_avidVideoPlaybackListenerImpl;
    return r0;
}

-(void)eventDispatcher:(void *)arg2 didPushEvent:(void *)arg3 {
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffc0 - 0x10;
    r21 = self;
    r19 = [arg2 retain];
    r0 = [arg3 retain];
    r20 = r0;
    r0 = [r0 type];
    r29 = &saved_fp;
    r22 = [r0 retain];
    r23 = [@"video" isEqualToString:r2];
    [r22 release];
    if (r23 != 0x0) {
            r21 = [[r21 avidBridge] retain];
            r22 = [[r20 name] retain];
            r0 = [r20 data];
            r29 = r29;
            r23 = [r0 retain];
            [r21 publishVideoEvent:r22 data:r23];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    else {
            var_38 = *0x101166500;
            r0 = [[&var_40 super] eventDispatcher:r19 didPushEvent:r20];
    }
    [r20 release];
    [r19 release];
    return;
}

-(void)setAvidVideoPlaybackListenerImpl:(void *)arg2 {
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_avidVideoPlaybackListenerImpl));
    r0 = [arg2 retain];
    r8 = *(self + r20);
    *(self + r20) = r0;
    [r8 release];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_avidVideoPlaybackListenerImpl, 0x0);
    return;
}

@end