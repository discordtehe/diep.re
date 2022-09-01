// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEAD_H
#define VUNGLEAD_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCoding;
@protocol VNGPersistable;

@interface VungleAd : NSObject <NSCoding, VNGPersistable>



@property (copy, nonatomic) NSString *adToken; // ivar: _adToken
@property (copy, nonatomic) NSString *cacheKey; // ivar: _cacheKey
@property (copy, nonatomic) NSString *bidToken; // ivar: _bidToken
@property (readonly, nonatomic) NSString *type; // ivar: _type
@property (readonly, nonatomic) NSString *campaign; // ivar: _campaign
@property (nonatomic) BOOL viewed; // ivar: _viewed
@property (copy, nonatomic) NSString *appId; // ivar: _appId
@property (retain, nonatomic) NSDictionary *tpatEvents; // ivar: _tpatEvents
@property (nonatomic) int incentivized; // ivar: _incentivized
@property (copy, nonatomic) NSString *user; // ivar: _user
@property (copy, nonatomic) NSDate *expireDate; // ivar: _expireDate
@property (nonatomic) int preventPlayDelay; // ivar: _preventPlayDelay
@property (nonatomic) NSInteger state; // ivar: _state
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(NSUInteger)adType;
-(id)rawAdType;
-(void)updateParametersWithAd:(id)arg0 ;
-(id)initWithDictionary:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(NSInteger)persistenceChannel;
-(id)persistenceCategory;
-(id)persistenceKey;
-(BOOL)isExpired;
-(BOOL)isEqual:(id)arg0 ;
-(BOOL)isEqualToVungleAd:(id)arg0 ;
+(BOOL)isValidCTAURLResolvedForDictionary:(id)arg0 ;
+(id)decorateDictionary:(id)arg0 withError:(*id)arg1 ;
+(NSUInteger)adTypeWithRawAdType:(id)arg0 ;
+(NSInteger)channel;
+(id)category;


@end


#endif