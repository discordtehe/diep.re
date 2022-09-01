// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBDTAPGESTURERECOGNIZER_H
#define FBBDTAPGESTURERECOGNIZER_H


#import <UIKit/UIKit.h>

@protocol FBBDTapGestureRecognizerDelegate;

@interface FBBDTapGestureRecognizer : UITapGestureRecognizer

@property (weak, nonatomic) NSObject<FBBDTapGestureRecognizerDelegate> *bdTapGestureRecognizerDelegate; // ivar: _bdTapGestureRecognizerDelegate


-(void)touchesBegan:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesMoved:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
-(void)touchesCancelled:(id)arg0 withEvent:(id)arg1 ;


@end


#endif