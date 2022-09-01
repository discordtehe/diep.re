// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TAPJOYADAPTERCONFIGURATION_H
#define TAPJOYADAPTERCONFIGURATION_H


#import <Foundation/Foundation.h>

@class MPBaseAdapterConfiguration;

@interface TapjoyAdapterConfiguration : MPBaseAdapterConfiguration

@property (nonatomic) BOOL isConnecting; // ivar: _isConnecting
@property (copy, nonatomic) id *initializationCompleteBlock; // ivar: _initializationCompleteBlock
@property (readonly, copy, nonatomic) NSString *adapterVersion;
@property (readonly, copy, nonatomic) NSString *biddingToken;
@property (readonly, copy, nonatomic) NSString *moPubNetworkName;
@property (readonly, copy, nonatomic) NSString *networkSdkVersion;


-(void)initializeNetworkWithConfiguration:(id)arg0 complete:(id)arg1 ;
-(void)setupListeners;
-(void)tjcConnectSuccess:(id)arg0 ;
-(void)tjcConnectFail:(id)arg0 ;
-(void)fetchMoPubGDPRSettings;
+(void)updateInitializationParameters:(id)arg0 ;


@end


#endif