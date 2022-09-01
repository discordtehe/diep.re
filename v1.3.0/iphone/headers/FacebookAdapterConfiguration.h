// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FACEBOOKADAPTERCONFIGURATION_H
#define FACEBOOKADAPTERCONFIGURATION_H


#import <Foundation/Foundation.h>

@class MPBaseAdapterConfiguration;

@interface FacebookAdapterConfiguration : MPBaseAdapterConfiguration

@property (readonly, copy, nonatomic) NSString *adapterVersion;
@property (readonly, copy, nonatomic) NSString *biddingToken;
@property (readonly, copy, nonatomic) NSString *moPubNetworkName;
@property (readonly, copy, nonatomic) NSString *networkSdkVersion;


-(void)initializeNetworkWithConfiguration:(id)arg0 complete:(id)arg1 ;
+(BOOL)isTestMode;
+(void)setIsTestMode:(BOOL)arg0 ;
+(id)mediationString;


@end


#endif