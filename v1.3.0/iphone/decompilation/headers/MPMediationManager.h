// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPMEDIATIONMANAGER_H
#define MPMEDIATIONMANAGER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MPMediationManager : NSObject

@property (retain, nonatomic) NSMutableDictionary *adapters; // ivar: _adapters
@property (readonly, nonatomic) NSSet *certifiedAdapterClasses; // ivar: _certifiedAdapterClasses
@property (nonatomic) BOOL isInitializing; // ivar: _isInitializing
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *queue; // ivar: _queue
@property (readonly, nonatomic) NSDictionary *adRequestPayload;


-(id)init;
-(void)initializeWithAdditionalProviders:(id)arg0 configurations:(id)arg1 requestOptions:(id)arg2 complete:(id)arg3 ;
-(id)parametersForAdapter:(id)arg0 overrideConfiguration:(id)arg1 ;
-(void)setCachedInitializationParameters:(id)arg0 forNetwork:(Class)arg1 ;
-(id)cachedInitializationParametersForNetwork:(Class)arg0 ;
-(void)clearCache;
-(id)advancedBiddingTokens;
+(id)sharedManager;
+(id)adapterInformationProvidersFilePath;
+(id)certifiedAdapterInformationProviderClasses;


@end


#endif