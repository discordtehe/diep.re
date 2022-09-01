// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFRESPONSEMETADATA_H
#define FNFRESPONSEMETADATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FNFResponseMetadata : NSObject

@property (readonly, nonatomic) NSInteger actualBandwidth; // ivar: _actualBandwidth
@property (readonly, nonatomic) NSUInteger bytesCached; // ivar: _bytesCached
@property (readonly, nonatomic) NSInteger bytesDownloaded; // ivar: _bytesDownloaded
@property (readonly, nonatomic) NSUInteger durationMS; // ivar: _durationMS
@property (readonly, nonatomic) NSUInteger startTimeMs; // ivar: _startTimeMs
@property (readonly, nonatomic) NSUInteger ttfbMs; // ivar: _ttfbMs
@property (readonly, nonatomic) NSUInteger prefetchReadDurationMs; // ivar: _prefetchReadDurationMs
@property (readonly, nonatomic) NSUInteger cacheReadDurationMs; // ivar: _cacheReadDurationMs
@property (readonly, nonatomic) NSInteger cacheReadStartTimeMs; // ivar: _cacheReadStartTimeMs
@property (readonly, nonatomic) NSInteger cacheReadEndTimeMs; // ivar: _cacheReadEndTimeMs
@property (readonly, nonatomic) NSUInteger bytesFromPrefetchCache; // ivar: _bytesFromPrefetchCache
@property (readonly, nonatomic) NSUInteger prefetchBytesRequested; // ivar: _prefetchBytesRequested
@property (readonly, nonatomic) NSUInteger prefetchBytesReceived; // ivar: _prefetchBytesReceived
@property (readonly, copy, nonatomic) NSString *eTag; // ivar: _eTag
@property (readonly, copy, nonatomic) NSError *error; // ivar: _error
@property (readonly, nonatomic) int instanceKey; // ivar: _instanceKey
@property (readonly, nonatomic) char replicaNumber; // ivar: _replicaNumber
@property (readonly, copy, nonatomic) NSURL *originalURL; // ivar: _originalURL
@property (readonly, nonatomic) NSUInteger failoverResponseCode; // ivar: _failoverResponseCode


-(id)initWithMetadataDictionary:(id)arg0 ;
-(BOOL)hasError;


@end


#endif