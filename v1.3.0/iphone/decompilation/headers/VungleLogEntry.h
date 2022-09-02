// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLELOGENTRY_H
#define VUNGLELOGENTRY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCoding;
@protocol VungleLoggable;

@interface VungleLogEntry : NSObject <NSCoding, VungleLoggable>



@property (nonatomic) NSInteger level; // ivar: _level
@property (copy, nonatomic) NSString *deviceUUID; // ivar: _deviceUUID
@property (copy, nonatomic) NSString *message; // ivar: _message
@property (copy, nonatomic) NSString *context; // ivar: _context
@property (copy, nonatomic) NSString *eventID; // ivar: _eventID
@property (copy, nonatomic) NSString *userAgent; // ivar: _userAgent
@property (copy, nonatomic) NSString *bundleID; // ivar: _bundleID
@property (copy, nonatomic) NSString *timeZone; // ivar: _timeZone
@property (copy, nonatomic) NSDate *creationDate; // ivar: _creationDate
@property (copy, nonatomic) NSDate *submissionDate; // ivar: _submissionDate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithMessage:(id)arg0 level:(NSInteger)arg1 context:(id)arg2 eventID:(id)arg3 userAgent:(id)arg4 bundleID:(id)arg5 timeZone:(id)arg6 ;
-(id)toDictionary;
-(id)formatDateForLogging:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(id)toLog;


@end


#endif