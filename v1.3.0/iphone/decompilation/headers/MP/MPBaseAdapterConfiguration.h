// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPBASEADAPTERCONFIGURATION_H
#define MPBASEADAPTERCONFIGURATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MPAdapterConfiguration;

@interface MPBaseAdapterConfiguration : NSObject <MPAdapterConfiguration>



@property (readonly, nonatomic) NSMutableDictionary *internalMopubRequestOptions; // ivar: _internalMopubRequestOptions
@property (readonly, copy, nonatomic) NSString *adapterVersion;
@property (readonly, copy, nonatomic) NSString *biddingToken;
@property (readonly, copy, nonatomic) NSString *moPubNetworkName;
@property (readonly, nonatomic) NSDictionary *moPubRequestOptions;
@property (readonly, copy, nonatomic) NSString *networkSdkVersion;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)initializeNetworkWithConfiguration:(id)arg0 complete:(id)arg1 ;
-(void)addMoPubRequestOptions:(id)arg0 ;
+(void)setCachedInitializationParameters:(id)arg0 ;
+(id)cachedInitializationParameters;


@end


#endif