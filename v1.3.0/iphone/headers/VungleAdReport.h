// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEADREPORT_H
#define VUNGLEADREPORT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCoding;
@protocol VNGPersistable;

@interface VungleAdReport : NSObject <NSCoding, VNGPersistable>



@property (copy, nonatomic) NSString *adType; // ivar: _adType
@property (copy, nonatomic) NSDictionary *placementDictionary; // ivar: _placementDictionary
@property (copy, nonatomic) NSString *eventID; // ivar: _eventID
@property (copy, nonatomic) NSString *adToken; // ivar: _adToken
@property (nonatomic) NSUInteger ttDownload; // ivar: _ttDownload
@property (nonatomic) NSUInteger adDuration; // ivar: _adDuration
@property (nonatomic) NSUInteger adStartTime; // ivar: _adStartTime
@property (copy, nonatomic) NSString *appId; // ivar: _appId
@property (copy, nonatomic) NSString *campaign; // ivar: _campaign
@property (copy, nonatomic) NSString *user; // ivar: _user
@property (copy, nonatomic) NSDictionary *extraInfo; // ivar: _extraInfo
@property (copy, nonatomic) NSString *publisherAppID; // ivar: _publisherAppID
@property (copy, nonatomic) NSString *ifa; // ivar: _ifa
@property (copy, nonatomic) NSDictionary *deviceInfo; // ivar: _deviceInfo
@property (readonly) BOOL incentivized; // ivar: _incentivized
@property (nonatomic) NSUInteger ordinalView; // ivar: _ordinalView
@property (nonatomic) NSInteger reportStatus; // ivar: _reportStatus
@property (copy, nonatomic) NSString *adCacheKey; // ivar: _adCacheKey
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)toDictionary;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(NSInteger)persistenceChannel;
-(id)persistenceCategory;
-(id)uniqueIdentifier;
-(id)persistenceKey;
+(id)category;
+(NSInteger)channel;
+(id)keyExtension;


@end


#endif