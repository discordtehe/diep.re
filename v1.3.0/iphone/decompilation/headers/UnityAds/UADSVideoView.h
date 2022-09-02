// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSVIDEOVIEW_H
#define UADSVIDEOVIEW_H


#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface UADSVideoView : UIView

@property (retain, nonatomic) AVPlayer *player;


-(void)setVideoFillMode:(id)arg0 ;
+(Class)layerClass;


@end


#endif