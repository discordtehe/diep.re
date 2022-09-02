@implementation UMONCustomEventBuilder

-(void *)category {
    r0 = self->_category;
    return r0;
}

-(void)setCategory:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_category, arg2);
    return;
}

-(void *)type {
    r0 = self->_type;
    return r0;
}

-(void)setType:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_type, arg2);
    return;
}

-(void *)userInfo {
    r0 = self->_userInfo;
    return r0;
}

-(void)setUserInfo:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_userInfo, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_userInfo, 0x0);
    objc_storeStrong((int64_t *)&self->_type, 0x0);
    objc_storeStrong((int64_t *)&self->_category, 0x0);
    return;
}

@end