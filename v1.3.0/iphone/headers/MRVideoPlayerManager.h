// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MRVIDEOPLAYERMANAGER_H
#define MRVIDEOPLAYERMANAGER_H


#import <Foundation/Foundation.h>

@protocol MRVideoPlayerManagerDelegate;

@interface MRVideoPlayerManager : NSObject

@property (weak, nonatomic) NSObject<MRVideoPlayerManagerDelegate> *delegate; // ivar: _delegate


-(id)initWithDelegate:(id)arg0 ;
-(void)dealloc;
-(void)playVideo:(id)arg0 ;
-(void)moviePlayerPlaybackDidFinish:(id)arg0 ;


@end


#endif