// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCNEWSFEEDGUI_H
#define MCNEWSFEEDGUI_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MCNMessageViewDelegate;

@interface MCNewsfeedGUI : NSObject <MCNMessageViewDelegate>

 {
    vector<mc::NewsfeedMessageViewInfo, std::__1::allocator<mc::NewsfeedMessageViewInfo> > loadedMessages;
}


@property (nonatomic) BOOL showingNews; // ivar: showingNews
@property (retain, nonatomic) UIView *landscapeFrame; // ivar: landscapeFrame
@property (retain, nonatomic) UIView *portraitFrame; // ivar: portraitFrame
@property (retain, nonatomic) UIView *landscapeContentFrame; // ivar: landscapeContentFrame
@property (retain, nonatomic) UIView *portraitContentFrame; // ivar: portraitContentFrame
@property (nonatomic) CGRect landscapeWebViewSize; // ivar: landscapeWebViewSize
@property (nonatomic) CGRect portraitWebViewSize; // ivar: portraitWebViewSize
@property (retain, nonatomic) UIView *activeView; // ivar: activeView
@property (retain, nonatomic) UIButton *prev; // ivar: prev
@property (retain, nonatomic) UIButton *next; // ivar: next
@property (retain, nonatomic) UIButton *getIt; // ivar: getIt
@property (retain, nonatomic) UIButton *pprev; // ivar: pprev
@property (retain, nonatomic) UIButton *pnext; // ivar: pnext
@property (retain, nonatomic) UIButton *pgetIt; // ivar: pgetIt
@property (retain, nonatomic) NSMutableArray *viewsDisplayed; // ivar: viewsDisplayed
@property (nonatomic) NSInteger currentWebView; // ivar: currentWebView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)initBoard;
-(void)preloadMessage:(struct NewsfeedMessage *)arg0 withData:(struct Data *)arg1 landscapeOrientation:(BOOL)arg2 ;
-(void)removeMessage:(struct NewsfeedMessage *)arg0 ;
-(void)clearAllMessages;
-(BOOL)alertVisible;
-(void)newsfeedImageWasPressed:(id)arg0 ;
-(unsigned int)loadedMessagesCount;
-(struct vector<int, std::__1::allocator<int> > )loadedMessages;
-(BOOL)showBoard:(struct vector<mc::NewsfeedMessage, std::__1::allocator<mc::NewsfeedMessage> > *)arg0 ;
-(?)longestActionButtonTextString;
-(void)adjustButtonsForButtonText:(id)arg0 ;
-(void)setActionButtonText:(id)arg0 ;
-(void)dismissBoard;
-(void)closePressed:(id)arg0 ;
-(struct NewsfeedMessageViewInfo *)messageViewInfoForID:(int)arg0 ;
-(void)showNext;
-(void)nextPressed:(id)arg0 ;
-(void)showPrevious;
-(void)prevPressed:(id)arg0 ;
-(void)getItPressed:(id)arg0 ;
-(void)animationDidEnd:(id)arg0 finished:(id)arg1 ;
-(void)animationDidStart:(id)arg0 context:(*void)arg1 ;
-(BOOL)hasBuggyRVC;


@end


#endif