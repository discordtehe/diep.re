// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UADSVIEWCONTROLLER_H
#define UADSVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>


@interface UADSViewController : UIViewController

@property (retain) NSMutableDictionary *viewHandlers; // ivar: _viewHandlers
@property (retain, nonatomic) NSArray *currentViews; // ivar: _currentViews
@property (nonatomic) int supportedOrientations; // ivar: _supportedOrientations
@property (nonatomic) BOOL statusBarHidden; // ivar: _statusBarHidden
@property (nonatomic) BOOL autorotate; // ivar: _autorotate
@property (nonatomic) BOOL transparent; // ivar: _transparent
@property (nonatomic) BOOL homeIndicatorAutoHidden; // ivar: _homeIndicatorAutoHidden


-(id)initWithViews:(id)arg0 supportedOrientations:(id)arg1 statusBarHidden:(BOOL)arg2 shouldAutorotate:(BOOL)arg3 isTransparent:(BOOL)arg4 homeIndicatorAutoHidden:(BOOL)arg5 ;
-(void)viewDidLoad;
-(void)viewDidAppear:(BOOL)arg0 ;
-(void)viewWillAppear:(BOOL)arg0 ;
-(void)viewWillDisappear:(BOOL)arg0 ;
-(void)viewDidDisappear:(BOOL)arg0 ;
-(void)setViewFrame:(id)arg0 x:(int)arg1 y:(int)arg2 width:(int)arg3 height:(int)arg4 ;
-(NSUInteger)supportedInterfaceOrientations;
-(BOOL)shouldAutorotate;
-(void)setTransform:(float)arg0 ;
-(BOOL)prefersStatusBarHidden;
-(BOOL)prefersHomeIndicatorAutoHidden;
-(BOOL)isTransparent;
-(void)setViews:(id)arg0 ;
-(void)handleViewPlacement:(id)arg0 ;
-(id)getViewHandler:(id)arg0 ;
-(id)createViewHandler:(id)arg0 ;
-(struct CGRect )getRect;
-(void)didReceiveMemoryWarning;


@end


#endif