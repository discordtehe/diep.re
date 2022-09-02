// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNATIVECUSTOMEVENT_H
#define MPNATIVECUSTOMEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPImageDownloadQueue;
@protocol MPNativeCustomEventDelegate;

@interface MPNativeCustomEvent : NSObject

@property (retain, nonatomic) MPImageDownloadQueue *imageDownloadQueue; // ivar: _imageDownloadQueue
@property (weak, nonatomic) NSObject<MPNativeCustomEventDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) NSDictionary *localExtras; // ivar: _localExtras


-(id)init;
-(void)precacheImagesWithURLs:(id)arg0 completionBlock:(id)arg1 ;
-(void)requestAdWithCustomEventInfo:(id)arg0 ;
-(void)requestAdWithCustomEventInfo:(id)arg0 adMarkup:(id)arg1 ;


@end


#endif