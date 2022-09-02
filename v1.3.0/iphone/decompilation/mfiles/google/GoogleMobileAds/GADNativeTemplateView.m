@implementation GADNativeTemplateView

-(void *)getTemplateTypeName {
    r0 = self->_templateTypeName;
    return r0;
}

-(void)setTemplateTypeName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_templateTypeName, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_templateTypeName, 0x0);
    return;
}

@end