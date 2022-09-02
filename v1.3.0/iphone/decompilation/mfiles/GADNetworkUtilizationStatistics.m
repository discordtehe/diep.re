@implementation GADNetworkUtilizationStatistics

-(void *)initWithTransmittedByteCounts:(struct NSDictionary *)arg2 receivedByteCounts:(struct NSDictionary *)arg3 {
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
    if (r21 != 0x0) {
            r0 = [r19 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_transmittedByteCounts));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
            r0 = [r20 copy];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_receivedByteCounts));
            r8 = *(r21 + r9);
            *(r21 + r9) = r0;
            [r8 release];
    }
    [r20 release];
    [r19 release];
    r0 = r21;
    return r0;
}

-(void *)init {
    r21 = [[NSDictionary dictionaryWithObjects:&stack[-56] forKeys:&stack[-56] count:0x0] retain];
    r0 = @class(NSDictionary);
    r0 = [r0 dictionaryWithObjects:&stack[-56] forKeys:&stack[-56] count:0x0];
    r20 = [r0 retain];
    r19 = [self initWithTransmittedByteCounts:r21 receivedByteCounts:r20];
    [r20 release];
    [r21 release];
    r0 = r19;
    return r0;
}

+(void *)currentStatistics {
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
    r29 = &saved_fp;
    r0 = getifaddrs(&var_58);
    r19 = r0;
    r0 = __error();
    if (r19 == 0x0 && var_58 != 0x0) {
            r0 = @class(NSMutableArray);
            r0 = [r0 alloc];
            r22 = @selector(init);
            r19 = objc_msgSend(r0, r22);
            r21 = objc_msgSend([NSMutableArray alloc], r22);
            r22 = objc_msgSend([NSMutableArray alloc], r22);
            r27 = var_58;
            if (r27 != 0x0) {
                    do {
                            if (*(int8_t *)(*(r27 + 0x18) + 0x1) == 0x12) {
                                    if (*(r27 + 0x30) != 0x0) {
                                            r25 = [[NSString stringWithUTF8String:r2] retain];
                                            sub_100822370(r19, r25);
                                            sub_100822370(r21, [objc_msgSend(@class(NSNumber), r24) retain]);
                                            [r26 release];
                                            r0 = @class(NSNumber);
                                            r0 = objc_msgSend(r0, r24);
                                            r29 = r29;
                                            sub_100822370(r22, [r0 retain]);
                                            [r26 release];
                                            [r25 release];
                                    }
                            }
                            r27 = *r27;
                    } while (r27 != 0x0);
                    r20 = @selector(alloc);
                    r0 = var_58;
            }
            else {
                    r20 = @selector(alloc);
                    r0 = 0x0;
            }
            freeifaddrs(r0);
            r24 = [objc_msgSend(@class(NSDictionary), r20) initWithObjects:r21 forKeys:r19];
            r23 = [objc_msgSend(@class(NSDictionary), r20) initWithObjects:r22 forKeys:r19];
            r20 = [objc_msgSend(@class(GADNetworkUtilizationStatistics), r20) initWithTransmittedByteCounts:r24 receivedByteCounts:r23];
            [r23 release];
            [r24 release];
            [r22 release];
            [r21 release];
            [r19 release];
    }
    else {
            sub_1007ce06c(0x0, @"Encountered system error #%d while trying to get network statistics.");
            r20 = 0x0;
    }
    r0 = [r20 autorelease];
    return r0;
}

-(void *)updatedStatistics {
    r0 = [self class];
    r0 = [r0 currentStatistics];
    r0 = [r0 retain];
    r22 = [[r0 transmittedByteCounts] retain];
    r23 = [[self transmittedByteCounts] retain];
    r21 = [sub_100897640(r22, r23) retain];
    [r23 release];
    [r22 release];
    r23 = [[r0 receivedByteCounts] retain];
    r20 = [[self receivedByteCounts] retain];
    r22 = [sub_100897640(r23, r20) retain];
    [r20 release];
    [r23 release];
    r20 = [[GADNetworkUtilizationStatistics alloc] initWithTransmittedByteCounts:r21 receivedByteCounts:r22];
    [r22 release];
    [r21 release];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void *)plusStatistics:(void *)arg2 {
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_transmittedByteCounts));
    r21 = *(self + r24);
    [arg2 retain];
    r21 = [r21 mutableCopy];
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_receivedByteCounts))) mutableCopy];
    sub_100897828(r21, *(arg2 + r24));
    r19 = *(arg2 + r25);
    [r23 release];
    sub_100897828(r20, r19);
    r19 = [[GADNetworkUtilizationStatistics alloc] initWithTransmittedByteCounts:r21 receivedByteCounts:r20];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(void *)minusStatistics:(void *)arg2 {
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_transmittedByteCounts));
    r21 = *(self + r24);
    [arg2 retain];
    r21 = [r21 mutableCopy];
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_receivedByteCounts))) mutableCopy];
    sub_1008979bc(r21, *(arg2 + r24));
    r19 = *(arg2 + r25);
    [r23 release];
    sub_1008979bc(r20, r19);
    r19 = [[GADNetworkUtilizationStatistics alloc] initWithTransmittedByteCounts:r21 receivedByteCounts:r20];
    [r20 release];
    [r21 release];
    r0 = [r19 autorelease];
    return r0;
}

-(struct NSDictionary *)transmittedByteCounts {
    r0 = self->_transmittedByteCounts;
    return r0;
}

-(struct NSDictionary *)receivedByteCounts {
    r0 = self->_receivedByteCounts;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_receivedByteCounts, 0x0);
    objc_storeStrong((int64_t *)&self->_transmittedByteCounts, 0x0);
    return;
}

@end