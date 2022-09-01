// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCMUTESWITCHDETECTORJOB_H
#define ADCMUTESWITCHDETECTORJOB_H


#import <Foundation/Foundation.h>


@interface ADCMuteSwitchDetectorJob : NSObject

@property BOOL cancelled; // ivar: _cancelled
@property (nonatomic) unsigned int soundId; // ivar: _soundId
@property (nonatomic) CGFloat startTimeInterval; // ivar: _startTimeInterval
@property (copy, nonatomic) id *completion; // ivar: _completion


-(id)initWithSoundId:(unsigned int)arg0 andDelay:(float)arg1 completion:(id)arg2 ;
-(void)runCheck;
-(void)cancel;
-(void)completedWithTimeIntervalSinceReferenceDate:(CGFloat)arg0 ;


@end


#endif