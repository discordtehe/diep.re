// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCVIDEOMANAGER_H
#define TJCVIDEOMANAGER_H


#import <Foundation/Foundation.h>

@protocol TJCVideoAdDelegate;

@interface TJCVideoManager : NSObject

@property (weak, nonatomic) NSObject<TJCVideoAdDelegate> *adDelegate; // ivar: _adDelegate


-(id)init;
-(void)setVideoAdDelegate:(id)arg0 ;
-(void)notifyVideoAdBegan;
-(void)notifyVideoAdCompleted;
-(void)notifyVideoAdClosed;
-(void)notifyVideoAdError:(id)arg0 ;


@end


#endif