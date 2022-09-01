// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADRTBREQUESTPARAMETERS_H
#define GADRTBREQUESTPARAMETERS_H


#import <Foundation/Foundation.h>

@class GADMediationCredentials;
@class GADRTBMediationSignalsConfiguration;
@protocol GADAdNetworkExtras;

@interface GADRTBRequestParameters : NSObject

@property (readonly, nonatomic) GADMediationCredentials *credentials; // ivar: _credentials
@property (readonly, nonatomic) GADRTBMediationSignalsConfiguration *configuration; // ivar: _configuration
@property (readonly, nonatomic) NSObject<GADAdNetworkExtras> *extras; // ivar: _extras
@property (readonly, nonatomic) GADAdSize adSize; // ivar: _adSize


-(id)initWithTargeting:(id)arg0 RTBAdapter:(id)arg1 ;


@end


#endif