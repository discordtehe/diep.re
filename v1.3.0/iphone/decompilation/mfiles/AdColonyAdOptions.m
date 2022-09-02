@implementation AdColonyAdOptions

-(void)setShowPrePopup:(bool)arg2 {
    r21 = [[self getOptions] retain];
    r22 = [[NSNumber numberWithBool:arg2] retain];
    [r21 setObject:r22 forKeyedSubscript:@"pre_popup"];
    [r22 release];
    [r21 release];
    *(int8_t *)(int64_t *)&self->_showPrePopup = arg2;
    return;
}

-(void)setShowPostPopup:(bool)arg2 {
    r21 = [[self getOptions] retain];
    r22 = [[NSNumber numberWithBool:arg2] retain];
    [r21 setObject:r22 forKeyedSubscript:@"post_popup"];
    [r22 release];
    [r21 release];
    *(int8_t *)(int64_t *)&self->_showPostPopup = arg2;
    return;
}

-(bool)showPrePopup {
    r0 = *(int8_t *)(int64_t *)&self->_showPrePopup;
    return r0;
}

-(bool)showPostPopup {
    r0 = *(int8_t *)(int64_t *)&self->_showPostPopup;
    return r0;
}

@end