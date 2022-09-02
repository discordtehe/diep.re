// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPAdapterConfiguration

@property (readonly, copy, nonatomic) NSString *adapterVersion;
@property (readonly, copy, nonatomic) NSString *biddingToken;
@property (readonly, copy, nonatomic) NSString *moPubNetworkName;
@property (readonly, nonatomic) NSDictionary *moPubRequestOptions;
@property (readonly, copy, nonatomic) NSString *networkSdkVersion;

-(void)initializeNetworkWithConfiguration:(id)arg0 complete:(id)arg1 ;
-(void)addMoPubRequestOptions:(id)arg0 ;
-(id)adapterVersion;
-(id)biddingToken;
-(id)moPubNetworkName;
-(id)moPubRequestOptions;
-(id)networkSdkVersion;
+(void)setCachedInitializationParameters:(id)arg0 ;
+(id)cachedInitializationParameters;

@end

