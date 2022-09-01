// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCANIMVSZREMOVEFROMPARENTACTION_H
#define MCANIMVSZREMOVEFROMPARENTACTION_H



@class CCActionInstant;
@protocol NSCopying;

@interface MCAnimVSZRemoveFromParentAction : CCActionInstant <NSCopying>

 {
    BOOL _cleanup;
}




-(id)initWithCleanup:(BOOL)arg0 ;
-(void)startWithTarget:(id)arg0 ;
+(id)action;
+(id)actionWithCleanup:(BOOL)arg0 ;


@end


#endif