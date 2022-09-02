// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJACTIVITYSTATE_H
#define ADJACTIVITYSTATE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCoding;
@protocol NSCopying;

@interface ADJActivityState : NSObject <NSCoding, NSCopying>



@property (nonatomic) BOOL enabled; // ivar: _enabled
@property (nonatomic) BOOL askingAttribution; // ivar: _askingAttribution
@property (copy, nonatomic) NSString *uuid; // ivar: _uuid
@property (copy, nonatomic) NSString *deviceToken; // ivar: _deviceToken
@property (nonatomic) BOOL updatePackages; // ivar: _updatePackages
@property (copy, nonatomic) NSString *adid; // ivar: _adid
@property (retain, nonatomic) NSDictionary *attributionDetails; // ivar: _attributionDetails
@property (nonatomic) int eventCount; // ivar: _eventCount
@property (nonatomic) int sessionCount; // ivar: _sessionCount
@property (nonatomic) int subsessionCount; // ivar: _subsessionCount
@property (nonatomic) CGFloat timeSpent; // ivar: _timeSpent
@property (nonatomic) CGFloat lastActivity; // ivar: _lastActivity
@property (nonatomic) CGFloat sessionLength; // ivar: _sessionLength
@property (retain, nonatomic) NSMutableArray *transactionIds; // ivar: _transactionIds
@property (nonatomic) BOOL isPersisted; // ivar: _isPersisted
@property (nonatomic) CGFloat lastInterval; // ivar: _lastInterval


-(id)init;
-(void)resetSessionAttributes:(CGFloat)arg0 ;
-(void)addTransactionId:(id)arg0 ;
-(BOOL)findTransactionId:(id)arg0 ;
-(void)assignUuid:(id)arg0 ;
-(void)assignUuidOldMethod:(id)arg0 ;
-(id)generateUniqueKey;
-(void)assignUuidNewMethod:(id)arg0 ;
-(id)description;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(void)saveAppToken:(id)arg0 ;


@end


#endif