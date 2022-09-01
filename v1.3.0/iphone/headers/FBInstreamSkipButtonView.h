// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBINSTREAMSKIPBUTTONVIEW_H
#define FBINSTREAMSKIPBUTTONVIEW_H



@class FBInstreamAdButton;

@interface FBInstreamSkipButtonView : FBInstreamAdButton

@property (nonatomic) NSUInteger remainingSeconds; // ivar: _remainingSeconds


-(id)initWithRemainingSeconds:(NSUInteger)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(id)textWithRemainingSeconds:(NSUInteger)arg0 ;


@end


#endif