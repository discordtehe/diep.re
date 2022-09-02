// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSCRASHEVENT_H
#define ANSCRASHEVENT_H


#import <CoreFoundation/CoreFoundation.h>

@class ANSEvent;

@interface ANSCrashEvent : ANSEvent

@property (retain, nonatomic) NSDate *crashTimestamp; // ivar: _crashTimestamp
@property (nonatomic) NSUInteger crashState; // ivar: _crashState


-(id)initWithTimestamp:(id)arg0 crashState:(NSUInteger)arg1 ;
-(id)name;
-(id)timestamp;
-(id)dictionaryRepresentation;
-(id)payloadStringForCrashState:(NSUInteger)arg0 ;


@end


#endif