// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISSUPERSONICADSCONFIGURATION_H
#define ISSUPERSONICADSCONFIGURATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ISSupersonicAdsConfiguration : NSObject

@property (nonatomic) NSNumber *useClientSideCallbacks; // ivar: _useClientSideCallbacks
@property (retain, nonatomic) NSString *language; // ivar: _language
@property (retain, nonatomic) NSString *minimumOfferCommission; // ivar: _minimumOfferCommission
@property (retain, nonatomic) NSDictionary *controllerConfig; // ivar: _controllerConfig
@property (retain, nonatomic) NSString *itemName; // ivar: _itemName
@property (retain, nonatomic) NSString *controllerUrl; // ivar: _controllerUrl
@property (retain) NSNumber *itemCount; // ivar: _itemCount
@property (retain) NSNumber *maxVideoLength; // ivar: _maxVideoLength
@property (retain, nonatomic) NSString *privateKey; // ivar: _privateKey
@property (nonatomic) BOOL debugMode; // ivar: _debugMode
@property (nonatomic) NSInteger debugLevel; // ivar: _debugLevel


-(id)init;
+(id)configurations;


@end


#endif