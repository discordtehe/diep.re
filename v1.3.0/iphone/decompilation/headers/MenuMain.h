// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUMAIN_H
#define MENUMAIN_H



@class BaseState;
@class MenuMainView;

@interface MenuMain : BaseState {
    MenuMainView *_menuMainView;
    BOOL _showAdPopUp;
}




-(id)init;
-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(void)injectParameters:(id)arg0 ;
-(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )getGameModeString:(struct basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > )arg0 ;
-(void)handleParameters:(id)arg0 ;
-(id)getInputBoxString;
-(void)destroy;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(BOOL)showPopup;
-(void)finishEnter:(BOOL)arg0 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(CGFloat)refresh;
-(void)disableInput;
-(void)enableIfOnTop;
-(void)enableInput;
-(BOOL)isRootState;
-(BOOL)occupiesFullScreen;
-(void)updateNewsfeedButton:(id)arg0 ;
-(void)updateNewsfeedMessagesNum:(id)arg0 ;
-(void)dismissNicknameKeyboard;
-(void)hidePromoElements;
-(void)showPromoElements;
-(void)showPromoBadgeWithPromoButton:(id)arg0 ;
-(void)showFeatureBadgeWithPromoButton:(id)arg0 ;
-(void)hideFeatureBadge;
-(void)hidePromoBadge;
-(void)helpButtonCallback;
-(void)closeHelpButtonCallback;
-(void)settingsButtonCallback;
-(void)newsfeedButtonCallback;
-(void)classicHelpButtonCallback;
-(void)restoreNickname;
-(void)storeNickname;
-(void)gameModeButtonCallback;
-(void)playButtonCallback;
-(void)reconnectLoop;
-(void)enterGameCallback;
-(void)playButtonCallbackMain;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(void)GDPRResponseCallback;


@end


#endif