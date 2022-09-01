// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCTOPVIEWCONTROLLER_H
#define TJCTOPVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol TJCTopViewControllerProtocol;

@interface TJCTopViewController : UIViewController <TJCTopViewControllerProtocol>



@property (nonatomic) BOOL canRotate; // ivar: _canRotate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(BOOL)shouldAutorotate;


@end


#endif