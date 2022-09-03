// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MENUHOURLYBONUSNOTREADYVIEW_H
#define MENUHOURLYBONUSNOTREADYVIEW_H


#import <Foundation/Foundation.h>

@class MenuGenericPopUpView;

@interface MenuHourlyBonusNotReadyView : MenuGenericPopUpView {
    NSString *_timeFormat;
    int _rewardValue;
}




-(void)setupLayout;
-(void)dealloc;
-(void)setSecondsToExpire:(int)arg0 ;


@end


#endif