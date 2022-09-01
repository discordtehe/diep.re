// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCTRANSITIONALCONTAINER_H
#define ADCTRANSITIONALCONTAINER_H


#import <UIKit/UIKit.h>


@interface ADCTransitionalContainer : UIViewController {
    NSUInteger supportedOrientationsOverride;
}




-(id)initWithSupportedOrientations:(NSUInteger)arg0 ;
-(void)loadView;
-(BOOL)shouldAutorotate;
-(NSUInteger)supportedInterfaceOrientations;


@end


#endif