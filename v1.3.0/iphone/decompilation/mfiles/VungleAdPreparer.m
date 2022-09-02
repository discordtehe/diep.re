@implementation VungleAdPreparer

+(void *)buildErrorWithVungleMRAIDAd:(void *)arg2 {
    saved_fp = r29;
    stack[-8] = r30;
    r31 = r31 + 0xfffffffffffffff0;
    if ([arg2 state] == 0x2) {
            r0 = objc_alloc();
            r0 = [r0 initWithDomain:@"com.vungle.mraid.vungleAdPreparer" code:0xfffffffffffffc18 userInfo:0x0];
    }
    else {
            r0 = 0x0;
    }
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            r0 = [VNGOperationQueue new];
            r8 = *(r19 + 0x8);
            *(r19 + 0x8) = r0;
            [r8 release];
    }
    r0 = r19;
    return r0;
}

-(void *)queue {
    r0 = *(self + 0x8);
    return r0;
}

-(void)prepareAd:(void *)arg2 placementID:(void *)arg3 completion:(void *)arg4 {
    return;
}

-(void *)adBeingPrepared {
    r0 = *(self + 0x10);
    return r0;
}

-(void)setAdBeingPrepared:(void *)arg2 {
    objc_storeStrong(self + 0x10, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong(self + 0x10, 0x0);
    objc_storeStrong(self + 0x8, 0x0);
    return;
}

@end