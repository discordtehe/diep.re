// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADEVENT_H
#define FBADEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdEvent : NSObject

@property (copy, nonatomic) NSUUID *eventId; // ivar: _eventId
@property (copy, nonatomic) NSString *type; // ivar: _type
@property (copy, nonatomic) NSDate *time; // ivar: _time
@property (copy, nonatomic) NSDate *expiration; // ivar: _expiration
@property (nonatomic) NSUInteger priority; // ivar: _priority
@property (copy, nonatomic) NSDictionary *extraData; // ivar: _extraData
@property (copy, nonatomic) NSUUID *tokenId; // ivar: _tokenId
@property (copy, nonatomic) NSUUID *sessionId; // ivar: _sessionId
@property (copy, nonatomic) NSDate *sessionStartTime; // ivar: _sessionStartTime
@property (nonatomic) NSUInteger attemptsCount; // ivar: _attemptsCount


-(id)initWithType:(id)arg0 withPriority:(NSUInteger)arg1 withTokenId:(id)arg2 withSessionId:(id)arg3 withSessionStartTime:(id)arg4 withExtraData:(id)arg5 ;
-(id)jsonExtraData;
-(void)logStatusMessage;
-(id)description;
+(id)deserializeFromSqlite:(struct sqlite3_stmt *)arg0 ;


@end


#endif