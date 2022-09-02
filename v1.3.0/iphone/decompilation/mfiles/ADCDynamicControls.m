@implementation ADCDynamicControls

-(bool)batteryMonitoringEnabled {
    r0 = *(int8_t *)(int64_t *)&self->_batteryMonitoringEnabled;
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
    if (r19 != 0x0) {
            [r19 setBatteryMonitoringEnabled:0x1];
    }
    r0 = r19;
    return r0;
}

-(void)setBatteryMonitoringEnabled:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_batteryMonitoringEnabled = arg2;
    return;
}

@end