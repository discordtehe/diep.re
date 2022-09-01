// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEMRAIDASSET_H
#define VUNGLEMRAIDASSET_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol VungleCacheable;
@protocol NSCoding;

@interface VungleMRAIDAsset : NSObject <VungleCacheable, NSCoding>



@property (readonly, copy, nonatomic) NSURL *URL;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (retain, nonatomic) NSURL *privateURL; // ivar: _privateURL
@property (retain, nonatomic) NSURL *privateRemoteURL; // ivar: _privateRemoteURL
@property (retain, nonatomic) NSString *privateReplacementKey; // ivar: _privateReplacementKey
@property (copy, nonatomic) NSString *cacheKey; // ivar: _cacheKey
@property (readonly, copy, nonatomic) NSURL *remoteURL;
@property (readonly, copy, nonatomic) NSString *replacementKey;
@property (retain, nonatomic) NSData *data; // ivar: _data
@property (nonatomic) NSUInteger type; // ivar: _type


-(BOOL)verifyLocalAssetWithError:(*id)arg0 ;
-(BOOL)storeInCacheWithError:(*id)arg0 ;
-(BOOL)isCached;
-(id)initWithURL:(id)arg0 MRAIDAd:(id)arg1 ;
-(id)initWithURL:(id)arg0 replacementKey:(id)arg1 cacheKey:(id)arg2 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(BOOL)isEqualToMRAIDAsset:(id)arg0 ;


@end


#endif