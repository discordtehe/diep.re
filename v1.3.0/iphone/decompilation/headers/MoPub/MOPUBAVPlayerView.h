// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBAVPLAYERVIEW_H
#define MOPUBAVPLAYERVIEW_H


#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <Foundation/Foundation.h>


@interface MOPUBAVPlayerView : UIView

@property (retain, nonatomic) AVPlayer *player;
@property (retain, nonatomic) NSString *videoGravity;


+(Class)layerClass;


@end


#endif