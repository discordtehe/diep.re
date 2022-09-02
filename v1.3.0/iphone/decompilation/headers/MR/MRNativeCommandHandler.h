// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MRNATIVECOMMANDHANDLER_H
#define MRNATIVECOMMANDHANDLER_H


#import <Foundation/Foundation.h>

@class MRVideoPlayerManager;
@protocol MRCommandDelegate;
@protocol MRVideoPlayerManagerDelegate;
@protocol MRNativeCommandHandlerDelegate;

@interface MRNativeCommandHandler : NSObject <MRCommandDelegate, MRVideoPlayerManagerDelegate>



@property (weak, nonatomic) NSObject<MRNativeCommandHandlerDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) MRVideoPlayerManager *videoPlayerManager; // ivar: _videoPlayerManager
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDelegate:(id)arg0 ;
-(void)handleNativeCommand:(id)arg0 withProperties:(id)arg1 ;
-(BOOL)shouldExecuteMRCommand:(id)arg0 ;
-(void)mrCommand:(id)arg0 playVideoWithURL:(id)arg1 ;
-(void)mrCommand:(id)arg0 shouldUseCustomClose:(BOOL)arg1 ;
-(void)mrCommand:(id)arg0 setOrientationPropertiesWithForceOrientation:(NSUInteger)arg1 ;
-(void)mrCommand:(id)arg0 openURL:(id)arg1 ;
-(void)mrCommand:(id)arg0 expandWithParams:(id)arg1 ;
-(void)mrCommand:(id)arg0 resizeWithParams:(id)arg1 ;
-(void)mrCommandClose:(id)arg0 ;
-(void)videoPlayerManager:(id)arg0 didFailToPlayVideoWithErrorMessage:(id)arg1 ;
-(void)videoPlayerManagerWillPresentVideo:(id)arg0 ;
-(void)videoPlayerManagerDidDismissVideo:(id)arg0 ;
-(id)viewControllerForPresentingVideoPlayer;


@end


#endif