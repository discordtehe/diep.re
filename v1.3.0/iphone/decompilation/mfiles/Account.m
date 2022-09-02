@implementation Account

+(void *)account {
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >)getAppVersion {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = r8;
    r0 = [Application sharedApplication];
    if (r0 != 0x0) {
            r0 = [r0 getAppVersion];
    }
    else {
            *(int128_t *)r19 = 0x0;
            *(int128_t *)(r19 + 0x8) = 0x0;
            *(r19 + 0x10) = 0x0;
    }
    return r0;
}

-(void *)platformDisplayName {
    return @"guest_display_name";
}

-(void *)displayName {
    r0 = *(self + 0x10);
    return r0;
}

-(void *)userId {
    r0 = *(self + 0x8);
    return r0;
}

-(void)setUserId:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

-(void)setDisplayName:(void *)arg2 {
    objc_setProperty_nonatomic();
    return;
}

@end