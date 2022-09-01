// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCAPIKEYDECODER_H
#define TJCAPIKEYDECODER_H


#import <Foundation/Foundation.h>


@interface TJCApiKeyDecoder : NSObject

@property (retain, nonatomic) NSString *apiKey; // ivar: _apiKey
@property (retain, nonatomic) NSString *appID; // ivar: _appID
@property (retain, nonatomic) NSString *secretKey; // ivar: _secretKey
@property (nonatomic) int keyUsage; // ivar: _keyUsage


-(id)init;
-(id)getAppID;
-(id)getSecretKey;
-(int)getKeyUsage;
+(id)decoderWithApiKey:(id)arg0 ;
+(id)urlSafeString:(id)arg0 ;
+(id)get5RocksAppID:(id)arg0 ;


@end


#endif