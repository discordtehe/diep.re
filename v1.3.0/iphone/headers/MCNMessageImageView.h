// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCNMESSAGEIMAGEVIEW_H
#define MCNMESSAGEIMAGEVIEW_H


#import <UIKit/UIKit.h>

@protocol MCNMessageViewDelegate;

@interface MCNMessageImageView : UIView {
    UIButton *imageButton;
    id<MCNMessageViewDelegate> *delegate;
    int messageID;
}




-(id)initWithData:(struct Data *)arg0 andDelegate:(id)arg1 andID:(int)arg2 ;
-(void)dealloc;
-(int)messageID;
-(BOOL)hasloaded;
-(void)setImage:(struct Data *)arg0 ;
-(void)imageWasPressed;
-(void)setFrame:(struct CGRect )arg0 ;
-(void)handleFailedLoad;


@end


#endif