// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVEASSETVIEWTRACKER_H
#define GADNATIVEASSETVIEWTRACKER_H


#import <Foundation/Foundation.h>


@interface GADNativeAssetViewTracker : NSObject {
    NSMapTable *_adViewToAssetViewsMap;
    NSMapTable *_adViewToNonclickableAssetNamesMap;
    NSMapTable *_adViewToClickableAssetViewsMap;
    NSMapTable *_adViewToNonclickableAssetViewsMap;
    NSMapTable *_adViewToAdChoicesContentViewMap;
}




-(id)init;
-(void)registerClickableAssetViews:(id)arg0 nonclickableAssetViews:(id)arg1 forAdView:(id)arg2 ;
-(void)setClickableAssetView:(id)arg0 assetName:(id)arg1 previousAssetViewPointer:(*id)arg2 forAdView:(id)arg3 ;
-(void)setAdChoicesContentView:(id)arg0 forAdView:(id)arg1 ;
-(id)assetViewsForAdView:(id)arg0 ;
-(id)nonclickableAssetNamesForAdView:(id)arg0 ;
-(id)adChoicesContentViewForAdView:(id)arg0 ;
-(id)clickableAssetViewsForAdView:(id)arg0 ;
-(id)nonclickableAssetViewsForAdView:(id)arg0 ;


@end


#endif