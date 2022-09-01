// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISDAILYCAPPINGMANAGER_H
#define ISDAILYCAPPINGMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol ISDailyCappingManagerDelegate;

@interface ISDailyCappingManager : NSObject {
    NSString *_adIUnitName;
    NSMutableDictionary *_smashIdToMaxAdsPerDay;
    NSTimer *_timer;
}


@property (weak, nonatomic) NSObject<ISDailyCappingManagerDelegate> *delegate; // ivar: _delegate


-(id)initWithAdUnit:(id)arg0 smashes:(id)arg1 ;
-(void)increaseShowCounter:(id)arg0 ;
-(BOOL)shouldSendCapReleasedEvent:(id)arg0 ;
-(BOOL)isCapped:(id)arg0 ;
-(NSInteger)getTodayShowCount:(id)arg0 ;
-(void)saveCounter:(id)arg0 count:(NSInteger)arg1 ;
-(void)zeroCounter:(id)arg0 ;
-(id)getSmashId:(id)arg0 ;
-(id)getCounterKey:(id)arg0 ;
-(id)getDateKey:(id)arg0 ;
-(id)getCounterDate:(id)arg0 ;
-(id)getTodayDate;
-(NSInteger)getCounter:(id)arg0 ;
-(void)onTick:(id)arg0 ;
-(void)scheduleTimer;
-(CGFloat)getSecondsToUtcMidnight;


@end


#endif