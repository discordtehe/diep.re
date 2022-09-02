// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UNITYADSADAPTERCONFIGURATION_H
#define UNITYADSADAPTERCONFIGURATION_H


#import <Foundation/Foundation.h>

@class MPBaseAdapterConfiguration;

@interface UnityAdsAdapterConfiguration : MPBaseAdapterConfiguration

@property (readonly, copy, nonatomic) NSString *adapterVersion;
@property (readonly, copy, nonatomic) NSString *biddingToken;
@property (readonly, copy, nonatomic) NSString *moPubNetworkName;
@property (readonly, copy, nonatomic) NSString *networkSdkVersion;


-(void)initializeNetworkWithConfiguration:(id)arg0 complete:(id)arg1 ;
+(void)updateInitializationParameters:(id)arg0 ;


@end


#endif