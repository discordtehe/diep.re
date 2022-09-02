// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPACTIVITYVIEWCONTROLLERHELPER_H
#define MPACTIVITYVIEWCONTROLLERHELPER_H


#import <Foundation/Foundation.h>

@protocol MPActivityViewControllerHelperDelegate;

@interface MPActivityViewControllerHelper : NSObject

@property (weak, nonatomic) NSObject<MPActivityViewControllerHelperDelegate> *delegate; // ivar: _delegate


-(BOOL)presentActivityViewControllerWithTweetShareURL:(id)arg0 ;
-(id)initWithDelegate:(id)arg0 ;
-(id)initializeActivityViewControllerWithSubject:(id)arg0 body:(id)arg1 ;
-(BOOL)presentActivityViewControllerWithSubject:(id)arg0 body:(id)arg1 ;


@end


#endif