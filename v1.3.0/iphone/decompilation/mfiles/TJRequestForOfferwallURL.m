@implementation TJRequestForOfferwallURL

+(void *)requestsInProgress {
    if (*qword_1011dc0a8 != -0x1) {
            dispatch_once(0x1011dc0a8, 0x100ea12b8);
    }
    r0 = *0x1011dc0a0;
    r0 = objc_retainAutoreleaseReturnValue(r0);
    return r0;
}

+(void)startWithPlacementName:(void *)arg2 completion:(void *)arg3 {
    r21 = [arg2 retain];
    r24 = [arg3 retain];
    r0 = [TJRequestForOfferwallURL alloc];
    r0 = [r0 init];
    r19 = r0;
    [r0 setCompletion:r24];
    [r24 release];
    r22 = [[TJPlacement placementWithNameForOfferwallURL:r21 delegate:r19] retain];
    [r21 release];
    r0 = [self requestsInProgress];
    r0 = [r0 retain];
    [r0 addObject:r19];
    [r0 release];
    [r22 requestContent];
    [r22 release];
    [r19 release];
    return;
}

-(void)requestDidSucceed:(void *)arg2 {
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
    r20 = self;
    r19 = [arg2 retain];
    r0 = [r20 class];
    r0 = [r0 requestsInProgress];
    r0 = [r0 retain];
    [r0 removeObject:r20];
    [r0 release];
    r0 = [r19 content];
    r29 = &saved_fp;
    r0 = [r0 retain];
    r21 = r0;
    [r0 release];
    if (r21 != 0x0) {
            r23 = [[r19 content] retain];
            r0 = [NSJSONSerialization JSONObjectWithData:r23 options:0x4 error:0x0];
            r29 = r29;
            r22 = [r0 retain];
            [r23 release];
            if (r22 != 0x0) {
                    r25 = [[r22 valueForKey:@"url"] retain];
                    r21 = [[NSURL URLWithString:r25] retain];
                    [r25 release];
                    r23 = [[r22 valueForKey:@"expires"] retain];
                    r0 = [NSDate tj_dateFromHttpHeaderString:r23];
                    r29 = r29;
                    r24 = [r0 retain];
                    [r23 release];
                    r23 = 0x0;
            }
            else {
                    r0 = [TJCUtil createErrorWithString:@"Malformed URL received"];
                    r29 = r29;
                    r23 = [r0 retain];
                    r24 = 0x0;
                    r21 = 0x0;
            }
            [r22 release];
            if (r23 == 0x0) {
                    if (r21 == 0x0) {
                            [r24 release];
                            r23 = [[TJCUtil createErrorWithString:@"No Offerwall URL available"] retain];
                            r24 = 0x0;
                            r21 = 0x0;
                    }
            }
    }
    else {
            r23 = 0x0;
            r24 = 0x0;
            if (r23 == 0x0) {
                    if (r21 == 0x0) {
                            [r24 release];
                            r23 = [[TJCUtil createErrorWithString:@"No Offerwall URL available"] retain];
                            r24 = 0x0;
                            r21 = 0x0;
                    }
            }
    }
    var_58 = r21;
    [r21 retain];
    [r24 retain];
    [r23 retain];
    dispatch_async(*__dispatch_main_q, &var_80);
    [r23 release];
    [r24 release];
    [var_58 release];
    [r22 release];
    [r21 release];
    [r20 release];
    [r19 release];
    return;
}

-(void)requestDidFail:(void *)arg2 error:(void *)arg3 {
    r20 = [arg3 retain];
    r0 = [self class];
    r0 = [r0 requestsInProgress];
    r0 = [r0 retain];
    [r0 removeObject:self];
    [r0 release];
    [r20 retain];
    dispatch_async(*__dispatch_main_q, &var_50);
    [r20 release];
    [r19 release];
    return;
}

-(void *)completion {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_completion)), 0x0);
    return r0;
}

-(void)setCompletion:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_completion, 0x0);
    return;
}

@end