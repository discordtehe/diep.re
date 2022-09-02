// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENULOADING_H
#define MENULOADING_H


#import <Foundation/Foundation.h>

@class BaseState;
@class MenuLoadingView;

@interface MenuLoading : BaseState {
    int _displayedAsType;
    MenuLoadingView *_view;
    NSString *_simpleAlertMessage;
}




-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(void)setupAsWidget:(id)arg0 isFramed:(BOOL)arg1 ;
-(void)setupAsAlert:(id)arg0 ;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(void)disableInput;
-(void)enableInput;
+(void)showWithLoadingWidget:(id)arg0 centeredAndFramed:(BOOL)arg1 ;
+(void)showWithNSAlert:(id)arg0 ;
+(void)dismiss;


@end


#endif