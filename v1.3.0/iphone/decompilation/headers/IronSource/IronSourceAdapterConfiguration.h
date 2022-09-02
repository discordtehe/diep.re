// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IRONSOURCEADAPTERCONFIGURATION_H
#define IRONSOURCEADAPTERCONFIGURATION_H


#import <Foundation/Foundation.h>

@class MPBaseAdapterConfiguration;

@interface IronSourceAdapterConfiguration : MPBaseAdapterConfiguration

@property (readonly, copy, nonatomic) NSString *adapterVersion;
@property (readonly, copy, nonatomic) NSString *biddingToken;
@property (readonly, copy, nonatomic) NSString *moPubNetworkName;
@property (readonly, copy, nonatomic) NSString *networkSdkVersion;


-(void)initializeNetworkWithConfiguration:(id)arg0 complete:(id)arg1 ;


@end


#endif