@implementation APMConditionalUserProperty

-(void *)name {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_name)), 0x0);
    return r0;
}

-(void *)copyWithZone:(struct _NSZone *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = [[APMConditionalUserProperty alloc] init];
    if (r20 != 0x0) {
            [r20 setName:r19->_name];
            [r20 setOrigin:r19->_origin];
            [r20 setValue:r19->_value];
            r2 = r19->_triggerEventName;
            [r20 setTriggerEventName:r2];
            [r20 setTriggerTimeout:r2];
            [r20 setTimeToLive:r2];
            [r20 setTriggeredEvent:r19->_triggeredEvent];
            [r20 setTimedOutEvent:r19->_timedOutEvent];
            r2 = r19->_expiredEvent;
            [r20 setExpiredEvent:r2];
            [r20 setCreationTimestamp:r2];
            r2 = *(int8_t *)(int64_t *)&r19->_active;
            [r20 setActive:r2];
            [r20 setTriggeredTimestamp:r2];
    }
    r0 = r20;
    return r0;
}

-(void)setName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)origin {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_origin)), 0x0);
    return r0;
}

-(void *)value {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_value)), 0x0);
    return r0;
}

-(void)setValue:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void)setOrigin:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)triggerEventName {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_triggerEventName)), 0x0);
    return r0;
}

-(void)setTriggerTimeout:(double)arg2 {
    self->_triggerTimeout = d0;
    return;
}

-(void)setTriggerEventName:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)triggerTimeout {
    r0 = self;
    return r0;
}

-(double)timeToLive {
    r0 = self;
    return r0;
}

-(void)setTimeToLive:(double)arg2 {
    self->_timeToLive = d0;
    return;
}

-(void)setTriggeredEvent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)triggeredEvent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_triggeredEvent)), 0x0);
    return r0;
}

-(void *)timedOutEvent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_timedOutEvent)), 0x0);
    return r0;
}

-(void)setTimedOutEvent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void *)expiredEvent {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_expiredEvent)), 0x0);
    return r0;
}

-(void)setExpiredEvent:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(double)creationTimestamp {
    r0 = self;
    return r0;
}

-(void)setCreationTimestamp:(double)arg2 {
    self->_creationTimestamp = d0;
    return;
}

-(bool)isActive {
    r0 = *(int8_t *)(int64_t *)&self->_active;
    return r0;
}

-(void)setActive:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_active = arg2;
    return;
}

-(void)setTriggeredTimestamp:(double)arg2 {
    self->_triggeredTimestamp = d0;
    return;
}

-(double)triggeredTimestamp {
    r0 = self;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_expiredEvent, 0x0);
    objc_storeStrong((int64_t *)&self->_timedOutEvent, 0x0);
    objc_storeStrong((int64_t *)&self->_triggeredEvent, 0x0);
    objc_storeStrong((int64_t *)&self->_triggerEventName, 0x0);
    objc_storeStrong((int64_t *)&self->_value, 0x0);
    objc_storeStrong((int64_t *)&self->_origin, 0x0);
    objc_storeStrong((int64_t *)&self->_name, 0x0);
    return;
}

@end