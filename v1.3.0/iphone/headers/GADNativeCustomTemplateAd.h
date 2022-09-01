// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVECUSTOMTEMPLATEAD_H
#define GADNATIVECUSTOMTEMPLATEAD_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADNativeAd;
@class GADObserverCollection;
@class GADVideoController;
@class GADMediaView;
@class GADDisplayAdMeasurement;

@interface GADNativeCustomTemplateAd : GADNativeAd {
    GADObserverCollection *_observers;
    GADVideoController *_videoController;
    GADMediaView *_mediaView;
    GADDisplayAdMeasurement *_displayAdMeasurement;
    id *_customClickHandler;
    id *_deprecatedCustomClickHandler;
    NSObject<OS_dispatch_queue> *_lockQueue;
}


@property (readonly, nonatomic) NSString *templateID;
@property (readonly, nonatomic) NSArray *availableAssetKeys;
@property (readonly, nonatomic) GADVideoController *videoController;
@property (readonly, nonatomic) GADMediaView *mediaView;
@property (copy) id *customClickHandler;
@property (readonly, nonatomic) GADDisplayAdMeasurement *displayAdMeasurement;


-(id)initWithInternalNativeAd:(id)arg0 ;
-(id)description;
-(id)imageForKey:(id)arg0 ;
-(id)stringForKey:(id)arg0 ;
-(id)adType;
-(void)performClickOnAssetWithKey:(id)arg0 ;
-(void)performClickOnAssetWithKey:(id)arg0 customClickHandler:(id)arg1 ;
-(void)recordImpression;
-(void)handleNativeAdCustomClick:(id)arg0 ;


@end


#endif