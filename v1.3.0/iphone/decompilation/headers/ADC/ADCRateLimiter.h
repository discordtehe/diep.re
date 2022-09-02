// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCRATELIMITER_H
#define ADCRATELIMITER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ADCRateLimiter : NSObject {
    NSMutableDictionary *_zoneEvents;
    NSMutableDictionary *_globalEvents;
    NSMutableDictionary *_rates;
}




-(id)init;
-(void)addEventType:(NSUInteger)arg0 withRate:(struct ? )arg1 ;
-(void)addEventOfType:(NSUInteger)arg0 ;
-(void)addEventType:(NSUInteger)arg0 withRate:(struct ? )arg1 inZone:(id)arg2 ;
-(void)addEventOfType:(NSUInteger)arg0 inZone:(id)arg1 ;
-(BOOL)shouldLimitEventType:(NSUInteger)arg0 ;
-(BOOL)shouldLimitEventType:(NSUInteger)arg0 inZone:(id)arg1 ;
-(id)pruneDatesOfType:(NSUInteger)arg0 inZone:(id)arg1 ;
-(id)pruneDatesInArray:(id)arg0 withRate:(struct ? )arg1 ;
-(BOOL)shouldLimitEvents:(id)arg0 ofType:(NSUInteger)arg1 withRate:(struct ? )arg2 ;
-(NSUInteger)getEventCountForEventType:(NSUInteger)arg0 inZone:(id)arg1 ;
-(id)getEventsForType:(NSUInteger)arg0 inZone:(id)arg1 ;
-(BOOL)getLimitingRate:(struct ? *)arg0 eventType:(NSUInteger)arg1 ;


@end


#endif