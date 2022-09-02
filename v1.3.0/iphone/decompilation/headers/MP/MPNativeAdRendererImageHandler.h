// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNATIVEADRENDERERIMAGEHANDLER_H
#define MPNATIVEADRENDERERIMAGEHANDLER_H


#import <Foundation/Foundation.h>

@class MPImageDownloadQueue;
@protocol MPNativeAdRendererImageHandlerDelegate;

@interface MPNativeAdRendererImageHandler : NSObject

@property (retain, nonatomic) MPImageDownloadQueue *imageDownloadQueue; // ivar: _imageDownloadQueue
@property (weak, nonatomic) NSObject<MPNativeAdRendererImageHandlerDelegate> *delegate; // ivar: _delegate


-(id)init;
-(void)loadImageForURL:(id)arg0 intoImageView:(id)arg1 ;
-(void)safeMainQueueSetImage:(id)arg0 intoImageView:(id)arg1 ;


@end


#endif