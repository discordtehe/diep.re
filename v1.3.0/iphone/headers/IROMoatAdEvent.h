// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATADEVENT_H
#define IROMOATADEVENT_H


#import <Foundation/Foundation.h>


@interface IROMoatAdEvent : NSObject

@property (nonatomic) CGFloat timeStamp; // ivar: _timeStamp
@property (nonatomic) float deviceVolume; // ivar: _deviceVolume
@property (nonatomic) NSUInteger eventType; // ivar: _eventType
@property (nonatomic) CGFloat adPlayhead; // ivar: _adPlayhead
@property (nonatomic) float adVolume; // ivar: _adVolume


-(id)initWithType:(NSUInteger)arg0 withPlayheadMillis:(CGFloat)arg1 ;
-(id)initWithType:(NSUInteger)arg0 withPlayheadMillis:(CGFloat)arg1 withVolume:(float)arg2 ;
-(id)eventAsString;
-(id)asDict;
-(id)description;
+(id)adEventStrings;


@end


#endif