// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPMOPUBCONFIGURATION_H
#define MPMOPUBCONFIGURATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MPMoPubConfiguration : NSObject

@property (retain, nonatomic) NSArray *additionalNetworks; // ivar: _additionalNetworks
@property (retain, nonatomic) NSString *adUnitIdForAppInitialization; // ivar: _adUnitIdForAppInitialization
@property (nonatomic) BOOL allowLegitimateInterest; // ivar: _allowLegitimateInterest
@property (retain, nonatomic) NSArray *globalMediationSettings; // ivar: _globalMediationSettings
@property (nonatomic) NSUInteger loggingLevel; // ivar: _loggingLevel
@property (retain, nonatomic) NSMutableDictionary *mediatedNetworkConfigurations; // ivar: _mediatedNetworkConfigurations
@property (retain, nonatomic) NSMutableDictionary *moPubRequestOptions; // ivar: _moPubRequestOptions


-(id)initWithAdUnitIdForAppInitialization:(id)arg0 ;
-(void)setNetworkConfiguration:(id)arg0 forMediationAdapter:(id)arg1 ;


@end


#endif