// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEADAPTERCONFIGURATION_H
#define VUNGLEADAPTERCONFIGURATION_H


#import <Foundation/Foundation.h>

@class MPBaseAdapterConfiguration;

@interface VungleAdapterConfiguration : MPBaseAdapterConfiguration

@property (readonly, copy, nonatomic) NSString *adapterVersion;
@property (readonly, copy, nonatomic) NSString *biddingToken;
@property (readonly, copy, nonatomic) NSString *moPubNetworkName;
@property (readonly, copy, nonatomic) NSString *networkSdkVersion;
@property (nonatomic) BOOL shouldCollectDeviceId; // ivar: _shouldCollectDeviceId


-(void)initializeNetworkWithConfiguration:(id)arg0 complete:(id)arg1 ;
+(void)updateInitializationParameters:(id)arg0 ;


@end


#endif