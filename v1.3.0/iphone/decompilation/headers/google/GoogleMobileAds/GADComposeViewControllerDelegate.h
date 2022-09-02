// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCOMPOSEVIEWCONTROLLERDELEGATE_H
#define GADCOMPOSEVIEWCONTROLLERDELEGATE_H


#import <Foundation/Foundation.h>

@protocol MFMessageComposeViewControllerDelegate;
@protocol MFMailComposeViewControllerDelegate;

@interface GADComposeViewControllerDelegate : NSObject <MFMessageComposeViewControllerDelegate, MFMailComposeViewControllerDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)messageComposeViewController:(id)arg0 didFinishWithResult:(NSInteger)arg1 ;
-(void)mailComposeController:(id)arg0 didFinishWithResult:(NSInteger)arg1 error:(id)arg2 ;
+(id)sharedInstance;


@end


#endif