// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUPROFILE_H
#define MENUPROFILE_H



@class BaseState;
@class MenuProfileView;

@interface MenuProfile : BaseState {
    MenuProfileView *mCCBRootNode;
}




-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(void)disableInput;
-(void)enableInput;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(void)backButtonCallback;
-(void)achievementsButtonCallback;
-(void)updateStats;
-(void)updateXPAndLevel;
-(CGFloat)refresh;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(BOOL)occupiesFullScreen;


@end


#endif