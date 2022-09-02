@implementation AlarmManagerSchedulerHelper

-(void *)initWithAlarmManager:(struct AlarmManager *)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg2;
    r0 = [[&var_20 super] init];
    if (r0 != 0x0) {
            *(r0 + 0x8) = r19;
    }
    return r0;
}

-(void)updateTick {
    sub_10003b18c(*(self + 0x8));
    return;
}

@end