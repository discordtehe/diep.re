// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCCONTAINER_H
#define ADCCONTAINER_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class ADCImageView;
@class ADCVideoView;
@protocol ADCViewTouchDelegate;
@protocol ADCContainerDelegate;

@interface ADCContainer : UIViewController <ADCViewTouchDelegate>

 {
    id<ADCContainerDelegate> *_delegate;
    NSUInteger _supportedInterfaceOrientations;
    NSMutableDictionary *_boundObjects;
    BOOL _reportedStart;
}


@property (nonatomic) int identifier; // ivar: _identifier
@property (retain, nonatomic) NSString *adSessionID; // ivar: _adSessionID
@property (nonatomic) BOOL isFullscreen; // ivar: _isFullscreen
@property (nonatomic) BOOL presenting; // ivar: _presenting
@property (retain, nonatomic) ADCImageView *closeButton; // ivar: _closeButton
@property (retain, nonatomic) ADCVideoView *videoView; // ivar: _videoView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDelegate:(id)arg0 supportedOrientations:(NSUInteger)arg1 ;
-(BOOL)prefersHomeIndicatorAutoHidden;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)viewWillDisappear:(BOOL)arg0 ;
-(void)viewSafeAreaInsetsDidChange;
-(void)setSupportedInterfaceOrientations:(NSUInteger)arg0 ;
-(NSUInteger)supportedInterfaceOrientations;
-(BOOL)shouldAutorotate;
-(BOOL)prefersStatusBarHidden;
-(void)didRotateFromInterfaceOrientation:(NSInteger)arg0 ;
-(void)bindObject:(id)arg0 withIdentifier:(NSUInteger)arg1 ;
-(id)objectForIdentifier:(NSUInteger)arg0 ;
-(void)unbindObjectWithIdentifier:(NSUInteger)arg0 ;
-(void)unbindObjects;
-(void)onContainerResized;
-(void)view:(id)arg0 touchesBegan:(id)arg1 ;
-(void)view:(id)arg0 touchesMoved:(id)arg1 ;
-(void)view:(id)arg0 touchesEnded:(id)arg1 ;
-(void)view:(id)arg0 touchesCancelled:(id)arg1 ;
-(void)dealloc;


@end


#endif