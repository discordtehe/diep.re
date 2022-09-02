@implementation SSWVConnectivityConfiguration

-(void *)messageHandlerName {
    r0 = self->_messageHandlerName;
    return r0;
}

-(void)setMessageHandlerName:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_messageHandlerName, arg2);
    return;
}

-(void *)interface {
    r0 = self->_interface;
    return r0;
}

-(void)setInterface:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_interface, arg2);
    return;
}

-(void *)parser {
    r0 = self->_parser;
    return r0;
}

-(void)setParser:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_parser, arg2);
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_parser, 0x0);
    objc_storeStrong((int64_t *)&self->_interface, 0x0);
    objc_storeStrong((int64_t *)&self->_messageHandlerName, 0x0);
    return;
}

@end