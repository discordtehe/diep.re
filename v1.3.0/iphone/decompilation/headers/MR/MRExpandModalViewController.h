// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MREXPANDMODALVIEWCONTROLLER_H
#define MREXPANDMODALVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol MPClosableViewDelegate;
@protocol MPForceableOrientationProtocol;

@interface MRExpandModalViewController : UIViewController <MPClosableViewDelegate, MPForceableOrientationProtocol>



@property (nonatomic) NSUInteger supportedOrientationMask; // ivar: _supportedOrientationMask
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithOrientationMask:(NSUInteger)arg0 ;
-(void)viewDidLoad;
-(BOOL)prefersStatusBarHidden;
-(NSUInteger)supportedInterfaceOrientations;
-(BOOL)shouldAutorotate;
-(void)closeButtonPressed:(id)arg0 ;


@end


#endif