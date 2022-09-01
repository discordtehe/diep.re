// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCACHEPROTOCOL_H
#define TJCACHEPROTOCOL_H


#import <Foundation/Foundation.h>


@interface TJCacheProtocol : NSURLProtocol

@property (retain, nonatomic) NSURLConnection *connection; // ivar: _connection


-(void)startLoading;
-(void)stopLoading;
-(void)connection:(id)arg0 didReceiveData:(id)arg1 ;
-(void)connection:(id)arg0 didFailWithError:(id)arg1 ;
-(void)connection:(id)arg0 didReceiveResponse:(id)arg1 ;
-(void)connectionDidFinishLoading:(id)arg0 ;
+(void)setupCacheProtocol;
+(BOOL)isAssetCached:(id)arg0 ;
+(id)localCachePath:(id)arg0 ;
+(id)localCacheFilePath:(id)arg0 ;
+(BOOL)canInitWithRequest:(id)arg0 ;
+(id)canonicalRequestForRequest:(id)arg0 ;
+(void)validateCache;
+(BOOL)cacheAssetWithURL:(id)arg0 offerID:(id)arg1 timeToLive:(id)arg2 ;
+(BOOL)cacheAssetWithURLAndCompletion:(id)arg0 offerID:(id)arg1 timeToLive:(id)arg2 completion:(id)arg3 ;
+(void)processAssetRequest:(id)arg0 offerID:(id)arg1 timeToLive:(id)arg2 completion:(id)arg3 ;
+(id)cachedAssetIDString;
+(id)generateLocalPath:(id)arg0 ;
+(id)generateCacheKey:(id)arg0 ;
+(id)cachedAssetDictionary;
+(BOOL)clearCache;
+(BOOL)removeAssetWithURL:(id)arg0 ;
+(id)cachedAssetsToJSON;
+(void)refreshAssetWithURL:(id)arg0 timeToLive:(id)arg1 ;
+(void)setPlacementCacheLimit:(int)arg0 ;
+(int)getPlacementCacheLimit;
+(void)incrementPlacementCacheCount;
+(void)decrementPlacementCacheCount;
+(int)getPlacementCacheCount;


@end


#endif