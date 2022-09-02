// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBNATIVEADTABLEVIEWADPROVIDER_H
#define FBNATIVEADTABLEVIEWADPROVIDER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBNativeAdsManager;
@class FBAdExtraHint;
@protocol FBNativeAdDelegate;
@protocol FBNativeAdsManagerDelegate;
@protocol FBNativeAdDelegate;

@interface FBNativeAdTableViewAdProvider : NSObject <FBNativeAdDelegate, FBNativeAdsManagerDelegate>



@property (retain, nonatomic) FBNativeAdsManager *manager; // ivar: _manager
@property (retain, nonatomic) NSMutableDictionary *currentIndexPathToAdMap; // ivar: _currentIndexPathToAdMap
@property (weak, nonatomic) NSObject<FBNativeAdDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) FBAdExtraHint *extraHint;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithManager:(id)arg0 ;
-(void)nativeAdsLoaded;
-(void)nativeAdsFailedToLoadWithError:(id)arg0 ;
-(id)tableView:(id)arg0 nativeAdForRowAtIndexPath:(id)arg1 ;
-(BOOL)isAdCellAtIndexPath:(id)arg0 forStride:(NSUInteger)arg1 ;
-(id)adjustNonAdCellIndexPath:(id)arg0 forStride:(NSUInteger)arg1 ;
-(NSUInteger)adjustCount:(NSUInteger)arg0 forStride:(NSUInteger)arg1 ;
-(void)nativeAdDidClick:(id)arg0 ;
-(void)nativeAdDidFinishHandlingClick:(id)arg0 ;
-(void)nativeAdWillLogImpression:(id)arg0 ;


@end


#endif