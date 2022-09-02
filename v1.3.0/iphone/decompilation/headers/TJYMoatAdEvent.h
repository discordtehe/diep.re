// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJYMOATADEVENT_H
#define TJYMOATADEVENT_H


#import <Foundation/Foundation.h>


@interface TJYMoatAdEvent : NSObject

@property NSUInteger eventType; // ivar: _eventType
@property CGFloat adPlayhead; // ivar: _adPlayhead
@property float adVolume; // ivar: _adVolume
@property (readonly) CGFloat timeStamp; // ivar: _timeStamp


-(id)initWithType:(NSUInteger)arg0 withPlayheadMillis:(CGFloat)arg1 ;
-(id)initWithType:(NSUInteger)arg0 withPlayheadMillis:(CGFloat)arg1 withVolume:(float)arg2 ;
-(id)eventAsString;
-(id)asDict;
-(id)description;
+(id)adEventStrings;


@end


#endif