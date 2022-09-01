// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ALARMMANAGERSCHEDULERHELPER_H
#define ALARMMANAGERSCHEDULERHELPER_H


#import <Foundation/Foundation.h>


@interface AlarmManagerSchedulerHelper : NSObject {
    *AlarmManager _alarmManager;
}




-(id)initWithAlarmManager:(struct AlarmManager *)arg0 ;
-(void)updateTick;


@end


#endif