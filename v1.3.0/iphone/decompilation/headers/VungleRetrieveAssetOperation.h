// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLERETRIEVEASSETOPERATION_H
#define VUNGLERETRIEVEASSETOPERATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VungleGroupOperation;
@class VungleMRAIDAsset;
@class VungleDownloadOperation;

@interface VungleRetrieveAssetOperation : VungleGroupOperation

@property (retain, nonatomic) NSString *campaignName; // ivar: _campaignName
@property (retain, nonatomic) NSURL *assetURL; // ivar: _assetURL
@property (retain, nonatomic) VungleMRAIDAsset *asset; // ivar: _asset
@property (nonatomic) BOOL isLocalAsset; // ivar: _isLocalAsset
@property (nonatomic) BOOL didVerifyLocalAsset; // ivar: _didVerifyLocalAsset
@property (copy, nonatomic) NSError *assetVerificationError; // ivar: _assetVerificationError
@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (retain, nonatomic) VungleDownloadOperation *downloadOperation; // ivar: _downloadOperation


-(id)initWithVungleMRAIDAsset:(id)arg0 ;
-(id)initWithVungleMRAIDAsset:(id)arg0 placementID:(id)arg1 completion:(id)arg2 ;
-(void)execute;
-(id)description;
+(id)loadRemoteAsset:(id)arg0 placementID:(id)arg1 completionBlock:(id)arg2 ;


@end


#endif