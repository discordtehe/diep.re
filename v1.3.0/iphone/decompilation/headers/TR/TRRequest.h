// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TRREQUEST_H
#define TRREQUEST_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCoding;

@interface TRRequest : NSObject <NSCoding>



@property (retain, nonatomic) NSString *name; // ivar: _name
@property (retain, nonatomic) NSString *relativeURL; // ivar: _relativeURL
@property (retain, nonatomic) NSMutableDictionary *requestPayload; // ivar: _requestPayload
@property (nonatomic) NSInteger httpType; // ivar: _httpType
@property (nonatomic) id *responsePayload; // ivar: _responsePayload
@property (nonatomic) BOOL canQueue; // ivar: _canQueue
@property (nonatomic) BOOL shouldLog; // ivar: _shouldLog


-(id)init;
-(void)buildPersistedPayload;
-(void)addRealtimeParameters;
-(id)encryptedPayload;
-(void)handleResponseObject:(id)arg0 ;
-(BOOL)shouldForceRemoveFromQueue;
-(void)addDevicePlayerId;
-(void)addAppSessionID;
-(void)addUserIdentifier;
-(void)addTriggeredAt;
-(void)addVersion;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;


@end


#endif