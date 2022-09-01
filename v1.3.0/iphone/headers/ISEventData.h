// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISEVENTDATA_H
#define ISEVENTDATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ISEventData : NSObject

@property (retain) NSNumber *eventId; // ivar: _eventId
@property NSInteger eventTimestamp; // ivar: _eventTimestamp
@property (retain) NSDictionary *additionalData; // ivar: _additionalData


-(id)initWithEventId:(id)arg0 andAdditionData:(id)arg1 ;
-(id)initWithEventId:(id)arg0 andAdditionData:(id)arg1 timeStamp:(NSInteger)arg2 ;
-(id)description;
-(BOOL)isEqual:(id)arg0 ;


@end


#endif