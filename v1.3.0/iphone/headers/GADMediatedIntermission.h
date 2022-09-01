// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATEDINTERMISSION_H
#define GADMEDIATEDINTERMISSION_H


#import <Foundation/Foundation.h>


@interface GADMediatedIntermission : NSObject {
    id *_messageSource;
    atomic_flag _postedIntermissionWillEnd;
}




-(id)initWithMessageSource:(id)arg0 ;
-(void)adapterWillPresent;
-(void)adapterWillDismiss;
-(void)adapterDidDismiss;


@end


#endif