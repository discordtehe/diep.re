@implementation TRCacheManager

-(void)sendEventsSuccess {
    r0 = [self events];
    r0 = [r0 retain];
    [r0 removeAllObjects];
    [r0 release];
    [self cacheCrashEvent:0x0];
    [self setRetryCount:0x0];
    return;
}

-(void *)initWithFlushEventsDelegate:(void *)arg2 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r21 = [[NSMutableArray arrayWithCapacity:0x5] retain];
            [r20 setEvents:r21];
            [r21 release];
            [r20 setDelegate:r19];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void)sendEventsFail {
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
    [self cacheEvents];
    r20 = [r19 retryCount];
    [r19 setRetryCount:r20 + 0x1];
    if (r20 <= 0x1) {
            r0 = [r19 delegate];
            r29 = r29;
            r22 = [r0 retain];
            if (r22 != 0x0) {
                    r0 = [r19 delegate];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = [r0 respondsToSelector:@selector(eventsRequireFlush:)];
                    [r0 release];
                    [r22 release];
                    if (r24 != 0x0) {
                            r0 = [r19 delegate];
                            r0 = [r0 retain];
                            [r0 eventsRequireFlush:0x0];
                            [r0 release];
                    }
            }
    }
    return;
}

-(void)addEvent:(void *)arg2 {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r23 = [arg2 retain];
    r0 = [r19 events];
    r0 = [r0 retain];
    [r0 addObject:arg2];
    [r23 release];
    [r0 release];
    r0 = [r19 events];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r23 = [r0 count];
    [r0 release];
    if (r23 < 0x5) goto loc_100425160;

loc_1004250a0:
    r0 = [r19 delegate];
    r29 = r29;
    r22 = [r0 retain];
    if (r22 == 0x0) goto .l1;

loc_1004250c4:
    r0 = [r19 delegate];
    r29 = r29;
    r0 = [r0 retain];
    r24 = [r0 respondsToSelector:@selector(eventsRequireFlush:)];
    [r0 release];
    [r22 release];
    if (r24 == 0x0) goto .l1;

loc_10042510c:
    r20 = @selector(delegate);
    r20 = [objc_msgSend(r19, r20) retain];
    r19 = [[r19 availableCachedEvents] retain];
    [r20 eventsRequireFlush:r19];
    [r19 release];
    r0 = r20;
    goto loc_1004251c0;

loc_1004251c0:
    [r0 release];
    return;

.l1:
    return;

loc_100425160:
    r22 = [[TREvent alloc] initWithName:*0x100e7d720];
    r0 = [r19 events];
    r0 = [r0 retain];
    [r0 addObject:r22];
    [r0 release];
    r0 = r22;
    goto loc_1004251c0;
}

-(void *)availableCachedEvents {
    r0 = [self events];
    r0 = [r0 retain];
    r20 = [[NSMutableArray arrayWithCapacity:[r0 count]] retain];
    [r0 release];
    r19 = [[self events] retain];
    [r20 addObjectsFromArray:r19];
    [r19 release];
    r19 = [[TRObjectStore retrieveObjectForKey:*0x100e7d700] retain];
    [r20 addObjectsFromArray:r19];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)cacheCrashEvent:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [arg2 retain];
    r19 = r0;
    if ([r0 eventType] == 0x0) {
            [TRObjectStore storeObject:r19 forKey:*0x100e7d6f8];
    }
    [r19 release];
    return;
}

-(void)cacheEvents {
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
    r20 = self;
    r0 = [TRObjectStore retrieveObjectForKey:*0x100e7d700];
    r29 = &saved_fp;
    r19 = [r0 retain];
    if (r19 != 0x0) {
            r0 = [r20 events];
            r29 = r29;
            r0 = [r0 retain];
            r25 = [r0 count];
            [r0 release];
            if (r25 >= 0x15) {
                    [TRObjectStore removeObjectForKey:*0x100e7d700];
                    r24 = [[TREvent alloc] initWithName:*0x100e7d728];
                    r0 = [r20 events];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 addObject:r2];
                    [r25 release];
            }
            else {
                    r0 = [r20 events];
                    r29 = r29;
                    r0 = [r0 retain];
                    r24 = r0;
                    [r0 addObjectsFromArray:r19];
            }
            [r24 release];
    }
    r23 = @selector(count);
    r0 = [r20 events];
    r29 = r29;
    r0 = [r0 retain];
    r23 = objc_msgSend(r0, r23);
    [r0 release];
    if (r23 != 0x0) {
            r24 = [[r20 events] retain];
            [TRObjectStore storeObject:r24 forKey:*0x100e7d700];
            [r24 release];
            r0 = [r20 events];
            r0 = [r0 retain];
            [r0 removeAllObjects];
            [r20 release];
    }
    [r19 release];
    return;
}

-(void *)crashEvent {
    r0 = [TRObjectStore retrieveObjectForKey:*0x100e7d6f8];
    return r0;
}

-(void *)events {
    r0 = self->_events;
    return r0;
}

-(void)setCrashEvent:(void *)arg2 {
    self->_crashEvent = arg2;
    return;
}

-(void)setEvents:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_events, arg2);
    return;
}

-(long long)retryCount {
    r0 = self->_retryCount;
    return r0;
}

-(void)setRetryCount:(long long)arg2 {
    self->_retryCount = arg2;
    return;
}

-(void *)delegate {
    r0 = self->_delegate;
    return r0;
}

-(void)setDelegate:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_delegate, arg2);
    return;
}

-(void *)objectStore {
    r0 = self->_objectStore;
    return r0;
}

-(void)setObjectStore:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_objectStore, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_objectStore, 0x0);
    objc_storeStrong((int64_t *)&self->_delegate, 0x0);
    objc_storeStrong((int64_t *)&self->_events, 0x0);
    return;
}

@end