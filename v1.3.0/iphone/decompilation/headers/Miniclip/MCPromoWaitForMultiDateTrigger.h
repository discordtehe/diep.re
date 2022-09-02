// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOWAITFORMULTIDATETRIGGER_H
#define MCPROMOWAITFORMULTIDATETRIGGER_H


#import <CoreFoundation/CoreFoundation.h>

@class MCPromoWaitForTimeBaseTrigger;

@interface MCPromoWaitForMultiDateTrigger : MCPromoWaitForTimeBaseTrigger

@property (retain, nonatomic) NSArray *activationDates; // ivar: mActivationDates


-(void)setup:(id)arg0 ;
-(void)setup:(id)arg0 withError:(*id)arg1 ;
-(id)createActivationDateComponents:(id)arg0 mustBeAbsolute:(BOOL)arg1 withError:(*id)arg2 ;
-(void)dealloc;
-(void)setCurrentTimestamp:(CGFloat)arg0 ;
-(CGFloat)timeToNextActivationFromTimestamp:(CGFloat)arg0 ;
-(CGFloat)timeToNextActivation;
-(id)getClosestDateToActivation;
-(BOOL)reachedMaxActivations;
-(void)activate;


@end


#endif