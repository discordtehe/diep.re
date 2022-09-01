// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPLASTRESORTDELEGATE_H
#define MPLASTRESORTDELEGATE_H


#import <Foundation/Foundation.h>

@protocol SKStoreProductViewControllerDelegate;

@interface MPLastResortDelegate : NSObject <SKStoreProductViewControllerDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)mailComposeController:(id)arg0 didFinishWithResult:(NSInteger)arg1 error:(id)arg2 ;
-(void)productViewControllerDidFinish:(id)arg0 ;
+(id)sharedDelegate;


@end


#endif